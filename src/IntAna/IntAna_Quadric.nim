##  Created on: 1992-07-01
##  Created by: Laurent BUCHARD
##  Copyright (c) 1992-1999 Matra Datavision
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

## ! This class provides a description of Quadrics by their
## ! Coefficients in natural coordinate system.

type
  IntAnaQuadric* {.importcpp: "IntAna_Quadric", header: "IntAna_Quadric.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Empty
                                                                                        ## Constructor


proc constructIntAnaQuadric*(): IntAnaQuadric {.constructor,
    importcpp: "IntAna_Quadric(@)", header: "IntAna_Quadric.hxx".}
proc constructIntAnaQuadric*(p: Pln): IntAnaQuadric {.constructor,
    importcpp: "IntAna_Quadric(@)", header: "IntAna_Quadric.hxx".}
proc constructIntAnaQuadric*(sph: Sphere): IntAnaQuadric {.constructor,
    importcpp: "IntAna_Quadric(@)", header: "IntAna_Quadric.hxx".}
proc constructIntAnaQuadric*(cyl: Cylinder): IntAnaQuadric {.constructor,
    importcpp: "IntAna_Quadric(@)", header: "IntAna_Quadric.hxx".}
proc constructIntAnaQuadric*(cone: Cone): IntAnaQuadric {.constructor,
    importcpp: "IntAna_Quadric(@)", header: "IntAna_Quadric.hxx".}
proc setQuadric*(this: var IntAnaQuadric; p: Pln) {.importcpp: "SetQuadric",
    header: "IntAna_Quadric.hxx".}
proc setQuadric*(this: var IntAnaQuadric; sph: Sphere) {.importcpp: "SetQuadric",
    header: "IntAna_Quadric.hxx".}
proc setQuadric*(this: var IntAnaQuadric; con: Cone) {.importcpp: "SetQuadric",
    header: "IntAna_Quadric.hxx".}
proc setQuadric*(this: var IntAnaQuadric; cyl: Cylinder) {.importcpp: "SetQuadric",
    header: "IntAna_Quadric.hxx".}
proc coefficients*(this: IntAnaQuadric; xCXX: var cfloat; xCYY: var cfloat;
                  xCZZ: var cfloat; xCXY: var cfloat; xCXZ: var cfloat; xCYZ: var cfloat;
                  xCX: var cfloat; xCY: var cfloat; xCZ: var cfloat; xCCte: var cfloat) {.
    noSideEffect, importcpp: "Coefficients", header: "IntAna_Quadric.hxx".}
proc newCoefficients*(this: IntAnaQuadric; xCXX: var cfloat; xCYY: var cfloat;
                     xCZZ: var cfloat; xCXY: var cfloat; xCXZ: var cfloat;
                     xCYZ: var cfloat; xCX: var cfloat; xCY: var cfloat; xCZ: var cfloat;
                     xCCte: var cfloat; axis: Ax3) {.noSideEffect,
    importcpp: "NewCoefficients", header: "IntAna_Quadric.hxx".}
proc specialPoints*(this: IntAnaQuadric): NCollectionList[Pnt] {.noSideEffect,
    importcpp: "SpecialPoints", header: "IntAna_Quadric.hxx".}

























