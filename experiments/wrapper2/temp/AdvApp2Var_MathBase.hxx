# 1 "/usr/include/opencascade/AdvApp2Var_MathBase.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/AdvApp2Var_MathBase.hxx"
# 19 "/usr/include/opencascade/AdvApp2Var_MathBase.hxx"
# 1 "/usr/include/opencascade/Standard_Macro.hxx" 1
# 20 "/usr/include/opencascade/AdvApp2Var_MathBase.hxx" 2
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
# 21 "/usr/include/opencascade/AdvApp2Var_MathBase.hxx" 2
class AdvApp2Var_MathBase {
 public:

  static int mmapcmp_(integer*,
          integer*,
          integer*,
          double*,
          double*);

  static int mmdrc11_(integer* ,
          integer* ,
          integer* ,
          doublereal* ,
          doublereal* ,
          doublereal* );

  static int mmfmca9_( integer* ,
          integer* ,
          integer* ,
          integer* ,
          integer* ,
          integer* ,
          doublereal* ,
          doublereal* );

  static int mmfmcb5_( integer* ,
          integer* ,
          integer* ,
          doublereal* ,
          integer* ,
          integer* ,
          integer* ,
          doublereal* ,
          integer* );

  static void mmwprcs_(doublereal*,
           doublereal*,
           doublereal*,
           doublereal*,
           integer*,
           integer*);

  static int mmcglc1_(integer *ndimax,
          integer *ndimen,
          integer *ncoeff,
          doublereal *courbe,
          doublereal *tdebut,
          doublereal *tfinal,
          doublereal *epsiln,
          doublereal *xlongc,
          doublereal *erreur,
          integer *iercod);



  static int mmbulld_(integer *nbcoln,
          integer *nblign,
          doublereal *dtabtr,
          integer *numcle);

  static int mmcdriv_(integer *ndimen,
          integer *ncoeff,
          doublereal *courbe,
          integer *ideriv,
          integer *ncofdv,
          doublereal *crvdrv);


  static int mmcvctx_(integer *ndimen,
         integer *ncofmx,
         integer *nderiv,
         doublereal *ctrtes,
         doublereal *crvres,
         doublereal *tabaux,
         doublereal *xmatri,
         integer *iercod);

  static int mdsptpt_(integer *ndimen,
          doublereal *point1,
          doublereal *point2,
          doublereal *distan);


  static int mmaperx_(integer *ncofmx,
          integer *ndimen,
          integer *ncoeff,
          integer *iordre,
          doublereal *crvjac,
          integer *ncfnew,
          doublereal *ycvmax,
          doublereal *errmax,
          integer *iercod);

  static int mmdrvck_(integer *ncoeff,
          integer *ndimen,
          doublereal *courbe,
          integer *ideriv,
          doublereal *tparam,
          doublereal *pntcrb);

  static int mmeps1_(doublereal *epsilo);

  static int mmfmca8_(const integer *ndimen,
          const integer *ncoefu,
          const integer *ncoefv,
          const integer *ndimax,
          const integer *ncfumx,
          const integer *ncfvmx,
          doublereal *tabini,
          doublereal *tabres);

  static int mmfmcar_(integer *ndimen,
          integer *ncofmx,
          integer *ncoefu,
          integer *ncoefv,
          doublereal *patold,
          doublereal *upara1,
          doublereal *upara2,
          doublereal *vpara1,
          doublereal *vpara2,
          doublereal *patnew,
          integer *iercod);

  static int mmfmtb1_(integer *maxsz1,
          doublereal *table1,
          integer *isize1,
          integer *jsize1,
          integer *maxsz2,
          doublereal *table2,
          integer *isize2,
          integer *jsize2,
          integer *iercod);

  static int mmgaus1_(integer *ndimf,
          int (*bfunx) (
          integer *ninteg,
          doublereal *parame,
          doublereal *vfunj1,
          integer *iercod
          ),
          integer *k,
          doublereal *xd,
          doublereal *xf,
          doublereal *saux1,
          doublereal *saux2,
          doublereal *somme,
          integer *niter,
          integer *iercod);

