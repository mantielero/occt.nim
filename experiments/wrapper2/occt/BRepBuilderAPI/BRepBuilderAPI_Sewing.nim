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
  HandleC1C1* = Handle[BRepBuilderAPI_Sewing]

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
                          header: "BRepBuilderAPI_Sewing.hxx", bycopy.} = object of StandardTransient ##
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


proc constructBRepBuilderAPI_Sewing*(tolerance: cfloat = 1.0e-06;
                                    option1: bool = true; option2: bool = true;
                                    option3: bool = true; option4: bool = false): BRepBuilderAPI_Sewing {.
    constructor, importcpp: "BRepBuilderAPI_Sewing(@)",
    header: "BRepBuilderAPI_Sewing.hxx".}
proc init*(this: var BRepBuilderAPI_Sewing; tolerance: cfloat = 1.0e-06;
          option1: bool = true; option2: bool = true; option3: bool = true;
          option4: bool = false) {.importcpp: "Init",
                               header: "BRepBuilderAPI_Sewing.hxx".}
proc load*(this: var BRepBuilderAPI_Sewing; shape: TopoDS_Shape) {.importcpp: "Load",
    header: "BRepBuilderAPI_Sewing.hxx".}
proc add*(this: var BRepBuilderAPI_Sewing; shape: TopoDS_Shape) {.importcpp: "Add",
    header: "BRepBuilderAPI_Sewing.hxx".}
