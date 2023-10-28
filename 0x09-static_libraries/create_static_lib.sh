#!/bin/bash

# Current Directory c files
CUR_DIR="."

# Output static library name
LIB_NAME="liball"

# Find all .c files in the source directory
C_FILES=$(find "$CUR_DIR" -name "*.c")

# Compile each .c file into an object file
for c_file in $C_FILES; do
  gcc -c "$c_file"
done

# Create a static library
ar -rc "$LIB_NAME.a" *.o

# Clean up object files
rm -f *.o

echo "Static library $LIB_NAME.a has been created."

