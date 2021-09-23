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

import
  PrsDim_Dimension, ../gp/gp_Pnt, ../gp/gp_Circ, ../Standard/Standard,
  ../Standard/Standard_Macro

discard "forward decl of PrsDim_RadiusDimension"
type
  Handle_PrsDim_RadiusDimension* = handle[PrsDim_RadiusDimension]

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
  PrsDim_RadiusDimension* {.importcpp: "PrsDim_RadiusDimension",
                           header: "PrsDim_RadiusDimension.hxx", bycopy.} = object of PrsDim_Dimension ##
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

  PrsDim_RadiusDimensionbase_type* = PrsDim_Dimension

proc get_type_name*(): cstring {.importcpp: "PrsDim_RadiusDimension::get_type_name(@)",
                              header: "PrsDim_RadiusDimension.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "PrsDim_RadiusDimension::get_type_descriptor(@)",
    header: "PrsDim_RadiusDimension.hxx".}
proc DynamicType*(this: PrsDim_RadiusDimension): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "PrsDim_RadiusDimension.hxx".}
proc constructPrsDim_RadiusDimension*(theCircle: gp_Circ): PrsDim_RadiusDimension {.
    constructor, importcpp: "PrsDim_RadiusDimension(@)",
    header: "PrsDim_RadiusDimension.hxx".}
proc constructPrsDim_RadiusDimension*(theCircle: gp_Circ; theAnchorPoint: gp_Pnt): PrsDim_RadiusDimension {.
    constructor, importcpp: "PrsDim_RadiusDimension(@)",
    header: "PrsDim_RadiusDimension.hxx".}
proc constructPrsDim_RadiusDimension*(theShape: TopoDS_Shape): PrsDim_RadiusDimension {.
    constructor, importcpp: "PrsDim_RadiusDimension(@)",
    header: "PrsDim_RadiusDimension.hxx".}
proc Circle*(this: PrsDim_RadiusDimension): gp_Circ {.noSideEffect,
    importcpp: "Circle", header: "PrsDim_RadiusDimension.hxx".}
proc AnchorPoint*(this: PrsDim_RadiusDimension): gp_Pnt {.noSideEffect,
    importcpp: "AnchorPoint", header: "PrsDim_RadiusDimension.hxx".}
proc Shape*(this: PrsDim_RadiusDimension): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "PrsDim_RadiusDimension.hxx".}
proc SetMeasuredGeometry*(this: var PrsDim_RadiusDimension; theCircle: gp_Circ) {.
    importcpp: "SetMeasuredGeometry", header: "PrsDim_RadiusDimension.hxx".}
proc SetMeasuredGeometry*(this: var PrsDim_RadiusDimension; theCircle: gp_Circ;
                         theAnchorPoint: gp_Pnt;
                         theHasAnchor: Standard_Boolean = Standard_True) {.
    importcpp: "SetMeasuredGeometry", header: "PrsDim_RadiusDimension.hxx".}
proc SetMeasuredGeometry*(this: var PrsDim_RadiusDimension; theShape: TopoDS_Shape) {.
    importcpp: "SetMeasuredGeometry", header: "PrsDim_RadiusDimension.hxx".}
proc SetMeasuredGeometry*(this: var PrsDim_RadiusDimension; theShape: TopoDS_Shape;
                         theAnchorPoint: gp_Pnt;
                         theHasAnchor: Standard_Boolean = Standard_True) {.
    importcpp: "SetMeasuredGeometry", header: "PrsDim_RadiusDimension.hxx".}
proc GetDisplayUnits*(this: PrsDim_RadiusDimension): TCollection_AsciiString {.
    noSideEffect, importcpp: "GetDisplayUnits",
    header: "PrsDim_RadiusDimension.hxx".}
proc GetModelUnits*(this: PrsDim_RadiusDimension): TCollection_AsciiString {.
    noSideEffect, importcpp: "GetModelUnits", header: "PrsDim_RadiusDimension.hxx".}
proc SetDisplayUnits*(this: var PrsDim_RadiusDimension;
                     theUnits: TCollection_AsciiString) {.
    importcpp: "SetDisplayUnits", header: "PrsDim_RadiusDimension.hxx".}
proc SetModelUnits*(this: var PrsDim_RadiusDimension;
                   theUnits: TCollection_AsciiString) {.
    importcpp: "SetModelUnits", header: "PrsDim_RadiusDimension.hxx".}
proc SetTextPosition*(this: var PrsDim_RadiusDimension; theTextPos: gp_Pnt) {.
    importcpp: "SetTextPosition", header: "PrsDim_RadiusDimension.hxx".}
proc GetTextPosition*(this: PrsDim_RadiusDimension): gp_Pnt {.noSideEffect,
    importcpp: "GetTextPosition", header: "PrsDim_RadiusDimension.hxx".}