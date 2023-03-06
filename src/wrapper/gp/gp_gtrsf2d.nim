{.experimental: "callOperator".}
import gp_types
#import ../../tkernel/ncollection/ncollection_types
#import ../../tkernel/standard/standard_types

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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Mat2d"
discard "forward decl of gp_XY"
discard "forward decl of gp_Ax2d"

proc newGTrsf2d*(): GTrsf2d {.cdecl, constructor, importcpp: "gp_GTrsf2d(@)",
                           header: "gp_GTrsf2d.hxx".}
proc newGTrsf2d*(t: Trsf2dObj): GTrsf2d {.cdecl, constructor, importcpp: "gp_GTrsf2d(@)",
                                   header: "gp_GTrsf2d.hxx".}
proc newGTrsf2d*(m: Mat2dObj; v: XyObj): GTrsf2d {.cdecl, constructor,
                                       importcpp: "gp_GTrsf2d(@)", header: "gp_GTrsf2d.hxx".}
proc setAffinity*(this: var GTrsf2d; a: Ax2dObj; ratio: cfloat) {.cdecl,
    importcpp: "SetAffinity", header: "gp_GTrsf2d.hxx".}
proc setValue*(this: var GTrsf2d; row: cint; col: cint; value: cfloat) {.cdecl,
    importcpp: "SetValue", header: "gp_GTrsf2d.hxx".}
proc setTranslationPart*(this: var GTrsf2d; coord: XyObj) {.cdecl,
    importcpp: "SetTranslationPart", header: "gp_GTrsf2d.hxx".}
proc setTrsf2d*(this: var GTrsf2d; t: Trsf2dObj) {.cdecl, importcpp: "SetTrsf2d",
    header: "gp_GTrsf2d.hxx".}
proc setVectorialPart*(this: var GTrsf2d; matrix: Mat2dObj) {.cdecl,
    importcpp: "SetVectorialPart", header: "gp_GTrsf2d.hxx".}
proc isNegative*(this: GTrsf2d): bool {.noSideEffect, cdecl, importcpp: "IsNegative",
                                    header: "gp_GTrsf2d.hxx".}
proc isSingular*(this: GTrsf2d): bool {.noSideEffect, cdecl, importcpp: "IsSingular",
                                    header: "gp_GTrsf2d.hxx".}
proc form*(this: GTrsf2d): TrsfFormObj {.noSideEffect, cdecl, importcpp: "Form",
                                  header: "gp_GTrsf2d.hxx".}
proc translationPart*(this: GTrsf2d): XyObj {.noSideEffect, cdecl,
                                       importcpp: "TranslationPart",
                                       header: "gp_GTrsf2d.hxx".}
proc vectorialPart*(this: GTrsf2d): Mat2dObj {.noSideEffect, cdecl,
                                        importcpp: "VectorialPart", header: "gp_GTrsf2d.hxx".}
proc value*(this: GTrsf2d; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", header: "gp_GTrsf2d.hxx".}
proc `()`*(this: GTrsf2d; row: cint; col: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "#(@)", header: "gp_GTrsf2d.hxx".}
proc invert*(this: var GTrsf2d) {.cdecl, importcpp: "Invert", header: "gp_GTrsf2d.hxx".}
proc inverted*(this: GTrsf2d): GTrsf2d {.noSideEffect, cdecl, importcpp: "Inverted",
                                     header: "gp_GTrsf2d.hxx".}
proc multiplied*(this: GTrsf2d; t: GTrsf2d): GTrsf2d {.noSideEffect, cdecl,
    importcpp: "Multiplied", header: "gp_GTrsf2d.hxx".}
proc `*`*(this: GTrsf2d; t: GTrsf2d): GTrsf2d {.noSideEffect, cdecl,
    importcpp: "(# * #)", header: "gp_GTrsf2d.hxx".}
proc multiply*(this: var GTrsf2d; t: GTrsf2d) {.cdecl, importcpp: "Multiply",
    header: "gp_GTrsf2d.hxx".}
proc `*=`*(this: var GTrsf2d; t: GTrsf2d) {.cdecl, importcpp: "(# *= #)", header: "gp_GTrsf2d.hxx".}
proc preMultiply*(this: var GTrsf2d; t: GTrsf2d) {.cdecl, importcpp: "PreMultiply",
    header: "gp_GTrsf2d.hxx".}
proc power*(this: var GTrsf2d; n: cint) {.cdecl, importcpp: "Power", header: "gp_GTrsf2d.hxx".}
proc powered*(this: GTrsf2d; n: cint): GTrsf2d {.noSideEffect, cdecl,
    importcpp: "Powered", header: "gp_GTrsf2d.hxx".}
proc transforms*(this: GTrsf2d; coord: var XyObj) {.noSideEffect, cdecl,
    importcpp: "Transforms", header: "gp_GTrsf2d.hxx".}
proc transformed*(this: GTrsf2d; coord: XyObj): XyObj {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_GTrsf2d.hxx".}
proc transforms*(this: GTrsf2d; x: var cfloat; y: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Transforms", header: "gp_GTrsf2d.hxx".}
proc trsf2d*(this: GTrsf2d): Trsf2dObj {.noSideEffect, cdecl, importcpp: "Trsf2d",
                                  header: "gp_GTrsf2d.hxx".}
