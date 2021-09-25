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


proc add*(list: var BRepCheckListOfStatus; stat: BRepCheckStatus) {.
    importcpp: "BRepCheck::Add(@)", header: "BRepCheck.hxx".}
proc print*(stat: BRepCheckStatus; os: var StandardOStream) {.
    importcpp: "BRepCheck::Print(@)", header: "BRepCheck.hxx".}
proc selfIntersection*(w: TopoDS_Wire; f: TopoDS_Face; e1: var TopoDS_Edge;
                      e2: var TopoDS_Edge): bool {.
    importcpp: "BRepCheck::SelfIntersection(@)", header: "BRepCheck.hxx".}
proc precCurve*(aAC3D: Adaptor3dCurve): float {.
    importcpp: "BRepCheck::PrecCurve(@)", header: "BRepCheck.hxx".}
proc precSurface*(aAHSurf: Handle[Adaptor3dHSurface]): float {.
    importcpp: "BRepCheck::PrecSurface(@)", header: "BRepCheck.hxx".}
