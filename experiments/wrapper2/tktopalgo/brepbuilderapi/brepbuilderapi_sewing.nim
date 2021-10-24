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
type
  HandleBRepBuilderAPI_Sewing* = Handle[BRepBuilderAPI_Sewing]

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


proc newBRepBuilderAPI_Sewing*(tolerance: cfloat = 1.0e-06; option1: bool = true;
                              option2: bool = true; option3: bool = true;
                              option4: bool = false): BRepBuilderAPI_Sewing {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_Sewing(@)", dynlib: tktopalgo.}
proc init*(this: var BRepBuilderAPI_Sewing; tolerance: cfloat = 1.0e-06;
          option1: bool = true; option2: bool = true; option3: bool = true;
          option4: bool = false) {.cdecl, importcpp: "Init", dynlib: tktopalgo.}
proc load*(this: var BRepBuilderAPI_Sewing; shape: TopoDS_Shape) {.cdecl,
    importcpp: "Load", dynlib: tktopalgo.}
proc add*(this: var BRepBuilderAPI_Sewing; shape: TopoDS_Shape) {.cdecl,
    importcpp: "Add", dynlib: tktopalgo.}
proc perform*(this: var BRepBuilderAPI_Sewing;
             theProgress: MessageProgressRange = messageProgressRange()) {.cdecl,
    importcpp: "Perform", dynlib: tktopalgo.}
proc sewedShape*(this: BRepBuilderAPI_Sewing): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "SewedShape", dynlib: tktopalgo.}
proc setContext*(this: var BRepBuilderAPI_Sewing;
                theContext: Handle[BRepToolsReShape]) {.cdecl,
    importcpp: "SetContext", dynlib: tktopalgo.}
proc getContext*(this: BRepBuilderAPI_Sewing): Handle[BRepToolsReShape] {.
    noSideEffect, cdecl, importcpp: "GetContext", dynlib: tktopalgo.}
proc nbFreeEdges*(this: BRepBuilderAPI_Sewing): cint {.noSideEffect, cdecl,
    importcpp: "NbFreeEdges", dynlib: tktopalgo.}
proc freeEdge*(this: BRepBuilderAPI_Sewing; index: cint): TopoDS_Edge {.noSideEffect,
    cdecl, importcpp: "FreeEdge", dynlib: tktopalgo.}
proc nbMultipleEdges*(this: BRepBuilderAPI_Sewing): cint {.noSideEffect, cdecl,
    importcpp: "NbMultipleEdges", dynlib: tktopalgo.}
proc multipleEdge*(this: BRepBuilderAPI_Sewing; index: cint): TopoDS_Edge {.
    noSideEffect, cdecl, importcpp: "MultipleEdge", dynlib: tktopalgo.}
proc nbContigousEdges*(this: BRepBuilderAPI_Sewing): cint {.noSideEffect, cdecl,
    importcpp: "NbContigousEdges", dynlib: tktopalgo.}
proc contigousEdge*(this: BRepBuilderAPI_Sewing; index: cint): TopoDS_Edge {.
    noSideEffect, cdecl, importcpp: "ContigousEdge", dynlib: tktopalgo.}
proc contigousEdgeCouple*(this: BRepBuilderAPI_Sewing; index: cint): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "ContigousEdgeCouple", dynlib: tktopalgo.}
proc isSectionBound*(this: BRepBuilderAPI_Sewing; section: TopoDS_Edge): bool {.
    noSideEffect, cdecl, importcpp: "IsSectionBound", dynlib: tktopalgo.}
proc sectionToBoundary*(this: BRepBuilderAPI_Sewing; section: TopoDS_Edge): TopoDS_Edge {.
    noSideEffect, cdecl, importcpp: "SectionToBoundary", dynlib: tktopalgo.}
proc nbDegeneratedShapes*(this: BRepBuilderAPI_Sewing): cint {.noSideEffect, cdecl,
    importcpp: "NbDegeneratedShapes", dynlib: tktopalgo.}
proc degeneratedShape*(this: BRepBuilderAPI_Sewing; index: cint): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "DegeneratedShape", dynlib: tktopalgo.}
proc isDegenerated*(this: BRepBuilderAPI_Sewing; shape: TopoDS_Shape): bool {.
    noSideEffect, cdecl, importcpp: "IsDegenerated", dynlib: tktopalgo.}
proc isModified*(this: BRepBuilderAPI_Sewing; shape: TopoDS_Shape): bool {.
    noSideEffect, cdecl, importcpp: "IsModified", dynlib: tktopalgo.}
