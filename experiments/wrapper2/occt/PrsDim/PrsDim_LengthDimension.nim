##  Copyright (c) 1999-2013 OPEN CASCADE SAS
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
  PrsDim_Dimension, PrsDim_KindOfDimension, ../Geom/Geom_Plane, ../gp/gp_Pnt,
  ../gp/gp_Dir, ../Prs3d/Prs3d_DimensionAspect, ../Prs3d/Prs3d_Drawer,
  ../TopoDS/TopoDS, ../TopoDS/TopoDS_Vertex

discard "forward decl of PrsDim_LengthDimension"
type
  Handle_PrsDim_LengthDimension* = handle[PrsDim_LengthDimension]

## ! Length dimension. Can be constructued:
## ! - Between two generic points.
## ! - Between two vertices.
## ! - Between two faces.
## ! - Between two parallel edges.
## ! - Between face and edge.
## !
## ! In case of two points (vertices) or one linear edge the user-defined plane
## ! that includes this geometry is necessary to be set.
## !
## ! In case of face-edge, edge-vertex or face-face lengthes the automatic plane
## ! computing is allowed. For this plane the third point is found on the
## ! edge or on the face.
## !
## ! Please note that if the inappropriate geometry is defined
## ! or the distance between measured points is less than
## ! Precision::Confusion(), the dimension is invalid and its
## ! presentation can not be computed.

type
  PrsDim_LengthDimension* {.importcpp: "PrsDim_LengthDimension",
                           header: "PrsDim_LengthDimension.hxx", bycopy.} = object of PrsDim_Dimension ##
                                                                                                ## !
                                                                                                ## Construct
                                                                                                ## length
                                                                                                ## dimension
                                                                                                ## between
                                                                                                ## face
                                                                                                ## and
                                                                                                ## edge.
                                                                                                ##
                                                                                                ## !
                                                                                                ## Here
                                                                                                ## dimension
                                                                                                ## can
                                                                                                ## be
                                                                                                ## built
                                                                                                ## without
                                                                                                ## user-defined
                                                                                                ## plane.
                                                                                                ##
                                                                                                ## !
                                                                                                ## @param
                                                                                                ## theFace
                                                                                                ## [in]
                                                                                                ## the
                                                                                                ## face
                                                                                                ## (first
                                                                                                ## shape).
                                                                                                ##
                                                                                                ## !
                                                                                                ## @param
                                                                                                ## theEdge
                                                                                                ## [in]
                                                                                                ## the
                                                                                                ## edge
                                                                                                ## (second
                                                                                                ## shape).
                                                                                                ##
                                                                                                ## !
                                                                                                ## @return
                                                                                                ## first
                                                                                                ## attachement
                                                                                                ## point.
                                                                                                ##
                                                                                                ## !
                                                                                                ## Measure
                                                                                                ## distance
                                                                                                ## between
                                                                                                ## two
                                                                                                ## points.
                                                                                                ##
                                                                                                ## !
                                                                                                ## The
                                                                                                ## dimension
                                                                                                ## will
                                                                                                ## become
                                                                                                ## invalid
                                                                                                ## if
                                                                                                ## the
                                                                                                ## new
                                                                                                ## distance
                                                                                                ## between
                                                                                                ##
                                                                                                ## !
                                                                                                ## attachement
                                                                                                ## points
                                                                                                ## is
                                                                                                ## less
                                                                                                ## than
                                                                                                ## Precision::Confusion().
                                                                                                ##
                                                                                                ## !
                                                                                                ## @param
                                                                                                ## theFirstPoint
                                                                                                ## [in]
                                                                                                ## the
                                                                                                ## first
                                                                                                ## point.
                                                                                                ##
                                                                                                ## !
                                                                                                ## @param
                                                                                                ## theSecondPoint
                                                                                                ## [in]
                                                                                                ## the
                                                                                                ## second
                                                                                                ## point.
                                                                                                ##
                                                                                                ## !
                                                                                                ## @param
                                                                                                ## thePlane
                                                                                                ## [in]
                                                                                                ## the
                                                                                                ## user-defined
                                                                                                ## plane
                                                                                                ##
                                                                                                ## !
                                                                                                ## Checks
                                                                                                ## if
                                                                                                ## the
                                                                                                ## plane
                                                                                                ## includes
                                                                                                ## first
                                                                                                ## and
                                                                                                ## second
                                                                                                ## points
                                                                                                ## to
                                                                                                ## build
                                                                                                ## dimension.
                                                                                                ##
                                                                                                ## !
                                                                                                ## Checks
                                                                                                ## that
                                                                                                ## distance
                                                                                                ## between
                                                                                                ## two
                                                                                                ## points
                                                                                                ## is
                                                                                                ## valid.
                                                                                                ##
                                                                                                ## !
                                                                                                ## @param
                                                                                                ## theFirstPoint
                                                                                                ## [in]
                                                                                                ## the
                                                                                                ## first
                                                                                                ## point.
                                                                                                ##
                                                                                                ## !
                                                                                                ## @param
                                                                                                ## theSecondPoint
                                                                                                ## [in]
                                                                                                ## the
                                                                                                ## second
                                                                                                ## point.

  PrsDim_LengthDimensionbase_type* = PrsDim_Dimension

proc get_type_name*(): cstring {.importcpp: "PrsDim_LengthDimension::get_type_name(@)",
                              header: "PrsDim_LengthDimension.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "PrsDim_LengthDimension::get_type_descriptor(@)",
    header: "PrsDim_LengthDimension.hxx".}
