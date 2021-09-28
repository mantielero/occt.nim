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
  Doublereal* = cdouble

## !!!Ignored construct:  # [NewLine] # [NewLine] typedef unsigned long uinteger ;
## Error: identifier expected, but got: [NewLine]!!!

type
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

## !!!Ignored construct:  # 0  Adjust for integer*8. [NewLine] typedef long long longint ;
## Error: identifier expected, but got: ;!!!

##  system-dependent

## !!!Ignored construct:  typedef unsigned long long ulongint ;
## Error: identifier expected, but got: ;!!!

##  system-dependent

template qbitClear*(a, b: untyped): untyped =
  ((a) and not (cast[Ulongint](1) shl (b)))

template qbitSet*(a, b: untyped): untyped =
  ((a) or (cast[Ulongint](1) shl (b)))

## !!!Ignored construct:  # ( 1 ) ( 1 ) [NewLine] # ( 0 ) ( 0 ) [NewLine]  Extern is for use with -E # Extern [NewLine] # Extern extern [NewLine] # [NewLine]  I/O stuff # f2c_i2 [NewLine]  for -i2 typedef short flag ;
## Error: identifier expected, but got: (!!!

type
  Ftnlen* = cshort
  Ftnint* = cshort
  Flag* = clong
  Ftnlen* = clong
  Ftnint* = clong

## external read, write

type
  Cilist* {.importcpp: "cilist", header: "AdvApp2Var_Data_f2c.hxx", bycopy.} = object
    cierr* {.importc: "cierr".}: Flag
    ciunit* {.importc: "ciunit".}: Ftnint
    ciend* {.importc: "ciend".}: Flag
    cifmt* {.importc: "cifmt".}: cstring
    cirec* {.importc: "cirec".}: Ftnint


## internal read, write

type
  Icilist* {.importcpp: "icilist", header: "AdvApp2Var_Data_f2c.hxx", bycopy.} = object
    icierr* {.importc: "icierr".}: Flag
    iciunit* {.importc: "iciunit".}: cstring
    iciend* {.importc: "iciend".}: Flag
    icifmt* {.importc: "icifmt".}: cstring
    icirlen* {.importc: "icirlen".}: Ftnint
    icirnum* {.importc: "icirnum".}: Ftnint


## open

type
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


## close

type
  Cllist* {.importcpp: "cllist", header: "AdvApp2Var_Data_f2c.hxx", bycopy.} = object
    cerr* {.importc: "cerr".}: Flag
    cunit* {.importc: "cunit".}: Ftnint
    csta* {.importc: "csta".}: cstring


## rewind, backspace, endfile

type
  Alist* {.importcpp: "alist", header: "AdvApp2Var_Data_f2c.hxx", bycopy.} = object
    aerr* {.importc: "aerr".}: Flag
    aunit* {.importc: "aunit".}: Ftnint


##  inquire

type
  Inlist* {.importcpp: "inlist", header: "AdvApp2Var_Data_f2c.hxx", bycopy.} = object
    inerr* {.importc: "inerr".}: Flag
    inunit* {.importc: "inunit".}: Ftnint
    infile* {.importc: "infile".}: cstring
    infilen* {.importc: "infilen".}: Ftnlen
    inex* {.importc: "inex".}: ptr Ftnint ## parameters in standard's order
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


const
  VOID* = void

type
  Multitype* {.importcpp: "Multitype", header: "AdvApp2Var_Data_f2c.hxx", bycopy,
              union.} = object
    g* {.importc: "g".}: integer1 ##  for multiple entry points
    h* {.importc: "h".}: Shortint
    i* {.importc: "i".}: integer ##  longint j;
    r* {.importc: "r".}: Real
    d* {.importc: "d".}: Doublereal
    c* {.importc: "c".}: Complex
    z* {.importc: "z".}: Doublecomplex

  Multitype* = multitype

## typedef long int Long;
##  No longer used; formerly in Namelist

type
  Vardesc* {.importcpp: "Vardesc", header: "AdvApp2Var_Data_f2c.hxx", bycopy.} = object ##  for Namelist
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

template advappAbs*(x: untyped): untyped =
  (if (x) >= 0: (x) else: -(x))

template dabs*(x: untyped): untyped =
  cast[Doublereal](advappAbs(x))

template advappMin*(a, b: untyped): untyped =
  (if (a) <= (b): (a) else: (b))

template advappMax*(a, b: untyped): untyped =
  (if (a) >= (b): (a) else: (b))

template dmin*(a, b: untyped): untyped =
  cast[Doublereal](advappMin(a, b))

template dmax*(a, b: untyped): untyped =
  cast[Doublereal](advappMax(a, b))

template bitTest*(a, b: untyped): untyped =
  ((a) shr (b) and 1)

template bitClear*(a, b: untyped): untyped =
  ((a) and not (cast[uinteger](1) shl (b)))

template bitSet*(a, b: untyped): untyped =
  ((a) or (cast[uinteger](1) shl (b)))

##  procedure parameter types for -A and -C++

const
  F2C_procParTypes* = 1

##  E_fp is for real functions when -R is not specified

type
  C_f* = Void

##  complex function

type
  H_f* = Void

##  character function

type
  Z_f* = Void

##  double complex function

type
  E_f* = Doublereal

##  real function with -R not specified
##  undef any lower-case symbols that your C compiler predefines, e.g.:

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # when not defined(Skip_f2c_Undefs):
## #endif














































