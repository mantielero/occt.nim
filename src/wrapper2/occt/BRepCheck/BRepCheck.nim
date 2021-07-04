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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, BRepCheck_ListOfStatus, BRepCheck_Status,
  ../Standard/Standard_OStream, ../Standard/Standard_Boolean

discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of BRepCheck_Result"
discard "forward decl of BRepCheck_Vertex"
discard "forward decl of BRepCheck_Edge"
discard "forward decl of BRepCheck_Wire"
discard "forward decl of BRepCheck_Face"
discard "forward decl of BRepCheck_Shell"
discard "forward decl of BRepCheck_Solid"
discard "forward decl of BRepCheck_Analyzer"
type
  BRepCheck* {.importcpp: "BRepCheck", header: "BRepCheck.hxx", bycopy.} = object


proc Add*(List: var BRepCheck_ListOfStatus; Stat: BRepCheck_Status) {.
    importcpp: "BRepCheck::Add(@)", header: "BRepCheck.hxx".}
proc Print*(Stat: BRepCheck_Status; OS: var Standard_OStream) {.
    importcpp: "BRepCheck::Print(@)", header: "BRepCheck.hxx".}
proc SelfIntersection*(W: TopoDS_Wire; F: TopoDS_Face; E1: var TopoDS_Edge;
                      E2: var TopoDS_Edge): Standard_Boolean {.
    importcpp: "BRepCheck::SelfIntersection(@)", header: "BRepCheck.hxx".}
proc PrecCurve*(aAC3D: Adaptor3d_Curve): Standard_Real {.
    importcpp: "BRepCheck::PrecCurve(@)", header: "BRepCheck.hxx".}
proc PrecSurface*(aAHSurf: handle[Adaptor3d_HSurface]): Standard_Real {.
    importcpp: "BRepCheck::PrecSurface(@)", header: "BRepCheck.hxx".}