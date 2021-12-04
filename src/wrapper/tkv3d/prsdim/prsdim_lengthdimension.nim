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

type
  HandlePrsDimLengthDimension* = Handle[PrsDimLengthDimension]

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
  PrsDimLengthDimension* {.importcpp: "PrsDim_LengthDimension",
                          header: "PrsDim_LengthDimension.hxx", bycopy.} = object of PrsDimDimension ##
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


proc newPrsDimLengthDimension*(theFace: TopoDS_Face; theEdge: TopoDS_Edge): PrsDimLengthDimension {.
    cdecl, constructor, importcpp: "PrsDim_LengthDimension(@)", header: "PrsDim_LengthDimension.hxx".}
proc newPrsDimLengthDimension*(theFirstFace: TopoDS_Face;
                              theSecondFace: TopoDS_Face): PrsDimLengthDimension {.
    cdecl, constructor, importcpp: "PrsDim_LengthDimension(@)", header: "PrsDim_LengthDimension.hxx".}
proc newPrsDimLengthDimension*(theFirstPoint: Pnt; theSecondPoint: Pnt; thePlane: Pln): PrsDimLengthDimension {.
    cdecl, constructor, importcpp: "PrsDim_LengthDimension(@)", header: "PrsDim_LengthDimension.hxx".}
proc newPrsDimLengthDimension*(theFirstShape: TopoDS_Shape;
                              theSecondShape: TopoDS_Shape; thePlane: Pln): PrsDimLengthDimension {.
    cdecl, constructor, importcpp: "PrsDim_LengthDimension(@)", header: "PrsDim_LengthDimension.hxx".}
proc newPrsDimLengthDimension*(theEdge: TopoDS_Edge; thePlane: Pln): PrsDimLengthDimension {.
    cdecl, constructor, importcpp: "PrsDim_LengthDimension(@)", header: "PrsDim_LengthDimension.hxx".}
proc firstPoint*(this: PrsDimLengthDimension): Pnt {.noSideEffect, cdecl,
    importcpp: "FirstPoint", header: "PrsDim_LengthDimension.hxx".}
proc secondPoint*(this: PrsDimLengthDimension): Pnt {.noSideEffect, cdecl,
    importcpp: "SecondPoint", header: "PrsDim_LengthDimension.hxx".}
proc firstShape*(this: PrsDimLengthDimension): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "FirstShape", header: "PrsDim_LengthDimension.hxx".}
proc secondShape*(this: PrsDimLengthDimension): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "SecondShape", header: "PrsDim_LengthDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimLengthDimension; theFirstPoint: Pnt;
                         theSecondPoint: Pnt; thePlane: Pln) {.cdecl,
    importcpp: "SetMeasuredGeometry", header: "PrsDim_LengthDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimLengthDimension; theEdge: TopoDS_Edge;
                         thePlane: Pln) {.cdecl, importcpp: "SetMeasuredGeometry",
                                        header: "PrsDim_LengthDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimLengthDimension;
                         theFirstFace: TopoDS_Face; theSecondFace: TopoDS_Face) {.
    cdecl, importcpp: "SetMeasuredGeometry", header: "PrsDim_LengthDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimLengthDimension; theFace: TopoDS_Face;
                         theEdge: TopoDS_Edge) {.cdecl,
    importcpp: "SetMeasuredGeometry", header: "PrsDim_LengthDimension.hxx".}
proc setMeasuredShapes*(this: var PrsDimLengthDimension;
                       theFirstShape: TopoDS_Shape; theSecondShape: TopoDS_Shape) {.
    cdecl, importcpp: "SetMeasuredShapes", header: "PrsDim_LengthDimension.hxx".}
proc getDisplayUnits*(this: PrsDimLengthDimension): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "GetDisplayUnits", header: "PrsDim_LengthDimension.hxx".}
proc getModelUnits*(this: PrsDimLengthDimension): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "GetModelUnits", header: "PrsDim_LengthDimension.hxx".}
proc setDisplayUnits*(this: var PrsDimLengthDimension;
                     theUnits: TCollectionAsciiString) {.cdecl,
    importcpp: "SetDisplayUnits", header: "PrsDim_LengthDimension.hxx".}
proc setModelUnits*(this: var PrsDimLengthDimension;
                   theUnits: TCollectionAsciiString) {.cdecl,
    importcpp: "SetModelUnits", header: "PrsDim_LengthDimension.hxx".}
proc setTextPosition*(this: var PrsDimLengthDimension; theTextPos: Pnt) {.cdecl,
    importcpp: "SetTextPosition", header: "PrsDim_LengthDimension.hxx".}
proc getTextPosition*(this: PrsDimLengthDimension): Pnt {.noSideEffect, cdecl,
    importcpp: "GetTextPosition", header: "PrsDim_LengthDimension.hxx".}
proc setDirection*(this: var PrsDimLengthDimension; theDirection: Dir;
                  theUseDirection: bool = true) {.cdecl, importcpp: "SetDirection",
    header: "PrsDim_LengthDimension.hxx".}