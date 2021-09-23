##  Created on: 1992-08-26
##  Created by: Remi GILET
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
  ../Standard/Standard_Handle, ../gp/gp_Trsf, ../Standard/Standard_Real

discard "forward decl of gp_Lin"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Trsf"
type
  gce_MakeRotation* {.importcpp: "gce_MakeRotation",
                     header: "gce_MakeRotation.hxx", bycopy.} = object ## ! Constructs a rotation through angle Angle about the axis defined by the line Line.


proc constructgce_MakeRotation*(Line: gp_Lin; Angle: Standard_Real): gce_MakeRotation {.
    constructor, importcpp: "gce_MakeRotation(@)", header: "gce_MakeRotation.hxx".}
proc constructgce_MakeRotation*(Axis: gp_Ax1; Angle: Standard_Real): gce_MakeRotation {.
    constructor, importcpp: "gce_MakeRotation(@)", header: "gce_MakeRotation.hxx".}
proc constructgce_MakeRotation*(Point: gp_Pnt; Direc: gp_Dir; Angle: Standard_Real): gce_MakeRotation {.
    constructor, importcpp: "gce_MakeRotation(@)", header: "gce_MakeRotation.hxx".}
proc Value*(this: gce_MakeRotation): gp_Trsf {.noSideEffect, importcpp: "Value",
    header: "gce_MakeRotation.hxx".}
proc Operator*(this: gce_MakeRotation): gp_Trsf {.noSideEffect,
    importcpp: "Operator", header: "gce_MakeRotation.hxx".}
converter `gp_Trsf`*(this: gce_MakeRotation): gp_Trsf {.noSideEffect,
    importcpp: "gce_MakeRotation::operator gp_Trsf",
    header: "gce_MakeRotation.hxx".}