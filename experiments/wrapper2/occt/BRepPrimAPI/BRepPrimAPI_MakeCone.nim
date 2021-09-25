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

discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Ax2"
discard "forward decl of BRepPrim_Cone"
type
  BRepPrimAPI_MakeCone* {.importcpp: "BRepPrimAPI_MakeCone",
                         header: "BRepPrimAPI_MakeCone.hxx", bycopy.} = object of BRepPrimAPI_MakeOneAxis ##
                                                                                                   ## !
                                                                                                   ## Make
                                                                                                   ## a
                                                                                                   ## cone.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## @param
                                                                                                   ## R1
                                                                                                   ## [in]
                                                                                                   ## cone
                                                                                                   ## bottom
                                                                                                   ## radius,
                                                                                                   ## may
                                                                                                   ## be
                                                                                                   ## null
                                                                                                   ## (z
                                                                                                   ## =
                                                                                                   ## 0)
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## @param
                                                                                                   ## R2
                                                                                                   ## [in]
                                                                                                   ## cone
                                                                                                   ## top
                                                                                                   ## radius,
                                                                                                   ## may
                                                                                                   ## be
                                                                                                   ## null
                                                                                                   ## (z
                                                                                                   ## =
                                                                                                   ## H)
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## @param
                                                                                                   ## H
                                                                                                   ## [in]
                                                                                                   ## cone
                                                                                                   ## height


proc constructBRepPrimAPI_MakeCone*(r1: float; r2: float; h: float): BRepPrimAPI_MakeCone {.
    constructor, importcpp: "BRepPrimAPI_MakeCone(@)",
    header: "BRepPrimAPI_MakeCone.hxx".}
proc constructBRepPrimAPI_MakeCone*(r1: float; r2: float; h: float; angle: float): BRepPrimAPI_MakeCone {.
    constructor, importcpp: "BRepPrimAPI_MakeCone(@)",
    header: "BRepPrimAPI_MakeCone.hxx".}
proc constructBRepPrimAPI_MakeCone*(axes: Ax2; r1: float; r2: float; h: float): BRepPrimAPI_MakeCone {.
    constructor, importcpp: "BRepPrimAPI_MakeCone(@)",
    header: "BRepPrimAPI_MakeCone.hxx".}
proc constructBRepPrimAPI_MakeCone*(axes: Ax2; r1: float; r2: float; h: float;
                                   angle: float): BRepPrimAPI_MakeCone {.
    constructor, importcpp: "BRepPrimAPI_MakeCone(@)",
    header: "BRepPrimAPI_MakeCone.hxx".}
proc oneAxis*(this: var BRepPrimAPI_MakeCone): StandardAddress {.
    importcpp: "OneAxis", header: "BRepPrimAPI_MakeCone.hxx".}
proc cone*(this: var BRepPrimAPI_MakeCone): var BRepPrimCone {.importcpp: "Cone",
    header: "BRepPrimAPI_MakeCone.hxx".}
