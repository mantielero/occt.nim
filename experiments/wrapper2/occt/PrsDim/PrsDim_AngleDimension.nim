##  Copyright (c) 1995-1999 Matra Datavision
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
  PrsDim_Dimension, PrsDim_TypeOfAngle, PrsDim_TypeOfAngleArrowVisibility,
  ../Geom/Geom_Plane, ../Geom/Geom_Line, ../gp/gp, ../gp/gp_Ax1, ../gp/gp_Dir,
  ../gp/gp_Pnt, ../Prs3d/Prs3d_DimensionAspect, ../Prs3d/Prs3d_Presentation,
  ../Standard/Standard, ../Standard/Standard_Macro, ../Standard/Standard_Type,
  ../TopoDS/TopoDS, ../TopoDS/TopoDS_Edge, ../TopoDS/TopoDS_Face,
  ../TopoDS/TopoDS_Vertex

discard "forward decl of PrsDim_AngleDimension"
type
  Handle_PrsDim_AngleDimension* = handle[PrsDim_AngleDimension]

## ! Angle dimension. Can be constructed:
## ! - on two intersected edges.
## ! - on three points or vertices.
## ! - on conical face.
## ! - between two intersected faces.
## !
## ! In case of three points or two intersected edges the dimension plane
## ! (on which dimension presentation is built) can be computed uniquely
## ! as through three defined points can be built only one plane.
## ! Therefore, if user-defined plane differs from this one, the dimension can't be built.
## !
## ! In cases of two planes automatic plane by default is built on point of the
## ! origin of parametric space of the first face (the basis surface) so, that
## ! the working plane and two faces intersection forms minimal angle between the faces.
## ! User can define the other point which the dimension plane should pass through
## ! using the appropriate constructor. This point can lay on the one of the faces or not.
## ! Also user can define his own plane but it should pass through the three points
## ! computed on the geometry initialization step (when the constructor or SetMeasuredGeometry() method
## ! is called).
## !
## ! In case of the conical face the center point of the angle is the apex of the conical surface.
## ! The attachment points are points of the first and the last parameter of the basis circle of the cone.

type
  PrsDim_AngleDimension* {.importcpp: "PrsDim_AngleDimension",
                          header: "PrsDim_AngleDimension.hxx", bycopy.} = object of PrsDim_Dimension ##
                                                                                              ## !
                                                                                              ## Constructs
                                                                                              ## minimum
                                                                                              ## angle
                                                                                              ## dimension
                                                                                              ## between
                                                                                              ## two
                                                                                              ## linear
                                                                                              ## edges
                                                                                              ## (where
                                                                                              ## possible).
                                                                                              ##
                                                                                              ## !
                                                                                              ## These
                                                                                              ## two
                                                                                              ## edges
                                                                                              ## should
                                                                                              ## be
                                                                                              ## intersected
                                                                                              ## by
                                                                                              ## each
                                                                                              ## other.
                                                                                              ## Otherwise
                                                                                              ## the
                                                                                              ## geometry
                                                                                              ## is
                                                                                              ## not
                                                                                              ## valid.
                                                                                              ##
                                                                                              ## !
                                                                                              ## @param
                                                                                              ## theFirstEdge
                                                                                              ## [in]
                                                                                              ## the
                                                                                              ## first
                                                                                              ## edge.
                                                                                              ##
                                                                                              ## !
                                                                                              ## @param
                                                                                              ## theSecondEdge
                                                                                              ## [in]
                                                                                              ## the
                                                                                              ## second
                                                                                              ## edge.
                                                                                              ##
                                                                                              ## !
                                                                                              ## @return
                                                                                              ## first
                                                                                              ## point
                                                                                              ## forming
                                                                                              ## the
                                                                                              ## angle.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Measures
                                                                                              ## minimum
                                                                                              ## angle
                                                                                              ## dimension
                                                                                              ## between
                                                                                              ## two
                                                                                              ## linear
                                                                                              ## edges.
                                                                                              ##
                                                                                              ## !
                                                                                              ## These
                                                                                              ## two
                                                                                              ## edges
                                                                                              ## should
                                                                                              ## be
                                                                                              ## intersected
                                                                                              ## by
                                                                                              ## each
                                                                                              ## other.
                                                                                              ## Otherwise
                                                                                              ## the
                                                                                              ## geometry
                                                                                              ## is
                                                                                              ## not
                                                                                              ## valid.
                                                                                              ##
                                                                                              ## !
                                                                                              ## @param
                                                                                              ## theFirstEdge
                                                                                              ## [in]
                                                                                              ## the
                                                                                              ## first
                                                                                              ## edge.
                                                                                              ##
                                                                                              ## !
                                                                                              ## @param
                                                                                              ## theSecondEdge
                                                                                              ## [in]
                                                                                              ## the
                                                                                              ## second
                                                                                              ## edge.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Initialization
                                                                                              ## of
                                                                                              ## fields
                                                                                              ## that
                                                                                              ## is
                                                                                              ## common
                                                                                              ## to
                                                                                              ## all
                                                                                              ## constructors.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Init
                                                                                              ## angular
                                                                                              ## dimension
                                                                                              ## to
                                                                                              ## measure
                                                                                              ## angle
                                                                                              ## between
                                                                                              ## two
                                                                                              ## linear
                                                                                              ## edges.
                                                                                              ##
                                                                                              ## !
                                                                                              ## @return
                                                                                              ## TRUE
                                                                                              ## if
                                                                                              ## the
                                                                                              ## angular
                                                                                              ## dimension
                                                                                              ## can
                                                                                              ## be
                                                                                              ## constructured
                                                                                              ##
                                                                                              ## !
                                                                                              ## for
                                                                                              ## the
                                                                                              ## passed
                                                                                              ## edges.
    ## !< type of angle
    ## !< type of arrows visibility

  PrsDim_AngleDimensionbase_type* = PrsDim_Dimension

