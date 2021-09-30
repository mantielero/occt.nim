##  Created on: 1994-08-25
##  Created by: Jacques GOUSSARD
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

discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Geom_Curve"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Poly_Triangulation"
discard "forward decl of Poly_Polygon3D"
discard "forward decl of Poly_PolygonOnTriangulation"
discard "forward decl of BRepTools_Modification"
discard "forward decl of BRepTools_Modification"
type
  HandleC1C1* = Handle[BRepToolsModification]

## ! Defines geometric modifications to a shape, i.e.
## ! changes to faces, edges and vertices.

type
  BRepToolsModification* {.importcpp: "BRepTools_Modification",
                          header: "BRepTools_Modification.hxx", bycopy.} = object of StandardTransient ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## true
                                                                                                ## if
                                                                                                ## the
                                                                                                ## face,
                                                                                                ## F,
                                                                                                ## has
                                                                                                ## been
                                                                                                ## modified.
                                                                                                ##
                                                                                                ## !
                                                                                                ## If
                                                                                                ## the
                                                                                                ## face
                                                                                                ## has
                                                                                                ## been
                                                                                                ## modified:
                                                                                                ##
                                                                                                ## !
                                                                                                ## -
                                                                                                ## S
                                                                                                ## is
                                                                                                ## the
                                                                                                ## new
                                                                                                ## geometry
                                                                                                ## of
                                                                                                ## the
                                                                                                ## face,
                                                                                                ##
                                                                                                ## !
                                                                                                ## -
                                                                                                ## L
                                                                                                ## is
                                                                                                ## its
                                                                                                ## new
                                                                                                ## location,
                                                                                                ## and
                                                                                                ##
                                                                                                ## !
                                                                                                ## -
                                                                                                ## Tol
                                                                                                ## is
                                                                                                ## the
                                                                                                ## new
                                                                                                ## tolerance.
                                                                                                ##
                                                                                                ## !
                                                                                                ## The
                                                                                                ## flag,
                                                                                                ## RevWires,
                                                                                                ## is
                                                                                                ## set
                                                                                                ## to
                                                                                                ## true
                                                                                                ## when
                                                                                                ## the
                                                                                                ##
                                                                                                ## !
                                                                                                ## modification
                                                                                                ## reverses
                                                                                                ## the
                                                                                                ## normal
                                                                                                ## of
                                                                                                ## the
                                                                                                ## surface,
                                                                                                ## (i.e.
                                                                                                ##
                                                                                                ## !
                                                                                                ## the
                                                                                                ## wires
                                                                                                ## have
                                                                                                ## to
                                                                                                ## be
                                                                                                ## reversed).
                                                                                                ##
                                                                                                ## !
                                                                                                ## The
                                                                                                ## flag,
                                                                                                ## RevFace,
                                                                                                ## is
                                                                                                ## set
                                                                                                ## to
                                                                                                ## true
                                                                                                ## if
                                                                                                ## the
                                                                                                ## orientation
                                                                                                ## of
                                                                                                ##
                                                                                                ## !
                                                                                                ## the
                                                                                                ## modified
                                                                                                ## face
                                                                                                ## changes
                                                                                                ## in
                                                                                                ## the
                                                                                                ## shells
                                                                                                ## which
                                                                                                ## contain
                                                                                                ## it.
                                                                                                ##
                                                                                                ## !
                                                                                                ## If
                                                                                                ## the
                                                                                                ## face
                                                                                                ## has
                                                                                                ## not
                                                                                                ## been
                                                                                                ## modified
                                                                                                ## this
                                                                                                ## function
                                                                                                ## returns
                                                                                                ##
                                                                                                ## !
                                                                                                ## false,
                                                                                                ## and
                                                                                                ## the
                                                                                                ## values
                                                                                                ## of
                                                                                                ## S,
                                                                                                ## L,
                                                                                                ## Tol,
                                                                                                ## RevWires
                                                                                                ## and
                                                                                                ##
                                                                                                ## !
                                                                                                ## RevFace
                                                                                                ## are
                                                                                                ## not
                                                                                                ## significant.


proc newSurface*(this: var BRepToolsModification; f: TopoDS_Face;
                s: var Handle[GeomSurface]; L: var TopLocLocation;
                tol: var StandardReal; revWires: var StandardBoolean;
                revFace: var StandardBoolean): StandardBoolean {.
    importcpp: "NewSurface", header: "BRepTools_Modification.hxx".}
proc newTriangulation*(this: var BRepToolsModification; f: TopoDS_Face;
                      t: var Handle[PolyTriangulation]): StandardBoolean {.
    importcpp: "NewTriangulation", header: "BRepTools_Modification.hxx".}
proc newCurve*(this: var BRepToolsModification; e: TopoDS_Edge;
              c: var Handle[GeomCurve]; L: var TopLocLocation; tol: var StandardReal): StandardBoolean {.
    importcpp: "NewCurve", header: "BRepTools_Modification.hxx".}
proc newPolygon*(this: var BRepToolsModification; e: TopoDS_Edge;
                p: var Handle[PolyPolygon3D]): StandardBoolean {.
    importcpp: "NewPolygon", header: "BRepTools_Modification.hxx".}
proc newPolygonOnTriangulation*(this: var BRepToolsModification; e: TopoDS_Edge;
                               f: TopoDS_Face;
                               p: var Handle[PolyPolygonOnTriangulation]): StandardBoolean {.
    importcpp: "NewPolygonOnTriangulation", header: "BRepTools_Modification.hxx".}
proc newPoint*(this: var BRepToolsModification; v: TopoDS_Vertex; p: var Pnt;
              tol: var StandardReal): StandardBoolean {.importcpp: "NewPoint",
    header: "BRepTools_Modification.hxx".}
proc newCurve2d*(this: var BRepToolsModification; e: TopoDS_Edge; f: TopoDS_Face;
                newE: TopoDS_Edge; newF: TopoDS_Face; c: var Handle[Geom2dCurve];
                tol: var StandardReal): StandardBoolean {.importcpp: "NewCurve2d",
    header: "BRepTools_Modification.hxx".}
proc newParameter*(this: var BRepToolsModification; v: TopoDS_Vertex; e: TopoDS_Edge;
                  p: var StandardReal; tol: var StandardReal): StandardBoolean {.
    importcpp: "NewParameter", header: "BRepTools_Modification.hxx".}
proc continuity*(this: var BRepToolsModification; e: TopoDS_Edge; f1: TopoDS_Face;
                f2: TopoDS_Face; newE: TopoDS_Edge; newF1: TopoDS_Face;
                newF2: TopoDS_Face): GeomAbsShape {.importcpp: "Continuity",
    header: "BRepTools_Modification.hxx".}
type
  BRepToolsModificationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BRepTools_Modification::get_type_name(@)",
                            header: "BRepTools_Modification.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepTools_Modification::get_type_descriptor(@)",
    header: "BRepTools_Modification.hxx".}
proc dynamicType*(this: BRepToolsModification): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepTools_Modification.hxx".}