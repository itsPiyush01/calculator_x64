arg0=$1

full_filename=$(basename -- "$arg0")

filename="${full_filename%.*}"
extension="${filename##*.}"
nasm -f elf64 ./$full_filename -o ./$filename.o
ld $filename.o -o $filename
./$filename

# $ nasm -f program.asm -o program.o
# $ ld program.o -o program
# $./program 

