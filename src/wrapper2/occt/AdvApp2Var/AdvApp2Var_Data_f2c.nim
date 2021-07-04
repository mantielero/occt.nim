##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.
##  AdvApp2Var_Data_f2c.hxx

## !!!Ignored construct:  # Data_f2c_HeaderFile [NewLine] # Data_f2c_HeaderFile [NewLine] # [NewLine] typedef int integer ;
## Error: identifier expected, but got: ;!!!

type
  doublereal* = cdouble

## !!!Ignored construct:  # [NewLine] # [NewLine] typedef unsigned long uinteger ;
## Error: identifier expected, but got: [NewLine]!!!

type
  address* = cstring
  shortint* = cshort
  real* = cfloat
  complex* {.importcpp: "complex", header: "AdvApp2Var_Data_f2c.hxx", bycopy.} = object
    r* {.importc: "r".}: real
    i* {.importc: "i".}: real

  doublecomplex* {.importcpp: "doublecomplex", header: "AdvApp2Var_Data_f2c.hxx",
                  bycopy.} = object
    r* {.importc: "r".}: doublereal
    i* {.importc: "i".}: doublereal

  logical* = clong
  shortlogical* = cshort
  logical1* = char
  integer1* = char

## !!!Ignored construct:  # 0  Adjust for integer*8. [NewLine] typedef long long longint ;
## Error: identifier expected, but got: ;!!!

##  system-dependent

## !!!Ignored construct:  typedef unsigned long long ulongint ;
## Error: identifier expected, but got: ;!!!

##  system-dependent

template qbit_clear*(a, b: untyped): untyped =
  ((a) and not (cast[ulongint](1) shl (b)))

template qbit_set*(a, b: untyped): untyped =
  ((a) or (cast[ulongint](1) shl (b)))

## !!!Ignored construct:  # ( 1 ) ( 1 ) [NewLine] # ( 0 ) ( 0 ) [NewLine]  Extern is for use with -E # Extern [NewLine] # Extern extern [NewLine] # [NewLine]  I/O stuff # f2c_i2 [NewLine]  for -i2 typedef short flag ;
## Error: identifier expected, but got: (!!!

type
  ftnlen* = cshort
  ftnint* = cshort
  flag* = clong
  ftnlen* = clong
  ftnint* = clong

## external read, write

type
  cilist* {.importcpp: "cilist", header: "AdvApp2Var_Data_f2c.hxx", bycopy.} = object
    cierr* {.importc: "cierr".}: flag
    ciunit* {.importc: "ciunit".}: ftnint
    ciend* {.importc: "ciend".}: flag
    cifmt* {.importc: "cifmt".}: cstring
    cirec* {.importc: "cirec".}: ftnint


## internal read, write

type
  icilist* {.importcpp: "icilist", header: "AdvApp2Var_Data_f2c.hxx", bycopy.} = object
    icierr* {.importc: "icierr".}: flag
    iciunit* {.importc: "iciunit".}: cstring
    iciend* {.importc: "iciend".}: flag
    icifmt* {.importc: "icifmt".}: cstring
    icirlen* {.importc: "icirlen".}: ftnint
    icirnum* {.importc: "icirnum".}: ftnint


## open

type
  olist* {.importcpp: "olist", header: "AdvApp2Var_Data_f2c.hxx", bycopy.} = object
    oerr* {.importc: "oerr".}: flag
    ounit* {.importc: "ounit".}: ftnint
    ofnm* {.importc: "ofnm".}: cstring
    ofnmlen* {.importc: "ofnmlen".}: ftnlen
    osta* {.importc: "osta".}: cstring
    oacc* {.importc: "oacc".}: cstring
    ofm* {.importc: "ofm".}: cstring
    orl* {.importc: "orl".}: ftnint
    oblnk* {.importc: "oblnk".}: cstring


## close

type
  cllist* {.importcpp: "cllist", header: "AdvApp2Var_Data_f2c.hxx", bycopy.} = object
    cerr* {.importc: "cerr".}: flag
    cunit* {.importc: "cunit".}: ftnint
    csta* {.importc: "csta".}: cstring


## rewind, backspace, endfile

type
  alist* {.importcpp: "alist", header: "AdvApp2Var_Data_f2c.hxx", bycopy.} = object
    aerr* {.importc: "aerr".}: flag
    aunit* {.importc: "aunit".}: ftnint


