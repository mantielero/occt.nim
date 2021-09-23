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
  ../Standard/Standard_Handle, ../gp/gp_Trsf

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
type
  gce_MakeMirror* {.importcpp: "gce_MakeMirror", header: "gce_MakeMirror.hxx", bycopy.} = object


proc constructgce_MakeMirror*(Point: gp_Pnt): gce_MakeMirror {.constructor,
    importcpp: "gce_MakeMirror(@)", header: "gce_MakeMirror.hxx".}
proc constructgce_MakeMirror*(Axis: gp_Ax1): gce_MakeMirror {.constructor,
    importcpp: "gce_MakeMirror(@)", header: "gce_MakeMirror.hxx".}
proc constructgce_MakeMirror*(Line: gp_Lin): gce_MakeMirror {.constructor,
    importcpp: "gce_MakeMirror(@)", header: "gce_MakeMirror.hxx".}
proc constructgce_MakeMirror*(Point: gp_Pnt; Direc: gp_Dir): gce_MakeMirror {.
    constructor, importcpp: "gce_MakeMirror(@)", header: "gce_MakeMirror.hxx".}
proc constructgce_MakeMirror*(Plane: gp_Pln): gce_MakeMirror {.constructor,
    importcpp: "gce_MakeMirror(@)", header: "gce_MakeMirror.hxx".}
proc constructgce_MakeMirror*(Plane: gp_Ax2): gce_MakeMirror {.constructor,
    importcpp: "gce_MakeMirror(@)", header: "gce_MakeMirror.hxx".}
proc Value*(this: gce_MakeMirror): gp_Trsf {.noSideEffect, importcpp: "Value",
    header: "gce_MakeMirror.hxx".}
proc Operator*(this: gce_MakeMirror): gp_Trsf {.noSideEffect, importcpp: "Operator",
    header: "gce_MakeMirror.hxx".}
converter `gp_Trsf`*(this: gce_MakeMirror): gp_Trsf {.noSideEffect,
    importcpp: "gce_MakeMirror::operator gp_Trsf", header: "gce_MakeMirror.hxx".}