proc perform*(this: var BRepBuilderAPI_Sewing;
             theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Perform", header: "BRepBuilderAPI_Sewing.hxx".}
proc sewedShape*(this: BRepBuilderAPI_Sewing): TopoDS_Shape {.noSideEffect,
    importcpp: "SewedShape", header: "BRepBuilderAPI_Sewing.hxx".}
proc setContext*(this: var BRepBuilderAPI_Sewing;
                theContext: Handle[BRepToolsReShape]) {.importcpp: "SetContext",
    header: "BRepBuilderAPI_Sewing.hxx".}
proc getContext*(this: BRepBuilderAPI_Sewing): Handle[BRepToolsReShape] {.
    noSideEffect, importcpp: "GetContext", header: "BRepBuilderAPI_Sewing.hxx".}
proc nbFreeEdges*(this: BRepBuilderAPI_Sewing): cint {.noSideEffect,
    importcpp: "NbFreeEdges", header: "BRepBuilderAPI_Sewing.hxx".}
proc freeEdge*(this: BRepBuilderAPI_Sewing; index: cint): TopoDS_Edge {.noSideEffect,
    importcpp: "FreeEdge", header: "BRepBuilderAPI_Sewing.hxx".}
proc nbMultipleEdges*(this: BRepBuilderAPI_Sewing): cint {.noSideEffect,
    importcpp: "NbMultipleEdges", header: "BRepBuilderAPI_Sewing.hxx".}
proc multipleEdge*(this: BRepBuilderAPI_Sewing; index: cint): TopoDS_Edge {.
    noSideEffect, importcpp: "MultipleEdge", header: "BRepBuilderAPI_Sewing.hxx".}
proc nbContigousEdges*(this: BRepBuilderAPI_Sewing): cint {.noSideEffect,
    importcpp: "NbContigousEdges", header: "BRepBuilderAPI_Sewing.hxx".}
proc contigousEdge*(this: BRepBuilderAPI_Sewing; index: cint): TopoDS_Edge {.
    noSideEffect, importcpp: "ContigousEdge", header: "BRepBuilderAPI_Sewing.hxx".}
proc contigousEdgeCouple*(this: BRepBuilderAPI_Sewing; index: cint): TopToolsListOfShape {.
    noSideEffect, importcpp: "ContigousEdgeCouple",
    header: "BRepBuilderAPI_Sewing.hxx".}
proc isSectionBound*(this: BRepBuilderAPI_Sewing; section: TopoDS_Edge): bool {.
    noSideEffect, importcpp: "IsSectionBound", header: "BRepBuilderAPI_Sewing.hxx".}
proc sectionToBoundary*(this: BRepBuilderAPI_Sewing; section: TopoDS_Edge): TopoDS_Edge {.
    noSideEffect, importcpp: "SectionToBoundary",
    header: "BRepBuilderAPI_Sewing.hxx".}
proc nbDegeneratedShapes*(this: BRepBuilderAPI_Sewing): cint {.noSideEffect,
    importcpp: "NbDegeneratedShapes", header: "BRepBuilderAPI_Sewing.hxx".}
proc degeneratedShape*(this: BRepBuilderAPI_Sewing; index: cint): TopoDS_Shape {.
    noSideEffect, importcpp: "DegeneratedShape",
    header: "BRepBuilderAPI_Sewing.hxx".}
proc isDegenerated*(this: BRepBuilderAPI_Sewing; shape: TopoDS_Shape): bool {.
    noSideEffect, importcpp: "IsDegenerated", header: "BRepBuilderAPI_Sewing.hxx".}
proc isModified*(this: BRepBuilderAPI_Sewing; shape: TopoDS_Shape): bool {.
    noSideEffect, importcpp: "IsModified", header: "BRepBuilderAPI_Sewing.hxx".}
proc modified*(this: BRepBuilderAPI_Sewing; shape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "Modified", header: "BRepBuilderAPI_Sewing.hxx".}
proc isModifiedSubShape*(this: BRepBuilderAPI_Sewing; shape: TopoDS_Shape): bool {.
    noSideEffect, importcpp: "IsModifiedSubShape",
    header: "BRepBuilderAPI_Sewing.hxx".}
proc modifiedSubShape*(this: BRepBuilderAPI_Sewing; shape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "ModifiedSubShape",
    header: "BRepBuilderAPI_Sewing.hxx".}
proc dump*(this: BRepBuilderAPI_Sewing) {.noSideEffect, importcpp: "Dump",
                                       header: "BRepBuilderAPI_Sewing.hxx".}
proc nbDeletedFaces*(this: BRepBuilderAPI_Sewing): cint {.noSideEffect,
    importcpp: "NbDeletedFaces", header: "BRepBuilderAPI_Sewing.hxx".}
proc deletedFace*(this: BRepBuilderAPI_Sewing; index: cint): TopoDS_Face {.
    noSideEffect, importcpp: "DeletedFace", header: "BRepBuilderAPI_Sewing.hxx".}
proc whichFace*(this: BRepBuilderAPI_Sewing; theEdg: TopoDS_Edge; index: cint = 1): TopoDS_Face {.
    noSideEffect, importcpp: "WhichFace", header: "BRepBuilderAPI_Sewing.hxx".}
proc sameParameterMode*(this: BRepBuilderAPI_Sewing): bool {.noSideEffect,
    importcpp: "SameParameterMode", header: "BRepBuilderAPI_Sewing.hxx".}
proc setSameParameterMode*(this: var BRepBuilderAPI_Sewing; sameParameterMode: bool) {.
    importcpp: "SetSameParameterMode", header: "BRepBuilderAPI_Sewing.hxx".}
proc tolerance*(this: BRepBuilderAPI_Sewing): cfloat {.noSideEffect,
    importcpp: "Tolerance", header: "BRepBuilderAPI_Sewing.hxx".}
proc setTolerance*(this: var BRepBuilderAPI_Sewing; theToler: cfloat) {.
    importcpp: "SetTolerance", header: "BRepBuilderAPI_Sewing.hxx".}
proc minTolerance*(this: BRepBuilderAPI_Sewing): cfloat {.noSideEffect,
    importcpp: "MinTolerance", header: "BRepBuilderAPI_Sewing.hxx".}
proc setMinTolerance*(this: var BRepBuilderAPI_Sewing; theMinToler: cfloat) {.
    importcpp: "SetMinTolerance", header: "BRepBuilderAPI_Sewing.hxx".}
proc maxTolerance*(this: BRepBuilderAPI_Sewing): cfloat {.noSideEffect,
    importcpp: "MaxTolerance", header: "BRepBuilderAPI_Sewing.hxx".}
proc setMaxTolerance*(this: var BRepBuilderAPI_Sewing; theMaxToler: cfloat) {.
    importcpp: "SetMaxTolerance", header: "BRepBuilderAPI_Sewing.hxx".}
proc faceMode*(this: BRepBuilderAPI_Sewing): bool {.noSideEffect,
    importcpp: "FaceMode", header: "BRepBuilderAPI_Sewing.hxx".}
proc setFaceMode*(this: var BRepBuilderAPI_Sewing; theFaceMode: bool) {.
    importcpp: "SetFaceMode", header: "BRepBuilderAPI_Sewing.hxx".}
proc floatingEdgesMode*(this: BRepBuilderAPI_Sewing): bool {.noSideEffect,
    importcpp: "FloatingEdgesMode", header: "BRepBuilderAPI_Sewing.hxx".}
proc setFloatingEdgesMode*(this: var BRepBuilderAPI_Sewing;
                          theFloatingEdgesMode: bool) {.
    importcpp: "SetFloatingEdgesMode", header: "BRepBuilderAPI_Sewing.hxx".}
proc localTolerancesMode*(this: BRepBuilderAPI_Sewing): bool {.noSideEffect,
    importcpp: "LocalTolerancesMode", header: "BRepBuilderAPI_Sewing.hxx".}
proc setLocalTolerancesMode*(this: var BRepBuilderAPI_Sewing;
                            theLocalTolerancesMode: bool) {.
    importcpp: "SetLocalTolerancesMode", header: "BRepBuilderAPI_Sewing.hxx".}
proc setNonManifoldMode*(this: var BRepBuilderAPI_Sewing; theNonManifoldMode: bool) {.
    importcpp: "SetNonManifoldMode", header: "BRepBuilderAPI_Sewing.hxx".}
proc nonManifoldMode*(this: BRepBuilderAPI_Sewing): bool {.noSideEffect,
    importcpp: "NonManifoldMode", header: "BRepBuilderAPI_Sewing.hxx".}
type
  BRepBuilderAPI_SewingbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BRepBuilderAPI_Sewing::get_type_name(@)",
                            header: "BRepBuilderAPI_Sewing.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepBuilderAPI_Sewing::get_type_descriptor(@)",
    header: "BRepBuilderAPI_Sewing.hxx".}
proc dynamicType*(this: BRepBuilderAPI_Sewing): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepBuilderAPI_Sewing.hxx".}

























