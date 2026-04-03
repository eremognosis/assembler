//
// Created by user on 4/3/26.

//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "whatever.h"


/// here wr assume that the line is formatted and its second time so only numer
char* trans(char* inst) {
    static char ot[17];
    memset(ot, '0', 16);
    ot[16] = '\0';  ///// next

    if (inst == NULL || strlen(inst) == 0) return NULL;

    /////// a instruction: @value
    if (inst[0] == '@') {
        int val = atoi(inst + 1);
        for (int i = 15; i >= 1; i--) {
            ot[i] = (val % 2) + '0'; /// why is CLION showing tantrums
            val /= 2;
        }
        ot[0] = '0';
        return ot;
    }

    //// C-instruction: dest=comp;jump
    char temp[32]; ///// its not python
    strcpy(temp, inst);

    char *dest_part = "";
    char *comp_part = "";
    char *jump_part = "";

    //////// equal
    char *equal_sign = strchr(temp, '=');
    char *semicolon = strchr(temp, ';');

    if (equal_sign) {
        *equal_sign = '\0';
        dest_part = temp;
        comp_part = equal_sign + 1;
    } else {
        comp_part = temp;
    }

    if (semicolon) {
        *semicolon = '\0';
        jump_part = semicolon + 1;
    }
    /// If no semicolon, comp_part is already set correctly. I didthe heavy filting there

    ///// et comp bits val
    char *comp_bin = "1110000000"; //////// Default/Fail/My Cat sleeping
    for (int i = 0; MAP[i].whatever[0] != '\0'; i++) {
        if (strcmp(comp_part, MAP[i].whatever) == 0) {
            comp_bin = MAP[i].bini;
            break;
        }
    }

    // manzil bits
    char *dest_bin = "000";
    for (int i = 0; i < 8; i++) {
        if (strcmp(dest_part, MAPADM[i].whatever) == 0) {
            dest_bin = MAPADM[i].bini;
            break;
        }
    }

    ////// zoomies bits
    char *jump_bin = "000";
    for (int i = 0; i < 8; i++) {
        if (strcmp(jump_part, JUMP[i].whatever) == 0) {
            jump_bin = JUMP[i].bini;
            break;
        }
    }

    /////// Assemble the 16 bits: [Comp(10)] [Dest(3)] [Jump(3)]
    sprintf(ot, "%s%s%s", comp_bin, dest_bin, jump_bin);

    return ot;
}





