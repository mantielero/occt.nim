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
  ../Standard/Standard_Macro, ../Standard/Standard_Type

discard "forward decl of PrsDim_DiameterDimension"
type
  Handle_PrsDim_DiameterDimension* = handle[PrsDim_DiameterDimension]

## ! Diameter dimension. Can be constructued:
## ! - On generic circle.
## ! - On generic circle with user-defined anchor point on that circle
## !   (dimension plane is oriented to follow the anchor point).
## ! - On generic circle in the specified plane.
## ! - On generic shape containing geometry that can be measured
## !   by diameter dimension: circle wire, circular face, etc.
## ! The anchor point is the location of the left attachement point of
## ! dimension on the circle.
## ! The anchor point computation is processed after dimension plane setting
## ! so that positive flyout direction stands with normal of the circle and
## ! the normal of the plane.
## ! If the plane is user-defined the anchor point was computed as intersection
## ! of the plane and the basis circle. Among two intersection points
## ! the one is selected so that positive flyout direction vector and
## ! the circle normal on the one side form the circle plane.
## ! (corner between positive flyout directio nand the circle normal is acute.)
## ! If the plane is computed automatically (by default it is the circle plane),
## ! the anchor point is the zero parameter point of the circle.
## !
## ! The dimension is considered as invalid if the user-defined plane
## ! does not include th enachor point and th ecircle center,
## ! if the diameter of the circle is less than Precision::Confusion().
## ! In case if the dimension is built on the arbitrary shape, it can be considered
## ! as invalid if the shape does not contain circle geometry.

type
  PrsDim_DiameterDimension* {.importcpp: "PrsDim_DiameterDimension",
                             header: "PrsDim_DiameterDimension.hxx", bycopy.} = object of PrsDim_Dimension ##
                                                                                                    ## !
                                                                                                    ## Construct
                                                                                                    ## diameter
                                                                                                    ## dimension
                                                                                                    ## for
                                                                                                    ## the
                                                                                                    ## circle.
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
                                                                                                    ## diameter
                                                                                                    ## of
                                                                                                    ## the
                                                                                                    ## circle.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## The
                                                                                                    ## actual
                                                                                                    ## dimension
                                                                                                    ## plane
                                                                                                    ## is
                                                                                                    ## used
                                                                                                    ## for
                                                                                                    ## determining
                                                                                                    ## anchor
                                                                                                    ## points
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## on
                                                                                                    ## the
                                                                                                    ## circle
                                                                                                    ## to
                                                                                                    ## attach
                                                                                                    ## the
                                                                                                    ## dimension
                                                                                                    ## lines
                                                                                                    ## to.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## The
                                                                                                    ## dimension
                                                                                                    ## will
                                                                                                    ## become
                                                                                                    ## invalid
                                                                                                    ## if
                                                                                                    ## the
                                                                                                    ## diameter
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
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Override
                                                                                                    ## this
                                                                                                    ## method
                                                                                                    ## to
                                                                                                    ## change
                                                                                                    ## logic
                                                                                                    ## of
                                                                                                    ## anchor
                                                                                                    ## point
                                                                                                    ## computation.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Computes
                                                                                                    ## anchor
                                                                                                    ## point.
                                                                                                    ## Its
                                                                                                    ## computation
                                                                                                    ## is
                                                                                                    ## based
                                                                                                    ## on
                                                                                                    ## the
                                                                                                    ## current
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## dimension
                                                                                                    ## plane.
                                                                                                    ## Therfore,
                                                                                                    ## anchor
                                                                                                    ## point
                                                                                                    ## is
                                                                                                    ## an
                                                                                                    ## intersection
                                                                                                    ## of
                                                                                                    ## plane
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## and
                                                                                                    ## circle.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## ATTENTION!
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## 1)
                                                                                                    ## The
                                                                                                    ## plane
                                                                                                    ## should
                                                                                                    ## be
                                                                                                    ## set
                                                                                                    ## or
                                                                                                    ## computed
                                                                                                    ## before.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## 2)
                                                                                                    ## The
                                                                                                    ## plane
                                                                                                    ## should
                                                                                                    ## inclide
                                                                                                    ## th
                                                                                                    ## ecircle
                                                                                                    ## center
                                                                                                    ## to
                                                                                                    ## be
                                                                                                    ## valid.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Compute
                                                                                                    ## points
                                                                                                    ## on
                                                                                                    ## the
                                                                                                    ## circle
                                                                                                    ## sides
                                                                                                    ## for
                                                                                                    ## the
                                                                                                    ## dimension
                                                                                                    ## plane.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Program
                                                                                                    ## error
                                                                                                    ## exception
                                                                                                    ## is
                                                                                                    ## raised
                                                                                                    ## if
                                                                                                    ## the
                                                                                                    ## dimension
                                                                                                    ## plane
                                                                                                    ## "x"
                                                                                                    ## direction
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## is
                                                                                                    ## orthogonal
                                                                                                    ## to
                                                                                                    ## plane
                                                                                                    ## (the
                                                                                                    ## "impossible"
                                                                                                    ## case).
                                                                                                    ## The
                                                                                                    ## passed
                                                                                                    ## dimension
                                                                                                    ## plane
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## is
                                                                                                    ## the
                                                                                                    ## one
                                                                                                    ## specially
                                                                                                    ## computed
                                                                                                    ## to
                                                                                                    ## locate
                                                                                                    ## dimension
                                                                                                    ## presentation
                                                                                                    ## in
                                                                                                    ## circle.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @param
                                                                                                    ## theCircle
                                                                                                    ## [in]
                                                                                                    ## the
                                                                                                    ## circle.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @param
                                                                                                    ## theFirstPnt
                                                                                                    ## [out]
                                                                                                    ## the
                                                                                                    ## first
                                                                                                    ## point.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @param
                                                                                                    ## theSecondPnt
                                                                                                    ## [out]
                                                                                                    ## the
                                                                                                    ## second
                                                                                                    ## point.

  PrsDim_DiameterDimensionbase_type* = PrsDim_Dimension

