##  Created on: 1992-02-18
##  Created by: Christophe MARION
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../BRepAdaptor/BRepAdaptor_Surface, ../BRepAdaptor/BRepAdaptor_Curve,
  ../BRepAdaptor/BRepAdaptor_Curve2d, ../GeomAbs/GeomAbs_Shape,
  ../HLRAlgo/HLRAlgo_Array1OfTData, ../HLRAlgo/HLRAlgo_Array1OfPISeg,
  ../HLRAlgo/HLRAlgo_Array1OfPINod, ../HLRAlgo/HLRAlgo_ListOfBPoint,
  ../HLRAlgo/HLRAlgo_PolyAlgo, ../HLRAlgo/HLRAlgo_PolyInternalNode,
  ../HLRAlgo/HLRAlgo_Projector, ../TColStd/TColStd_Array1OfInteger,
  ../TColStd/TColStd_Array1OfTransient, ../TopTools/TopTools_IndexedMapOfShape,
  ../TopTools/TopTools_ListOfShape, ../TopTools/TopTools_MapOfShape,
  ../TopTools/TopTools_SequenceOfShape

discard "forward decl of Geom_Surface"
discard "forward decl of HLRAlgo_Projector"
discard "forward decl of TopoDS_Edge"
discard "forward decl of HLRAlgo_PolyInternalData"
discard "forward decl of HLRAlgo_EdgeStatus"
discard "forward decl of HLRAlgo_TriangleData"
discard "forward decl of HLRBRep_PolyAlgo"
discard "forward decl of HLRBRep_PolyAlgo"
type
  Handle_HLRBRep_PolyAlgo* = handle[HLRBRep_PolyAlgo]

## ! to remove Hidden lines on Shapes with Triangulations.
## ! A framework to compute the shape as seen in
## ! a projection plane. This is done by calculating
## ! the visible and the hidden parts of the shape.
## ! HLRBRep_PolyAlgo works with three types of entity:
## ! -   shapes to be visualized (these shapes must
## ! have already been triangulated.)
## ! -   edges in these shapes (these edges are
## ! defined as polygonal lines on the
## ! triangulation of the shape, and are the basic
## ! entities which will be visualized or hidden), and
## ! -   triangles in these shapes which hide the edges.
## ! HLRBRep_PolyAlgo is based on the principle
## ! of comparing each edge of the shape to be
## ! visualized with each of the triangles produced
## ! by the triangulation of the shape, and
## ! calculating the visible and the hidden parts of each edge.
## ! For a given projection, HLRBRep_PolyAlgo
## ! calculates a set of lines characteristic of the
## ! object being represented. It is also used in
## ! conjunction with the HLRBRep_PolyHLRToShape extraction
## ! utilities, which reconstruct a new, simplified
## ! shape from a selection of calculation results.
## ! This new shape is made up of edges, which
## ! represent the shape visualized in the projection.
## ! HLRBRep_PolyAlgo works with a polyhedral
## ! simplification of the shape whereas
## ! HLRBRep_Algo takes the shape itself into
## ! account. When you use HLRBRep_Algo, you
## ! obtain an exact result, whereas, when you use
## ! HLRBRep_PolyAlgo, you reduce computation
## ! time but obtain polygonal segments.
## ! An HLRBRep_PolyAlgo object provides a framework for:
## ! -   defining the point of view
## ! -   identifying the shape or shapes to be visualized
## ! -   calculating the outlines
## ! -   calculating the visible and hidden lines of the shape.
## ! Warning
## ! -   Superimposed lines are not eliminated by this algorithm.
## ! -   There must be no unfinished objects inside the shape you wish to visualize.
## ! -   Points are not treated.
## ! -   Note that this is not the sort of algorithm
## ! used in generating shading, which calculates
## ! the visible and hidden parts of each face in a
## ! shape to be visualized by comparing each
## ! face in the shape with every other face in the same shape.

