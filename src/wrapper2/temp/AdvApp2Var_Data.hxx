# 1 "/usr/include/opencascade/AdvApp2Var_Data.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/AdvApp2Var_Data.hxx"
# 17 "/usr/include/opencascade/AdvApp2Var_Data.hxx"
# 1 "/usr/include/opencascade/Standard_Macro.hxx" 1
# 18 "/usr/include/opencascade/AdvApp2Var_Data.hxx" 2
# 1 "/usr/include/opencascade/AdvApp2Var_Data_f2c.hxx" 1
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
# 19 "/usr/include/opencascade/AdvApp2Var_Data.hxx" 2

struct mdnombr_1_ {
  doublereal pi,
  deuxpi,
  pisur2,
  pis180,
  c180pi,
  zero,
  one,
  a180,
  a360,
  a90;
};

struct minombr_1_ {
  integer nbr[1001];
};

struct maovpar_1_ {
  doublereal r8und, r8ovr, x4und, x4ovr;
    real r4und, r4ovr;
  integer r4nbe, r8nbm, r8nbe, i4ovr, i4ovn, r4exp, r8exp, r4exn, r8exn,
  r4ncs, r8ncs, r4nbm;
  shortint i2ovr, i2ovn;
};

struct maovpch_1_ {
  char cnmmac[16], frmr4[8], frmr8[8], cdcode[8];
};

struct mlgdrtl_1_ {
    doublereal rootab[930],
    hiltab[930],
    hi0tab[31];
  };

struct mmjcobi_1_ {
    doublereal plgcan[3968];
    doublereal canjac[3968];
};

struct mmcmcnp_1_ {
  doublereal cnp[3721];
};

struct mmapgss_1_ {
  doublereal gslxjs[5017],
  gsl0js[52];
};

struct mmapgs0_1_ {
  doublereal gslxj0[4761], gsl0j0[49];
};

struct mmapgs1_1_ {
  doublereal gslxj1[4505], gsl0j1[46];
};

struct mmapgs2_1_ {
  doublereal gslxj2[4249], gsl0j2[43];
};

class AdvApp2Var_Data {
 public:

  static mdnombr_1_& Getmdnombr();
  static minombr_1_& Getminombr();
  static maovpar_1_& Getmaovpar();
  static maovpch_1_& Getmaovpch();
  static mlgdrtl_1_& Getmlgdrtl();
  static mmjcobi_1_& Getmmjcobi();
  static mmcmcnp_1_& Getmmcmcnp();
  static mmapgss_1_& Getmmapgss();
  static mmapgs0_1_& Getmmapgs0();
  static mmapgs1_1_& Getmmapgs1();
  static mmapgs2_1_& Getmmapgs2();

};
