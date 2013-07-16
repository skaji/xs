#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"


MODULE = Foo PACKAGE = Foo

PROTOTYPES: DISABLE

SV*
hello()
    CODE:
        HV* hv = newHV();
        ENTER; SAVETMPS;
            SV* rv = newRV_inc((SV*) hv);
            sv_2mortal((SV*) rv);
            warn("before %d", SvREFCNT(hv));
        FREETMPS; LEAVE;
        warn("after %d", SvREFCNT(hv));
        SvREFCNT_dec((SV*) hv);
        SV* sv = newSV(0);
        //SV* sv = newSViv((IV) 1);
        //sv_2mortal((SV*) hv);
        //(void)hv_stores(hv, "1", sv);
        RETVAL = sv;
    OUTPUT:
        RETVAL
