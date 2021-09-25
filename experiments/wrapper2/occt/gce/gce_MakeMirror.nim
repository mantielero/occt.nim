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

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
type
  GceMakeMirror* {.importcpp: "gce_MakeMirror", header: "gce_MakeMirror.hxx", bycopy.} = object


proc constructGceMakeMirror*(point: Pnt): GceMakeMirror {.constructor,
    importcpp: "gce_MakeMirror(@)", header: "gce_MakeMirror.hxx".}
proc constructGceMakeMirror*(axis: Ax1): GceMakeMirror {.constructor,
    importcpp: "gce_MakeMirror(@)", header: "gce_MakeMirror.hxx".}
proc constructGceMakeMirror*(line: Lin): GceMakeMirror {.constructor,
    importcpp: "gce_MakeMirror(@)", header: "gce_MakeMirror.hxx".}
proc constructGceMakeMirror*(point: Pnt; direc: Dir): GceMakeMirror {.constructor,
    importcpp: "gce_MakeMirror(@)", header: "gce_MakeMirror.hxx".}
proc constructGceMakeMirror*(plane: Pln): GceMakeMirror {.constructor,
    importcpp: "gce_MakeMirror(@)", header: "gce_MakeMirror.hxx".}
proc constructGceMakeMirror*(plane: Ax2): GceMakeMirror {.constructor,
    importcpp: "gce_MakeMirror(@)", header: "gce_MakeMirror.hxx".}
proc value*(this: GceMakeMirror): Trsf {.noSideEffect, importcpp: "Value",
                                     header: "gce_MakeMirror.hxx".}
proc operator*(this: GceMakeMirror): Trsf {.noSideEffect, importcpp: "Operator",
                                        header: "gce_MakeMirror.hxx".}
converter `trsf`*(this: GceMakeMirror): Trsf {.noSideEffect,
    importcpp: "gce_MakeMirror::operator gp_Trsf", header: "gce_MakeMirror.hxx".}
