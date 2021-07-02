type
  integer* = cint
  Doublereal* = cdouble
  uinteger* = culong
  Address* = cstring
  Shortint* = cshort
  Real* = cfloat
  Complex* {.importcpp: "complex", header: "AdvApp2Var_MathBase.hxx", bycopy.} = object
    r* {.importc: "r".}: Real
    i* {.importc: "i".}: Real

  Doublecomplex* {.importcpp: "doublecomplex", header: "AdvApp2Var_MathBase.hxx",
                  bycopy.} = object
    r* {.importc: "r".}: Doublereal
    i* {.importc: "i".}: Doublereal

  Logical* = clong
  Shortlogical* = cshort
  Logical1* = char
  integer1* = char
  Flag* = clong
  Ftnlen* = clong
  Ftnint* = clong
  Cilist* {.importcpp: "cilist", header: "AdvApp2Var_MathBase.hxx", bycopy.} = object
    cierr* {.importc: "cierr".}: Flag
    ciunit* {.importc: "ciunit".}: Ftnint
    ciend* {.importc: "ciend".}: Flag
    cifmt* {.importc: "cifmt".}: cstring
    cirec* {.importc: "cirec".}: Ftnint

  Icilist* {.importcpp: "icilist", header: "AdvApp2Var_MathBase.hxx", bycopy.} = object
    icierr* {.importc: "icierr".}: Flag
    iciunit* {.importc: "iciunit".}: cstring
    iciend* {.importc: "iciend".}: Flag
    icifmt* {.importc: "icifmt".}: cstring
    icirlen* {.importc: "icirlen".}: Ftnint
    icirnum* {.importc: "icirnum".}: Ftnint

  Olist* {.importcpp: "olist", header: "AdvApp2Var_MathBase.hxx", bycopy.} = object
    oerr* {.importc: "oerr".}: Flag
    ounit* {.importc: "ounit".}: Ftnint
    ofnm* {.importc: "ofnm".}: cstring
    ofnmlen* {.importc: "ofnmlen".}: Ftnlen
    osta* {.importc: "osta".}: cstring
    oacc* {.importc: "oacc".}: cstring
    ofm* {.importc: "ofm".}: cstring
    orl* {.importc: "orl".}: Ftnint
    oblnk* {.importc: "oblnk".}: cstring

  Cllist* {.importcpp: "cllist", header: "AdvApp2Var_MathBase.hxx", bycopy.} = object
    cerr* {.importc: "cerr".}: Flag
    cunit* {.importc: "cunit".}: Ftnint
    csta* {.importc: "csta".}: cstring

  Alist* {.importcpp: "alist", header: "AdvApp2Var_MathBase.hxx", bycopy.} = object
    aerr* {.importc: "aerr".}: Flag
    aunit* {.importc: "aunit".}: Ftnint

  Inlist* {.importcpp: "inlist", header: "AdvApp2Var_MathBase.hxx", bycopy.} = object
    inerr* {.importc: "inerr".}: Flag
    inunit* {.importc: "inunit".}: Ftnint
    infile* {.importc: "infile".}: cstring
    infilen* {.importc: "infilen".}: Ftnlen
    inex* {.importc: "inex".}: ptr Ftnint
    inopen* {.importc: "inopen".}: ptr Ftnint
    innum* {.importc: "innum".}: ptr Ftnint
    innamed* {.importc: "innamed".}: ptr Ftnint
    inname* {.importc: "inname".}: cstring
    innamlen* {.importc: "innamlen".}: Ftnlen
    inacc* {.importc: "inacc".}: cstring
    inacclen* {.importc: "inacclen".}: Ftnlen
    inseq* {.importc: "inseq".}: cstring
    inseqlen* {.importc: "inseqlen".}: Ftnlen
    indir* {.importc: "indir".}: cstring
    indirlen* {.importc: "indirlen".}: Ftnlen
    infmt* {.importc: "infmt".}: cstring
    infmtlen* {.importc: "infmtlen".}: Ftnlen
    inform* {.importc: "inform".}: cstring
    informlen* {.importc: "informlen".}: Ftnint
    inunf* {.importc: "inunf".}: cstring
    inunflen* {.importc: "inunflen".}: Ftnlen
    inrecl* {.importc: "inrecl".}: ptr Ftnint
    innrec* {.importc: "innrec".}: ptr Ftnint
    inblank* {.importc: "inblank".}: cstring
    inblanklen* {.importc: "inblanklen".}: Ftnlen

  Multitype* {.importcpp: "Multitype", header: "AdvApp2Var_MathBase.hxx", bycopy,
              union.} = object
    g* {.importc: "g".}: integer1
    h* {.importc: "h".}: Shortint
    i* {.importc: "i".}: integer
    r* {.importc: "r".}: Real
    d* {.importc: "d".}: Doublereal
    c* {.importc: "c".}: Complex
    z* {.importc: "z".}: Doublecomplex

  Multitype* = multitype
  Vardesc* {.importcpp: "Vardesc", header: "AdvApp2Var_MathBase.hxx", bycopy.} = object
    name* {.importc: "name".}: cstring
    `addr`* {.importc: "addr".}: cstring
    dims* {.importc: "dims".}: ptr Ftnlen
    `type`* {.importc: "type".}: cint

  Vardesc* = vardesc
  Namelist* {.importcpp: "Namelist", header: "AdvApp2Var_MathBase.hxx", bycopy.} = object
    name* {.importc: "name".}: cstring
    vars* {.importc: "vars".}: ptr ptr Vardesc
    nvars* {.importc: "nvars".}: cint

  Namelist* = namelist

