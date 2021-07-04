##  Created on: 2004-05-11
##  Created by: Sergey ZARITCHNY <szy@opencascade.com>
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../TopTools/TopTools_IndexedMapOfShape,
  BinTools_LocationSet, ../Standard/Standard_Integer, ../BRep/BRep_Builder,
  BinTools_SurfaceSet, BinTools_CurveSet, BinTools_Curve2dSet,
  ../TColStd/TColStd_IndexedMapOfTransient, ../Standard/Standard_Boolean,
  ../Standard/Standard_OStream, ../Standard/Standard_IStream,
  ../TopAbs/TopAbs_ShapeEnum

discard "forward decl of TopoDS_Shape"
discard "forward decl of BinTools_LocationSet"
type
  BinTools_ShapeSet* {.importcpp: "BinTools_ShapeSet",
                      header: "BinTools_ShapeSet.hxx", bycopy.} = object ## ! Builds an empty ShapeSet.
                                                                    ## ! Parameter
                                                                    ## <isWithTriangles> is added for XML Persistence


proc constructBinTools_ShapeSet*(isWithTriangles: Standard_Boolean = Standard_False): BinTools_ShapeSet {.
    constructor, importcpp: "BinTools_ShapeSet(@)", header: "BinTools_ShapeSet.hxx".}
proc destroyBinTools_ShapeSet*(this: var BinTools_ShapeSet) {.
    importcpp: "#.~BinTools_ShapeSet()", header: "BinTools_ShapeSet.hxx".}
proc IsWithTriangles*(this: BinTools_ShapeSet): Standard_Boolean {.noSideEffect,
    importcpp: "IsWithTriangles", header: "BinTools_ShapeSet.hxx".}
proc SetWithTriangles*(this: var BinTools_ShapeSet;
                      isWithTriangles: Standard_Boolean) {.
    importcpp: "SetWithTriangles", header: "BinTools_ShapeSet.hxx".}
proc SetFormatNb*(this: var BinTools_ShapeSet; theFormatNb: Standard_Integer) {.
    importcpp: "SetFormatNb", header: "BinTools_ShapeSet.hxx".}
proc FormatNb*(this: BinTools_ShapeSet): Standard_Integer {.noSideEffect,
    importcpp: "FormatNb", header: "BinTools_ShapeSet.hxx".}
proc Clear*(this: var BinTools_ShapeSet) {.importcpp: "Clear",
                                       header: "BinTools_ShapeSet.hxx".}
proc Add*(this: var BinTools_ShapeSet; S: TopoDS_Shape): Standard_Integer {.
    importcpp: "Add", header: "BinTools_ShapeSet.hxx".}
proc Shape*(this: BinTools_ShapeSet; I: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "Shape", header: "BinTools_ShapeSet.hxx".}
proc Index*(this: BinTools_ShapeSet; S: TopoDS_Shape): Standard_Integer {.
    noSideEffect, importcpp: "Index", header: "BinTools_ShapeSet.hxx".}
proc Locations*(this: BinTools_ShapeSet): BinTools_LocationSet {.noSideEffect,
    importcpp: "Locations", header: "BinTools_ShapeSet.hxx".}
proc ChangeLocations*(this: var BinTools_ShapeSet): var BinTools_LocationSet {.
    importcpp: "ChangeLocations", header: "BinTools_ShapeSet.hxx".}
proc NbShapes*(this: BinTools_ShapeSet): Standard_Integer {.noSideEffect,
    importcpp: "NbShapes", header: "BinTools_ShapeSet.hxx".}
proc Write*(this: BinTools_ShapeSet; OS: var Standard_OStream;
           theRange: Message_ProgressRange = Message_ProgressRange()) {.
    noSideEffect, importcpp: "Write", header: "BinTools_ShapeSet.hxx".}
proc Read*(this: var BinTools_ShapeSet; IS: var Standard_IStream;
          theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Read", header: "BinTools_ShapeSet.hxx".}
proc Write*(this: BinTools_ShapeSet; S: TopoDS_Shape; OS: var Standard_OStream) {.
    noSideEffect, importcpp: "Write", header: "BinTools_ShapeSet.hxx".}
proc WriteGeometry*(this: BinTools_ShapeSet; OS: var Standard_OStream;
                   theRange: Message_ProgressRange = Message_ProgressRange()) {.
    noSideEffect, importcpp: "WriteGeometry", header: "BinTools_ShapeSet.hxx".}
proc ReadGeometry*(this: var BinTools_ShapeSet; IS: var Standard_IStream;
                  theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "ReadGeometry", header: "BinTools_ShapeSet.hxx".}
proc Read*(this: BinTools_ShapeSet; S: var TopoDS_Shape; IS: var Standard_IStream;
          NbShapes: Standard_Integer) {.noSideEffect, importcpp: "Read",
                                      header: "BinTools_ShapeSet.hxx".}
proc WriteGeometry*(this: BinTools_ShapeSet; S: TopoDS_Shape;
                   OS: var Standard_OStream) {.noSideEffect,
    importcpp: "WriteGeometry", header: "BinTools_ShapeSet.hxx".}
proc ReadGeometry*(this: var BinTools_ShapeSet; T: TopAbs_ShapeEnum;
                  IS: var Standard_IStream; S: var TopoDS_Shape) {.
    importcpp: "ReadGeometry", header: "BinTools_ShapeSet.hxx".}
proc AddGeometry*(this: var BinTools_ShapeSet; S: TopoDS_Shape) {.
    importcpp: "AddGeometry", header: "BinTools_ShapeSet.hxx".}
proc AddShapes*(this: var BinTools_ShapeSet; S1: var TopoDS_Shape; S2: TopoDS_Shape) {.
    importcpp: "AddShapes", header: "BinTools_ShapeSet.hxx".}
proc ReadPolygon3D*(this: var BinTools_ShapeSet; IS: var Standard_IStream;
                   theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "ReadPolygon3D", header: "BinTools_ShapeSet.hxx".}
proc WritePolygon3D*(this: BinTools_ShapeSet; OS: var Standard_OStream;
                    theRange: Message_ProgressRange = Message_ProgressRange()) {.
    noSideEffect, importcpp: "WritePolygon3D", header: "BinTools_ShapeSet.hxx".}
proc ReadTriangulation*(this: var BinTools_ShapeSet; IS: var Standard_IStream; theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "ReadTriangulation", header: "BinTools_ShapeSet.hxx".}
proc WriteTriangulation*(this: BinTools_ShapeSet; OS: var Standard_OStream; theRange: Message_ProgressRange = Message_ProgressRange()) {.
    noSideEffect, importcpp: "WriteTriangulation", header: "BinTools_ShapeSet.hxx".}
proc ReadPolygonOnTriangulation*(this: var BinTools_ShapeSet;
                                IS: var Standard_IStream; theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "ReadPolygonOnTriangulation", header: "BinTools_ShapeSet.hxx".}
proc WritePolygonOnTriangulation*(this: BinTools_ShapeSet;
                                 OS: var Standard_OStream; theRange: Message_ProgressRange = Message_ProgressRange()) {.
    noSideEffect, importcpp: "WritePolygonOnTriangulation",
    header: "BinTools_ShapeSet.hxx".}