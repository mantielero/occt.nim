##  Created on: 1992-11-05
##  Created by: Remi LEQUETTE
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real, BRepPrim_Revolution

discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Face"
type
  BRepPrim_Cone* {.importcpp: "BRepPrim_Cone", header: "BRepPrim_Cone.hxx", bycopy.} = object of BRepPrim_Revolution ##
                                                                                                           ## !
                                                                                                           ## the
                                                                                                           ## STEP
                                                                                                           ## definition
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## Angle
                                                                                                           ## =
                                                                                                           ## semi-angle
                                                                                                           ## of
                                                                                                           ## the
                                                                                                           ## cone
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## Position
                                                                                                           ## :
                                                                                                           ## the
                                                                                                           ## coordinate
                                                                                                           ## system
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## Height
                                                                                                           ## :
                                                                                                           ## height
                                                                                                           ## of
                                                                                                           ## the
                                                                                                           ## cone.
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## Radius
                                                                                                           ## :
                                                                                                           ## radius
                                                                                                           ## of
                                                                                                           ## truncated
                                                                                                           ## face
                                                                                                           ## at
                                                                                                           ## z
                                                                                                           ## =
                                                                                                           ## 0
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## The
                                                                                                           ## apex
                                                                                                           ## is
                                                                                                           ## on
                                                                                                           ## z
                                                                                                           ## <
                                                                                                           ## 0
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## Errors
                                                                                                           ## :
                                                                                                           ## Height
                                                                                                           ## <
                                                                                                           ## Resolution
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## Angle
                                                                                                           ## <
                                                                                                           ## Resolution
                                                                                                           ## /
                                                                                                           ## Height
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## Angle
                                                                                                           ## >
                                                                                                           ## PI/2
                                                                                                           ## -
                                                                                                           ## Resolution
                                                                                                           ## /
                                                                                                           ## Height


proc constructBRepPrim_Cone*(Angle: Standard_Real; Position: gp_Ax2;
                            Height: Standard_Real; Radius: Standard_Real = 0): BRepPrim_Cone {.
    constructor, importcpp: "BRepPrim_Cone(@)", header: "BRepPrim_Cone.hxx".}
proc constructBRepPrim_Cone*(Angle: Standard_Real): BRepPrim_Cone {.constructor,
    importcpp: "BRepPrim_Cone(@)", header: "BRepPrim_Cone.hxx".}
proc constructBRepPrim_Cone*(Angle: Standard_Real; Apex: gp_Pnt): BRepPrim_Cone {.
    constructor, importcpp: "BRepPrim_Cone(@)", header: "BRepPrim_Cone.hxx".}
proc constructBRepPrim_Cone*(Angle: Standard_Real; Axes: gp_Ax2): BRepPrim_Cone {.
    constructor, importcpp: "BRepPrim_Cone(@)", header: "BRepPrim_Cone.hxx".}
proc constructBRepPrim_Cone*(R1: Standard_Real; R2: Standard_Real; H: Standard_Real): BRepPrim_Cone {.
    constructor, importcpp: "BRepPrim_Cone(@)", header: "BRepPrim_Cone.hxx".}
proc constructBRepPrim_Cone*(Center: gp_Pnt; R1: Standard_Real; R2: Standard_Real;
                            H: Standard_Real): BRepPrim_Cone {.constructor,
    importcpp: "BRepPrim_Cone(@)", header: "BRepPrim_Cone.hxx".}
proc constructBRepPrim_Cone*(Axes: gp_Ax2; R1: Standard_Real; R2: Standard_Real;
                            H: Standard_Real): BRepPrim_Cone {.constructor,
    importcpp: "BRepPrim_Cone(@)", header: "BRepPrim_Cone.hxx".}
proc MakeEmptyLateralFace*(this: BRepPrim_Cone): TopoDS_Face {.noSideEffect,
    importcpp: "MakeEmptyLateralFace", header: "BRepPrim_Cone.hxx".}