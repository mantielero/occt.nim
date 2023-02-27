import breptools_types
import ../tkbrep/brep/brep_types
import ../tkbrep/topods/topods_types
import ../tkernel/standard/standard_types
import ../tkernel/message/message_types
import ../tkg3d/topabs/topabs_types
##  Created on: 1993-07-19
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

discard "forward decl of TopoDS_Shape"

proc newBRepTools_ShapeSet*(theWithTriangles: bool = true;
                           theWithNormals: bool = false): BRepTools_ShapeSet {.cdecl,
    constructor, importcpp: "BRepTools_ShapeSet(@)",
    header: "BRepTools_ShapeSet.hxx".}
proc newBRepTools_ShapeSet*(theBuilder: BRep_Builder;
                           theWithTriangles: bool = true;
                           theWithNormals: bool = false): BRepTools_ShapeSet {.cdecl,
    constructor, importcpp: "BRepTools_ShapeSet(@)",
    header: "BRepTools_ShapeSet.hxx".}
proc destroyBRepTools_ShapeSet*(this: var BRepTools_ShapeSet) {.cdecl,
    importcpp: "#.~BRepTools_ShapeSet()", header: "BRepTools_ShapeSet.hxx".}
proc IsWithTriangles*(this: BRepTools_ShapeSet): bool {.noSideEffect, cdecl,
    importcpp: "IsWithTriangles", header: "BRepTools_ShapeSet.hxx".}
proc IsWithNormals*(this: BRepTools_ShapeSet): bool {.noSideEffect, cdecl,
    importcpp: "IsWithNormals", header: "BRepTools_ShapeSet.hxx".}
proc SetWithTriangles*(this: var BRepTools_ShapeSet; theWithTriangles: bool) {.cdecl,
    importcpp: "SetWithTriangles", header: "BRepTools_ShapeSet.hxx".}
proc SetWithNormals*(this: var BRepTools_ShapeSet; theWithNormals: bool) {.cdecl,
    importcpp: "SetWithNormals", header: "BRepTools_ShapeSet.hxx".}
proc Clear*(this: var BRepTools_ShapeSet) {.cdecl, importcpp: "Clear",
                                        header: "BRepTools_ShapeSet.hxx".}
proc AddGeometry*(this: var BRepTools_ShapeSet; S: TopoDS_Shape) {.cdecl,
    importcpp: "AddGeometry", header: "BRepTools_ShapeSet.hxx".}
proc DumpGeometry*(this: BRepTools_ShapeSet; OS: var Standard_OStream) {.noSideEffect,
    cdecl, importcpp: "DumpGeometry", header: "BRepTools_ShapeSet.hxx".}
proc WriteGeometry*(this: var BRepTools_ShapeSet; OS: var Standard_OStream;
                   theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    cdecl, importcpp: "WriteGeometry", header: "BRepTools_ShapeSet.hxx".}
proc ReadGeometry*(this: var BRepTools_ShapeSet; IS: var Standard_IStream;
                  theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    cdecl, importcpp: "ReadGeometry", header: "BRepTools_ShapeSet.hxx".}
proc DumpGeometry*(this: BRepTools_ShapeSet; S: TopoDS_Shape;
                  OS: var Standard_OStream) {.noSideEffect, cdecl,
    importcpp: "DumpGeometry", header: "BRepTools_ShapeSet.hxx".}
proc WriteGeometry*(this: BRepTools_ShapeSet; S: TopoDS_Shape;
                   OS: var Standard_OStream) {.noSideEffect, cdecl,
    importcpp: "WriteGeometry", header: "BRepTools_ShapeSet.hxx".}
proc ReadGeometry*(this: var BRepTools_ShapeSet; T: TopAbs_ShapeEnum;
                  IS: var Standard_IStream; S: var TopoDS_Shape) {.cdecl,
    importcpp: "ReadGeometry", header: "BRepTools_ShapeSet.hxx".}
proc AddShapes*(this: var BRepTools_ShapeSet; S1: var TopoDS_Shape; S2: TopoDS_Shape) {.
    cdecl, importcpp: "AddShapes", header: "BRepTools_ShapeSet.hxx".}
proc Check*(this: var BRepTools_ShapeSet; T: TopAbs_ShapeEnum; S: var TopoDS_Shape) {.
    cdecl, importcpp: "Check", header: "BRepTools_ShapeSet.hxx".}
proc ReadPolygon3D*(this: var BRepTools_ShapeSet; IS: var Standard_IStream;
                   theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    cdecl, importcpp: "ReadPolygon3D", header: "BRepTools_ShapeSet.hxx".}
proc WritePolygon3D*(this: BRepTools_ShapeSet; OS: var Standard_OStream;
                    Compact: bool = true; theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    noSideEffect, cdecl, importcpp: "WritePolygon3D",
    header: "BRepTools_ShapeSet.hxx".}
proc DumpPolygon3D*(this: BRepTools_ShapeSet; OS: var Standard_OStream) {.
    noSideEffect, cdecl, importcpp: "DumpPolygon3D",
    header: "BRepTools_ShapeSet.hxx".}
proc ReadTriangulation*(this: var BRepTools_ShapeSet; IS: var Standard_IStream;
    theProgress: Message_ProgressRange = Message_ProgressRange()) {.cdecl,
    importcpp: "ReadTriangulation", header: "BRepTools_ShapeSet.hxx".}
proc WriteTriangulation*(this: BRepTools_ShapeSet; OS: var Standard_OStream;
                        Compact: bool = true; theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    noSideEffect, cdecl, importcpp: "WriteTriangulation",
    header: "BRepTools_ShapeSet.hxx".}
proc DumpTriangulation*(this: BRepTools_ShapeSet; OS: var Standard_OStream) {.
    noSideEffect, cdecl, importcpp: "DumpTriangulation",
    header: "BRepTools_ShapeSet.hxx".}
proc ReadPolygonOnTriangulation*(this: var BRepTools_ShapeSet;
                                IS: var Standard_IStream; theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    cdecl, importcpp: "ReadPolygonOnTriangulation",
    header: "BRepTools_ShapeSet.hxx".}
proc WritePolygonOnTriangulation*(this: BRepTools_ShapeSet;
                                 OS: var Standard_OStream; Compact: bool = true;
    theProgress: Message_ProgressRange = Message_ProgressRange()) {.noSideEffect,
    cdecl, importcpp: "WritePolygonOnTriangulation",
    header: "BRepTools_ShapeSet.hxx".}
proc DumpPolygonOnTriangulation*(this: BRepTools_ShapeSet; OS: var Standard_OStream) {.
    noSideEffect, cdecl, importcpp: "DumpPolygonOnTriangulation",
    header: "BRepTools_ShapeSet.hxx".}