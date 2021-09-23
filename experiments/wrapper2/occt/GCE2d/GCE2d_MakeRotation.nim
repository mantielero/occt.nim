##  Created on: 1992-09-28
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real

discard "forward decl of Geom2d_Transformation"
discard "forward decl of gp_Pnt2d"
type
  GCE2d_MakeRotation* {.importcpp: "GCE2d_MakeRotation",
                       header: "GCE2d_MakeRotation.hxx", bycopy.} = object ## ! Constructs a rotation through angle Angle about the center Point.


proc constructGCE2d_MakeRotation*(Point: gp_Pnt2d; Angle: Standard_Real): GCE2d_MakeRotation {.
    constructor, importcpp: "GCE2d_MakeRotation(@)",
    header: "GCE2d_MakeRotation.hxx".}
proc Value*(this: GCE2d_MakeRotation): handle[Geom2d_Transformation] {.noSideEffect,
    importcpp: "Value", header: "GCE2d_MakeRotation.hxx".}
converter `constopencascade`*(this: GCE2d_MakeRotation): handle[
    Geom2d_Transformation] {.noSideEffect, importcpp: "GCE2d_MakeRotation::operator constopencascade",
                            header: "GCE2d_MakeRotation.hxx".}