## !!!Ignored construct:  typedef int ( * U_fp ) ( ... ) ;
## Error: token expected: ; but got: ,!!!

## !!!Ignored construct:  typedef shortint ( * J_fp ) ( ... ) ;
## Error: token expected: ; but got: ,!!!

## !!!Ignored construct:  typedef integer ( * I_fp ) ( ... ) ;
## Error: token expected: ; but got: ,!!!

## !!!Ignored construct:  typedef real ( * R_fp ) ( ... ) ;
## Error: token expected: ; but got: ,!!!

## !!!Ignored construct:  typedef doublereal ( * D_fp ) ( ... ) , ( * E_fp ) ( ... ) ;
## Error: token expected: ; but got: ,!!!

type
  C_fp* = proc () {.varargs.}
  Z_fp* = proc () {.varargs.}
  L_fp* = proc (): Logical {.varargs.}
  K_fp* = proc (): Shortlogical {.varargs.}
  H_fp* = proc () {.varargs.}
  S_fp* = proc (): cint {.varargs.}
  C_f* = void
  H_f* = void
  Z_f* = void
  E_f* = Doublereal
  AdvApp2VarMathBase* {.importcpp: "AdvApp2Var_MathBase",
                       header: "AdvApp2Var_MathBase.hxx", bycopy.} = object


proc mmapcmp*(a1: ptr integer; a2: ptr integer; a3: ptr integer; a4: ptr cdouble;
             a5: ptr cdouble): cint {.importcpp: "AdvApp2Var_MathBase::mmapcmp_(@)",
                                  header: "AdvApp2Var_MathBase.hxx".}
proc mmdrc11*(a1: ptr integer; a2: ptr integer; a3: ptr integer; a4: ptr Doublereal;
             a5: ptr Doublereal; a6: ptr Doublereal): cint {.
    importcpp: "AdvApp2Var_MathBase::mmdrc11_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmfmca9*(a1: ptr integer; a2: ptr integer; a3: ptr integer; a4: ptr integer;
             a5: ptr integer; a6: ptr integer; a7: ptr Doublereal; a8: ptr Doublereal): cint {.
    importcpp: "AdvApp2Var_MathBase::mmfmca9_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmfmcb5*(a1: ptr integer; a2: ptr integer; a3: ptr integer; a4: ptr Doublereal;
             a5: ptr integer; a6: ptr integer; a7: ptr integer; a8: ptr Doublereal;
             a9: ptr integer): cint {.importcpp: "AdvApp2Var_MathBase::mmfmcb5_(@)",
                                  header: "AdvApp2Var_MathBase.hxx".}
proc mmwprcs*(a1: ptr Doublereal; a2: ptr Doublereal; a3: ptr Doublereal;
             a4: ptr Doublereal; a5: ptr integer; a6: ptr integer) {.
    importcpp: "AdvApp2Var_MathBase::mmwprcs_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmcglc1*(ndimax: ptr integer; ndimen: ptr integer; ncoeff: ptr integer;
             courbe: ptr Doublereal; tdebut: ptr Doublereal; tfinal: ptr Doublereal;
             epsiln: ptr Doublereal; xlongc: ptr Doublereal; erreur: ptr Doublereal;
             iercod: ptr integer): cint {.importcpp: "AdvApp2Var_MathBase::mmcglc1_(@)",
                                      header: "AdvApp2Var_MathBase.hxx".}
