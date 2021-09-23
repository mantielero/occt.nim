##  Copyright (c) 1991-1999 Matra Datavision
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, gp_Mat2d, gp_XY, gp_TrsfForm,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Mat2d"
discard "forward decl of gp_XY"
discard "forward decl of gp_Ax2d"
type
  gp_GTrsf2d* {.importcpp: "gp_GTrsf2d", header: "gp_GTrsf2d.hxx", bycopy.} = object ## !
                                                                             ## returns
                                                                             ## identity
                                                                             ## transformation.
    gp_GTrsf2d* {.importc: "gp_GTrsf2d".}: Standard_NODISCARD
    gp_GTrsf2d* {.importc: "gp_GTrsf2d".}: Standard_NODISCARD
    gp_GTrsf2d* {.importc: "gp_GTrsf2d".}: Standard_NODISCARD
    gp_GTrsf2d* {.importc: "gp_GTrsf2d".}: Standard_NODISCARD
    gp_XY* {.importc: "gp_XY".}: Standard_NODISCARD


proc constructgp_GTrsf2d*(): gp_GTrsf2d {.constructor, importcpp: "gp_GTrsf2d(@)",
                                       header: "gp_GTrsf2d.hxx".}
proc constructgp_GTrsf2d*(T: gp_Trsf2d): gp_GTrsf2d {.constructor,
    importcpp: "gp_GTrsf2d(@)", header: "gp_GTrsf2d.hxx".}
proc constructgp_GTrsf2d*(M: gp_Mat2d; V: gp_XY): gp_GTrsf2d {.constructor,
    importcpp: "gp_GTrsf2d(@)", header: "gp_GTrsf2d.hxx".}
proc SetAffinity*(this: var gp_GTrsf2d; A: gp_Ax2d; Ratio: Standard_Real) {.
    importcpp: "SetAffinity", header: "gp_GTrsf2d.hxx".}
proc SetValue*(this: var gp_GTrsf2d; Row: Standard_Integer; Col: Standard_Integer;
              Value: Standard_Real) {.importcpp: "SetValue",
                                    header: "gp_GTrsf2d.hxx".}
proc SetTranslationPart*(this: var gp_GTrsf2d; Coord: gp_XY) {.
    importcpp: "SetTranslationPart", header: "gp_GTrsf2d.hxx".}
proc SetTrsf2d*(this: var gp_GTrsf2d; T: gp_Trsf2d) {.importcpp: "SetTrsf2d",
    header: "gp_GTrsf2d.hxx".}
proc SetVectorialPart*(this: var gp_GTrsf2d; Matrix: gp_Mat2d) {.
    importcpp: "SetVectorialPart", header: "gp_GTrsf2d.hxx".}
proc IsNegative*(this: gp_GTrsf2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsNegative", header: "gp_GTrsf2d.hxx".}
proc IsSingular*(this: gp_GTrsf2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsSingular", header: "gp_GTrsf2d.hxx".}
proc Form*(this: gp_GTrsf2d): gp_TrsfForm {.noSideEffect, importcpp: "Form",
                                        header: "gp_GTrsf2d.hxx".}
proc TranslationPart*(this: gp_GTrsf2d): gp_XY {.noSideEffect,
    importcpp: "TranslationPart", header: "gp_GTrsf2d.hxx".}
proc VectorialPart*(this: gp_GTrsf2d): gp_Mat2d {.noSideEffect,
    importcpp: "VectorialPart", header: "gp_GTrsf2d.hxx".}
proc Value*(this: gp_GTrsf2d; Row: Standard_Integer; Col: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Value", header: "gp_GTrsf2d.hxx".}
proc `()`*(this: gp_GTrsf2d; Row: Standard_Integer; Col: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "#(@)", header: "gp_GTrsf2d.hxx".}
proc Invert*(this: var gp_GTrsf2d) {.importcpp: "Invert", header: "gp_GTrsf2d.hxx".}
## !!!Ignored construct:  Inverted ( ) const ;
## Error: identifier expected, but got: )!!!

## !!!Ignored construct:  Multiplied ( const gp_GTrsf2d & T ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator * ( const gp_GTrsf2d & T ) const { return Multiplied ( T ) ; } void Multiply ( const gp_GTrsf2d & T ) ;
## Error: identifier expected, but got: *!!!

proc `*=`*(this: var gp_GTrsf2d; T: gp_GTrsf2d) {.importcpp: "(# *= #)",
    header: "gp_GTrsf2d.hxx".}
proc PreMultiply*(this: var gp_GTrsf2d; T: gp_GTrsf2d) {.importcpp: "PreMultiply",
    header: "gp_GTrsf2d.hxx".}
proc Power*(this: var gp_GTrsf2d; N: Standard_Integer) {.importcpp: "Power",
    header: "gp_GTrsf2d.hxx".}
## !!!Ignored construct:  Powered ( const Standard_Integer N ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Transforms*(this: gp_GTrsf2d; Coord: var gp_XY) {.noSideEffect,
    importcpp: "Transforms", header: "gp_GTrsf2d.hxx".}
## !!!Ignored construct:  Transformed ( const gp_XY & Coord ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc Transforms*(this: gp_GTrsf2d; X: var Standard_Real; Y: var Standard_Real) {.
    noSideEffect, importcpp: "Transforms", header: "gp_GTrsf2d.hxx".}
proc Trsf2d*(this: gp_GTrsf2d): gp_Trsf2d {.noSideEffect, importcpp: "Trsf2d",
                                        header: "gp_GTrsf2d.hxx".}