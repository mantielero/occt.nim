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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../BRep/BRep_Builder,
  ../GeomTools/GeomTools_SurfaceSet, ../GeomTools/GeomTools_CurveSet,
  ../GeomTools/GeomTools_Curve2dSet, ../TColStd/TColStd_IndexedMapOfTransient,
  ../Standard/Standard_Boolean, ../TopTools/TopTools_ShapeSet,
  ../Standard/Standard_OStream, ../Standard/Standard_IStream,
  ../TopAbs/TopAbs_ShapeEnum

discard "forward decl of BRep_Builder"
discard "forward decl of TopoDS_Shape"
type
  BRepTools_ShapeSet* {.importcpp: "BRepTools_ShapeSet",
                       header: "BRepTools_ShapeSet.hxx", bycopy.} = object of TopTools_ShapeSet ##
                                                                                         ## !
                                                                                         ## Builds
                                                                                         ## an
                                                                                         ## empty
                                                                                         ## ShapeSet.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Parameter
                                                                                         ## <isWithTriangles>
                                                                                         ## is
                                                                                         ## added
                                                                                         ## for
                                                                                         ## XML
                                                                                         ## Persistence


proc constructBRepTools_ShapeSet*(isWithTriangles: Standard_Boolean = Standard_True): BRepTools_ShapeSet {.
    constructor, importcpp: "BRepTools_ShapeSet(@)",
    header: "BRepTools_ShapeSet.hxx".}
proc constructBRepTools_ShapeSet*(B: BRep_Builder; isWithTriangles: Standard_Boolean = Standard_True): BRepTools_ShapeSet {.
    constructor, importcpp: "BRepTools_ShapeSet(@)",
    header: "BRepTools_ShapeSet.hxx".}
proc Clear*(this: var BRepTools_ShapeSet) {.importcpp: "Clear",
                                        header: "BRepTools_ShapeSet.hxx".}
proc AddGeometry*(this: var BRepTools_ShapeSet; S: TopoDS_Shape) {.
    importcpp: "AddGeometry", header: "BRepTools_ShapeSet.hxx".}
proc DumpGeometry*(this: BRepTools_ShapeSet; OS: var Standard_OStream) {.noSideEffect,
    importcpp: "DumpGeometry", header: "BRepTools_ShapeSet.hxx".}
proc WriteGeometry*(this: var BRepTools_ShapeSet; OS: var Standard_OStream;
                   theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "WriteGeometry", header: "BRepTools_ShapeSet.hxx".}
proc ReadGeometry*(this: var BRepTools_ShapeSet; IS: var Standard_IStream;
                  theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "ReadGeometry", header: "BRepTools_ShapeSet.hxx".}
proc DumpGeometry*(this: BRepTools_ShapeSet; S: TopoDS_Shape;
                  OS: var Standard_OStream) {.noSideEffect,
    importcpp: "DumpGeometry", header: "BRepTools_ShapeSet.hxx".}
proc WriteGeometry*(this: BRepTools_ShapeSet; S: TopoDS_Shape;
                   OS: var Standard_OStream) {.noSideEffect,
    importcpp: "WriteGeometry", header: "BRepTools_ShapeSet.hxx".}
proc ReadGeometry*(this: var BRepTools_ShapeSet; T: TopAbs_ShapeEnum;
                  IS: var Standard_IStream; S: var TopoDS_Shape) {.
    importcpp: "ReadGeometry", header: "BRepTools_ShapeSet.hxx".}
proc AddShapes*(this: var BRepTools_ShapeSet; S1: var TopoDS_Shape; S2: TopoDS_Shape) {.
    importcpp: "AddShapes", header: "BRepTools_ShapeSet.hxx".}
proc Check*(this: var BRepTools_ShapeSet; T: TopAbs_ShapeEnum; S: var TopoDS_Shape) {.
    importcpp: "Check", header: "BRepTools_ShapeSet.hxx".}
proc ReadPolygon3D*(this: var BRepTools_ShapeSet; IS: var Standard_IStream;
                   theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "ReadPolygon3D", header: "BRepTools_ShapeSet.hxx".}
proc WritePolygon3D*(this: BRepTools_ShapeSet; OS: var Standard_OStream;
                    Compact: Standard_Boolean = Standard_True; theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    noSideEffect, importcpp: "WritePolygon3D", header: "BRepTools_ShapeSet.hxx".}
proc DumpPolygon3D*(this: BRepTools_ShapeSet; OS: var Standard_OStream) {.
    noSideEffect, importcpp: "DumpPolygon3D", header: "BRepTools_ShapeSet.hxx".}
proc ReadTriangulation*(this: var BRepTools_ShapeSet; IS: var Standard_IStream;
    theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "ReadTriangulation", header: "BRepTools_ShapeSet.hxx".}
proc WriteTriangulation*(this: BRepTools_ShapeSet; OS: var Standard_OStream;
                        Compact: Standard_Boolean = Standard_True; theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    noSideEffect, importcpp: "WriteTriangulation", header: "BRepTools_ShapeSet.hxx".}
proc DumpTriangulation*(this: BRepTools_ShapeSet; OS: var Standard_OStream) {.
    noSideEffect, importcpp: "DumpTriangulation", header: "BRepTools_ShapeSet.hxx".}
proc ReadPolygonOnTriangulation*(this: var BRepTools_ShapeSet;
                                IS: var Standard_IStream; theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "ReadPolygonOnTriangulation", header: "BRepTools_ShapeSet.hxx".}
proc WritePolygonOnTriangulation*(this: BRepTools_ShapeSet;
                                 OS: var Standard_OStream;
                                 Compact: Standard_Boolean = Standard_True;
    theProgress: Message_ProgressRange = Message_ProgressRange()) {.noSideEffect,
    importcpp: "WritePolygonOnTriangulation", header: "BRepTools_ShapeSet.hxx".}
proc DumpPolygonOnTriangulation*(this: BRepTools_ShapeSet; OS: var Standard_OStream) {.
    noSideEffect, importcpp: "DumpPolygonOnTriangulation",
    header: "BRepTools_ShapeSet.hxx".}