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
proc constructIntPolyhPoint*(x: float; y: float; z: float; u: float; v: float): IntPolyhPoint {.
    constructor, importcpp: "IntPolyh_Point(@)", header: "IntPolyh_Point.hxx".}
proc x*(this: IntPolyhPoint): float {.noSideEffect, importcpp: "X",
                                  header: "IntPolyh_Point.hxx".}
proc y*(this: IntPolyhPoint): float {.noSideEffect, importcpp: "Y",
                                  header: "IntPolyh_Point.hxx".}
proc z*(this: IntPolyhPoint): float {.noSideEffect, importcpp: "Z",
                                  header: "IntPolyh_Point.hxx".}
proc u*(this: IntPolyhPoint): float {.noSideEffect, importcpp: "U",
                                  header: "IntPolyh_Point.hxx".}
proc v*(this: IntPolyhPoint): float {.noSideEffect, importcpp: "V",
                                  header: "IntPolyh_Point.hxx".}
proc partOfCommon*(this: IntPolyhPoint): int {.noSideEffect,
    importcpp: "PartOfCommon", header: "IntPolyh_Point.hxx".}
proc set*(this: var IntPolyhPoint; x: float; y: float; z: float; u: float; v: float;
         ii: int = 1) {.importcpp: "Set", header: "IntPolyh_Point.hxx".}
proc setX*(this: var IntPolyhPoint; x: float) {.importcpp: "SetX",
    header: "IntPolyh_Point.hxx".}
proc setY*(this: var IntPolyhPoint; y: float) {.importcpp: "SetY",
    header: "IntPolyh_Point.hxx".}
proc setZ*(this: var IntPolyhPoint; z: float) {.importcpp: "SetZ",
    header: "IntPolyh_Point.hxx".}
proc setU*(this: var IntPolyhPoint; u: float) {.importcpp: "SetU",
    header: "IntPolyh_Point.hxx".}
proc setV*(this: var IntPolyhPoint; v: float) {.importcpp: "SetV",
    header: "IntPolyh_Point.hxx".}
proc setPartOfCommon*(this: var IntPolyhPoint; ii: int) {.
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
proc divide*(this: IntPolyhPoint; rr: float): IntPolyhPoint {.noSideEffect,
    importcpp: "Divide", header: "IntPolyh_Point.hxx".}
proc `/`*(this: IntPolyhPoint; rr: float): IntPolyhPoint {.noSideEffect,
    importcpp: "(# / #)", header: "IntPolyh_Point.hxx".}
proc multiplication*(this: IntPolyhPoint; rr: float): IntPolyhPoint {.noSideEffect,
    importcpp: "Multiplication", header: "IntPolyh_Point.hxx".}
proc `*`*(this: IntPolyhPoint; rr: float): IntPolyhPoint {.noSideEffect,
    importcpp: "(# * #)", header: "IntPolyh_Point.hxx".}
proc squareModulus*(this: IntPolyhPoint): float {.noSideEffect,
    importcpp: "SquareModulus", header: "IntPolyh_Point.hxx".}
proc squareDistance*(this: IntPolyhPoint; p2: IntPolyhPoint): float {.noSideEffect,
    importcpp: "SquareDistance", header: "IntPolyh_Point.hxx".}
proc dot*(this: IntPolyhPoint; p2: IntPolyhPoint): float {.noSideEffect,
    importcpp: "Dot", header: "IntPolyh_Point.hxx".}
proc cross*(this: var IntPolyhPoint; p1: IntPolyhPoint; p2: IntPolyhPoint) {.
    importcpp: "Cross", header: "IntPolyh_Point.hxx".}
proc dump*(this: IntPolyhPoint) {.noSideEffect, importcpp: "Dump",
                               header: "IntPolyh_Point.hxx".}
proc dump*(this: IntPolyhPoint; i: int) {.noSideEffect, importcpp: "Dump",
                                     header: "IntPolyh_Point.hxx".}
proc setDegenerated*(this: var IntPolyhPoint; theFlag: bool) {.
    importcpp: "SetDegenerated", header: "IntPolyh_Point.hxx".}
proc degenerated*(this: IntPolyhPoint): bool {.noSideEffect,
    importcpp: "Degenerated", header: "IntPolyh_Point.hxx".}
