# 1 "/usr/include/opencascade/AdvApp2Var_Data_f2c.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/AdvApp2Var_Data_f2c.hxx"
# 19 "/usr/include/opencascade/AdvApp2Var_Data_f2c.hxx"
typedef int integer;
typedef double doublereal;



typedef unsigned long uinteger;
typedef char *address;
typedef short int shortint;
typedef float real;
typedef struct { real r, i; } complex;
typedef struct { doublereal r, i; } doublecomplex;
typedef long int logical;
typedef short int shortlogical;
typedef char logical1;
typedef char integer1;
# 57 "/usr/include/opencascade/AdvApp2Var_Data_f2c.hxx"
typedef long int flag;
typedef long int ftnlen;
typedef long int ftnint;



typedef struct
{ flag cierr;
 ftnint ciunit;
 flag ciend;
 char *cifmt;
 ftnint cirec;
} cilist;


typedef struct
{ flag icierr;
 char *iciunit;
 flag iciend;
 char *icifmt;
 ftnint icirlen;
 ftnint icirnum;
} icilist;


typedef struct
{ flag oerr;
 ftnint ounit;
 char *ofnm;
 ftnlen ofnmlen;
 char *osta;
 char *oacc;
 char *ofm;
 ftnint orl;
 char *oblnk;
} olist;


typedef struct
{ flag cerr;
 ftnint cunit;
 char *csta;
} cllist;


typedef struct
{ flag aerr;
 ftnint aunit;
} alist;


typedef struct
{ flag inerr;
 ftnint inunit;
 char *infile;
 ftnlen infilen;
 ftnint *inex;
 ftnint *inopen;
 ftnint *innum;
 ftnint *innamed;
 char *inname;
 ftnlen innamlen;
 char *inacc;
 ftnlen inacclen;
 char *inseq;
 ftnlen inseqlen;
 char *indir;
 ftnlen indirlen;
 char *infmt;
 ftnlen infmtlen;
 char *inform;
 ftnint informlen;
 char *inunf;
 ftnlen inunflen;
 ftnint *inrecl;
 ftnint *innrec;
 char *inblank;
 ftnlen inblanklen;
} inlist;



union Multitype {
 integer1 g;
 shortint h;
 integer i;

 real r;
 doublereal d;
 complex c;
 doublecomplex z;
 };

typedef union Multitype Multitype;



struct Vardesc {
 char *name;
 char *addr;
 ftnlen *dims;
 int type;
 };
typedef struct Vardesc Vardesc;

struct Namelist {
 char *name;
 Vardesc **vars;
 int nvars;
 };
typedef struct Namelist Namelist;
# 183 "/usr/include/opencascade/AdvApp2Var_Data_f2c.hxx"
typedef int (*U_fp)(...);
typedef shortint (*J_fp)(...);
typedef integer (*I_fp)(...);
typedef real (*R_fp)(...);
typedef doublereal (*D_fp)(...), (*E_fp)(...);
typedef void (*C_fp)(...);
typedef void (*Z_fp)(...);
typedef logical (*L_fp)(...);
typedef shortlogical (*K_fp)(...);
typedef void (*H_fp)(...);
typedef int (*S_fp)(...);
# 208 "/usr/include/opencascade/AdvApp2Var_Data_f2c.hxx"
typedef void C_f;
typedef void H_f;
typedef void Z_f;
typedef doublereal E_f;
