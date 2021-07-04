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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape,
  ../TopTools/TopTools_ListOfShape, BRepLib_Command, BRepLib_ShapeModification,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
type
  BRepLib_MakeShape* {.importcpp: "BRepLib_MakeShape",
                      header: "BRepLib_MakeShape.hxx", bycopy.} = object of BRepLib_Command ##
                                                                                     ## !
                                                                                     ## This
                                                                                     ## is
                                                                                     ## called
                                                                                     ## by
                                                                                     ## Shape().
                                                                                     ## It
                                                                                     ## does
                                                                                     ## nothing
                                                                                     ## but
                                                                                     ##
                                                                                     ## !
                                                                                     ## may
                                                                                     ## be
                                                                                     ## redefined.


proc Build*(this: var BRepLib_MakeShape) {.importcpp: "Build",
                                       header: "BRepLib_MakeShape.hxx".}
proc Shape*(this: var BRepLib_MakeShape): TopoDS_Shape {.importcpp: "Shape",
    header: "BRepLib_MakeShape.hxx".}
converter `TopoDS_Shape`*(this: var BRepLib_MakeShape): TopoDS_Shape {.
    importcpp: "BRepLib_MakeShape::operator TopoDS_Shape",
    header: "BRepLib_MakeShape.hxx".}
proc FaceStatus*(this: BRepLib_MakeShape; F: TopoDS_Face): BRepLib_ShapeModification {.
    noSideEffect, importcpp: "FaceStatus", header: "BRepLib_MakeShape.hxx".}
proc HasDescendants*(this: BRepLib_MakeShape; F: TopoDS_Face): Standard_Boolean {.
    noSideEffect, importcpp: "HasDescendants", header: "BRepLib_MakeShape.hxx".}
proc DescendantFaces*(this: var BRepLib_MakeShape; F: TopoDS_Face): TopTools_ListOfShape {.
    importcpp: "DescendantFaces", header: "BRepLib_MakeShape.hxx".}
proc NbSurfaces*(this: BRepLib_MakeShape): Standard_Integer {.noSideEffect,
    importcpp: "NbSurfaces", header: "BRepLib_MakeShape.hxx".}
proc NewFaces*(this: var BRepLib_MakeShape; I: Standard_Integer): TopTools_ListOfShape {.
    importcpp: "NewFaces", header: "BRepLib_MakeShape.hxx".}
proc FacesFromEdges*(this: var BRepLib_MakeShape; E: TopoDS_Edge): TopTools_ListOfShape {.
    importcpp: "FacesFromEdges", header: "BRepLib_MakeShape.hxx".}