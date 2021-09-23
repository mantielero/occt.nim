##  Created on: 1994-08-25
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopTools/TopTools_DataMapOfShapeShape,
  ../TopTools/TopTools_MapOfShape,
  ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape, ../TopoDS/TopoDS_Edge,
  ../TopoDS/TopoDS_Face, ../TopoDS/TopoDS_Vertex, ../Standard/Standard_Boolean,
  ../NCollection/NCollection_DataMap, ../TopoDS/TopoDS_Shape,
  ../TopTools/TopTools_ShapeMapHasher, ../TopLoc/TopLoc_Location,
  ../Message/Message_ProgressRange

discard "forward decl of Standard_NullObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepTools_Modification"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom_Surface"
type
  BRepTools_Modifier* {.importcpp: "BRepTools_Modifier",
                       header: "BRepTools_Modifier.hxx", bycopy.} = object ## ! Creates an empty Modifier.


proc constructBRepTools_Modifier*(theMutableInput: Standard_Boolean = Standard_False): BRepTools_Modifier {.
    constructor, importcpp: "BRepTools_Modifier(@)",
    header: "BRepTools_Modifier.hxx".}
proc constructBRepTools_Modifier*(S: TopoDS_Shape): BRepTools_Modifier {.
    constructor, importcpp: "BRepTools_Modifier(@)",
    header: "BRepTools_Modifier.hxx".}
proc constructBRepTools_Modifier*(S: TopoDS_Shape;
                                 M: handle[BRepTools_Modification]): BRepTools_Modifier {.
    constructor, importcpp: "BRepTools_Modifier(@)",
    header: "BRepTools_Modifier.hxx".}
proc Init*(this: var BRepTools_Modifier; S: TopoDS_Shape) {.importcpp: "Init",
    header: "BRepTools_Modifier.hxx".}
proc Perform*(this: var BRepTools_Modifier; M: handle[BRepTools_Modification];
             theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Perform", header: "BRepTools_Modifier.hxx".}
proc IsDone*(this: BRepTools_Modifier): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepTools_Modifier.hxx".}
proc IsMutableInput*(this: BRepTools_Modifier): Standard_Boolean {.noSideEffect,
    importcpp: "IsMutableInput", header: "BRepTools_Modifier.hxx".}
proc SetMutableInput*(this: var BRepTools_Modifier;
                     theMutableInput: Standard_Boolean) {.
    importcpp: "SetMutableInput", header: "BRepTools_Modifier.hxx".}
proc ModifiedShape*(this: BRepTools_Modifier; S: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "ModifiedShape", header: "BRepTools_Modifier.hxx".}