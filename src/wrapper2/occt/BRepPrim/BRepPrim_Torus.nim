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
  BRepPrim_Torus* {.importcpp: "BRepPrim_Torus", header: "BRepPrim_Torus.hxx", bycopy.} = object of BRepPrim_Revolution ##
                                                                                                              ## !
                                                                                                              ## the
                                                                                                              ## STEP
                                                                                                              ## definition
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## Position
                                                                                                              ## :
                                                                                                              ## center
                                                                                                              ## and
                                                                                                              ## axes
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## Major,
                                                                                                              ## Minor
                                                                                                              ## :
                                                                                                              ## Radii
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## Errors
                                                                                                              ## :
                                                                                                              ## Major
                                                                                                              ## <
                                                                                                              ## Resolution
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## Minor
                                                                                                              ## <
                                                                                                              ## Resolution
    ## !< distance from the center of the pipe to the center of the torus
    ## !< radius of the pipe


proc constructBRepPrim_Torus*(Position: gp_Ax2; Major: Standard_Real;
                             Minor: Standard_Real): BRepPrim_Torus {.constructor,
    importcpp: "BRepPrim_Torus(@)", header: "BRepPrim_Torus.hxx".}
proc constructBRepPrim_Torus*(Major: Standard_Real; Minor: Standard_Real): BRepPrim_Torus {.
    constructor, importcpp: "BRepPrim_Torus(@)", header: "BRepPrim_Torus.hxx".}
proc constructBRepPrim_Torus*(Center: gp_Pnt; Major: Standard_Real;
                             Minor: Standard_Real): BRepPrim_Torus {.constructor,
    importcpp: "BRepPrim_Torus(@)", header: "BRepPrim_Torus.hxx".}
proc MakeEmptyLateralFace*(this: BRepPrim_Torus): TopoDS_Face {.noSideEffect,
    importcpp: "MakeEmptyLateralFace", header: "BRepPrim_Torus.hxx".}