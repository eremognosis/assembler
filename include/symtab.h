//
// Created by user on 4/3/26.
//

#ifndef ASSEMBLER_SYMTAB_H
#define ASSEMBLER_SYMTAB_H
#include <stdbool.h>

void symtab_init();
void symtab_add(const char *name, int address);
bool symtab_contains(const char *name);
int  symtab_get_address(const char *name);
#endif //ASSEMBLER_SYMTAB_H
