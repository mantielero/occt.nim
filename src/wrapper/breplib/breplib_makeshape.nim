import breplib_types
import ../../tkbrep/topods/topods_types
import ../../tkbrep/toptools/toptools_types

##  Created on: 1993-07-21
##  Created by: Remi LEQUETTE
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

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"


proc Build*(this: var BRepLib_MakeShape) {.cdecl, importcpp: "Build".}
proc Shape*(this: var BRepLib_MakeShape): TopoDS_Shape {.cdecl, importcpp: "Shape",
    .}
converter `TopoDS_Shape`*(this: var BRepLib_MakeShape): TopoDS_Shape {.cdecl,
    importcpp: "BRepLib_MakeShape::operator TopoDS_Shape".}
proc FaceStatus*(this: BRepLib_MakeShape; F: TopoDS_Face): BRepLib_ShapeModification {.
    noSideEffect, cdecl, importcpp: "FaceStatus".}
proc HasDescendants*(this: BRepLib_MakeShape; F: TopoDS_Face): bool {.noSideEffect,
    cdecl, importcpp: "HasDescendants".}
proc DescendantFaces*(this: var BRepLib_MakeShape; F: TopoDS_Face): TopTools_ListOfShape {.
    cdecl, importcpp: "DescendantFaces".}
proc NbSurfaces*(this: BRepLib_MakeShape): cint {.noSideEffect, cdecl,
    importcpp: "NbSurfaces".}
proc NewFaces*(this: var BRepLib_MakeShape; I: cint): TopTools_ListOfShape {.cdecl,
    importcpp: "NewFaces".}
proc FacesFromEdges*(this: var BRepLib_MakeShape; E: TopoDS_Edge): TopTools_ListOfShape {.
    cdecl, importcpp: "FacesFromEdges".}