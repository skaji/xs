#define PERL_NO_GET_CONTEXT

#ifdef __cplusplus
extern "C" {
#endif

#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#ifdef __cplusplus
}
#endif

#include "ppport.h"

#include <stdio.h>

MODULE = XS::Test   PACKAGE = XS::Test

PROTOTYPES: DISABLE

void return1(...)
PPCODE:
{
    int all = 10000;
    int i;

    for (i = 0; i < all; i++) {
        /* segment fault! */
        PUSHs( sv_2mortal(newSViv(i)) );
    }
    XSRETURN(all);
}

void return2(...)
PPCODE:
{
    int all = 10000;
    int i;
    for (i = 0; i < all; i++) {
        /* XPUSH は自動的にstack拡張 */
        XPUSHs( sv_2mortal(newSViv(i)) );
    }
    XSRETURN(all);
}

/* TODO: mPUSH -> TARGS とは? */