proc mmbulld*(nbcoln: ptr integer; nblign: ptr integer; dtabtr: ptr Doublereal;
             numcle: ptr integer): cint {.importcpp: "AdvApp2Var_MathBase::mmbulld_(@)",
                                      header: "AdvApp2Var_MathBase.hxx".}
proc mmcdriv*(ndimen: ptr integer; ncoeff: ptr integer; courbe: ptr Doublereal;
             ideriv: ptr integer; ncofdv: ptr integer; crvdrv: ptr Doublereal): cint {.
    importcpp: "AdvApp2Var_MathBase::mmcdriv_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmcvctx*(ndimen: ptr integer; ncofmx: ptr integer; nderiv: ptr integer;
             ctrtes: ptr Doublereal; crvres: ptr Doublereal; tabaux: ptr Doublereal;
             xmatri: ptr Doublereal; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mmcvctx_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mdsptpt*(ndimen: ptr integer; point1: ptr Doublereal; point2: ptr Doublereal;
             distan: ptr Doublereal): cint {.
    importcpp: "AdvApp2Var_MathBase::mdsptpt_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmaperx*(ncofmx: ptr integer; ndimen: ptr integer; ncoeff: ptr integer;
             iordre: ptr integer; crvjac: ptr Doublereal; ncfnew: ptr integer;
             ycvmax: ptr Doublereal; errmax: ptr Doublereal; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mmaperx_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmdrvck*(ncoeff: ptr integer; ndimen: ptr integer; courbe: ptr Doublereal;
             ideriv: ptr integer; tparam: ptr Doublereal; pntcrb: ptr Doublereal): cint {.
    importcpp: "AdvApp2Var_MathBase::mmdrvck_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmeps1*(epsilo: ptr Doublereal): cint {.importcpp: "AdvApp2Var_MathBase::mmeps1_(@)",
                                        header: "AdvApp2Var_MathBase.hxx".}
proc mmfmca8*(ndimen: ptr integer; ncoefu: ptr integer; ncoefv: ptr integer;
             ndimax: ptr integer; ncfumx: ptr integer; ncfvmx: ptr integer;
             tabini: ptr Doublereal; tabres: ptr Doublereal): cint {.
    importcpp: "AdvApp2Var_MathBase::mmfmca8_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmfmcar*(ndimen: ptr integer; ncofmx: ptr integer; ncoefu: ptr integer;
             ncoefv: ptr integer; patold: ptr Doublereal; upara1: ptr Doublereal;
             upara2: ptr Doublereal; vpara1: ptr Doublereal; vpara2: ptr Doublereal;
             patnew: ptr Doublereal; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mmfmcar_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmfmtb1*(maxsz1: ptr integer; table1: ptr Doublereal; isize1: ptr integer;
             jsize1: ptr integer; maxsz2: ptr integer; table2: ptr Doublereal;
             isize2: ptr integer; jsize2: ptr integer; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mmfmtb1_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmgaus1*(ndimf: ptr integer; bfunx: proc (ninteg: ptr integer;
    parame: ptr Doublereal; vfunj1: ptr Doublereal; iercod: ptr integer): cint;
             k: ptr integer; xd: ptr Doublereal; xf: ptr Doublereal;
             saux1: ptr Doublereal; saux2: ptr Doublereal; somme: ptr Doublereal;
             niter: ptr integer; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mmgaus1_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmhjcan*(ndimen: ptr integer; ncourb: ptr integer; ncftab: ptr integer;
             orcont: ptr integer; ncflim: ptr integer; tcbold: ptr Doublereal;
             tdecop: ptr Doublereal; tcbnew: ptr Doublereal; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mmhjcan_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mminltt*(ncolmx: ptr integer; nlgnmx: ptr integer; tabtri: ptr Doublereal;
             nbrcol: ptr integer; nbrlgn: ptr integer; ajoute: ptr Doublereal;
             epseg: ptr Doublereal; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mminltt_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmjaccv*(ncoef: ptr integer; ndim: ptr integer; ider: ptr integer;
             crvlgd: ptr Doublereal; polaux: ptr Doublereal; crvcan: ptr Doublereal): cint {.
    importcpp: "AdvApp2Var_MathBase::mmjaccv_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmpobas*(tparam: ptr Doublereal; iordre: ptr integer; ncoeff: ptr integer;
             nderiv: ptr integer; valbas: ptr Doublereal; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mmpobas_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmmpocur*(ncofmx: ptr integer; ndim: ptr integer; ndeg: ptr integer;
              courbe: ptr Doublereal; tparam: ptr Doublereal; tabval: ptr Doublereal): cint {.
    importcpp: "AdvApp2Var_MathBase::mmmpocur_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmposui*(dimmat: ptr integer; nistoc: ptr integer; aposit: ptr integer;
             posuiv: ptr integer; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mmposui_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmresol*(hdimen: ptr integer; gdimen: ptr integer; hnstoc: ptr integer;
             gnstoc: ptr integer; mnstoc: ptr integer; matsyh: ptr Doublereal;
             matsyg: ptr Doublereal; vecsyh: ptr Doublereal; vecsyg: ptr Doublereal;
             hposit: ptr integer; hposui: ptr integer; gposit: ptr integer;
             mmposui: ptr integer; mposit: ptr integer; vecsol: ptr Doublereal;
             iercod: ptr integer): cint {.importcpp: "AdvApp2Var_MathBase::mmresol_(@)",
                                      header: "AdvApp2Var_MathBase.hxx".}
proc mmrtptt*(ndglgd: ptr integer; rtlegd: ptr Doublereal): cint {.
    importcpp: "AdvApp2Var_MathBase::mmrtptt_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmsrre2*(tparam: ptr Doublereal; nbrval: ptr integer; tablev: ptr Doublereal;
             epsil: ptr Doublereal; numint: ptr integer; itypen: ptr integer;
             iercod: ptr integer): cint {.importcpp: "AdvApp2Var_MathBase::mmsrre2_(@)",
                                      header: "AdvApp2Var_MathBase.hxx".}
proc mmtrpjj*(ncofmx: ptr integer; ndimen: ptr integer; ncoeff: ptr integer;
             epsi3d: ptr Doublereal; iordre: ptr integer; crvlgd: ptr Doublereal;
             ycvmax: ptr Doublereal; errmax: ptr Doublereal; ncfnew: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mmtrpjj_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmunivt*(ndimen: ptr integer; vector: ptr Doublereal; vecnrm: ptr Doublereal;
             epsiln: ptr Doublereal; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mmunivt_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmvncol*(ndimen: ptr integer; vecin: ptr Doublereal; vecout: ptr Doublereal;
             iercod: ptr integer): cint {.importcpp: "AdvApp2Var_MathBase::mmvncol_(@)",
                                      header: "AdvApp2Var_MathBase.hxx".}
proc msc*(ndimen: ptr integer; vecte1: ptr Doublereal; vecte2: ptr Doublereal): Doublereal {.
    importcpp: "AdvApp2Var_MathBase::msc_(@)", header: "AdvApp2Var_MathBase.hxx".}
proc mvsheld*(n: ptr integer; `is`: ptr integer; dtab: ptr Doublereal; icle: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mvsheld_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmarcin*(ndimax: ptr integer; ndim: ptr integer; ncoeff: ptr integer;
             crvold: ptr Doublereal; u0: ptr Doublereal; u1: ptr Doublereal;
             crvnew: ptr Doublereal; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mmarcin_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmcvinv*(ndimax: ptr integer; ncoef: ptr integer; ndim: ptr integer;
             curveo: ptr Doublereal; curve: ptr Doublereal): cint {.
    importcpp: "AdvApp2Var_MathBase::mmcvinv_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmjacan*(ideriv: ptr integer; ndeg: ptr integer; poljac: ptr Doublereal;
             polcan: ptr Doublereal): cint {.
    importcpp: "AdvApp2Var_MathBase::mmjacan_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmpocrb*(ndimax: ptr integer; ncoeff: ptr integer; courbe: ptr Doublereal;
             ndim: ptr integer; tparam: ptr Doublereal; pntcrb: ptr Doublereal): cint {.
    importcpp: "AdvApp2Var_MathBase::mmpocrb_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmmrslwd*(normax: ptr integer; nordre: ptr integer; ndim: ptr integer;
              amat: ptr Doublereal; bmat: ptr Doublereal; epspiv: ptr Doublereal;
              aaux: ptr Doublereal; xmat: ptr Doublereal; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mmmrslwd_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmveps3*(eps03: ptr Doublereal): cint {.importcpp: "AdvApp2Var_MathBase::mmveps3_(@)",
                                        header: "AdvApp2Var_MathBase.hxx".}
proc powDi*(x: ptr Doublereal; n: ptr integer): Doublereal {.
    importcpp: "AdvApp2Var_MathBase::pow__di(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mzsnorm*(ndimen: ptr integer; vecteu: ptr Doublereal): Doublereal {.
    importcpp: "AdvApp2Var_MathBase::mzsnorm_(@)",
    header: "AdvApp2Var_MathBase.hxx".}