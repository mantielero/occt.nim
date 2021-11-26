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

discard "forward decl of Geom_Surface"
discard "forward decl of HLRAlgo_Projector"
discard "forward decl of TopoDS_Edge"
discard "forward decl of HLRAlgo_PolyInternalData"
discard "forward decl of HLRAlgo_EdgeStatus"
discard "forward decl of HLRAlgo_TriangleData"
discard "forward decl of HLRBRep_PolyAlgo"
discard "forward decl of HLRBRep_PolyAlgo"
type
  HandleC1C1* = Handle[HLRBRepPolyAlgo]

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
  HLRBRepPolyAlgo* {.importcpp: "HLRBRep_PolyAlgo", header: "HLRBRep_PolyAlgo.hxx",
                    bycopy.} = object of StandardTransient ## ! Constructs an empty framework for the
                                                      ## ! calculation of the visible and hidden lines of a shape in a projection.
                                                      ## ! Use the functions:
                                                      ## ! -   Projector to define the point of view
                                                      ## ! -   Load to select the shape or shapes to be  visualized
                                                      ## ! -   Update to compute the visible and hidden lines of the shape.
                                                      ## ! Warning
                                                      ## ! The shape or shapes to be visualized must have already been triangulated.


proc constructHLRBRepPolyAlgo*(): HLRBRepPolyAlgo {.constructor,
    importcpp: "HLRBRep_PolyAlgo(@)", header: "HLRBRep_PolyAlgo.hxx".}
proc constructHLRBRepPolyAlgo*(a: Handle[HLRBRepPolyAlgo]): HLRBRepPolyAlgo {.
    constructor, importcpp: "HLRBRep_PolyAlgo(@)", header: "HLRBRep_PolyAlgo.hxx".}
proc constructHLRBRepPolyAlgo*(s: TopoDS_Shape): HLRBRepPolyAlgo {.constructor,
    importcpp: "HLRBRep_PolyAlgo(@)", header: "HLRBRep_PolyAlgo.hxx".}
proc nbShapes*(this: HLRBRepPolyAlgo): cint {.noSideEffect, importcpp: "NbShapes",
    header: "HLRBRep_PolyAlgo.hxx".}
proc shape*(this: var HLRBRepPolyAlgo; i: cint): var TopoDS_Shape {.importcpp: "Shape",
    header: "HLRBRep_PolyAlgo.hxx".}
proc remove*(this: var HLRBRepPolyAlgo; i: cint) {.importcpp: "Remove",
    header: "HLRBRep_PolyAlgo.hxx".}
proc index*(this: HLRBRepPolyAlgo; s: TopoDS_Shape): cint {.noSideEffect,
    importcpp: "Index", header: "HLRBRep_PolyAlgo.hxx".}
proc load*(this: var HLRBRepPolyAlgo; theShape: TopoDS_Shape) {.importcpp: "Load",
    header: "HLRBRep_PolyAlgo.hxx".}
proc algo*(this: HLRBRepPolyAlgo): Handle[HLRAlgoPolyAlgo] {.noSideEffect,
    importcpp: "Algo", header: "HLRBRep_PolyAlgo.hxx".}
proc projector*(this: HLRBRepPolyAlgo): HLRAlgoProjector {.noSideEffect,
    importcpp: "Projector", header: "HLRBRep_PolyAlgo.hxx".}
proc projector*(this: var HLRBRepPolyAlgo; theProj: HLRAlgoProjector) {.
    importcpp: "Projector", header: "HLRBRep_PolyAlgo.hxx".}
proc tolAngular*(this: HLRBRepPolyAlgo): cfloat {.noSideEffect,
    importcpp: "TolAngular", header: "HLRBRep_PolyAlgo.hxx".}
proc tolAngular*(this: var HLRBRepPolyAlgo; theTol: cfloat) {.importcpp: "TolAngular",
    header: "HLRBRep_PolyAlgo.hxx".}
proc tolCoef*(this: HLRBRepPolyAlgo): cfloat {.noSideEffect, importcpp: "TolCoef",
    header: "HLRBRep_PolyAlgo.hxx".}
proc tolCoef*(this: var HLRBRepPolyAlgo; theTol: cfloat) {.importcpp: "TolCoef",
    header: "HLRBRep_PolyAlgo.hxx".}
proc update*(this: var HLRBRepPolyAlgo) {.importcpp: "Update",
                                      header: "HLRBRep_PolyAlgo.hxx".}
proc initHide*(this: var HLRBRepPolyAlgo) {.importcpp: "InitHide",
                                        header: "HLRBRep_PolyAlgo.hxx".}
proc moreHide*(this: HLRBRepPolyAlgo): bool {.noSideEffect, importcpp: "MoreHide",
    header: "HLRBRep_PolyAlgo.hxx".}
proc nextHide*(this: var HLRBRepPolyAlgo) {.importcpp: "NextHide",
                                        header: "HLRBRep_PolyAlgo.hxx".}
proc hide*(this: var HLRBRepPolyAlgo; status: var HLRAlgoEdgeStatus;
          s: var TopoDS_Shape; reg1: var bool; regn: var bool; outl: var bool;
          intl: var bool): var PointsT {.importcpp: "Hide",
                                    header: "HLRBRep_PolyAlgo.hxx".}
proc initShow*(this: var HLRBRepPolyAlgo) {.importcpp: "InitShow",
                                        header: "HLRBRep_PolyAlgo.hxx".}
proc moreShow*(this: HLRBRepPolyAlgo): bool {.noSideEffect, importcpp: "MoreShow",
    header: "HLRBRep_PolyAlgo.hxx".}
proc nextShow*(this: var HLRBRepPolyAlgo) {.importcpp: "NextShow",
                                        header: "HLRBRep_PolyAlgo.hxx".}
proc show*(this: var HLRBRepPolyAlgo; s: var TopoDS_Shape; reg1: var bool; regn: var bool;
          outl: var bool; intl: var bool): var PointsT {.importcpp: "Show",
    header: "HLRBRep_PolyAlgo.hxx".}
proc outLinedShape*(this: HLRBRepPolyAlgo; s: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "OutLinedShape", header: "HLRBRep_PolyAlgo.hxx".}
proc debug*(this: HLRBRepPolyAlgo): bool {.noSideEffect, importcpp: "Debug",
                                       header: "HLRBRep_PolyAlgo.hxx".}
proc debug*(this: var HLRBRepPolyAlgo; theDebug: bool) {.importcpp: "Debug",
    header: "HLRBRep_PolyAlgo.hxx".}
type
  HLRBRepPolyAlgobaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "HLRBRep_PolyAlgo::get_type_name(@)",
                            header: "HLRBRep_PolyAlgo.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "HLRBRep_PolyAlgo::get_type_descriptor(@)",
    header: "HLRBRep_PolyAlgo.hxx".}
proc dynamicType*(this: HLRBRepPolyAlgo): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRBRep_PolyAlgo.hxx".}

























