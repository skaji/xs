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

void hello(...)
PPCODE:
{
    fprintf(stderr, "hello\n");
    XSRETURN(0);
}


