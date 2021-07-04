##  Created on: 1995-01-09
##  Created by: Modelistation
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, BRepPrim_GWedge, ../Standard/Standard_Real

discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Ax2"
type
  BRepPrim_Wedge* {.importcpp: "BRepPrim_Wedge", header: "BRepPrim_Wedge.hxx", bycopy.} = object of BRepPrim_GWedge ##
                                                                                                          ## !
                                                                                                          ## Default
                                                                                                          ## constructor


proc constructBRepPrim_Wedge*(): BRepPrim_Wedge {.constructor,
    importcpp: "BRepPrim_Wedge(@)", header: "BRepPrim_Wedge.hxx".}
proc constructBRepPrim_Wedge*(Axes: gp_Ax2; dx: Standard_Real; dy: Standard_Real;
                             dz: Standard_Real): BRepPrim_Wedge {.constructor,
    importcpp: "BRepPrim_Wedge(@)", header: "BRepPrim_Wedge.hxx".}
proc constructBRepPrim_Wedge*(Axes: gp_Ax2; dx: Standard_Real; dy: Standard_Real;
                             dz: Standard_Real; ltx: Standard_Real): BRepPrim_Wedge {.
    constructor, importcpp: "BRepPrim_Wedge(@)", header: "BRepPrim_Wedge.hxx".}
proc constructBRepPrim_Wedge*(Axes: gp_Ax2; xmin: Standard_Real; ymin: Standard_Real;
                             zmin: Standard_Real; z2min: Standard_Real;
                             x2min: Standard_Real; xmax: Standard_Real;
                             ymax: Standard_Real; zmax: Standard_Real;
                             z2max: Standard_Real; x2max: Standard_Real): BRepPrim_Wedge {.
    constructor, importcpp: "BRepPrim_Wedge(@)", header: "BRepPrim_Wedge.hxx".}