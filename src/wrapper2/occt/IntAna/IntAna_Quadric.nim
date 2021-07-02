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
proc constructIntAnaQuadric*(p: GpPln): IntAnaQuadric {.constructor,
    importcpp: "IntAna_Quadric(@)", header: "IntAna_Quadric.hxx".}
proc constructIntAnaQuadric*(sph: GpSphere): IntAnaQuadric {.constructor,
    importcpp: "IntAna_Quadric(@)", header: "IntAna_Quadric.hxx".}
proc constructIntAnaQuadric*(cyl: GpCylinder): IntAnaQuadric {.constructor,
    importcpp: "IntAna_Quadric(@)", header: "IntAna_Quadric.hxx".}
proc constructIntAnaQuadric*(cone: GpCone): IntAnaQuadric {.constructor,
    importcpp: "IntAna_Quadric(@)", header: "IntAna_Quadric.hxx".}
proc setQuadric*(this: var IntAnaQuadric; p: GpPln) {.importcpp: "SetQuadric",
    header: "IntAna_Quadric.hxx".}
proc setQuadric*(this: var IntAnaQuadric; sph: GpSphere) {.importcpp: "SetQuadric",
    header: "IntAna_Quadric.hxx".}
proc setQuadric*(this: var IntAnaQuadric; con: GpCone) {.importcpp: "SetQuadric",
    header: "IntAna_Quadric.hxx".}
proc setQuadric*(this: var IntAnaQuadric; cyl: GpCylinder) {.importcpp: "SetQuadric",
    header: "IntAna_Quadric.hxx".}
proc coefficients*(this: IntAnaQuadric; xCXX: var StandardReal;
                  xCYY: var StandardReal; xCZZ: var StandardReal;
                  xCXY: var StandardReal; xCXZ: var StandardReal;
                  xCYZ: var StandardReal; xCX: var StandardReal;
                  xCY: var StandardReal; xCZ: var StandardReal;
                  xCCte: var StandardReal) {.noSideEffect,
    importcpp: "Coefficients", header: "IntAna_Quadric.hxx".}
proc newCoefficients*(this: IntAnaQuadric; xCXX: var StandardReal;
                     xCYY: var StandardReal; xCZZ: var StandardReal;
                     xCXY: var StandardReal; xCXZ: var StandardReal;
                     xCYZ: var StandardReal; xCX: var StandardReal;
                     xCY: var StandardReal; xCZ: var StandardReal;
                     xCCte: var StandardReal; axis: GpAx3) {.noSideEffect,
    importcpp: "NewCoefficients", header: "IntAna_Quadric.hxx".}
proc specialPoints*(this: IntAnaQuadric): NCollectionList[GpPnt] {.noSideEffect,
    importcpp: "SpecialPoints", header: "IntAna_Quadric.hxx".}

