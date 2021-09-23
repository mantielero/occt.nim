##  Created on: 1995-03-23
##  Created by: Jing Cheng MEI
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../TopTools/TopTools_IndexedDataMapOfShapeShape,
  ../TopoDS/TopoDS_Shape, ../TopTools/TopTools_IndexedMapOfShape,
  ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape,
  ../TopTools/TopTools_DataMapOfShapeShape, ../Standard/Standard_Integer,
  ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../TopTools/TopTools_MapOfShape, ../Standard/Standard_Transient,
  ../TopTools/TopTools_ListOfShape, ../TopTools/TopTools_SequenceOfShape,
  ../TColStd/TColStd_IndexedMapOfInteger, ../TColStd/TColStd_SequenceOfBoolean,
  ../TColStd/TColStd_SequenceOfInteger, ../TColStd/TColStd_Array1OfBoolean,
  ../TColStd/TColStd_Array1OfReal, ../TColgp/TColgp_Array1OfPnt,
  ../TColStd/TColStd_SequenceOfReal, ../Message/Message_ProgressRange

discard "forward decl of BRepTools_ReShape"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Curve"
discard "forward decl of BRepBuilderAPI_Sewing"
discard "forward decl of BRepBuilderAPI_Sewing"
type
  Handle_BRepBuilderAPI_Sewing* = handle[BRepBuilderAPI_Sewing]

## ! Provides methods to
## !
## ! - identify possible contigous boundaries (for control
## ! afterwards (of continuity: C0, C1, ...))
## !
## ! - assemble contigous shapes into one shape.
## ! Only manifold shapes will be found. Sewing will not
## ! be done in case of multiple edges.
## !
## ! For sewing, use this function as following:
## ! - create an empty object
## ! - default tolerance 1.E-06
## ! - with face analysis on
## ! - with sewing operation on
## ! - set the cutting option as you need (default True)
## ! - define a tolerance
## ! - add shapes to be sewed -> Add
## ! - compute -> Perfom
## ! - output the resulted shapes
## ! - output free edges if necessary
## ! - output multiple edges if necessary
## ! - output the problems if any

