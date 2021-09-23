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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_Shape

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
  Handle_BRepTools_Modification* = handle[BRepTools_Modification]

## ! Defines geometric modifications to a shape, i.e.
## ! changes to faces, edges and vertices.

type
  BRepTools_Modification* {.importcpp: "BRepTools_Modification",
                           header: "BRepTools_Modification.hxx", bycopy.} = object of Standard_Transient ##
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


proc NewSurface*(this: var BRepTools_Modification; F: TopoDS_Face;
                S: var handle[Geom_Surface]; L: var TopLoc_Location;
                Tol: var Standard_Real; RevWires: var Standard_Boolean;
                RevFace: var Standard_Boolean): Standard_Boolean {.
    importcpp: "NewSurface", header: "BRepTools_Modification.hxx".}
proc NewTriangulation*(this: var BRepTools_Modification; F: TopoDS_Face;
                      T: var handle[Poly_Triangulation]): Standard_Boolean {.
    importcpp: "NewTriangulation", header: "BRepTools_Modification.hxx".}
proc NewCurve*(this: var BRepTools_Modification; E: TopoDS_Edge;
              C: var handle[Geom_Curve]; L: var TopLoc_Location;
              Tol: var Standard_Real): Standard_Boolean {.importcpp: "NewCurve",
    header: "BRepTools_Modification.hxx".}
proc NewPolygon*(this: var BRepTools_Modification; E: TopoDS_Edge;
                P: var handle[Poly_Polygon3D]): Standard_Boolean {.
    importcpp: "NewPolygon", header: "BRepTools_Modification.hxx".}
proc NewPolygonOnTriangulation*(this: var BRepTools_Modification; E: TopoDS_Edge;
                               F: TopoDS_Face;
                               P: var handle[Poly_PolygonOnTriangulation]): Standard_Boolean {.
    importcpp: "NewPolygonOnTriangulation", header: "BRepTools_Modification.hxx".}
proc NewPoint*(this: var BRepTools_Modification; V: TopoDS_Vertex; P: var gp_Pnt;
              Tol: var Standard_Real): Standard_Boolean {.importcpp: "NewPoint",
    header: "BRepTools_Modification.hxx".}
proc NewCurve2d*(this: var BRepTools_Modification; E: TopoDS_Edge; F: TopoDS_Face;
                NewE: TopoDS_Edge; NewF: TopoDS_Face; C: var handle[Geom2d_Curve];
                Tol: var Standard_Real): Standard_Boolean {.importcpp: "NewCurve2d",
    header: "BRepTools_Modification.hxx".}
proc NewParameter*(this: var BRepTools_Modification; V: TopoDS_Vertex; E: TopoDS_Edge;
                  P: var Standard_Real; Tol: var Standard_Real): Standard_Boolean {.
    importcpp: "NewParameter", header: "BRepTools_Modification.hxx".}
proc Continuity*(this: var BRepTools_Modification; E: TopoDS_Edge; F1: TopoDS_Face;
                F2: TopoDS_Face; NewE: TopoDS_Edge; NewF1: TopoDS_Face;
                NewF2: TopoDS_Face): GeomAbs_Shape {.importcpp: "Continuity",
    header: "BRepTools_Modification.hxx".}
type
  BRepTools_Modificationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BRepTools_Modification::get_type_name(@)",
                              header: "BRepTools_Modification.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepTools_Modification::get_type_descriptor(@)",
    header: "BRepTools_Modification.hxx".}
proc DynamicType*(this: BRepTools_Modification): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BRepTools_Modification.hxx".}