##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of PrsDim_RadiusDimension"
type
  HandlePrsDimRadiusDimension* = Handle[PrsDimRadiusDimension]

## ! Radius dimension. Can be constructued:
## ! - On generic circle.
## ! - On generic circle with user-defined anchor point on that circle.
## ! - On generic shape containing geometry that can be measured
## !   by diameter dimension: circle wire, arc, circular face, etc.
## ! The anchor point is the location of left attachement point of
## ! dimension on the circle. It can be user-specified, or computed as
## ! middle point on the arc. The radius dimension always lies in the
## ! plane of the measured circle. The dimension is considered as
## ! invalid if the user-specified anchor point is not lying on the circle,
## ! if the radius of the circle is less than Precision::Confusion().
## ! In case if the dimension is built on the arbitrary shape,
## ! it can be considered as invalid if the shape does not contain
## ! circle geometry.

type
  PrsDimRadiusDimension* {.importcpp: "PrsDim_RadiusDimension",
                          header: "PrsDim_RadiusDimension.hxx", bycopy.} = object of PrsDimDimension ##
                                                                                              ## !
                                                                                              ## Create
                                                                                              ## radius
                                                                                              ## dimension
                                                                                              ## for
                                                                                              ## the
                                                                                              ## circle
                                                                                              ## geometry.
                                                                                              ##
                                                                                              ## !
                                                                                              ## @param
                                                                                              ## theCircle
                                                                                              ## [in]
                                                                                              ## the
                                                                                              ## circle
                                                                                              ## to
                                                                                              ## measure.
                                                                                              ##
                                                                                              ## !
                                                                                              ## @return
                                                                                              ## measured
                                                                                              ## geometry
                                                                                              ## circle.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Measure
                                                                                              ## radius
                                                                                              ## of
                                                                                              ## the
                                                                                              ## circle.
                                                                                              ##
                                                                                              ## !
                                                                                              ## The
                                                                                              ## dimension
                                                                                              ## will
                                                                                              ## become
                                                                                              ## invalid
                                                                                              ## if
                                                                                              ## the
                                                                                              ## radius
                                                                                              ## of
                                                                                              ## the
                                                                                              ## circle
                                                                                              ##
                                                                                              ## !
                                                                                              ## is
                                                                                              ## less
                                                                                              ## than
                                                                                              ## Precision::Confusion().
                                                                                              ##
                                                                                              ## !
                                                                                              ## @param
                                                                                              ## theCircle
                                                                                              ## [in]
                                                                                              ## the
                                                                                              ## circle
                                                                                              ## to
                                                                                              ## measure.

  PrsDimRadiusDimensionbaseType* = PrsDimDimension

proc getTypeName*(): cstring {.importcpp: "PrsDim_RadiusDimension::get_type_name(@)",
                            header: "PrsDim_RadiusDimension.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "PrsDim_RadiusDimension::get_type_descriptor(@)",
    header: "PrsDim_RadiusDimension.hxx".}
proc dynamicType*(this: PrsDimRadiusDimension): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "PrsDim_RadiusDimension.hxx".}
proc constructPrsDimRadiusDimension*(theCircle: GpCirc): PrsDimRadiusDimension {.
    constructor, importcpp: "PrsDim_RadiusDimension(@)",
    header: "PrsDim_RadiusDimension.hxx".}
proc constructPrsDimRadiusDimension*(theCircle: GpCirc; theAnchorPoint: GpPnt): PrsDimRadiusDimension {.
    constructor, importcpp: "PrsDim_RadiusDimension(@)",
    header: "PrsDim_RadiusDimension.hxx".}
proc constructPrsDimRadiusDimension*(theShape: TopoDS_Shape): PrsDimRadiusDimension {.
    constructor, importcpp: "PrsDim_RadiusDimension(@)",
    header: "PrsDim_RadiusDimension.hxx".}
proc circle*(this: PrsDimRadiusDimension): GpCirc {.noSideEffect,
    importcpp: "Circle", header: "PrsDim_RadiusDimension.hxx".}
proc anchorPoint*(this: PrsDimRadiusDimension): GpPnt {.noSideEffect,
    importcpp: "AnchorPoint", header: "PrsDim_RadiusDimension.hxx".}
proc shape*(this: PrsDimRadiusDimension): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "PrsDim_RadiusDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimRadiusDimension; theCircle: GpCirc) {.
    importcpp: "SetMeasuredGeometry", header: "PrsDim_RadiusDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimRadiusDimension; theCircle: GpCirc;
                         theAnchorPoint: GpPnt;
                         theHasAnchor: StandardBoolean = standardTrue) {.
    importcpp: "SetMeasuredGeometry", header: "PrsDim_RadiusDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimRadiusDimension; theShape: TopoDS_Shape) {.
    importcpp: "SetMeasuredGeometry", header: "PrsDim_RadiusDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimRadiusDimension; theShape: TopoDS_Shape;
                         theAnchorPoint: GpPnt;
                         theHasAnchor: StandardBoolean = standardTrue) {.
    importcpp: "SetMeasuredGeometry", header: "PrsDim_RadiusDimension.hxx".}
proc getDisplayUnits*(this: PrsDimRadiusDimension): TCollectionAsciiString {.
    noSideEffect, importcpp: "GetDisplayUnits",
    header: "PrsDim_RadiusDimension.hxx".}
proc getModelUnits*(this: PrsDimRadiusDimension): TCollectionAsciiString {.
    noSideEffect, importcpp: "GetModelUnits", header: "PrsDim_RadiusDimension.hxx".}
proc setDisplayUnits*(this: var PrsDimRadiusDimension;
                     theUnits: TCollectionAsciiString) {.
    importcpp: "SetDisplayUnits", header: "PrsDim_RadiusDimension.hxx".}
proc setModelUnits*(this: var PrsDimRadiusDimension;
                   theUnits: TCollectionAsciiString) {.importcpp: "SetModelUnits",
    header: "PrsDim_RadiusDimension.hxx".}
proc setTextPosition*(this: var PrsDimRadiusDimension; theTextPos: GpPnt) {.
    importcpp: "SetTextPosition", header: "PrsDim_RadiusDimension.hxx".}
proc getTextPosition*(this: PrsDimRadiusDimension): GpPnt {.noSideEffect,
    importcpp: "GetTextPosition", header: "PrsDim_RadiusDimension.hxx".}

