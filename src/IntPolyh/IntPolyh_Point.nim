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

discard "forward decl of Adaptor3d_HSurface"
type
  IntPolyhPoint* {.importcpp: "IntPolyh_Point", header: "IntPolyh_Point.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Constructor


proc constructIntPolyhPoint*(): IntPolyhPoint {.constructor,
    importcpp: "IntPolyh_Point(@)", header: "IntPolyh_Point.hxx".}
proc constructIntPolyhPoint*(x: cfloat; y: cfloat; z: cfloat; u: cfloat; v: cfloat): IntPolyhPoint {.
    constructor, importcpp: "IntPolyh_Point(@)", header: "IntPolyh_Point.hxx".}
proc x*(this: IntPolyhPoint): cfloat {.noSideEffect, importcpp: "X",
                                   header: "IntPolyh_Point.hxx".}
proc y*(this: IntPolyhPoint): cfloat {.noSideEffect, importcpp: "Y",
                                   header: "IntPolyh_Point.hxx".}
proc z*(this: IntPolyhPoint): cfloat {.noSideEffect, importcpp: "Z",
                                   header: "IntPolyh_Point.hxx".}
proc u*(this: IntPolyhPoint): cfloat {.noSideEffect, importcpp: "U",
                                   header: "IntPolyh_Point.hxx".}
proc v*(this: IntPolyhPoint): cfloat {.noSideEffect, importcpp: "V",
                                   header: "IntPolyh_Point.hxx".}
proc partOfCommon*(this: IntPolyhPoint): cint {.noSideEffect,
    importcpp: "PartOfCommon", header: "IntPolyh_Point.hxx".}
proc set*(this: var IntPolyhPoint; x: cfloat; y: cfloat; z: cfloat; u: cfloat; v: cfloat;
         ii: cint = 1) {.importcpp: "Set", header: "IntPolyh_Point.hxx".}
proc setX*(this: var IntPolyhPoint; x: cfloat) {.importcpp: "SetX",
    header: "IntPolyh_Point.hxx".}
proc setY*(this: var IntPolyhPoint; y: cfloat) {.importcpp: "SetY",
    header: "IntPolyh_Point.hxx".}
proc setZ*(this: var IntPolyhPoint; z: cfloat) {.importcpp: "SetZ",
    header: "IntPolyh_Point.hxx".}
proc setU*(this: var IntPolyhPoint; u: cfloat) {.importcpp: "SetU",
    header: "IntPolyh_Point.hxx".}
proc setV*(this: var IntPolyhPoint; v: cfloat) {.importcpp: "SetV",
    header: "IntPolyh_Point.hxx".}
proc setPartOfCommon*(this: var IntPolyhPoint; ii: cint) {.
    importcpp: "SetPartOfCommon", header: "IntPolyh_Point.hxx".}
proc middle*(this: var IntPolyhPoint; mySurface: Handle[Adaptor3dHSurface];
            p1: IntPolyhPoint; p2: IntPolyhPoint) {.importcpp: "Middle",
    header: "IntPolyh_Point.hxx".}
proc add*(this: IntPolyhPoint; p1: IntPolyhPoint): IntPolyhPoint {.noSideEffect,
    importcpp: "Add", header: "IntPolyh_Point.hxx".}
proc `+`*(this: IntPolyhPoint; p1: IntPolyhPoint): IntPolyhPoint {.noSideEffect,
    importcpp: "(# + #)", header: "IntPolyh_Point.hxx".}
proc sub*(this: IntPolyhPoint; p1: IntPolyhPoint): IntPolyhPoint {.noSideEffect,
    importcpp: "Sub", header: "IntPolyh_Point.hxx".}
proc `-`*(this: IntPolyhPoint; p1: IntPolyhPoint): IntPolyhPoint {.noSideEffect,
    importcpp: "(# - #)", header: "IntPolyh_Point.hxx".}
proc divide*(this: IntPolyhPoint; rr: cfloat): IntPolyhPoint {.noSideEffect,
    importcpp: "Divide", header: "IntPolyh_Point.hxx".}
proc `/`*(this: IntPolyhPoint; rr: cfloat): IntPolyhPoint {.noSideEffect,
    importcpp: "(# / #)", header: "IntPolyh_Point.hxx".}
proc multiplication*(this: IntPolyhPoint; rr: cfloat): IntPolyhPoint {.noSideEffect,
    importcpp: "Multiplication", header: "IntPolyh_Point.hxx".}
proc `*`*(this: IntPolyhPoint; rr: cfloat): IntPolyhPoint {.noSideEffect,
    importcpp: "(# * #)", header: "IntPolyh_Point.hxx".}
proc squareModulus*(this: IntPolyhPoint): cfloat {.noSideEffect,
    importcpp: "SquareModulus", header: "IntPolyh_Point.hxx".}
proc squareDistance*(this: IntPolyhPoint; p2: IntPolyhPoint): cfloat {.noSideEffect,
    importcpp: "SquareDistance", header: "IntPolyh_Point.hxx".}
proc dot*(this: IntPolyhPoint; p2: IntPolyhPoint): cfloat {.noSideEffect,
    importcpp: "Dot", header: "IntPolyh_Point.hxx".}
proc cross*(this: var IntPolyhPoint; p1: IntPolyhPoint; p2: IntPolyhPoint) {.
    importcpp: "Cross", header: "IntPolyh_Point.hxx".}
proc dump*(this: IntPolyhPoint) {.noSideEffect, importcpp: "Dump",
                               header: "IntPolyh_Point.hxx".}
proc dump*(this: IntPolyhPoint; i: cint) {.noSideEffect, importcpp: "Dump",
                                      header: "IntPolyh_Point.hxx".}
proc setDegenerated*(this: var IntPolyhPoint; theFlag: bool) {.
    importcpp: "SetDegenerated", header: "IntPolyh_Point.hxx".}
proc degenerated*(this: IntPolyhPoint): bool {.noSideEffect,
    importcpp: "Degenerated", header: "IntPolyh_Point.hxx".}

