proc get_type_name*(): cstring {.importcpp: "PrsDim_AngleDimension::get_type_name(@)",
                              header: "PrsDim_AngleDimension.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "PrsDim_AngleDimension::get_type_descriptor(@)",
    header: "PrsDim_AngleDimension.hxx".}
proc DynamicType*(this: PrsDim_AngleDimension): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "PrsDim_AngleDimension.hxx".}
proc constructPrsDim_AngleDimension*(theFirstEdge: TopoDS_Edge;
                                    theSecondEdge: TopoDS_Edge): PrsDim_AngleDimension {.
    constructor, importcpp: "PrsDim_AngleDimension(@)",
    header: "PrsDim_AngleDimension.hxx".}
proc constructPrsDim_AngleDimension*(theFirstPoint: gp_Pnt; theSecondPoint: gp_Pnt;
                                    theThirdPoint: gp_Pnt): PrsDim_AngleDimension {.
    constructor, importcpp: "PrsDim_AngleDimension(@)",
    header: "PrsDim_AngleDimension.hxx".}
proc constructPrsDim_AngleDimension*(theFirstVertex: TopoDS_Vertex;
                                    theSecondVertex: TopoDS_Vertex;
                                    theThirdVertex: TopoDS_Vertex): PrsDim_AngleDimension {.
    constructor, importcpp: "PrsDim_AngleDimension(@)",
    header: "PrsDim_AngleDimension.hxx".}
proc constructPrsDim_AngleDimension*(theCone: TopoDS_Face): PrsDim_AngleDimension {.
    constructor, importcpp: "PrsDim_AngleDimension(@)",
    header: "PrsDim_AngleDimension.hxx".}
proc constructPrsDim_AngleDimension*(theFirstFace: TopoDS_Face;
                                    theSecondFace: TopoDS_Face): PrsDim_AngleDimension {.
    constructor, importcpp: "PrsDim_AngleDimension(@)",
    header: "PrsDim_AngleDimension.hxx".}
proc constructPrsDim_AngleDimension*(theFirstFace: TopoDS_Face;
                                    theSecondFace: TopoDS_Face; thePoint: gp_Pnt): PrsDim_AngleDimension {.
    constructor, importcpp: "PrsDim_AngleDimension(@)",
    header: "PrsDim_AngleDimension.hxx".}
proc FirstPoint*(this: PrsDim_AngleDimension): gp_Pnt {.noSideEffect,
    importcpp: "FirstPoint", header: "PrsDim_AngleDimension.hxx".}
proc SecondPoint*(this: PrsDim_AngleDimension): gp_Pnt {.noSideEffect,
    importcpp: "SecondPoint", header: "PrsDim_AngleDimension.hxx".}
proc CenterPoint*(this: PrsDim_AngleDimension): gp_Pnt {.noSideEffect,
    importcpp: "CenterPoint", header: "PrsDim_AngleDimension.hxx".}