proc DynamicType*(this: PrsDim_LengthDimension): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "PrsDim_LengthDimension.hxx".}
proc constructPrsDim_LengthDimension*(theFace: TopoDS_Face; theEdge: TopoDS_Edge): PrsDim_LengthDimension {.
    constructor, importcpp: "PrsDim_LengthDimension(@)",
    header: "PrsDim_LengthDimension.hxx".}
proc constructPrsDim_LengthDimension*(theFirstFace: TopoDS_Face;
                                     theSecondFace: TopoDS_Face): PrsDim_LengthDimension {.
    constructor, importcpp: "PrsDim_LengthDimension(@)",
    header: "PrsDim_LengthDimension.hxx".}
proc constructPrsDim_LengthDimension*(theFirstPoint: gp_Pnt;
                                     theSecondPoint: gp_Pnt; thePlane: gp_Pln): PrsDim_LengthDimension {.
    constructor, importcpp: "PrsDim_LengthDimension(@)",
    header: "PrsDim_LengthDimension.hxx".}
proc constructPrsDim_LengthDimension*(theFirstShape: TopoDS_Shape;
                                     theSecondShape: TopoDS_Shape;
                                     thePlane: gp_Pln): PrsDim_LengthDimension {.
    constructor, importcpp: "PrsDim_LengthDimension(@)",
    header: "PrsDim_LengthDimension.hxx".}
proc constructPrsDim_LengthDimension*(theEdge: TopoDS_Edge; thePlane: gp_Pln): PrsDim_LengthDimension {.
    constructor, importcpp: "PrsDim_LengthDimension(@)",
    header: "PrsDim_LengthDimension.hxx".}
proc FirstPoint*(this: PrsDim_LengthDimension): gp_Pnt {.noSideEffect,
    importcpp: "FirstPoint", header: "PrsDim_LengthDimension.hxx".}
proc SecondPoint*(this: PrsDim_LengthDimension): gp_Pnt {.noSideEffect,
    importcpp: "SecondPoint", header: "PrsDim_LengthDimension.hxx".}
proc FirstShape*(this: PrsDim_LengthDimension): TopoDS_Shape {.noSideEffect,
    importcpp: "FirstShape", header: "PrsDim_LengthDimension.hxx".}
proc SecondShape*(this: PrsDim_LengthDimension): TopoDS_Shape {.noSideEffect,
    importcpp: "SecondShape", header: "PrsDim_LengthDimension.hxx".}
proc SetMeasuredGeometry*(this: var PrsDim_LengthDimension; theFirstPoint: gp_Pnt;
                         theSecondPoint: gp_Pnt; thePlane: gp_Pln) {.
    importcpp: "SetMeasuredGeometry", header: "PrsDim_LengthDimension.hxx".}
proc SetMeasuredGeometry*(this: var PrsDim_LengthDimension; theEdge: TopoDS_Edge;
                         thePlane: gp_Pln) {.importcpp: "SetMeasuredGeometry",
    header: "PrsDim_LengthDimension.hxx".}
proc SetMeasuredGeometry*(this: var PrsDim_LengthDimension;
                         theFirstFace: TopoDS_Face; theSecondFace: TopoDS_Face) {.
    importcpp: "SetMeasuredGeometry", header: "PrsDim_LengthDimension.hxx".}
proc SetMeasuredGeometry*(this: var PrsDim_LengthDimension; theFace: TopoDS_Face;
                         theEdge: TopoDS_Edge) {.importcpp: "SetMeasuredGeometry",
    header: "PrsDim_LengthDimension.hxx".}
proc SetMeasuredShapes*(this: var PrsDim_LengthDimension;
                       theFirstShape: TopoDS_Shape; theSecondShape: TopoDS_Shape) {.
    importcpp: "SetMeasuredShapes", header: "PrsDim_LengthDimension.hxx".}
proc GetDisplayUnits*(this: PrsDim_LengthDimension): TCollection_AsciiString {.
    noSideEffect, importcpp: "GetDisplayUnits",
    header: "PrsDim_LengthDimension.hxx".}
proc GetModelUnits*(this: PrsDim_LengthDimension): TCollection_AsciiString {.
    noSideEffect, importcpp: "GetModelUnits", header: "PrsDim_LengthDimension.hxx".}
proc SetDisplayUnits*(this: var PrsDim_LengthDimension;
                     theUnits: TCollection_AsciiString) {.
    importcpp: "SetDisplayUnits", header: "PrsDim_LengthDimension.hxx".}
proc SetModelUnits*(this: var PrsDim_LengthDimension;
                   theUnits: TCollection_AsciiString) {.
    importcpp: "SetModelUnits", header: "PrsDim_LengthDimension.hxx".}
proc SetTextPosition*(this: var PrsDim_LengthDimension; theTextPos: gp_Pnt) {.
    importcpp: "SetTextPosition", header: "PrsDim_LengthDimension.hxx".}
proc GetTextPosition*(this: PrsDim_LengthDimension): gp_Pnt {.noSideEffect,
    importcpp: "GetTextPosition", header: "PrsDim_LengthDimension.hxx".}
proc SetDirection*(this: var PrsDim_LengthDimension; theDirection: gp_Dir;
                  theUseDirection: Standard_Boolean = Standard_True) {.
    importcpp: "SetDirection", header: "PrsDim_LengthDimension.hxx".}