  static int mmhjcan_(integer *ndimen,
          integer *ncourb,
          integer *ncftab,
          integer *orcont,
          integer *ncflim,
          doublereal *tcbold,
          doublereal *tdecop,
          doublereal *tcbnew,
          integer *iercod);

  static int mminltt_(integer *ncolmx,
          integer *nlgnmx,
          doublereal *tabtri,
          integer *nbrcol,
          integer *nbrlgn,
          doublereal *ajoute,
          doublereal *epseg,
          integer *iercod);

  static int mmjaccv_(const integer *ncoef,
          const integer *ndim,
          const integer *ider,
          const doublereal *crvlgd,
          doublereal *polaux,
          doublereal *crvcan);

  static int mmpobas_(doublereal *tparam,
          integer *iordre,
          integer *ncoeff,
          integer *nderiv,
          doublereal *valbas,
          integer *iercod);

  static int mmmpocur_(integer *ncofmx,
           integer *ndim,
           integer *ndeg,
           doublereal *courbe,
           doublereal *tparam,
           doublereal *tabval);

  static int mmposui_(integer *dimmat,
          integer *nistoc,
          integer *aposit,
          integer *posuiv,
          integer *iercod);

  static int mmresol_(integer *hdimen,
          integer *gdimen,
          integer *hnstoc,
          integer *gnstoc,
          integer *mnstoc,
          doublereal *matsyh,
          doublereal *matsyg,
          doublereal *vecsyh,
          doublereal *vecsyg,
          integer *hposit,
          integer *hposui,
          integer *gposit,
          integer *mmposui,
          integer *mposit,
          doublereal *vecsol,
          integer *iercod);

  static int mmrtptt_(integer *ndglgd,
          doublereal *rtlegd);

  static int mmsrre2_(doublereal *tparam,
          integer *nbrval,
          doublereal *tablev,
          doublereal *epsil,
          integer *numint,
          integer *itypen,
          integer *iercod);

  static int mmtrpjj_(integer *ncofmx,
          integer *ndimen,
          integer *ncoeff,
          doublereal *epsi3d,
          integer *iordre,
          doublereal *crvlgd,
          doublereal *ycvmax,
          doublereal *errmax,
          integer *ncfnew);

  static int mmunivt_(integer *ndimen,
          doublereal *vector,
          doublereal *vecnrm,
          doublereal *epsiln,
          integer *iercod);

  static int mmvncol_(integer *ndimen,
          doublereal *vecin,
          doublereal *vecout,
          integer *iercod);

  static doublereal msc_(integer *ndimen,
      doublereal *vecte1,
      doublereal *vecte2);

  static int mvsheld_(integer *n,
          integer *is,
          doublereal *dtab,
          integer *icle);


  static int mmarcin_(integer *ndimax,
          integer *ndim,
          integer *ncoeff,
          doublereal *crvold,
          doublereal *u0,
          doublereal *u1,
          doublereal *crvnew,
          integer *iercod);


  static int mmcvinv_(integer *ndimax,
          integer *ncoef,
          integer *ndim,
          doublereal *curveo,
          doublereal *curve);

  static int mmjacan_(const integer *ideriv,
          integer *ndeg,
          doublereal *poljac,
          doublereal *polcan);

  static int mmpocrb_(integer *ndimax,
          integer *ncoeff,
          doublereal *courbe,
          integer *ndim,
          doublereal *tparam,
          doublereal *pntcrb);

  static int mmmrslwd_(integer *normax,
           integer *nordre,
           integer *ndim,
           doublereal *amat,
           doublereal *bmat,
           doublereal *epspiv,
           doublereal *aaux,
           doublereal *xmat,
           integer *iercod);

  static int mmveps3_(doublereal *eps03);

  static doublereal pow__di (doublereal *x,
           integer *n);

  static doublereal mzsnorm_(integer *ndimen,
          doublereal *vecteu);
};
