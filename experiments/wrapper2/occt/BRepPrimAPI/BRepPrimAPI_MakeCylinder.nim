##  Created on: 1993-07-21
##  Created by: Remi LEQUETTE
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../BRepPrim/BRepPrim_Cylinder,
  BRepPrimAPI_MakeOneAxis, ../Standard/Standard_Real, ../Standard/Standard_Address

discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Ax2"
discard "forward decl of BRepPrim_Cylinder"
type
  BRepPrimAPI_MakeCylinder* {.importcpp: "BRepPrimAPI_MakeCylinder",
                             header: "BRepPrimAPI_MakeCylinder.hxx", bycopy.} = object of BRepPrimAPI_MakeOneAxis ##
                                                                                                           ## !
                                                                                                           ## Make
                                                                                                           ## a
                                                                                                           ## cylinder.
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## @param
                                                                                                           ## R
                                                                                                           ## [in]
                                                                                                           ## cylinder
                                                                                                           ## radius
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## @param
                                                                                                           ## H
                                                                                                           ## [in]
                                                                                                           ## cylinder
                                                                                                           ## height


proc constructBRepPrimAPI_MakeCylinder*(R: Standard_Real; H: Standard_Real): BRepPrimAPI_MakeCylinder {.
    constructor, importcpp: "BRepPrimAPI_MakeCylinder(@)",
    header: "BRepPrimAPI_MakeCylinder.hxx".}
proc constructBRepPrimAPI_MakeCylinder*(R: Standard_Real; H: Standard_Real;
                                       Angle: Standard_Real): BRepPrimAPI_MakeCylinder {.
    constructor, importcpp: "BRepPrimAPI_MakeCylinder(@)",
    header: "BRepPrimAPI_MakeCylinder.hxx".}
proc constructBRepPrimAPI_MakeCylinder*(Axes: gp_Ax2; R: Standard_Real;
                                       H: Standard_Real): BRepPrimAPI_MakeCylinder {.
    constructor, importcpp: "BRepPrimAPI_MakeCylinder(@)",
    header: "BRepPrimAPI_MakeCylinder.hxx".}
proc constructBRepPrimAPI_MakeCylinder*(Axes: gp_Ax2; R: Standard_Real;
                                       H: Standard_Real; Angle: Standard_Real): BRepPrimAPI_MakeCylinder {.
    constructor, importcpp: "BRepPrimAPI_MakeCylinder(@)",
    header: "BRepPrimAPI_MakeCylinder.hxx".}
proc OneAxis*(this: var BRepPrimAPI_MakeCylinder): Standard_Address {.
    importcpp: "OneAxis", header: "BRepPrimAPI_MakeCylinder.hxx".}
proc Cylinder*(this: var BRepPrimAPI_MakeCylinder): var BRepPrim_Cylinder {.
    importcpp: "Cylinder", header: "BRepPrimAPI_MakeCylinder.hxx".}