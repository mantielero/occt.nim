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
proc constructContapContour*(direction: GpVec): ContapContour {.constructor,
    importcpp: "Contap_Contour(@)", header: "Contap_Contour.hxx".}
proc constructContapContour*(direction: GpVec; angle: StandardReal): ContapContour {.
    constructor, importcpp: "Contap_Contour(@)", header: "Contap_Contour.hxx".}
proc constructContapContour*(eye: GpPnt): ContapContour {.constructor,
    importcpp: "Contap_Contour(@)", header: "Contap_Contour.hxx".}
proc constructContapContour*(surf: Handle[Adaptor3dHSurface];
                            domain: Handle[Adaptor3dTopolTool]; direction: GpVec): ContapContour {.
    constructor, importcpp: "Contap_Contour(@)", header: "Contap_Contour.hxx".}
proc constructContapContour*(surf: Handle[Adaptor3dHSurface];
                            domain: Handle[Adaptor3dTopolTool]; direction: GpVec;
                            angle: StandardReal): ContapContour {.constructor,
    importcpp: "Contap_Contour(@)", header: "Contap_Contour.hxx".}
proc constructContapContour*(surf: Handle[Adaptor3dHSurface];
                            domain: Handle[Adaptor3dTopolTool]; eye: GpPnt): ContapContour {.
    constructor, importcpp: "Contap_Contour(@)", header: "Contap_Contour.hxx".}
proc perform*(this: var ContapContour; surf: Handle[Adaptor3dHSurface];
             domain: Handle[Adaptor3dTopolTool]) {.importcpp: "Perform",
    header: "Contap_Contour.hxx".}
proc perform*(this: var ContapContour; surf: Handle[Adaptor3dHSurface];
             domain: Handle[Adaptor3dTopolTool]; direction: GpVec) {.
    importcpp: "Perform", header: "Contap_Contour.hxx".}
proc perform*(this: var ContapContour; surf: Handle[Adaptor3dHSurface];
             domain: Handle[Adaptor3dTopolTool]; direction: GpVec;
             angle: StandardReal) {.importcpp: "Perform",
                                  header: "Contap_Contour.hxx".}
proc perform*(this: var ContapContour; surf: Handle[Adaptor3dHSurface];
             domain: Handle[Adaptor3dTopolTool]; eye: GpPnt) {.importcpp: "Perform",
    header: "Contap_Contour.hxx".}
proc init*(this: var ContapContour; direction: GpVec) {.importcpp: "Init",
    header: "Contap_Contour.hxx".}
proc init*(this: var ContapContour; direction: GpVec; angle: StandardReal) {.
    importcpp: "Init", header: "Contap_Contour.hxx".}
proc init*(this: var ContapContour; eye: GpPnt) {.importcpp: "Init",
    header: "Contap_Contour.hxx".}
proc isDone*(this: ContapContour): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Contap_Contour.hxx".}
proc isEmpty*(this: ContapContour): StandardBoolean {.noSideEffect,
    importcpp: "IsEmpty", header: "Contap_Contour.hxx".}
proc nbLines*(this: ContapContour): StandardInteger {.noSideEffect,
    importcpp: "NbLines", header: "Contap_Contour.hxx".}
proc line*(this: ContapContour; index: StandardInteger): ContapLine {.noSideEffect,
    importcpp: "Line", header: "Contap_Contour.hxx".}
proc surfaceFunction*(this: var ContapContour): var ContapSurfFunction {.
    importcpp: "SurfaceFunction", header: "Contap_Contour.hxx".}

