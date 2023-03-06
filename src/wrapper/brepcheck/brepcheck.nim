import brepcheck_types
import ../standard/standard_types
import ../topods/topods_types
##  Created on: 1995-12-06
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Adaptor3d_Curve"

proc Add*(List: var BRepCheck_ListOfStatus; Stat: BRepCheck_Status) {.cdecl,
    importcpp: "BRepCheck::Add(@)", header: "BRepCheck.hxx".}
proc Print*(Stat: BRepCheck_Status; OS: var Standard_OStream) {.cdecl,
    importcpp: "BRepCheck::Print(@)", header: "BRepCheck.hxx".}
proc SelfIntersection*(W: TopoDS_Wire; F: TopoDS_Face; E1: var TopoDS_Edge;
                      E2: var TopoDS_Edge): bool {.cdecl,
    importcpp: "BRepCheck::SelfIntersection(@)", header: "BRepCheck.hxx".}
proc PrecCurve*(aAC3D: Adaptor3d_Curve): cfloat {.cdecl,
    importcpp: "BRepCheck::PrecCurve(@)", header: "BRepCheck.hxx".}
proc PrecSurface*(aAHSurf: Handle[Adaptor3d_Surface]): cfloat {.cdecl,
    importcpp: "BRepCheck::PrecSurface(@)", header: "BRepCheck.hxx".}