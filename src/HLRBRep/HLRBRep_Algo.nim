##  Created on: 1994-08-03
##  Created by: Christophe MARION
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of Standard_Transient"
discard "forward decl of HLRBRep_Algo"
discard "forward decl of HLRBRep_Algo"
type
  HandleC1C1* = Handle[HLRBRepAlgo]

## ! Inherited  from InternalAlgo  to  provide  methods with Shape from TopoDS.
## ! A framework to compute a shape as seen in a projection plane. This is done by
## ! calculating the visible and the hidden parts of the shape.
## ! HLRBRep_Algo works with three types of entity:
## ! -   shapes to be visualized
## ! -   edges in these shapes (these edges are
## ! the basic entities which will be visualized or hidden), and
## ! -   faces in these shapes which hide the edges.
## ! HLRBRep_Algo is based on the principle of comparing each edge of the shape to be
## ! visualized with each of its faces, and calculating the visible and the hidden parts of each edge.
## ! For a given projection, HLRBRep_Algo calculates a set of lines characteristic of the
## ! object being represented. It is also used in conjunction with the
## ! HLRBRep_HLRToShape extraction utilities, which reconstruct a new, simplified shape
## ! from a selection of calculation results. This new shape is made up of edges, which
## ! represent the shape visualized in the projection.
## ! HLRBRep_Algo takes the shape itself into account whereas HLRBRep_PolyAlgo
## ! works with a polyhedral simplification of the shape. When you use HLRBRep_Algo, you
## ! obtain an exact result, whereas, when you use HLRBRep_PolyAlgo, you reduce
## ! computation time but obtain polygonal segments. In the case of complicated
## ! shapes, HLRBRep_Algo may be time-consuming.
## ! An HLRBRep_Algo object provides a framework for:
## ! -   defining the point of view
## ! -   identifying the shape or shapes to be visualized
## ! -   calculating the outlines
## ! -   calculating the visible and hidden lines of the shape.
## ! Warning
## ! -   Superimposed lines are not eliminated by this algorithm.
## ! -   There must be no unfinished objects inside the shape you wish to visualize.
## ! -   Points are not treated.
## ! -   Note that this is not the sort of algorithm used in generating shading, which
## ! calculates the visible and hidden parts of each face in a shape to be visualized by
## ! comparing each face in the shape with every other face in the same shape.

type
  HLRBRepAlgo* {.importcpp: "HLRBRep_Algo", header: "HLRBRep_Algo.hxx", bycopy.} = object of HLRBRepInternalAlgo ##
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
                                                                                                       ## function:
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
                                                                                                       ## Add
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
                                                                                                       ## outlines
                                                                                                       ## of
                                                                                                       ## the
                                                                                                       ## shape,
                                                                                                       ## and
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## -
                                                                                                       ## Hide
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


proc constructHLRBRepAlgo*(): HLRBRepAlgo {.constructor,
    importcpp: "HLRBRep_Algo(@)", header: "HLRBRep_Algo.hxx".}
proc constructHLRBRepAlgo*(a: Handle[HLRBRepAlgo]): HLRBRepAlgo {.constructor,
    importcpp: "HLRBRep_Algo(@)", header: "HLRBRep_Algo.hxx".}
proc add*(this: var HLRBRepAlgo; s: TopoDS_Shape; sData: Handle[StandardTransient];
         nbIso: cint = 0) {.importcpp: "Add", header: "HLRBRep_Algo.hxx".}
proc add*(this: var HLRBRepAlgo; s: TopoDS_Shape; nbIso: cint = 0) {.importcpp: "Add",
    header: "HLRBRep_Algo.hxx".}
proc index*(this: var HLRBRepAlgo; s: TopoDS_Shape): cint {.importcpp: "Index",
    header: "HLRBRep_Algo.hxx".}
proc outLinedShapeNullify*(this: var HLRBRepAlgo) {.
    importcpp: "OutLinedShapeNullify", header: "HLRBRep_Algo.hxx".}
type
  HLRBRepAlgobaseType* = HLRBRepInternalAlgo

proc getTypeName*(): cstring {.importcpp: "HLRBRep_Algo::get_type_name(@)",
                            header: "HLRBRep_Algo.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "HLRBRep_Algo::get_type_descriptor(@)", header: "HLRBRep_Algo.hxx".}
proc dynamicType*(this: HLRBRepAlgo): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRBRep_Algo.hxx".}

























