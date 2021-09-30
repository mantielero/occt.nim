##  Created on: 1999-04-26
##  Created by: Andrey BETENEV
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of ShapeExtend_CompositeSurface"
discard "forward decl of ShapeAnalysis_TransferParameters"
discard "forward decl of ShapeExtend_WireData"
discard "forward decl of gp_Lin2d"
discard "forward decl of ShapeFix_WireSegment"
discard "forward decl of Geom_Surface"
# when defined(Status):
#   discard
discard "forward decl of ShapeFix_ComposeShell"
discard "forward decl of ShapeFix_ComposeShell"
type
  HandleC1C1* = Handle[ShapeFixComposeShell]

## ! This class is intended to create a shell from the composite
## ! surface (grid of surfaces) and set of wires.
## ! It may be either division of the supporting surface of the
## ! face, or creating a shape corresponding to face on composite
## ! surface which is missing in CAS.CADE but exists in some other
## ! systems.
## !
## ! It splits (if necessary) original face to several ones by
## ! splitting lines which are joint lines on a supplied grid of
## ! surfaces (U- and V- isolines of the  composite surface).
## ! There are two modes of work, which differ in the way of
## ! handling faces on periodic surfaces:
## !
## ! - if ClosedMode is False (default), when splitting itself is
## ! done as if surface were not periodic. The periodicity of the
## ! underlying surface is taken into account by duplicating splitting
## ! lines in the periodic direction, as necessary to split all
## ! the wires (whole parametrical range of a face)
## ! In this mode, some regularization procedures are performed
## ! (indexation of splitted segments by patch numbers), and it is
## ! expected to be more reliable and robust in case of bad shapes
## !
## ! - if ClosedMode is True, when everything on a periodic surfaces
## ! is considered as modulo period. This allows to deal with wires
## ! which are closed in 3d but not in 2d, with wires which may be
## ! shifted on several periods in 2d etc. However, this mode is
## ! less reliable since some regularizations do not work for it.
## !
## ! The work is made basing on pcurves of the edges. These pcurves
## ! should already exist (for example, in the case of division of
## ! existing face), then they are taken as is. The existing pcurves
## ! should be assigned to one surface (face) for all edges,
## ! this surface (face) will be used only for accessing pcurves,
## ! and it may have any geometry.
## !
## ! All the modifications are recorded in the context tool
## ! (ShapeBuild_ReShape).

type
  ShapeFixComposeShell* {.importcpp: "ShapeFix_ComposeShell",
                         header: "ShapeFix_ComposeShell.hxx", bycopy.} = object of ShapeFixRoot ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## empty
                                                                                         ## tool.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Fill
                                                                                         ## sequence
                                                                                         ## of
                                                                                         ## wire
                                                                                         ## segments
                                                                                         ## by
                                                                                         ## wires
                                                                                         ## from
                                                                                         ## myFace
                                                                                         ##
                                                                                         ## !
                                                                                         ## (pre-loaded).
                                                                                         ## It
                                                                                         ## performs
                                                                                         ## reorder
                                                                                         ## so
                                                                                         ## that
                                                                                         ## edges
                                                                                         ## in
                                                                                         ## segments
                                                                                         ##
                                                                                         ## !
                                                                                         ## are
                                                                                         ## well-ordered.
                                                                                         ## The
                                                                                         ## context
                                                                                         ## is
                                                                                         ## applied
                                                                                         ## to
                                                                                         ## all
                                                                                         ## wires
                                                                                         ##
                                                                                         ## !
                                                                                         ## before
                                                                                         ## using
                                                                                         ## them.


proc constructShapeFixComposeShell*(): ShapeFixComposeShell {.constructor,
    importcpp: "ShapeFix_ComposeShell(@)", header: "ShapeFix_ComposeShell.hxx".}
proc init*(this: var ShapeFixComposeShell;
          grid: Handle[ShapeExtendCompositeSurface]; L: TopLocLocation;
          face: TopoDS_Face; prec: cfloat) {.importcpp: "Init",
    header: "ShapeFix_ComposeShell.hxx".}
proc closedMode*(this: var ShapeFixComposeShell): var bool {.importcpp: "ClosedMode",
    header: "ShapeFix_ComposeShell.hxx".}
proc perform*(this: var ShapeFixComposeShell): bool {.importcpp: "Perform",
    header: "ShapeFix_ComposeShell.hxx".}
proc splitEdges*(this: var ShapeFixComposeShell) {.importcpp: "SplitEdges",
    header: "ShapeFix_ComposeShell.hxx".}
proc result*(this: ShapeFixComposeShell): TopoDS_Shape {.noSideEffect,
    importcpp: "Result", header: "ShapeFix_ComposeShell.hxx".}
proc status*(this: ShapeFixComposeShell; status: ShapeExtendStatus): bool {.
    noSideEffect, importcpp: "Status", header: "ShapeFix_ComposeShell.hxx".}
proc dispatchWires*(this: ShapeFixComposeShell; faces: var TopToolsSequenceOfShape;
                   wires: var ShapeFixSequenceOfWireSegment) {.noSideEffect,
    importcpp: "DispatchWires", header: "ShapeFix_ComposeShell.hxx".}
proc setTransferParamTool*(this: var ShapeFixComposeShell; transferParam: Handle[
    ShapeAnalysisTransferParameters]) {.importcpp: "SetTransferParamTool",
                                       header: "ShapeFix_ComposeShell.hxx".}
proc getTransferParamTool*(this: ShapeFixComposeShell): Handle[
    ShapeAnalysisTransferParameters] {.noSideEffect,
                                      importcpp: "GetTransferParamTool",
                                      header: "ShapeFix_ComposeShell.hxx".}
type
  ShapeFixComposeShellbaseType* = ShapeFixRoot

proc getTypeName*(): cstring {.importcpp: "ShapeFix_ComposeShell::get_type_name(@)",
                            header: "ShapeFix_ComposeShell.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeFix_ComposeShell::get_type_descriptor(@)",
    header: "ShapeFix_ComposeShell.hxx".}
proc dynamicType*(this: ShapeFixComposeShell): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeFix_ComposeShell.hxx".}

























