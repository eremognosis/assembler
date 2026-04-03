//
// Created by user on 4/3/26.
//

#include <stdio.h>
#include "fileread.h"

#include <string.h>

FILE* readFile(char *fileName)
{
    FILE *file = fopen(fileName, "r");
    if (file == NULL)
        printf("Error opening file %s\n", fileName);
    return file;
}


void writeFile(char *fileName, char *contents)
// """"""
/// writes one line
{
    char *fn = fileName;
    fn = strcat(fn, ".asm");
    FILE *file = fopen(fn, "w");
    if (file == NULL)
        printf("Error opening file %s\n", fileName);
    fprintf(file, "%s", contents);
}