##  inquire

type
  inlist* {.importcpp: "inlist", header: "AdvApp2Var_Data_f2c.hxx", bycopy.} = object
    inerr* {.importc: "inerr".}: flag
    inunit* {.importc: "inunit".}: ftnint
    infile* {.importc: "infile".}: cstring
    infilen* {.importc: "infilen".}: ftnlen
    inex* {.importc: "inex".}: ptr ftnint ## parameters in standard's order
    inopen* {.importc: "inopen".}: ptr ftnint
    innum* {.importc: "innum".}: ptr ftnint
    innamed* {.importc: "innamed".}: ptr ftnint
    inname* {.importc: "inname".}: cstring
    innamlen* {.importc: "innamlen".}: ftnlen
    inacc* {.importc: "inacc".}: cstring
    inacclen* {.importc: "inacclen".}: ftnlen
    inseq* {.importc: "inseq".}: cstring
    inseqlen* {.importc: "inseqlen".}: ftnlen
    indir* {.importc: "indir".}: cstring
    indirlen* {.importc: "indirlen".}: ftnlen
    infmt* {.importc: "infmt".}: cstring
    infmtlen* {.importc: "infmtlen".}: ftnlen
    inform* {.importc: "inform".}: cstring
    informlen* {.importc: "informlen".}: ftnint
    inunf* {.importc: "inunf".}: cstring
    inunflen* {.importc: "inunflen".}: ftnlen
    inrecl* {.importc: "inrecl".}: ptr ftnint
    innrec* {.importc: "innrec".}: ptr ftnint
    inblank* {.importc: "inblank".}: cstring
    inblanklen* {.importc: "inblanklen".}: ftnlen


const
  VOID* = void

type
  Multitype* {.importcpp: "Multitype", header: "AdvApp2Var_Data_f2c.hxx", bycopy,
              union.} = object
    g* {.importc: "g".}: integer1 ##  for multiple entry points
    h* {.importc: "h".}: shortint
    i* {.importc: "i".}: integer ##  longint j;
    r* {.importc: "r".}: real
    d* {.importc: "d".}: doublereal
    c* {.importc: "c".}: complex
    z* {.importc: "z".}: doublecomplex


## typedef long int Long;
##  No longer used; formerly in Namelist

type
  Vardesc* {.importcpp: "Vardesc", header: "AdvApp2Var_Data_f2c.hxx", bycopy.} = object ##  for Namelist
    name* {.importc: "name".}: cstring
    `addr`* {.importc: "addr".}: cstring
    dims* {.importc: "dims".}: ptr ftnlen
    `type`* {.importc: "type".}: cint

  Namelist* {.importcpp: "Namelist", header: "AdvApp2Var_Data_f2c.hxx", bycopy.} = object
    name* {.importc: "name".}: cstring
    vars* {.importc: "vars".}: ptr ptr Vardesc
    nvars* {.importc: "nvars".}: cint


template advapp_abs*(x: untyped): untyped =
  (if (x) >= 0: (x) else: -(x))

template dabs*(x: untyped): untyped =
  cast[doublereal](advapp_abs(x))

template advapp_min*(a, b: untyped): untyped =
  (if (a) <= (b): (a) else: (b))

template advapp_max*(a, b: untyped): untyped =
  (if (a) >= (b): (a) else: (b))

template dmin*(a, b: untyped): untyped =
  cast[doublereal](advapp_min(a, b))

template dmax*(a, b: untyped): untyped =
  cast[doublereal](advapp_max(a, b))

template bit_test*(a, b: untyped): untyped =
  ((a) shr (b) and 1)

template bit_clear*(a, b: untyped): untyped =
  ((a) and not (cast[uinteger](1) shl (b)))

template bit_set*(a, b: untyped): untyped =
  ((a) or (cast[uinteger](1) shl (b)))

##  procedure parameter types for -A and -C++

const
  F2C_proc_par_types* = 1

##  E_fp is for real functions when -R is not specified

type
  C_f* = VOID

##  complex function

type
  H_f* = VOID

##  character function

type
  Z_f* = VOID

##  double complex function

type
  E_f* = doublereal

##  real function with -R not specified
##  undef any lower-case symbols that your C compiler predefines, e.g.:

# when not defined(Skip_f2c_Undefs):
## #endif