type
  HLRBRep_PolyAlgo* {.importcpp: "HLRBRep_PolyAlgo",
                     header: "HLRBRep_PolyAlgo.hxx", bycopy.} = object of Standard_Transient ##
                                                                                      ## !
                                                                                      ## Constructs
                                                                                      ## an
                                                                                      ## empty
                                                                                      ## framework
                                                                                      ## for
                                                                                      ## the
                                                                                      ##
                                                                                      ## !
                                                                                      ## calculation
                                                                                      ## of
                                                                                      ## the
                                                                                      ## visible
                                                                                      ## and
                                                                                      ## hidden
                                                                                      ## lines
                                                                                      ## of
                                                                                      ## a
                                                                                      ## shape
                                                                                      ## in
                                                                                      ## a
                                                                                      ## projection.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Use
                                                                                      ## the
                                                                                      ## functions:
                                                                                      ##
                                                                                      ## !
                                                                                      ## -
                                                                                      ## Projector
                                                                                      ## to
                                                                                      ## define
                                                                                      ## the
                                                                                      ## point
                                                                                      ## of
                                                                                      ## view
                                                                                      ##
                                                                                      ## !
                                                                                      ## -
                                                                                      ## Load
                                                                                      ## to
                                                                                      ## select
                                                                                      ## the
                                                                                      ## shape
                                                                                      ## or
                                                                                      ## shapes
                                                                                      ## to
                                                                                      ## be
                                                                                      ## visualized
                                                                                      ##
                                                                                      ## !
                                                                                      ## -
                                                                                      ## Update
                                                                                      ## to
                                                                                      ## compute
                                                                                      ## the
                                                                                      ## visible
                                                                                      ## and
                                                                                      ## hidden
                                                                                      ## lines
                                                                                      ## of
                                                                                      ## the
                                                                                      ## shape.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Warning
                                                                                      ##
                                                                                      ## !
                                                                                      ## The
                                                                                      ## shape
                                                                                      ## or
                                                                                      ## shapes
                                                                                      ## to
                                                                                      ## be
                                                                                      ## visualized
                                                                                      ## must
                                                                                      ## have
                                                                                      ## already
                                                                                      ## been
                                                                                      ## triangulated.


proc constructHLRBRep_PolyAlgo*(): HLRBRep_PolyAlgo {.constructor,
    importcpp: "HLRBRep_PolyAlgo(@)", header: "HLRBRep_PolyAlgo.hxx".}
proc constructHLRBRep_PolyAlgo*(A: handle[HLRBRep_PolyAlgo]): HLRBRep_PolyAlgo {.
    constructor, importcpp: "HLRBRep_PolyAlgo(@)", header: "HLRBRep_PolyAlgo.hxx".}
proc constructHLRBRep_PolyAlgo*(S: TopoDS_Shape): HLRBRep_PolyAlgo {.constructor,
    importcpp: "HLRBRep_PolyAlgo(@)", header: "HLRBRep_PolyAlgo.hxx".}
proc NbShapes*(this: HLRBRep_PolyAlgo): Standard_Integer {.noSideEffect,
    importcpp: "NbShapes", header: "HLRBRep_PolyAlgo.hxx".}
proc Shape*(this: var HLRBRep_PolyAlgo; I: Standard_Integer): var TopoDS_Shape {.
    importcpp: "Shape", header: "HLRBRep_PolyAlgo.hxx".}
proc Remove*(this: var HLRBRep_PolyAlgo; I: Standard_Integer) {.importcpp: "Remove",
    header: "HLRBRep_PolyAlgo.hxx".}
proc Index*(this: HLRBRep_PolyAlgo; S: TopoDS_Shape): Standard_Integer {.noSideEffect,
    importcpp: "Index", header: "HLRBRep_PolyAlgo.hxx".}
proc Load*(this: var HLRBRep_PolyAlgo; theShape: TopoDS_Shape) {.importcpp: "Load",
    header: "HLRBRep_PolyAlgo.hxx".}
proc Algo*(this: HLRBRep_PolyAlgo): handle[HLRAlgo_PolyAlgo] {.noSideEffect,
    importcpp: "Algo", header: "HLRBRep_PolyAlgo.hxx".}
