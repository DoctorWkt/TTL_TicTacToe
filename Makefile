# Make the ROM file for Logisim and the ROM image for the 28C256 EEPROM
all: ttt.rom 28C256.bin

# Generate the moves when the user moves first
umoves: gen_moves.pl
	chmod +x gen_moves.pl parse_moves.pl hex2bin
	./gen_moves.pl |sort | uniq > umoves

# Generate the moves when the board moves first
bmoves: gen_moves.pl
	echo '_________ X move 1 X________' > bmoves
	./gen_moves.pl -xfirst |sort | uniq >> bmoves

# Create the Logisim ROM file by converting the user first
# and board first moves file into two 8K files, then
# merge them together
ttt.rom: umoves bmoves parse_moves.pl
	./parse_moves.pl umoves ttt.rom
	./parse_moves.pl bmoves tempfile
	grep -v raw tempfile >> ttt.rom
	rm tempfile

# Convert the Logisim ROM file from hex to
# a binary image ready to burning to the 28C256 EEPROM
28C256.bin: ttt.rom hex2bin
	./hex2bin -pad 16384 28C256.bin ttt.rom

# Write the ROM image to the 28C256 EEPROM
write: 28C256.bin
	minipro -p 28C256 -w 28C256.bin

# Remove the ROM files and the moves files
clean:
	rm -f umoves bmoves ttt.rom 28C256.bin
