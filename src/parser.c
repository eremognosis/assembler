//
// Created by user on 4/3/26.
//



#include <stdio.h>
#include <stdlib.h>
// #include <strim.h>
#include "symtab.h"
#include "fileread.h"
#include "parser.h"

#include <string.h>

#include "strim.h"

#include "main.h"
//
// first the first turn making the symbol table
// then the second turn using whatever and the symbol table ti prcess

#define BUFFER_SIZE 1024

void firstturn(FILE *stream)
{   char line[BUFFER_SIZE];
    int i = 0; // line number for nascic debug but machien ocede still
    int radd = 0; ///// rom adress (or rather virtual rom addresS)
    while (fgets(line, BUFFER_SIZE, stream) != NULL)
    {
        char* l = strim(line);
        i++; // if line exists it counts

        if (l[0]=='\0' || (l[0]=='/' && l[1]=='/')){continue;} //comment

        if (l[0]=='(')
            ///labebl like   (SOMETHING)
        {
            char *end =   strchr(l, ')');



            if (end == NULL)
            {
                fprintf(stderr, "PARSER: FATAL ERRORRRRRR. UNCLOSED BRACKET, %s, in line %d", l,i);
                continue;
            }
            char sym[64]; //isse bara kya hi naam hoga
            int len = end - (l+1);

            if (len>63) len=63; // that's how politicans manipulate numbers

            strncpy(sym, l+1, len);
            sym[len] = '\0';
            symtab_add(sym,radd);

            ///// we dont change rom add in sybol

        }
        else radd++;


    }
    rewind(stream);
}



void secondturn(FILE *stream, char* fn)
{
    char line[BUFFER_SIZE];
    int i = 0;

    while (fgets(line, BUFFER_SIZE, stream) != NULL)
    {
        char* l = strim(line);
        i++; // if line exists it counts

        if (l[0]=='\0' || (l[0]=='/' && l[1]=='/') || l[0]=='('){continue;} //comment

        char* code = trans(l);
        writeFile(fn, code);

    }
    fclose(stream);
    //dome ig
}


