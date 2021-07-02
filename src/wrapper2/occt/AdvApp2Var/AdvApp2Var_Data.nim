type
  integer* = cint
  Doublereal* = cdouble
  uinteger* = culong
  Address* = cstring
  Shortint* = cshort
  Real* = cfloat
  Complex* {.importcpp: "complex", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    r* {.importc: "r".}: Real
    i* {.importc: "i".}: Real

  Doublecomplex* {.importcpp: "doublecomplex", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    r* {.importc: "r".}: Doublereal
    i* {.importc: "i".}: Doublereal

  Logical* = clong
  Shortlogical* = cshort
  Logical1* = char
  integer1* = char
  Flag* = clong
  Ftnlen* = clong
  Ftnint* = clong
  Cilist* {.importcpp: "cilist", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    cierr* {.importc: "cierr".}: Flag
    ciunit* {.importc: "ciunit".}: Ftnint
    ciend* {.importc: "ciend".}: Flag
    cifmt* {.importc: "cifmt".}: cstring
    cirec* {.importc: "cirec".}: Ftnint

  Icilist* {.importcpp: "icilist", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    icierr* {.importc: "icierr".}: Flag
    iciunit* {.importc: "iciunit".}: cstring
    iciend* {.importc: "iciend".}: Flag
    icifmt* {.importc: "icifmt".}: cstring
    icirlen* {.importc: "icirlen".}: Ftnint
    icirnum* {.importc: "icirnum".}: Ftnint

  Olist* {.importcpp: "olist", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    oerr* {.importc: "oerr".}: Flag
    ounit* {.importc: "ounit".}: Ftnint
    ofnm* {.importc: "ofnm".}: cstring
    ofnmlen* {.importc: "ofnmlen".}: Ftnlen
    osta* {.importc: "osta".}: cstring
    oacc* {.importc: "oacc".}: cstring
    ofm* {.importc: "ofm".}: cstring
    orl* {.importc: "orl".}: Ftnint
    oblnk* {.importc: "oblnk".}: cstring

  Cllist* {.importcpp: "cllist", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    cerr* {.importc: "cerr".}: Flag
    cunit* {.importc: "cunit".}: Ftnint
    csta* {.importc: "csta".}: cstring

  Alist* {.importcpp: "alist", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    aerr* {.importc: "aerr".}: Flag
    aunit* {.importc: "aunit".}: Ftnint

  Inlist* {.importcpp: "inlist", header: "AdvApp2Var_Data.hxx", bycopy.} = object
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

  Multitype* {.importcpp: "Multitype", header: "AdvApp2Var_Data.hxx", bycopy, union.} = object
    g* {.importc: "g".}: integer1
    h* {.importc: "h".}: Shortint
    i* {.importc: "i".}: integer
    r* {.importc: "r".}: Real
    d* {.importc: "d".}: Doublereal
    c* {.importc: "c".}: Complex
    z* {.importc: "z".}: Doublecomplex

  Multitype* = multitype
  Vardesc* {.importcpp: "Vardesc", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    name* {.importc: "name".}: cstring
    `addr`* {.importc: "addr".}: cstring
    dims* {.importc: "dims".}: ptr Ftnlen
    `type`* {.importc: "type".}: cint

  Vardesc* = vardesc
  Namelist* {.importcpp: "Namelist", header: "AdvApp2Var_Data.hxx", bycopy.} = object
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
  Mdnombr1* {.importcpp: "mdnombr_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    pi* {.importc: "pi".}: Doublereal
    deuxpi* {.importc: "deuxpi".}: Doublereal
    pisur2* {.importc: "pisur2".}: Doublereal
    pis180* {.importc: "pis180".}: Doublereal
    c180pi* {.importc: "c180pi".}: Doublereal
    zero* {.importc: "zero".}: Doublereal
    one* {.importc: "one".}: Doublereal
    a180* {.importc: "a180".}: Doublereal
    a360* {.importc: "a360".}: Doublereal
    a90* {.importc: "a90".}: Doublereal

  Minombr1* {.importcpp: "minombr_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    nbr* {.importc: "nbr".}: array[1001, integer]

  Maovpar1* {.importcpp: "maovpar_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    r8und* {.importc: "r8und".}: Doublereal
    r8ovr* {.importc: "r8ovr".}: Doublereal
    x4und* {.importc: "x4und".}: Doublereal
    x4ovr* {.importc: "x4ovr".}: Doublereal
    r4und* {.importc: "r4und".}: Real
    r4ovr* {.importc: "r4ovr".}: Real
    r4nbe* {.importc: "r4nbe".}: integer
    r8nbm* {.importc: "r8nbm".}: integer
    r8nbe* {.importc: "r8nbe".}: integer
    i4ovr* {.importc: "i4ovr".}: integer
    i4ovn* {.importc: "i4ovn".}: integer
    r4exp* {.importc: "r4exp".}: integer
    r8exp* {.importc: "r8exp".}: integer
    r4exn* {.importc: "r4exn".}: integer
    r8exn* {.importc: "r8exn".}: integer
    r4ncs* {.importc: "r4ncs".}: integer
    r8ncs* {.importc: "r8ncs".}: integer
    r4nbm* {.importc: "r4nbm".}: integer
    i2ovr* {.importc: "i2ovr".}: Shortint
    i2ovn* {.importc: "i2ovn".}: Shortint

  Maovpch1* {.importcpp: "maovpch_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    cnmmac* {.importc: "cnmmac".}: array[16, char]
    frmr4* {.importc: "frmr4".}: array[8, char]
    frmr8* {.importc: "frmr8".}: array[8, char]
    cdcode* {.importc: "cdcode".}: array[8, char]

  Mlgdrtl1* {.importcpp: "mlgdrtl_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    rootab* {.importc: "rootab".}: array[930, Doublereal]
    hiltab* {.importc: "hiltab".}: array[930, Doublereal]
    hi0tab* {.importc: "hi0tab".}: array[31, Doublereal]

  Mmjcobi1* {.importcpp: "mmjcobi_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    plgcan* {.importc: "plgcan".}: array[3968, Doublereal]
    canjac* {.importc: "canjac".}: array[3968, Doublereal]

  Mmcmcnp1* {.importcpp: "mmcmcnp_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    cnp* {.importc: "cnp".}: array[3721, Doublereal]

  Mmapgss1* {.importcpp: "mmapgss_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    gslxjs* {.importc: "gslxjs".}: array[5017, Doublereal]
    gsl0js* {.importc: "gsl0js".}: array[52, Doublereal]

  Mmapgs01* {.importcpp: "mmapgs0_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    gslxj0* {.importc: "gslxj0".}: array[4761, Doublereal]
    gsl0j0* {.importc: "gsl0j0".}: array[49, Doublereal]

  Mmapgs11* {.importcpp: "mmapgs1_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    gslxj1* {.importc: "gslxj1".}: array[4505, Doublereal]
    gsl0j1* {.importc: "gsl0j1".}: array[46, Doublereal]

  Mmapgs21* {.importcpp: "mmapgs2_1_", header: "AdvApp2Var_Data.hxx", bycopy.} = object
    gslxj2* {.importc: "gslxj2".}: array[4249, Doublereal]
    gsl0j2* {.importc: "gsl0j2".}: array[43, Doublereal]

  AdvApp2VarData* {.importcpp: "AdvApp2Var_Data", header: "AdvApp2Var_Data.hxx",
                   bycopy.} = object


proc getmdnombr*(): var Mdnombr1 {.importcpp: "AdvApp2Var_Data::Getmdnombr(@)",
                               header: "AdvApp2Var_Data.hxx".}
proc getminombr*(): var Minombr1 {.importcpp: "AdvApp2Var_Data::Getminombr(@)",
                               header: "AdvApp2Var_Data.hxx".}
proc getmaovpar*(): var Maovpar1 {.importcpp: "AdvApp2Var_Data::Getmaovpar(@)",
                               header: "AdvApp2Var_Data.hxx".}
proc getmaovpch*(): var Maovpch1 {.importcpp: "AdvApp2Var_Data::Getmaovpch(@)",
                               header: "AdvApp2Var_Data.hxx".}
proc getmlgdrtl*(): var Mlgdrtl1 {.importcpp: "AdvApp2Var_Data::Getmlgdrtl(@)",
                               header: "AdvApp2Var_Data.hxx".}
proc getmmjcobi*(): var Mmjcobi1 {.importcpp: "AdvApp2Var_Data::Getmmjcobi(@)",
                               header: "AdvApp2Var_Data.hxx".}
proc getmmcmcnp*(): var Mmcmcnp1 {.importcpp: "AdvApp2Var_Data::Getmmcmcnp(@)",
                               header: "AdvApp2Var_Data.hxx".}
proc getmmapgss*(): var Mmapgss1 {.importcpp: "AdvApp2Var_Data::Getmmapgss(@)",
                               header: "AdvApp2Var_Data.hxx".}
proc getmmapgs0*(): var Mmapgs01 {.importcpp: "AdvApp2Var_Data::Getmmapgs0(@)",
                               header: "AdvApp2Var_Data.hxx".}
proc getmmapgs1*(): var Mmapgs11 {.importcpp: "AdvApp2Var_Data::Getmmapgs1(@)",
                               header: "AdvApp2Var_Data.hxx".}
proc getmmapgs2*(): var Mmapgs21 {.importcpp: "AdvApp2Var_Data::Getmmapgs2(@)",
                               header: "AdvApp2Var_Data.hxx".}