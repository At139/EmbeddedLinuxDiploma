Project Idea: File Organizer

The goal of this project is to create a Bash script that organizes files in a specified directory based on their file types into separate sub-directories. This can be useful to keep your directories clean and tidy by automatically sorting files into appropriate categories.

Features:

The script should take a directory path as an argument and organize the files within that directory.
It should create sub-directories based on the file extensions (e.g., "txt" for text files, "jpg" for image files).
Files with unknown or no file extensions should be placed in a "misc" sub-directory.
If a sub-directory for a particular file type already exists, the script should move the files into that existing directory.
The script should handle edge cases, such as files with no extensions or hidden files (those starting with a dot).
Example: Suppose you have a directory called "Downloads" with the following files:

file1.txt
file2.jpg
file3.pdf
file5_without_extension
file6.unknown

output:
Downloads/
|-- txt/
|   |-- file1.txt
|-- jpg/
|   |-- file2.jpg
|-- pdf/
|   |-- file3.pdf
|-- misc/
|   |-- file5_without_extension
|   |-- file6.unknown

