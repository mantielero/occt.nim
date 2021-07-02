type
  integer* = cint
  Doublereal* = cdouble
  uinteger* = culong
  Address* = cstring
  Shortint* = cshort
  Real* = cfloat
  Complex* {.importcpp: "complex", header: "AdvApp2Var_Data_f2c.hxx", bycopy.} = object
    r* {.importc: "r".}: Real
    i* {.importc: "i".}: Real

  Doublecomplex* {.importcpp: "doublecomplex", header: "AdvApp2Var_Data_f2c.hxx",
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
  Cilist* {.importcpp: "cilist", header: "AdvApp2Var_Data_f2c.hxx", bycopy.} = object
    cierr* {.importc: "cierr".}: Flag
    ciunit* {.importc: "ciunit".}: Ftnint
    ciend* {.importc: "ciend".}: Flag
    cifmt* {.importc: "cifmt".}: cstring
    cirec* {.importc: "cirec".}: Ftnint

  Icilist* {.importcpp: "icilist", header: "AdvApp2Var_Data_f2c.hxx", bycopy.} = object
    icierr* {.importc: "icierr".}: Flag
    iciunit* {.importc: "iciunit".}: cstring
    iciend* {.importc: "iciend".}: Flag
    icifmt* {.importc: "icifmt".}: cstring
    icirlen* {.importc: "icirlen".}: Ftnint
    icirnum* {.importc: "icirnum".}: Ftnint

  Olist* {.importcpp: "olist", header: "AdvApp2Var_Data_f2c.hxx", bycopy.} = object
    oerr* {.importc: "oerr".}: Flag
    ounit* {.importc: "ounit".}: Ftnint
    ofnm* {.importc: "ofnm".}: cstring
    ofnmlen* {.importc: "ofnmlen".}: Ftnlen
    osta* {.importc: "osta".}: cstring
    oacc* {.importc: "oacc".}: cstring
    ofm* {.importc: "ofm".}: cstring
    orl* {.importc: "orl".}: Ftnint
    oblnk* {.importc: "oblnk".}: cstring

  Cllist* {.importcpp: "cllist", header: "AdvApp2Var_Data_f2c.hxx", bycopy.} = object
    cerr* {.importc: "cerr".}: Flag
    cunit* {.importc: "cunit".}: Ftnint
    csta* {.importc: "csta".}: cstring

  Alist* {.importcpp: "alist", header: "AdvApp2Var_Data_f2c.hxx", bycopy.} = object
    aerr* {.importc: "aerr".}: Flag
    aunit* {.importc: "aunit".}: Ftnint

  Inlist* {.importcpp: "inlist", header: "AdvApp2Var_Data_f2c.hxx", bycopy.} = object
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

  Multitype* {.importcpp: "Multitype", header: "AdvApp2Var_Data_f2c.hxx", bycopy,
              union.} = object
    g* {.importc: "g".}: integer1
    h* {.importc: "h".}: Shortint
    i* {.importc: "i".}: integer
    r* {.importc: "r".}: Real
    d* {.importc: "d".}: Doublereal
    c* {.importc: "c".}: Complex
    z* {.importc: "z".}: Doublecomplex

  Multitype* = multitype
  Vardesc* {.importcpp: "Vardesc", header: "AdvApp2Var_Data_f2c.hxx", bycopy.} = object
    name* {.importc: "name".}: cstring
    `addr`* {.importc: "addr".}: cstring
    dims* {.importc: "dims".}: ptr Ftnlen
    `type`* {.importc: "type".}: cint

  Vardesc* = vardesc
  Namelist* {.importcpp: "Namelist", header: "AdvApp2Var_Data_f2c.hxx", bycopy.} = object
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
