#include<string.h>
#include<ctype.h>
#include "strim.h"
#include<stdio.h>

char* strim(char* str) {
    /////// front (means start)

    while (isspace((unsigned char)*str)) str++;

    if (*str==0) return str; // wgatever all space


    // end
    char *end = str + strlen(str) -1;
    while (isspace((unsigned char)*end)) end--;
    *(end+1) = '\0';


    return str;
}


