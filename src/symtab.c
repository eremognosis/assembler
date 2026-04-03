#include "symtab.h"
#include <string.h>
#include <stdio.h>

#define MAX_SYMBOLS 10000 

typedef struct {
    char name[128];
    int address;
} Symbol;

////// some things are better not dynamic
static Symbol table[MAX_SYMBOLS];
static int symbol_count = 0;

void symtab_add(const char *name, int address) {
    if (symbol_count >= MAX_SYMBOLS) {
        fprintf(stderr, "SYMTAB: I told you 10k was the limit. You're insane. Its already %d \n", MAX_SYMBOLS);
        return;
    }

    strncpy(table[symbol_count].name, name, 127);
    table[symbol_count].name[127] = '\0';   //// paranoia is good
    table[symbol_count].address = address;
    
    symbol_count++;
}

void symtab_init() {
    symbol_count = 0; /////  Doveryay, no proveryay

    // R0 - R15
    for (int i = 0; i <= 15; i++) {
        char r_name[10];
        sprintf(r_name, "R%d", i);
        symtab_add(r_name, i);
    }

    /// Predefined symbols. Ask Mr Nilsan whatever who deisgned the symbols. I've no agency wgatsoever
    symtab_add("SP", 0);
    symtab_add("LCL", 1);
    symtab_add("ARG", 2);
    symtab_add("THIS", 3);
    symtab_add("THAT", 4);
    symtab_add("SCREEN", 16384);
    symtab_add("KBD", 24576);
}

int symtab_get_address(const char *name) {

    ///// only 10k
    for (int i = 0; i < symbol_count; i++) {
        if (strcmp(table[i].name, name) == 0) {
            return table[i].address;
        }
    }
    return -1;//bruh
}