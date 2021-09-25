##  Created on: 1993-01-26
##  Created by: Jean-Louis FRENKEL
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

discard "forward decl of BRepAdaptor_HSurface"
discard "forward decl of TopoDS_Edge"
type
  StdPrsToolRFace* {.importcpp: "StdPrs_ToolRFace", header: "StdPrs_ToolRFace.hxx",
                    bycopy.} = object ## ! Empty constructor.
                                   ## ! Find nearest valid item for the iterator.


proc constructStdPrsToolRFace*(): StdPrsToolRFace {.constructor,
    importcpp: "StdPrs_ToolRFace(@)", header: "StdPrs_ToolRFace.hxx".}
proc constructStdPrsToolRFace*(aSurface: Handle[BRepAdaptorHSurface]): StdPrsToolRFace {.
    constructor, importcpp: "StdPrs_ToolRFace(@)", header: "StdPrs_ToolRFace.hxx".}
proc isOriented*(this: StdPrsToolRFace): bool {.noSideEffect,
    importcpp: "IsOriented", header: "StdPrs_ToolRFace.hxx".}
proc init*(this: var StdPrsToolRFace) {.importcpp: "Init",
                                    header: "StdPrs_ToolRFace.hxx".}
proc more*(this: StdPrsToolRFace): bool {.noSideEffect, importcpp: "More",
                                      header: "StdPrs_ToolRFace.hxx".}
proc next*(this: var StdPrsToolRFace) {.importcpp: "Next",
                                    header: "StdPrs_ToolRFace.hxx".}
proc value*(this: StdPrsToolRFace): Adaptor2dCurve2d {.noSideEffect,
    importcpp: "Value", header: "StdPrs_ToolRFace.hxx".}
proc edge*(this: StdPrsToolRFace): TopoDS_Edge {.noSideEffect, importcpp: "Edge",
    header: "StdPrs_ToolRFace.hxx".}
proc orientation*(this: StdPrsToolRFace): TopAbsOrientation {.noSideEffect,
    importcpp: "Orientation", header: "StdPrs_ToolRFace.hxx".}
proc isInvalidGeometry*(this: StdPrsToolRFace): bool {.noSideEffect,
    importcpp: "IsInvalidGeometry", header: "StdPrs_ToolRFace.hxx".}
