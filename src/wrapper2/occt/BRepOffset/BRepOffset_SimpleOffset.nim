##  Created on: 2016-10-14
##  Created by: Alexander MALYSHEV
##  Copyright (c) 1999-2016 OPEN CASCADE SAS
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

discard "forward decl of BRepOffset_SimpleOffset"
discard "forward decl of BRepOffset_SimpleOffset"
type
  HandleBRepOffsetSimpleOffset* = Handle[BRepOffsetSimpleOffset]

## ! This class represents mechanism of simple offset algorithm i. e.
## ! topology-preserve offset construction without intersection.
## !
## ! The list below shows mapping scheme:
## ! - Each surface is mapped to its geometric offset surface.
## ! - For each edge, pcurves are mapped to the same pcurves on offset surfaces.
## ! - For each edge, 3d curve is constructed by re-approximation of pcurve on the first offset face.
## ! - Position of each vertex in a result shell is computed as average point of all ends of edges shared by that vertex.
## ! - Tolerances are updated according to the resulting geometry.

type
  BRepOffsetSimpleOffset* {.importcpp: "BRepOffset_SimpleOffset",
                           header: "BRepOffset_SimpleOffset.hxx", bycopy.} = object of BRepToolsModification ##
                                                                                                      ## !
                                                                                                      ## Method
                                                                                                      ## to
                                                                                                      ## fill
                                                                                                      ## new
                                                                                                      ## face
                                                                                                      ## data
                                                                                                      ## for
                                                                                                      ## single
                                                                                                      ## face.
    ## ! Map of edges to new edges information.
    ## ! Map of vertices to new vertices information.
    ## ! Offset value.
    ## ! Tolerance.

  BRepOffsetSimpleOffsetbaseType* = BRepToolsModification

proc getTypeName*(): cstring {.importcpp: "BRepOffset_SimpleOffset::get_type_name(@)",
                            header: "BRepOffset_SimpleOffset.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepOffset_SimpleOffset::get_type_descriptor(@)",
    header: "BRepOffset_SimpleOffset.hxx".}
proc dynamicType*(this: BRepOffsetSimpleOffset): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "BRepOffset_SimpleOffset.hxx".}
proc constructBRepOffsetSimpleOffset*(theInputShape: TopoDS_Shape;
                                     theOffsetValue: StandardReal;
                                     theTolerance: StandardReal): BRepOffsetSimpleOffset {.
    constructor, importcpp: "BRepOffset_SimpleOffset(@)",
    header: "BRepOffset_SimpleOffset.hxx".}
proc newSurface*(this: var BRepOffsetSimpleOffset; f: TopoDS_Face;
                s: var Handle[GeomSurface]; L: var TopLocLocation;
                tol: var StandardReal; revWires: var StandardBoolean;
                revFace: var StandardBoolean): StandardBoolean {.
    importcpp: "NewSurface", header: "BRepOffset_SimpleOffset.hxx".}
proc newCurve*(this: var BRepOffsetSimpleOffset; e: TopoDS_Edge;
              c: var Handle[GeomCurve]; L: var TopLocLocation; tol: var StandardReal): StandardBoolean {.
    importcpp: "NewCurve", header: "BRepOffset_SimpleOffset.hxx".}
proc newPoint*(this: var BRepOffsetSimpleOffset; v: TopoDS_Vertex; p: var GpPnt;
              tol: var StandardReal): StandardBoolean {.importcpp: "NewPoint",
    header: "BRepOffset_SimpleOffset.hxx".}
proc newCurve2d*(this: var BRepOffsetSimpleOffset; e: TopoDS_Edge; f: TopoDS_Face;
                newE: TopoDS_Edge; newF: TopoDS_Face; c: var Handle[Geom2dCurve];
                tol: var StandardReal): StandardBoolean {.importcpp: "NewCurve2d",
    header: "BRepOffset_SimpleOffset.hxx".}
proc newParameter*(this: var BRepOffsetSimpleOffset; v: TopoDS_Vertex; e: TopoDS_Edge;
                  p: var StandardReal; tol: var StandardReal): StandardBoolean {.
    importcpp: "NewParameter", header: "BRepOffset_SimpleOffset.hxx".}
proc continuity*(this: var BRepOffsetSimpleOffset; e: TopoDS_Edge; f1: TopoDS_Face;
                f2: TopoDS_Face; newE: TopoDS_Edge; newF1: TopoDS_Face;
                newF2: TopoDS_Face): GeomAbsShape {.importcpp: "Continuity",
    header: "BRepOffset_SimpleOffset.hxx".}

