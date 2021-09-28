##  Created on: 1993-02-05
##  Created by: Jacques GOUSSARD
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_TopolTool"
discard "forward decl of Contap_Line"
discard "forward decl of Contap_SurfFunction"
type
  ContapContour* {.importcpp: "Contap_Contour", header: "Contap_Contour.hxx", bycopy.} = object


proc constructContapContour*(): ContapContour {.constructor,
    importcpp: "Contap_Contour(@)", header: "Contap_Contour.hxx".}
proc constructContapContour*(direction: Vec): ContapContour {.constructor,
    importcpp: "Contap_Contour(@)", header: "Contap_Contour.hxx".}
proc constructContapContour*(direction: Vec; angle: cfloat): ContapContour {.
    constructor, importcpp: "Contap_Contour(@)", header: "Contap_Contour.hxx".}
proc constructContapContour*(eye: Pnt): ContapContour {.constructor,
    importcpp: "Contap_Contour(@)", header: "Contap_Contour.hxx".}
proc constructContapContour*(surf: Handle[Adaptor3dHSurface];
                            domain: Handle[Adaptor3dTopolTool]; direction: Vec): ContapContour {.
    constructor, importcpp: "Contap_Contour(@)", header: "Contap_Contour.hxx".}
proc constructContapContour*(surf: Handle[Adaptor3dHSurface];
                            domain: Handle[Adaptor3dTopolTool]; direction: Vec;
                            angle: cfloat): ContapContour {.constructor,
    importcpp: "Contap_Contour(@)", header: "Contap_Contour.hxx".}
proc constructContapContour*(surf: Handle[Adaptor3dHSurface];
                            domain: Handle[Adaptor3dTopolTool]; eye: Pnt): ContapContour {.
    constructor, importcpp: "Contap_Contour(@)", header: "Contap_Contour.hxx".}
proc perform*(this: var ContapContour; surf: Handle[Adaptor3dHSurface];
             domain: Handle[Adaptor3dTopolTool]) {.importcpp: "Perform",
    header: "Contap_Contour.hxx".}
proc perform*(this: var ContapContour; surf: Handle[Adaptor3dHSurface];
             domain: Handle[Adaptor3dTopolTool]; direction: Vec) {.
    importcpp: "Perform", header: "Contap_Contour.hxx".}
proc perform*(this: var ContapContour; surf: Handle[Adaptor3dHSurface];
             domain: Handle[Adaptor3dTopolTool]; direction: Vec; angle: cfloat) {.
    importcpp: "Perform", header: "Contap_Contour.hxx".}
proc perform*(this: var ContapContour; surf: Handle[Adaptor3dHSurface];
             domain: Handle[Adaptor3dTopolTool]; eye: Pnt) {.importcpp: "Perform",
    header: "Contap_Contour.hxx".}
proc init*(this: var ContapContour; direction: Vec) {.importcpp: "Init",
    header: "Contap_Contour.hxx".}
proc init*(this: var ContapContour; direction: Vec; angle: cfloat) {.importcpp: "Init",
    header: "Contap_Contour.hxx".}
proc init*(this: var ContapContour; eye: Pnt) {.importcpp: "Init",
    header: "Contap_Contour.hxx".}
proc isDone*(this: ContapContour): bool {.noSideEffect, importcpp: "IsDone",
                                      header: "Contap_Contour.hxx".}
proc isEmpty*(this: ContapContour): bool {.noSideEffect, importcpp: "IsEmpty",
                                       header: "Contap_Contour.hxx".}
proc nbLines*(this: ContapContour): cint {.noSideEffect, importcpp: "NbLines",
                                       header: "Contap_Contour.hxx".}
proc line*(this: ContapContour; index: cint): ContapLine {.noSideEffect,
    importcpp: "Line", header: "Contap_Contour.hxx".}
proc surfaceFunction*(this: var ContapContour): var ContapSurfFunction {.
    importcpp: "SurfaceFunction", header: "Contap_Contour.hxx".}

