proc modified*(this: BRepBuilderAPI_Sewing; shape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "Modified", dynlib: tktopalgo.}
proc isModifiedSubShape*(this: BRepBuilderAPI_Sewing; shape: TopoDS_Shape): bool {.
    noSideEffect, cdecl, importcpp: "IsModifiedSubShape", dynlib: tktopalgo.}
proc modifiedSubShape*(this: BRepBuilderAPI_Sewing; shape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "ModifiedSubShape", dynlib: tktopalgo.}
proc dump*(this: BRepBuilderAPI_Sewing) {.noSideEffect, cdecl, importcpp: "Dump",
                                       dynlib: tktopalgo.}
proc nbDeletedFaces*(this: BRepBuilderAPI_Sewing): cint {.noSideEffect, cdecl,
    importcpp: "NbDeletedFaces", dynlib: tktopalgo.}
proc deletedFace*(this: BRepBuilderAPI_Sewing; index: cint): TopoDS_Face {.
    noSideEffect, cdecl, importcpp: "DeletedFace", dynlib: tktopalgo.}
proc whichFace*(this: BRepBuilderAPI_Sewing; theEdg: TopoDS_Edge; index: cint = 1): TopoDS_Face {.
    noSideEffect, cdecl, importcpp: "WhichFace", dynlib: tktopalgo.}
proc sameParameterMode*(this: BRepBuilderAPI_Sewing): bool {.noSideEffect, cdecl,
    importcpp: "SameParameterMode", dynlib: tktopalgo.}
proc setSameParameterMode*(this: var BRepBuilderAPI_Sewing; sameParameterMode: bool) {.
    cdecl, importcpp: "SetSameParameterMode", dynlib: tktopalgo.}
proc tolerance*(this: BRepBuilderAPI_Sewing): cfloat {.noSideEffect, cdecl,
    importcpp: "Tolerance", dynlib: tktopalgo.}
proc setTolerance*(this: var BRepBuilderAPI_Sewing; theToler: cfloat) {.cdecl,
    importcpp: "SetTolerance", dynlib: tktopalgo.}
proc minTolerance*(this: BRepBuilderAPI_Sewing): cfloat {.noSideEffect, cdecl,
    importcpp: "MinTolerance", dynlib: tktopalgo.}
proc setMinTolerance*(this: var BRepBuilderAPI_Sewing; theMinToler: cfloat) {.cdecl,
    importcpp: "SetMinTolerance", dynlib: tktopalgo.}
proc maxTolerance*(this: BRepBuilderAPI_Sewing): cfloat {.noSideEffect, cdecl,
    importcpp: "MaxTolerance", dynlib: tktopalgo.}
proc setMaxTolerance*(this: var BRepBuilderAPI_Sewing; theMaxToler: cfloat) {.cdecl,
    importcpp: "SetMaxTolerance", dynlib: tktopalgo.}
proc faceMode*(this: BRepBuilderAPI_Sewing): bool {.noSideEffect, cdecl,
    importcpp: "FaceMode", dynlib: tktopalgo.}
proc setFaceMode*(this: var BRepBuilderAPI_Sewing; theFaceMode: bool) {.cdecl,
    importcpp: "SetFaceMode", dynlib: tktopalgo.}
proc floatingEdgesMode*(this: BRepBuilderAPI_Sewing): bool {.noSideEffect, cdecl,
    importcpp: "FloatingEdgesMode", dynlib: tktopalgo.}
proc setFloatingEdgesMode*(this: var BRepBuilderAPI_Sewing;
                          theFloatingEdgesMode: bool) {.cdecl,
    importcpp: "SetFloatingEdgesMode", dynlib: tktopalgo.}
proc localTolerancesMode*(this: BRepBuilderAPI_Sewing): bool {.noSideEffect, cdecl,
    importcpp: "LocalTolerancesMode", dynlib: tktopalgo.}
proc setLocalTolerancesMode*(this: var BRepBuilderAPI_Sewing;
                            theLocalTolerancesMode: bool) {.cdecl,
    importcpp: "SetLocalTolerancesMode", dynlib: tktopalgo.}
proc setNonManifoldMode*(this: var BRepBuilderAPI_Sewing; theNonManifoldMode: bool) {.
    cdecl, importcpp: "SetNonManifoldMode", dynlib: tktopalgo.}
proc nonManifoldMode*(this: BRepBuilderAPI_Sewing): bool {.noSideEffect, cdecl,
    importcpp: "NonManifoldMode", dynlib: tktopalgo.}