proc FirstShape*(this: PrsDim_AngleDimension): TopoDS_Shape {.noSideEffect,
    importcpp: "FirstShape", header: "PrsDim_AngleDimension.hxx".}
proc SecondShape*(this: PrsDim_AngleDimension): TopoDS_Shape {.noSideEffect,
    importcpp: "SecondShape", header: "PrsDim_AngleDimension.hxx".}
proc ThirdShape*(this: PrsDim_AngleDimension): TopoDS_Shape {.noSideEffect,
    importcpp: "ThirdShape", header: "PrsDim_AngleDimension.hxx".}
proc SetMeasuredGeometry*(this: var PrsDim_AngleDimension;
                         theFirstEdge: TopoDS_Edge; theSecondEdge: TopoDS_Edge) {.
    importcpp: "SetMeasuredGeometry", header: "PrsDim_AngleDimension.hxx".}
proc SetMeasuredGeometry*(this: var PrsDim_AngleDimension; theFirstPoint: gp_Pnt;
                         theSecondPoint: gp_Pnt; theThridPoint: gp_Pnt) {.
    importcpp: "SetMeasuredGeometry", header: "PrsDim_AngleDimension.hxx".}
proc SetMeasuredGeometry*(this: var PrsDim_AngleDimension;
                         theFirstVertex: TopoDS_Vertex;
                         theSecondVertex: TopoDS_Vertex;
                         theThirdVertex: TopoDS_Vertex) {.
    importcpp: "SetMeasuredGeometry", header: "PrsDim_AngleDimension.hxx".}
proc SetMeasuredGeometry*(this: var PrsDim_AngleDimension; theCone: TopoDS_Face) {.
    importcpp: "SetMeasuredGeometry", header: "PrsDim_AngleDimension.hxx".}
proc SetMeasuredGeometry*(this: var PrsDim_AngleDimension;
                         theFirstFace: TopoDS_Face; theSecondFace: TopoDS_Face) {.
    importcpp: "SetMeasuredGeometry", header: "PrsDim_AngleDimension.hxx".}
proc SetMeasuredGeometry*(this: var PrsDim_AngleDimension;
                         theFirstFace: TopoDS_Face; theSecondFace: TopoDS_Face;
                         thePoint: gp_Pnt) {.importcpp: "SetMeasuredGeometry",
    header: "PrsDim_AngleDimension.hxx".}
proc GetDisplayUnits*(this: PrsDim_AngleDimension): TCollection_AsciiString {.
    noSideEffect, importcpp: "GetDisplayUnits", header: "PrsDim_AngleDimension.hxx".}
proc GetModelUnits*(this: PrsDim_AngleDimension): TCollection_AsciiString {.
    noSideEffect, importcpp: "GetModelUnits", header: "PrsDim_AngleDimension.hxx".}
proc SetDisplayUnits*(this: var PrsDim_AngleDimension;
                     theUnits: TCollection_AsciiString) {.
    importcpp: "SetDisplayUnits", header: "PrsDim_AngleDimension.hxx".}
proc SetModelUnits*(this: var PrsDim_AngleDimension;
                   theUnits: TCollection_AsciiString) {.
    importcpp: "SetModelUnits", header: "PrsDim_AngleDimension.hxx".}
proc SetTextPosition*(this: var PrsDim_AngleDimension; theTextPos: gp_Pnt) {.
    importcpp: "SetTextPosition", header: "PrsDim_AngleDimension.hxx".}
proc GetTextPosition*(this: PrsDim_AngleDimension): gp_Pnt {.noSideEffect,
    importcpp: "GetTextPosition", header: "PrsDim_AngleDimension.hxx".}
proc SetType*(this: var PrsDim_AngleDimension; theType: PrsDim_TypeOfAngle) {.
    importcpp: "SetType", header: "PrsDim_AngleDimension.hxx".}
proc GetType*(this: PrsDim_AngleDimension): PrsDim_TypeOfAngle {.noSideEffect,
    importcpp: "GetType", header: "PrsDim_AngleDimension.hxx".}
proc SetArrowsVisibility*(this: var PrsDim_AngleDimension;
                         theType: PrsDim_TypeOfAngleArrowVisibility) {.
    importcpp: "SetArrowsVisibility", header: "PrsDim_AngleDimension.hxx".}
proc GetArrowsVisibility*(this: PrsDim_AngleDimension): PrsDim_TypeOfAngleArrowVisibility {.
    noSideEffect, importcpp: "GetArrowsVisibility",
    header: "PrsDim_AngleDimension.hxx".}