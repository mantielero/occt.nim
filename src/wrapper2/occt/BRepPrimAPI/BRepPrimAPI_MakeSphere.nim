##  Created on: 1993-07-22
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
  ../Standard/Standard_Handle, ../BRepPrim/BRepPrim_Sphere,
  BRepPrimAPI_MakeOneAxis, ../Standard/Standard_Real, ../Standard/Standard_Address

discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax2"
discard "forward decl of BRepPrim_Sphere"
type
  BRepPrimAPI_MakeSphere* {.importcpp: "BRepPrimAPI_MakeSphere",
                           header: "BRepPrimAPI_MakeSphere.hxx", bycopy.} = object of BRepPrimAPI_MakeOneAxis ##
                                                                                                       ## !
                                                                                                       ## Make
                                                                                                       ## a
                                                                                                       ## sphere.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## @param
                                                                                                       ## R
                                                                                                       ## [in]
                                                                                                       ## sphere
                                                                                                       ## radius


proc constructBRepPrimAPI_MakeSphere*(R: Standard_Real): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc constructBRepPrimAPI_MakeSphere*(R: Standard_Real; angle: Standard_Real): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc constructBRepPrimAPI_MakeSphere*(R: Standard_Real; angle1: Standard_Real;
                                     angle2: Standard_Real): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc constructBRepPrimAPI_MakeSphere*(R: Standard_Real; angle1: Standard_Real;
                                     angle2: Standard_Real; angle3: Standard_Real): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc constructBRepPrimAPI_MakeSphere*(Center: gp_Pnt; R: Standard_Real): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc constructBRepPrimAPI_MakeSphere*(Center: gp_Pnt; R: Standard_Real;
                                     angle: Standard_Real): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc constructBRepPrimAPI_MakeSphere*(Center: gp_Pnt; R: Standard_Real;
                                     angle1: Standard_Real; angle2: Standard_Real): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc constructBRepPrimAPI_MakeSphere*(Center: gp_Pnt; R: Standard_Real;
                                     angle1: Standard_Real; angle2: Standard_Real;
                                     angle3: Standard_Real): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc constructBRepPrimAPI_MakeSphere*(Axis: gp_Ax2; R: Standard_Real): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc constructBRepPrimAPI_MakeSphere*(Axis: gp_Ax2; R: Standard_Real;
                                     angle: Standard_Real): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc constructBRepPrimAPI_MakeSphere*(Axis: gp_Ax2; R: Standard_Real;
                                     angle1: Standard_Real; angle2: Standard_Real): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc constructBRepPrimAPI_MakeSphere*(Axis: gp_Ax2; R: Standard_Real;
                                     angle1: Standard_Real; angle2: Standard_Real;
                                     angle3: Standard_Real): BRepPrimAPI_MakeSphere {.
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)",
    header: "BRepPrimAPI_MakeSphere.hxx".}
proc OneAxis*(this: var BRepPrimAPI_MakeSphere): Standard_Address {.
    importcpp: "OneAxis", header: "BRepPrimAPI_MakeSphere.hxx".}
proc Sphere*(this: var BRepPrimAPI_MakeSphere): var BRepPrim_Sphere {.
    importcpp: "Sphere", header: "BRepPrimAPI_MakeSphere.hxx".}