proc Projector*(this: HLRBRep_PolyAlgo): HLRAlgo_Projector {.noSideEffect,
    importcpp: "Projector", header: "HLRBRep_PolyAlgo.hxx".}
proc Projector*(this: var HLRBRep_PolyAlgo; theProj: HLRAlgo_Projector) {.
    importcpp: "Projector", header: "HLRBRep_PolyAlgo.hxx".}
proc TolAngular*(this: HLRBRep_PolyAlgo): Standard_Real {.noSideEffect,
    importcpp: "TolAngular", header: "HLRBRep_PolyAlgo.hxx".}
proc TolAngular*(this: var HLRBRep_PolyAlgo; theTol: Standard_Real) {.
    importcpp: "TolAngular", header: "HLRBRep_PolyAlgo.hxx".}
proc TolCoef*(this: HLRBRep_PolyAlgo): Standard_Real {.noSideEffect,
    importcpp: "TolCoef", header: "HLRBRep_PolyAlgo.hxx".}
proc TolCoef*(this: var HLRBRep_PolyAlgo; theTol: Standard_Real) {.
    importcpp: "TolCoef", header: "HLRBRep_PolyAlgo.hxx".}
proc Update*(this: var HLRBRep_PolyAlgo) {.importcpp: "Update",
                                       header: "HLRBRep_PolyAlgo.hxx".}
proc InitHide*(this: var HLRBRep_PolyAlgo) {.importcpp: "InitHide",
    header: "HLRBRep_PolyAlgo.hxx".}
proc MoreHide*(this: HLRBRep_PolyAlgo): Standard_Boolean {.noSideEffect,
    importcpp: "MoreHide", header: "HLRBRep_PolyAlgo.hxx".}
proc NextHide*(this: var HLRBRep_PolyAlgo) {.importcpp: "NextHide",
    header: "HLRBRep_PolyAlgo.hxx".}
proc Hide*(this: var HLRBRep_PolyAlgo; status: var HLRAlgo_EdgeStatus;
          S: var TopoDS_Shape; reg1: var Standard_Boolean; regn: var Standard_Boolean;
          outl: var Standard_Boolean; intl: var Standard_Boolean): var PointsT {.
    importcpp: "Hide", header: "HLRBRep_PolyAlgo.hxx".}
proc InitShow*(this: var HLRBRep_PolyAlgo) {.importcpp: "InitShow",
    header: "HLRBRep_PolyAlgo.hxx".}
proc MoreShow*(this: HLRBRep_PolyAlgo): Standard_Boolean {.noSideEffect,
    importcpp: "MoreShow", header: "HLRBRep_PolyAlgo.hxx".}
proc NextShow*(this: var HLRBRep_PolyAlgo) {.importcpp: "NextShow",
    header: "HLRBRep_PolyAlgo.hxx".}
proc Show*(this: var HLRBRep_PolyAlgo; S: var TopoDS_Shape; reg1: var Standard_Boolean;
          regn: var Standard_Boolean; outl: var Standard_Boolean;
          intl: var Standard_Boolean): var PointsT {.importcpp: "Show",
    header: "HLRBRep_PolyAlgo.hxx".}
proc OutLinedShape*(this: HLRBRep_PolyAlgo; S: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "OutLinedShape", header: "HLRBRep_PolyAlgo.hxx".}
proc Debug*(this: HLRBRep_PolyAlgo): Standard_Boolean {.noSideEffect,
    importcpp: "Debug", header: "HLRBRep_PolyAlgo.hxx".}
proc Debug*(this: var HLRBRep_PolyAlgo; theDebug: Standard_Boolean) {.
    importcpp: "Debug", header: "HLRBRep_PolyAlgo.hxx".}
type
  HLRBRep_PolyAlgobase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "HLRBRep_PolyAlgo::get_type_name(@)",
                              header: "HLRBRep_PolyAlgo.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "HLRBRep_PolyAlgo::get_type_descriptor(@)",
    header: "HLRBRep_PolyAlgo.hxx".}
proc DynamicType*(this: HLRBRep_PolyAlgo): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRBRep_PolyAlgo.hxx".}