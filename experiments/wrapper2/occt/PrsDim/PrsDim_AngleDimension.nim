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

discard "forward decl of PrsDim_AngleDimension"
type
  HandlePrsDimAngleDimension* = Handle[PrsDimAngleDimension]

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
  PrsDimAngleDimension* {.importcpp: "PrsDim_AngleDimension",
                         header: "PrsDim_AngleDimension.hxx", bycopy.} = object of PrsDimDimension ##
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

  PrsDimAngleDimensionbaseType* = PrsDimDimension

proc getTypeName*(): cstring {.importcpp: "PrsDim_AngleDimension::get_type_name(@)",
                            header: "PrsDim_AngleDimension.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "PrsDim_AngleDimension::get_type_descriptor(@)",
    header: "PrsDim_AngleDimension.hxx".}
proc dynamicType*(this: PrsDimAngleDimension): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "PrsDim_AngleDimension.hxx".}
proc constructPrsDimAngleDimension*(theFirstEdge: TopoDS_Edge;
                                   theSecondEdge: TopoDS_Edge): PrsDimAngleDimension {.
    constructor, importcpp: "PrsDim_AngleDimension(@)",
    header: "PrsDim_AngleDimension.hxx".}
proc constructPrsDimAngleDimension*(theFirstPoint: Pnt; theSecondPoint: Pnt;
                                   theThirdPoint: Pnt): PrsDimAngleDimension {.
    constructor, importcpp: "PrsDim_AngleDimension(@)",
    header: "PrsDim_AngleDimension.hxx".}
proc constructPrsDimAngleDimension*(theFirstVertex: TopoDS_Vertex;
                                   theSecondVertex: TopoDS_Vertex;
                                   theThirdVertex: TopoDS_Vertex): PrsDimAngleDimension {.
    constructor, importcpp: "PrsDim_AngleDimension(@)",
    header: "PrsDim_AngleDimension.hxx".}
proc constructPrsDimAngleDimension*(theCone: TopoDS_Face): PrsDimAngleDimension {.
    constructor, importcpp: "PrsDim_AngleDimension(@)",
    header: "PrsDim_AngleDimension.hxx".}
proc constructPrsDimAngleDimension*(theFirstFace: TopoDS_Face;
                                   theSecondFace: TopoDS_Face): PrsDimAngleDimension {.
    constructor, importcpp: "PrsDim_AngleDimension(@)",
    header: "PrsDim_AngleDimension.hxx".}
proc constructPrsDimAngleDimension*(theFirstFace: TopoDS_Face;
                                   theSecondFace: TopoDS_Face; thePoint: Pnt): PrsDimAngleDimension {.
    constructor, importcpp: "PrsDim_AngleDimension(@)",
    header: "PrsDim_AngleDimension.hxx".}
proc firstPoint*(this: PrsDimAngleDimension): Pnt {.noSideEffect,
    importcpp: "FirstPoint", header: "PrsDim_AngleDimension.hxx".}
proc secondPoint*(this: PrsDimAngleDimension): Pnt {.noSideEffect,
    importcpp: "SecondPoint", header: "PrsDim_AngleDimension.hxx".}
proc centerPoint*(this: PrsDimAngleDimension): Pnt {.noSideEffect,
    importcpp: "CenterPoint", header: "PrsDim_AngleDimension.hxx".}
proc firstShape*(this: PrsDimAngleDimension): TopoDS_Shape {.noSideEffect,
    importcpp: "FirstShape", header: "PrsDim_AngleDimension.hxx".}
proc secondShape*(this: PrsDimAngleDimension): TopoDS_Shape {.noSideEffect,
    importcpp: "SecondShape", header: "PrsDim_AngleDimension.hxx".}
proc thirdShape*(this: PrsDimAngleDimension): TopoDS_Shape {.noSideEffect,
    importcpp: "ThirdShape", header: "PrsDim_AngleDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimAngleDimension; theFirstEdge: TopoDS_Edge;
                         theSecondEdge: TopoDS_Edge) {.
    importcpp: "SetMeasuredGeometry", header: "PrsDim_AngleDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimAngleDimension; theFirstPoint: Pnt;
                         theSecondPoint: Pnt; theThridPoint: Pnt) {.
    importcpp: "SetMeasuredGeometry", header: "PrsDim_AngleDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimAngleDimension;
                         theFirstVertex: TopoDS_Vertex;
                         theSecondVertex: TopoDS_Vertex;
                         theThirdVertex: TopoDS_Vertex) {.
    importcpp: "SetMeasuredGeometry", header: "PrsDim_AngleDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimAngleDimension; theCone: TopoDS_Face) {.
    importcpp: "SetMeasuredGeometry", header: "PrsDim_AngleDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimAngleDimension; theFirstFace: TopoDS_Face;
                         theSecondFace: TopoDS_Face) {.
    importcpp: "SetMeasuredGeometry", header: "PrsDim_AngleDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimAngleDimension; theFirstFace: TopoDS_Face;
                         theSecondFace: TopoDS_Face; thePoint: Pnt) {.
    importcpp: "SetMeasuredGeometry", header: "PrsDim_AngleDimension.hxx".}
proc getDisplayUnits*(this: PrsDimAngleDimension): TCollectionAsciiString {.
    noSideEffect, importcpp: "GetDisplayUnits", header: "PrsDim_AngleDimension.hxx".}
proc getModelUnits*(this: PrsDimAngleDimension): TCollectionAsciiString {.
    noSideEffect, importcpp: "GetModelUnits", header: "PrsDim_AngleDimension.hxx".}
proc setDisplayUnits*(this: var PrsDimAngleDimension;
                     theUnits: TCollectionAsciiString) {.
    importcpp: "SetDisplayUnits", header: "PrsDim_AngleDimension.hxx".}
proc setModelUnits*(this: var PrsDimAngleDimension; theUnits: TCollectionAsciiString) {.
    importcpp: "SetModelUnits", header: "PrsDim_AngleDimension.hxx".}
proc setTextPosition*(this: var PrsDimAngleDimension; theTextPos: Pnt) {.
    importcpp: "SetTextPosition", header: "PrsDim_AngleDimension.hxx".}
proc getTextPosition*(this: PrsDimAngleDimension): Pnt {.noSideEffect,
    importcpp: "GetTextPosition", header: "PrsDim_AngleDimension.hxx".}
proc setType*(this: var PrsDimAngleDimension; theType: PrsDimTypeOfAngle) {.
    importcpp: "SetType", header: "PrsDim_AngleDimension.hxx".}
proc getType*(this: PrsDimAngleDimension): PrsDimTypeOfAngle {.noSideEffect,
    importcpp: "GetType", header: "PrsDim_AngleDimension.hxx".}
proc setArrowsVisibility*(this: var PrsDimAngleDimension;
                         theType: PrsDimTypeOfAngleArrowVisibility) {.
    importcpp: "SetArrowsVisibility", header: "PrsDim_AngleDimension.hxx".}
proc getArrowsVisibility*(this: PrsDimAngleDimension): PrsDimTypeOfAngleArrowVisibility {.
    noSideEffect, importcpp: "GetArrowsVisibility",
    header: "PrsDim_AngleDimension.hxx".}
