import breptools_types
import ../topods/topods_types
import ../topabs/topabs_types
import ../standard/standard_types
#import ../brep/brep_types
import ../gp/gp_types
##  Created on: 1998-06-03
##  Created by: data exchange team
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of TopoDS_Vertex"
when defined(Status):
  discard
discard "forward decl of BRepTools_ReShape"

proc newBRepTools_ReShape*(): BRepTools_ReShape {.cdecl, constructor,
    importcpp: "BRepTools_ReShape(@)", header: "BRepTools_ReShape.hxx".}
proc Clear*(this: var BRepTools_ReShape) {.cdecl, importcpp: "Clear",
                                       header: "BRepTools_ReShape.hxx".}
proc Remove*(this: var BRepTools_ReShape; shape: TopoDS_Shape) {.cdecl,
    importcpp: "Remove", header: "BRepTools_ReShape.hxx".}
proc Replace*(this: var BRepTools_ReShape; shape: TopoDS_Shape; newshape: TopoDS_Shape) {.
    cdecl, importcpp: "Replace", header: "BRepTools_ReShape.hxx".}
proc Merge*[TCollection](this: var BRepTools_ReShape; theParts: TCollection;
                        theProduct: TopoDS_Shape) {.cdecl, importcpp: "Merge",
    header: "BRepTools_ReShape.hxx".}
proc IsRecorded*(this: BRepTools_ReShape; shape: TopoDS_Shape): bool {.noSideEffect,
    cdecl, importcpp: "IsRecorded", header: "BRepTools_ReShape.hxx".}
proc Value*(this: BRepTools_ReShape; shape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "Value", header: "BRepTools_ReShape.hxx".}
proc Status*(this: var BRepTools_ReShape; shape: TopoDS_Shape;
            newsh: var TopoDS_Shape; last: bool = false): cint {.cdecl,
    importcpp: "Status", header: "BRepTools_ReShape.hxx".}
proc Apply*(this: var BRepTools_ReShape; theShape: TopoDS_Shape;
           theUntil: TopAbs_ShapeEnum = topAbsSHAPE): TopoDS_Shape {.cdecl,
    importcpp: "Apply", header: "BRepTools_ReShape.hxx".}
proc ModeConsiderLocation*(this: var BRepTools_ReShape): var bool {.cdecl,
    importcpp: "ModeConsiderLocation", header: "BRepTools_ReShape.hxx".}
proc CopyVertex*(this: var BRepTools_ReShape; theV: TopoDS_Vertex;
                theTol: cfloat = -1.0): TopoDS_Vertex {.cdecl,
    importcpp: "CopyVertex", header: "BRepTools_ReShape.hxx".}
proc CopyVertex*(this: var BRepTools_ReShape; theV: TopoDS_Vertex; theNewPos: gp_Pnt;
                aTol: cfloat): TopoDS_Vertex {.cdecl, importcpp: "CopyVertex",
    header: "BRepTools_ReShape.hxx".}
proc IsNewShape*(this: BRepTools_ReShape; theShape: TopoDS_Shape): bool {.
    noSideEffect, cdecl, importcpp: "IsNewShape", header: "BRepTools_ReShape.hxx".}
proc History*(this: BRepTools_ReShape): Handle[BRepTools_History] {.noSideEffect,
    cdecl, importcpp: "History", header: "BRepTools_ReShape.hxx".}