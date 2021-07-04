##  Created on: 1992-09-01
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
  ../Standard/Standard_Handle, ../gp/gp_Trsf2d

discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Trsf2d"
type
  gce_MakeMirror2d* {.importcpp: "gce_MakeMirror2d",
                     header: "gce_MakeMirror2d.hxx", bycopy.} = object


proc constructgce_MakeMirror2d*(Point: gp_Pnt2d): gce_MakeMirror2d {.constructor,
    importcpp: "gce_MakeMirror2d(@)", header: "gce_MakeMirror2d.hxx".}
proc constructgce_MakeMirror2d*(Axis: gp_Ax2d): gce_MakeMirror2d {.constructor,
    importcpp: "gce_MakeMirror2d(@)", header: "gce_MakeMirror2d.hxx".}
proc constructgce_MakeMirror2d*(Line: gp_Lin2d): gce_MakeMirror2d {.constructor,
    importcpp: "gce_MakeMirror2d(@)", header: "gce_MakeMirror2d.hxx".}
proc constructgce_MakeMirror2d*(Point: gp_Pnt2d; Direc: gp_Dir2d): gce_MakeMirror2d {.
    constructor, importcpp: "gce_MakeMirror2d(@)", header: "gce_MakeMirror2d.hxx".}
proc Value*(this: gce_MakeMirror2d): gp_Trsf2d {.noSideEffect, importcpp: "Value",
    header: "gce_MakeMirror2d.hxx".}
proc Operator*(this: gce_MakeMirror2d): gp_Trsf2d {.noSideEffect,
    importcpp: "Operator", header: "gce_MakeMirror2d.hxx".}
converter `gp_Trsf2d`*(this: gce_MakeMirror2d): gp_Trsf2d {.noSideEffect,
    importcpp: "gce_MakeMirror2d::operator gp_Trsf2d",
    header: "gce_MakeMirror2d.hxx".}