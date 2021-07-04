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

import
  ../Standard/Standard_DefineAlloc, ../NCollection/NCollection_List

## ! This class provides a description of Quadrics by their
## ! Coefficients in natural coordinate system.

type
  IntAna_Quadric* {.importcpp: "IntAna_Quadric", header: "IntAna_Quadric.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## Constructor


proc constructIntAna_Quadric*(): IntAna_Quadric {.constructor,
    importcpp: "IntAna_Quadric(@)", header: "IntAna_Quadric.hxx".}
proc constructIntAna_Quadric*(P: gp_Pln): IntAna_Quadric {.constructor,
    importcpp: "IntAna_Quadric(@)", header: "IntAna_Quadric.hxx".}
proc constructIntAna_Quadric*(Sph: gp_Sphere): IntAna_Quadric {.constructor,
    importcpp: "IntAna_Quadric(@)", header: "IntAna_Quadric.hxx".}
proc constructIntAna_Quadric*(Cyl: gp_Cylinder): IntAna_Quadric {.constructor,
    importcpp: "IntAna_Quadric(@)", header: "IntAna_Quadric.hxx".}
proc constructIntAna_Quadric*(Cone: gp_Cone): IntAna_Quadric {.constructor,
    importcpp: "IntAna_Quadric(@)", header: "IntAna_Quadric.hxx".}
proc SetQuadric*(this: var IntAna_Quadric; P: gp_Pln) {.importcpp: "SetQuadric",
    header: "IntAna_Quadric.hxx".}
proc SetQuadric*(this: var IntAna_Quadric; Sph: gp_Sphere) {.importcpp: "SetQuadric",
    header: "IntAna_Quadric.hxx".}
proc SetQuadric*(this: var IntAna_Quadric; Con: gp_Cone) {.importcpp: "SetQuadric",
    header: "IntAna_Quadric.hxx".}
proc SetQuadric*(this: var IntAna_Quadric; Cyl: gp_Cylinder) {.
    importcpp: "SetQuadric", header: "IntAna_Quadric.hxx".}
proc Coefficients*(this: IntAna_Quadric; xCXX: var Standard_Real;
                  xCYY: var Standard_Real; xCZZ: var Standard_Real;
                  xCXY: var Standard_Real; xCXZ: var Standard_Real;
                  xCYZ: var Standard_Real; xCX: var Standard_Real;
                  xCY: var Standard_Real; xCZ: var Standard_Real;
                  xCCte: var Standard_Real) {.noSideEffect,
    importcpp: "Coefficients", header: "IntAna_Quadric.hxx".}
proc NewCoefficients*(this: IntAna_Quadric; xCXX: var Standard_Real;
                     xCYY: var Standard_Real; xCZZ: var Standard_Real;
                     xCXY: var Standard_Real; xCXZ: var Standard_Real;
                     xCYZ: var Standard_Real; xCX: var Standard_Real;
                     xCY: var Standard_Real; xCZ: var Standard_Real;
                     xCCte: var Standard_Real; Axis: gp_Ax3) {.noSideEffect,
    importcpp: "NewCoefficients", header: "IntAna_Quadric.hxx".}
proc SpecialPoints*(this: IntAna_Quadric): NCollection_List[gp_Pnt] {.noSideEffect,
    importcpp: "SpecialPoints", header: "IntAna_Quadric.hxx".}