type
  BRepBuilderAPI_Sewing* {.importcpp: "BRepBuilderAPI_Sewing",
                          header: "BRepBuilderAPI_Sewing.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## an
                                                                                                ## object
                                                                                                ## with
                                                                                                ##
                                                                                                ## !
                                                                                                ## tolerance
                                                                                                ## of
                                                                                                ## connexity
                                                                                                ##
                                                                                                ## !
                                                                                                ## option
                                                                                                ## for
                                                                                                ## sewing
                                                                                                ## (if
                                                                                                ## false
                                                                                                ## only
                                                                                                ## control)
                                                                                                ##
                                                                                                ## !
                                                                                                ## option
                                                                                                ## for
                                                                                                ## analysis
                                                                                                ## of
                                                                                                ## degenerated
                                                                                                ## shapes
                                                                                                ##
                                                                                                ## !
                                                                                                ## option
                                                                                                ## for
                                                                                                ## cutting
                                                                                                ## of
                                                                                                ## free
                                                                                                ## edges.
                                                                                                ##
                                                                                                ## !
                                                                                                ## option
                                                                                                ## for
                                                                                                ## non
                                                                                                ## manifold
                                                                                                ## processing
                                                                                                ##
                                                                                                ## !
                                                                                                ## Performs
                                                                                                ## cutting
                                                                                                ## of
                                                                                                ## sections
                                                                                                ##
                                                                                                ## !
                                                                                                ## theProgress
                                                                                                ## -
                                                                                                ## progress
                                                                                                ## indicator
                                                                                                ## of
                                                                                                ## processing


proc constructBRepBuilderAPI_Sewing*(tolerance: Standard_Real = 1.0e-06;
                                    option1: Standard_Boolean = Standard_True;
                                    option2: Standard_Boolean = Standard_True;
                                    option3: Standard_Boolean = Standard_True;
                                    option4: Standard_Boolean = Standard_False): BRepBuilderAPI_Sewing {.
    constructor, importcpp: "BRepBuilderAPI_Sewing(@)",
    header: "BRepBuilderAPI_Sewing.hxx".}
proc Init*(this: var BRepBuilderAPI_Sewing; tolerance: Standard_Real = 1.0e-06;
          option1: Standard_Boolean = Standard_True;
          option2: Standard_Boolean = Standard_True;
          option3: Standard_Boolean = Standard_True;
          option4: Standard_Boolean = Standard_False) {.importcpp: "Init",
    header: "BRepBuilderAPI_Sewing.hxx".}
proc Load*(this: var BRepBuilderAPI_Sewing; shape: TopoDS_Shape) {.importcpp: "Load",
    header: "BRepBuilderAPI_Sewing.hxx".}
proc Add*(this: var BRepBuilderAPI_Sewing; shape: TopoDS_Shape) {.importcpp: "Add",
    header: "BRepBuilderAPI_Sewing.hxx".}
proc Perform*(this: var BRepBuilderAPI_Sewing;
             theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Perform", header: "BRepBuilderAPI_Sewing.hxx".}
proc SewedShape*(this: BRepBuilderAPI_Sewing): TopoDS_Shape {.noSideEffect,
    importcpp: "SewedShape", header: "BRepBuilderAPI_Sewing.hxx".}
proc SetContext*(this: var BRepBuilderAPI_Sewing;
                theContext: handle[BRepTools_ReShape]) {.importcpp: "SetContext",
    header: "BRepBuilderAPI_Sewing.hxx".}
proc GetContext*(this: BRepBuilderAPI_Sewing): handle[BRepTools_ReShape] {.
    noSideEffect, importcpp: "GetContext", header: "BRepBuilderAPI_Sewing.hxx".}
proc NbFreeEdges*(this: BRepBuilderAPI_Sewing): Standard_Integer {.noSideEffect,
    importcpp: "NbFreeEdges", header: "BRepBuilderAPI_Sewing.hxx".}
proc FreeEdge*(this: BRepBuilderAPI_Sewing; index: Standard_Integer): TopoDS_Edge {.
    noSideEffect, importcpp: "FreeEdge", header: "BRepBuilderAPI_Sewing.hxx".}
proc NbMultipleEdges*(this: BRepBuilderAPI_Sewing): Standard_Integer {.noSideEffect,
    importcpp: "NbMultipleEdges", header: "BRepBuilderAPI_Sewing.hxx".}
proc MultipleEdge*(this: BRepBuilderAPI_Sewing; index: Standard_Integer): TopoDS_Edge {.
    noSideEffect, importcpp: "MultipleEdge", header: "BRepBuilderAPI_Sewing.hxx".}
proc NbContigousEdges*(this: BRepBuilderAPI_Sewing): Standard_Integer {.
    noSideEffect, importcpp: "NbContigousEdges",
    header: "BRepBuilderAPI_Sewing.hxx".}
proc ContigousEdge*(this: BRepBuilderAPI_Sewing; index: Standard_Integer): TopoDS_Edge {.
    noSideEffect, importcpp: "ContigousEdge", header: "BRepBuilderAPI_Sewing.hxx".}
proc ContigousEdgeCouple*(this: BRepBuilderAPI_Sewing; index: Standard_Integer): TopTools_ListOfShape {.
    noSideEffect, importcpp: "ContigousEdgeCouple",
    header: "BRepBuilderAPI_Sewing.hxx".}
proc IsSectionBound*(this: BRepBuilderAPI_Sewing; section: TopoDS_Edge): Standard_Boolean {.
    noSideEffect, importcpp: "IsSectionBound", header: "BRepBuilderAPI_Sewing.hxx".}
proc SectionToBoundary*(this: BRepBuilderAPI_Sewing; section: TopoDS_Edge): TopoDS_Edge {.
    noSideEffect, importcpp: "SectionToBoundary",
    header: "BRepBuilderAPI_Sewing.hxx".}
proc NbDegeneratedShapes*(this: BRepBuilderAPI_Sewing): Standard_Integer {.
    noSideEffect, importcpp: "NbDegeneratedShapes",
    header: "BRepBuilderAPI_Sewing.hxx".}
proc DegeneratedShape*(this: BRepBuilderAPI_Sewing; index: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "DegeneratedShape",
    header: "BRepBuilderAPI_Sewing.hxx".}
proc IsDegenerated*(this: BRepBuilderAPI_Sewing; shape: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "IsDegenerated", header: "BRepBuilderAPI_Sewing.hxx".}
proc IsModified*(this: BRepBuilderAPI_Sewing; shape: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "IsModified", header: "BRepBuilderAPI_Sewing.hxx".}
proc Modified*(this: BRepBuilderAPI_Sewing; shape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "Modified", header: "BRepBuilderAPI_Sewing.hxx".}
proc IsModifiedSubShape*(this: BRepBuilderAPI_Sewing; shape: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "IsModifiedSubShape",
    header: "BRepBuilderAPI_Sewing.hxx".}
proc ModifiedSubShape*(this: BRepBuilderAPI_Sewing; shape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "ModifiedSubShape",
    header: "BRepBuilderAPI_Sewing.hxx".}
proc Dump*(this: BRepBuilderAPI_Sewing) {.noSideEffect, importcpp: "Dump",
                                       header: "BRepBuilderAPI_Sewing.hxx".}
proc NbDeletedFaces*(this: BRepBuilderAPI_Sewing): Standard_Integer {.noSideEffect,
    importcpp: "NbDeletedFaces", header: "BRepBuilderAPI_Sewing.hxx".}
proc DeletedFace*(this: BRepBuilderAPI_Sewing; index: Standard_Integer): TopoDS_Face {.
    noSideEffect, importcpp: "DeletedFace", header: "BRepBuilderAPI_Sewing.hxx".}
proc WhichFace*(this: BRepBuilderAPI_Sewing; theEdg: TopoDS_Edge;
               index: Standard_Integer = 1): TopoDS_Face {.noSideEffect,
    importcpp: "WhichFace", header: "BRepBuilderAPI_Sewing.hxx".}
proc SameParameterMode*(this: BRepBuilderAPI_Sewing): Standard_Boolean {.
    noSideEffect, importcpp: "SameParameterMode",
    header: "BRepBuilderAPI_Sewing.hxx".}
proc SetSameParameterMode*(this: var BRepBuilderAPI_Sewing;
                          SameParameterMode: Standard_Boolean) {.
    importcpp: "SetSameParameterMode", header: "BRepBuilderAPI_Sewing.hxx".}
proc Tolerance*(this: BRepBuilderAPI_Sewing): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "BRepBuilderAPI_Sewing.hxx".}
proc SetTolerance*(this: var BRepBuilderAPI_Sewing; theToler: Standard_Real) {.
    importcpp: "SetTolerance", header: "BRepBuilderAPI_Sewing.hxx".}
proc MinTolerance*(this: BRepBuilderAPI_Sewing): Standard_Real {.noSideEffect,
    importcpp: "MinTolerance", header: "BRepBuilderAPI_Sewing.hxx".}
proc SetMinTolerance*(this: var BRepBuilderAPI_Sewing; theMinToler: Standard_Real) {.
    importcpp: "SetMinTolerance", header: "BRepBuilderAPI_Sewing.hxx".}
proc MaxTolerance*(this: BRepBuilderAPI_Sewing): Standard_Real {.noSideEffect,
    importcpp: "MaxTolerance", header: "BRepBuilderAPI_Sewing.hxx".}
proc SetMaxTolerance*(this: var BRepBuilderAPI_Sewing; theMaxToler: Standard_Real) {.
    importcpp: "SetMaxTolerance", header: "BRepBuilderAPI_Sewing.hxx".}
proc FaceMode*(this: BRepBuilderAPI_Sewing): Standard_Boolean {.noSideEffect,
    importcpp: "FaceMode", header: "BRepBuilderAPI_Sewing.hxx".}
proc SetFaceMode*(this: var BRepBuilderAPI_Sewing; theFaceMode: Standard_Boolean) {.
    importcpp: "SetFaceMode", header: "BRepBuilderAPI_Sewing.hxx".}
proc FloatingEdgesMode*(this: BRepBuilderAPI_Sewing): Standard_Boolean {.
    noSideEffect, importcpp: "FloatingEdgesMode",
    header: "BRepBuilderAPI_Sewing.hxx".}
proc SetFloatingEdgesMode*(this: var BRepBuilderAPI_Sewing;
                          theFloatingEdgesMode: Standard_Boolean) {.
    importcpp: "SetFloatingEdgesMode", header: "BRepBuilderAPI_Sewing.hxx".}
proc LocalTolerancesMode*(this: BRepBuilderAPI_Sewing): Standard_Boolean {.
    noSideEffect, importcpp: "LocalTolerancesMode",
    header: "BRepBuilderAPI_Sewing.hxx".}
proc SetLocalTolerancesMode*(this: var BRepBuilderAPI_Sewing;
                            theLocalTolerancesMode: Standard_Boolean) {.
    importcpp: "SetLocalTolerancesMode", header: "BRepBuilderAPI_Sewing.hxx".}
proc SetNonManifoldMode*(this: var BRepBuilderAPI_Sewing;
                        theNonManifoldMode: Standard_Boolean) {.
    importcpp: "SetNonManifoldMode", header: "BRepBuilderAPI_Sewing.hxx".}
proc NonManifoldMode*(this: BRepBuilderAPI_Sewing): Standard_Boolean {.noSideEffect,
    importcpp: "NonManifoldMode", header: "BRepBuilderAPI_Sewing.hxx".}
type
  BRepBuilderAPI_Sewingbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BRepBuilderAPI_Sewing::get_type_name(@)",
                              header: "BRepBuilderAPI_Sewing.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepBuilderAPI_Sewing::get_type_descriptor(@)",
    header: "BRepBuilderAPI_Sewing.hxx".}
proc DynamicType*(this: BRepBuilderAPI_Sewing): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BRepBuilderAPI_Sewing.hxx".}