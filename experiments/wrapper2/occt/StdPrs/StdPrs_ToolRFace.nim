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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Face, ../TopExp/TopExp_Explorer,
  ../Geom2dAdaptor/Geom2dAdaptor_Curve, ../TopAbs/TopAbs_Orientation

discard "forward decl of BRepAdaptor_HSurface"
discard "forward decl of TopoDS_Edge"
type
  StdPrs_ToolRFace* {.importcpp: "StdPrs_ToolRFace",
                     header: "StdPrs_ToolRFace.hxx", bycopy.} = object ## ! Empty constructor.
                                                                  ## ! Find nearest valid item for the iterator.


proc constructStdPrs_ToolRFace*(): StdPrs_ToolRFace {.constructor,
    importcpp: "StdPrs_ToolRFace(@)", header: "StdPrs_ToolRFace.hxx".}
proc constructStdPrs_ToolRFace*(aSurface: handle[BRepAdaptor_HSurface]): StdPrs_ToolRFace {.
    constructor, importcpp: "StdPrs_ToolRFace(@)", header: "StdPrs_ToolRFace.hxx".}
proc IsOriented*(this: StdPrs_ToolRFace): Standard_Boolean {.noSideEffect,
    importcpp: "IsOriented", header: "StdPrs_ToolRFace.hxx".}
proc Init*(this: var StdPrs_ToolRFace) {.importcpp: "Init",
                                     header: "StdPrs_ToolRFace.hxx".}
proc More*(this: StdPrs_ToolRFace): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "StdPrs_ToolRFace.hxx".}
proc Next*(this: var StdPrs_ToolRFace) {.importcpp: "Next",
                                     header: "StdPrs_ToolRFace.hxx".}
proc Value*(this: StdPrs_ToolRFace): Adaptor2d_Curve2d {.noSideEffect,
    importcpp: "Value", header: "StdPrs_ToolRFace.hxx".}
proc Edge*(this: StdPrs_ToolRFace): TopoDS_Edge {.noSideEffect, importcpp: "Edge",
    header: "StdPrs_ToolRFace.hxx".}
proc Orientation*(this: StdPrs_ToolRFace): TopAbs_Orientation {.noSideEffect,
    importcpp: "Orientation", header: "StdPrs_ToolRFace.hxx".}
proc IsInvalidGeometry*(this: StdPrs_ToolRFace): Standard_Boolean {.noSideEffect,
    importcpp: "IsInvalidGeometry", header: "StdPrs_ToolRFace.hxx".}