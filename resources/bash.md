Resource for Bash
=================

> A shell.

Table of Contents
-----------------

 * [File Management](#file-management)
 
 
### File Management

Search for files modified in the last number of days
```sh
find {directory} -iname {extension} -mtime {days} -print
```

Change Permissions for all files within a specific directory
```sh
find {directory} -type f -exec chmod {permissions} {} \;
```

Change Permissions for all directories within a specific directory
```sh
find {directory} -type d -exec chmod {permissions} {} \;
```

Tarball a file
```sh
tar -cvzf {filename}.tar.gz directorytocompress/*
```

Untarball a file
```sh
tar -xvf {filename}.tar.gz
```
