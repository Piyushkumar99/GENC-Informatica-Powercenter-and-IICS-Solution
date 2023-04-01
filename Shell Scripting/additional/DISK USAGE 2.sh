--DISK USAGE 2


What is the command to display the disk space usage the current directory excluding the size of subdirectories

The following image describes the files and directories of the current directory





du -S ./ --exclude='./file*'