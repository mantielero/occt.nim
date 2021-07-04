##  Created on: 1999-03-05
##  Created by: Fabrice SERVANT
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Adaptor3d_HSurface"
type
  IntPolyh_Point* {.importcpp: "IntPolyh_Point", header: "IntPolyh_Point.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Constructor


proc constructIntPolyh_Point*(): IntPolyh_Point {.constructor,
    importcpp: "IntPolyh_Point(@)", header: "IntPolyh_Point.hxx".}
proc constructIntPolyh_Point*(x: Standard_Real; y: Standard_Real; z: Standard_Real;
                             u: Standard_Real; v: Standard_Real): IntPolyh_Point {.
    constructor, importcpp: "IntPolyh_Point(@)", header: "IntPolyh_Point.hxx".}
proc X*(this: IntPolyh_Point): Standard_Real {.noSideEffect, importcpp: "X",
    header: "IntPolyh_Point.hxx".}
proc Y*(this: IntPolyh_Point): Standard_Real {.noSideEffect, importcpp: "Y",
    header: "IntPolyh_Point.hxx".}
proc Z*(this: IntPolyh_Point): Standard_Real {.noSideEffect, importcpp: "Z",
    header: "IntPolyh_Point.hxx".}
proc U*(this: IntPolyh_Point): Standard_Real {.noSideEffect, importcpp: "U",
    header: "IntPolyh_Point.hxx".}
proc V*(this: IntPolyh_Point): Standard_Real {.noSideEffect, importcpp: "V",
    header: "IntPolyh_Point.hxx".}
proc PartOfCommon*(this: IntPolyh_Point): Standard_Integer {.noSideEffect,
    importcpp: "PartOfCommon", header: "IntPolyh_Point.hxx".}
proc Set*(this: var IntPolyh_Point; x: Standard_Real; y: Standard_Real;
         z: Standard_Real; u: Standard_Real; v: Standard_Real;
         II: Standard_Integer = 1) {.importcpp: "Set", header: "IntPolyh_Point.hxx".}
proc SetX*(this: var IntPolyh_Point; x: Standard_Real) {.importcpp: "SetX",
    header: "IntPolyh_Point.hxx".}
proc SetY*(this: var IntPolyh_Point; y: Standard_Real) {.importcpp: "SetY",
    header: "IntPolyh_Point.hxx".}
proc SetZ*(this: var IntPolyh_Point; z: Standard_Real) {.importcpp: "SetZ",
    header: "IntPolyh_Point.hxx".}
proc SetU*(this: var IntPolyh_Point; u: Standard_Real) {.importcpp: "SetU",
    header: "IntPolyh_Point.hxx".}
proc SetV*(this: var IntPolyh_Point; v: Standard_Real) {.importcpp: "SetV",
    header: "IntPolyh_Point.hxx".}
proc SetPartOfCommon*(this: var IntPolyh_Point; ii: Standard_Integer) {.
    importcpp: "SetPartOfCommon", header: "IntPolyh_Point.hxx".}
proc Middle*(this: var IntPolyh_Point; MySurface: handle[Adaptor3d_HSurface];
            P1: IntPolyh_Point; P2: IntPolyh_Point) {.importcpp: "Middle",
    header: "IntPolyh_Point.hxx".}
proc Add*(this: IntPolyh_Point; P1: IntPolyh_Point): IntPolyh_Point {.noSideEffect,
    importcpp: "Add", header: "IntPolyh_Point.hxx".}
proc `+`*(this: IntPolyh_Point; P1: IntPolyh_Point): IntPolyh_Point {.noSideEffect,
    importcpp: "(# + #)", header: "IntPolyh_Point.hxx".}
proc Sub*(this: IntPolyh_Point; P1: IntPolyh_Point): IntPolyh_Point {.noSideEffect,
    importcpp: "Sub", header: "IntPolyh_Point.hxx".}
proc `-`*(this: IntPolyh_Point; P1: IntPolyh_Point): IntPolyh_Point {.noSideEffect,
    importcpp: "(# - #)", header: "IntPolyh_Point.hxx".}
proc Divide*(this: IntPolyh_Point; rr: Standard_Real): IntPolyh_Point {.noSideEffect,
    importcpp: "Divide", header: "IntPolyh_Point.hxx".}
proc `/`*(this: IntPolyh_Point; rr: Standard_Real): IntPolyh_Point {.noSideEffect,
    importcpp: "(# / #)", header: "IntPolyh_Point.hxx".}
proc Multiplication*(this: IntPolyh_Point; rr: Standard_Real): IntPolyh_Point {.
    noSideEffect, importcpp: "Multiplication", header: "IntPolyh_Point.hxx".}
proc `*`*(this: IntPolyh_Point; rr: Standard_Real): IntPolyh_Point {.noSideEffect,
    importcpp: "(# * #)", header: "IntPolyh_Point.hxx".}
proc SquareModulus*(this: IntPolyh_Point): Standard_Real {.noSideEffect,
    importcpp: "SquareModulus", header: "IntPolyh_Point.hxx".}
proc SquareDistance*(this: IntPolyh_Point; P2: IntPolyh_Point): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "IntPolyh_Point.hxx".}
proc Dot*(this: IntPolyh_Point; P2: IntPolyh_Point): Standard_Real {.noSideEffect,
    importcpp: "Dot", header: "IntPolyh_Point.hxx".}
proc Cross*(this: var IntPolyh_Point; P1: IntPolyh_Point; P2: IntPolyh_Point) {.
    importcpp: "Cross", header: "IntPolyh_Point.hxx".}
proc Dump*(this: IntPolyh_Point) {.noSideEffect, importcpp: "Dump",
                                header: "IntPolyh_Point.hxx".}
proc Dump*(this: IntPolyh_Point; i: Standard_Integer) {.noSideEffect,
    importcpp: "Dump", header: "IntPolyh_Point.hxx".}
proc SetDegenerated*(this: var IntPolyh_Point; theFlag: Standard_Boolean) {.
    importcpp: "SetDegenerated", header: "IntPolyh_Point.hxx".}
proc Degenerated*(this: IntPolyh_Point): Standard_Boolean {.noSideEffect,
    importcpp: "Degenerated", header: "IntPolyh_Point.hxx".}