proc get_type_name*(): cstring {.importcpp: "PrsDim_DiameterDimension::get_type_name(@)",
                              header: "PrsDim_DiameterDimension.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "PrsDim_DiameterDimension::get_type_descriptor(@)",
    header: "PrsDim_DiameterDimension.hxx".}
proc DynamicType*(this: PrsDim_DiameterDimension): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "PrsDim_DiameterDimension.hxx".}
proc constructPrsDim_DiameterDimension*(theCircle: gp_Circ): PrsDim_DiameterDimension {.
    constructor, importcpp: "PrsDim_DiameterDimension(@)",
    header: "PrsDim_DiameterDimension.hxx".}
proc constructPrsDim_DiameterDimension*(theCircle: gp_Circ; thePlane: gp_Pln): PrsDim_DiameterDimension {.
    constructor, importcpp: "PrsDim_DiameterDimension(@)",
    header: "PrsDim_DiameterDimension.hxx".}
proc constructPrsDim_DiameterDimension*(theShape: TopoDS_Shape): PrsDim_DiameterDimension {.
    constructor, importcpp: "PrsDim_DiameterDimension(@)",
    header: "PrsDim_DiameterDimension.hxx".}
proc constructPrsDim_DiameterDimension*(theShape: TopoDS_Shape; thePlane: gp_Pln): PrsDim_DiameterDimension {.
    constructor, importcpp: "PrsDim_DiameterDimension(@)",
    header: "PrsDim_DiameterDimension.hxx".}
proc Circle*(this: PrsDim_DiameterDimension): gp_Circ {.noSideEffect,
    importcpp: "Circle", header: "PrsDim_DiameterDimension.hxx".}
proc AnchorPoint*(this: var PrsDim_DiameterDimension): gp_Pnt {.
    importcpp: "AnchorPoint", header: "PrsDim_DiameterDimension.hxx".}
proc Shape*(this: PrsDim_DiameterDimension): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "PrsDim_DiameterDimension.hxx".}
proc SetMeasuredGeometry*(this: var PrsDim_DiameterDimension; theCircle: gp_Circ) {.
    importcpp: "SetMeasuredGeometry", header: "PrsDim_DiameterDimension.hxx".}
proc SetMeasuredGeometry*(this: var PrsDim_DiameterDimension; theShape: TopoDS_Shape) {.
    importcpp: "SetMeasuredGeometry", header: "PrsDim_DiameterDimension.hxx".}
proc GetDisplayUnits*(this: PrsDim_DiameterDimension): TCollection_AsciiString {.
    noSideEffect, importcpp: "GetDisplayUnits",
    header: "PrsDim_DiameterDimension.hxx".}
proc GetModelUnits*(this: PrsDim_DiameterDimension): TCollection_AsciiString {.
    noSideEffect, importcpp: "GetModelUnits",
    header: "PrsDim_DiameterDimension.hxx".}
proc SetDisplayUnits*(this: var PrsDim_DiameterDimension;
                     theUnits: TCollection_AsciiString) {.
    importcpp: "SetDisplayUnits", header: "PrsDim_DiameterDimension.hxx".}
proc SetModelUnits*(this: var PrsDim_DiameterDimension;
                   theUnits: TCollection_AsciiString) {.
    importcpp: "SetModelUnits", header: "PrsDim_DiameterDimension.hxx".}
proc SetTextPosition*(this: var PrsDim_DiameterDimension; theTextPos: gp_Pnt) {.
    importcpp: "SetTextPosition", header: "PrsDim_DiameterDimension.hxx".}
proc GetTextPosition*(this: PrsDim_DiameterDimension): gp_Pnt {.noSideEffect,
    importcpp: "GetTextPosition", header: "PrsDim_DiameterDimension.hxx".}