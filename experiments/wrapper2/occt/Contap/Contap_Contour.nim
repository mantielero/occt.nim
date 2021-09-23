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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  Contap_TheSequenceOfLine, Contap_TheSearch, Contap_TheSearchInside,
  Contap_SurfFunction, Contap_ArcFunction, ../Standard/Standard_Real,
  ../Standard/Standard_Integer

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
  Contap_Contour* {.importcpp: "Contap_Contour", header: "Contap_Contour.hxx", bycopy.} = object


proc constructContap_Contour*(): Contap_Contour {.constructor,
    importcpp: "Contap_Contour(@)", header: "Contap_Contour.hxx".}
proc constructContap_Contour*(Direction: gp_Vec): Contap_Contour {.constructor,
    importcpp: "Contap_Contour(@)", header: "Contap_Contour.hxx".}
proc constructContap_Contour*(Direction: gp_Vec; Angle: Standard_Real): Contap_Contour {.
    constructor, importcpp: "Contap_Contour(@)", header: "Contap_Contour.hxx".}
proc constructContap_Contour*(Eye: gp_Pnt): Contap_Contour {.constructor,
    importcpp: "Contap_Contour(@)", header: "Contap_Contour.hxx".}
proc constructContap_Contour*(Surf: handle[Adaptor3d_HSurface];
                             Domain: handle[Adaptor3d_TopolTool];
                             Direction: gp_Vec): Contap_Contour {.constructor,
    importcpp: "Contap_Contour(@)", header: "Contap_Contour.hxx".}
proc constructContap_Contour*(Surf: handle[Adaptor3d_HSurface];
                             Domain: handle[Adaptor3d_TopolTool];
                             Direction: gp_Vec; Angle: Standard_Real): Contap_Contour {.
    constructor, importcpp: "Contap_Contour(@)", header: "Contap_Contour.hxx".}
proc constructContap_Contour*(Surf: handle[Adaptor3d_HSurface];
                             Domain: handle[Adaptor3d_TopolTool]; Eye: gp_Pnt): Contap_Contour {.
    constructor, importcpp: "Contap_Contour(@)", header: "Contap_Contour.hxx".}
proc Perform*(this: var Contap_Contour; Surf: handle[Adaptor3d_HSurface];
             Domain: handle[Adaptor3d_TopolTool]) {.importcpp: "Perform",
    header: "Contap_Contour.hxx".}
proc Perform*(this: var Contap_Contour; Surf: handle[Adaptor3d_HSurface];
             Domain: handle[Adaptor3d_TopolTool]; Direction: gp_Vec) {.
    importcpp: "Perform", header: "Contap_Contour.hxx".}
proc Perform*(this: var Contap_Contour; Surf: handle[Adaptor3d_HSurface];
             Domain: handle[Adaptor3d_TopolTool]; Direction: gp_Vec;
             Angle: Standard_Real) {.importcpp: "Perform",
                                   header: "Contap_Contour.hxx".}
proc Perform*(this: var Contap_Contour; Surf: handle[Adaptor3d_HSurface];
             Domain: handle[Adaptor3d_TopolTool]; Eye: gp_Pnt) {.
    importcpp: "Perform", header: "Contap_Contour.hxx".}
proc Init*(this: var Contap_Contour; Direction: gp_Vec) {.importcpp: "Init",
    header: "Contap_Contour.hxx".}
proc Init*(this: var Contap_Contour; Direction: gp_Vec; Angle: Standard_Real) {.
    importcpp: "Init", header: "Contap_Contour.hxx".}
proc Init*(this: var Contap_Contour; Eye: gp_Pnt) {.importcpp: "Init",
    header: "Contap_Contour.hxx".}
proc IsDone*(this: Contap_Contour): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Contap_Contour.hxx".}
proc IsEmpty*(this: Contap_Contour): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "Contap_Contour.hxx".}
proc NbLines*(this: Contap_Contour): Standard_Integer {.noSideEffect,
    importcpp: "NbLines", header: "Contap_Contour.hxx".}
proc Line*(this: Contap_Contour; Index: Standard_Integer): Contap_Line {.noSideEffect,
    importcpp: "Line", header: "Contap_Contour.hxx".}
proc SurfaceFunction*(this: var Contap_Contour): var Contap_SurfFunction {.
    importcpp: "SurfaceFunction", header: "Contap_Contour.hxx".}