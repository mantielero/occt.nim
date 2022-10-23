##  Created on: 2013-11-11
##  Created by: Anastasia BORISOVA
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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
  HandlePrsDimDimension* = Handle[PrsDimDimension]

## ! PrsDim_Dimension is a base class for 2D presentations of linear (length, diameter, radius)
## ! and angular dimensions.
## !
## ! The dimensions provide measurement of quantities, such as lengths or plane angles.
## ! The measurement of dimension "value" is done in model space "as is".
## ! These "value" are said to be represented in "model units", which can be specified by user.
## ! During the display the measured value converted from "model units" to "display units".
## ! The display and model units are stored in common Prs3d_Drawer (drawer of the context)
## ! to share it between all dimensions.
## ! The specified by user units are stored in the dimension's drawer.
## !
## ! As a drawing, the dimension is composed from the following components:
## ! - Attachment (binding) points. The points where the dimension lines attaches to, for
## !   length dimensions the distances are measured between these points.
## ! - Main dimension line. The which extends from the attachment points in "up" direction,
## !   and which contains text label on it with value string.
## ! - Flyouts. The lines connecting the attachment points with main dimension line.
## ! - Extension. The lines used to extend the main dimension line in the cases when text
## !   or arrows do not fit into the main dimension line due to their size.
## ! - Arrows.
## !
## ! <pre>
## !  Linear dimensions:
## !
## !  extension
## !   line                                     arrow
## !       -->|------- main dimension line -------|<--
## !          |                                   |
## !          |flyout                       flyout|
## !          |                                   |
## !          +-----------------------------------+
## ! attachment                                attachment
## !  point                                       point
## !
## !  Angular dimensions:
## !
## !                  extension
## !                     line
## !                        -->|+++++
## !                     arrow |     +++
## !                           |        90(deg) - main dimension line
## !                    flyout |         +++
## !                           |           +
## !                           o---flyout---
## !                         center         ^
## !                         point          | extension
## !                                          line
## ! </pre>
## !
## ! Being a 2D drawings, the dimensions are created on imaginary plane, called "dimension plane",
## ! which can be thought of as reference system of axes (X,Y,N) for constructing the presentation.
## !
## ! The role of axes of the dimension plane is to guide you through the encapsualted automations
## ! of presentation building to help you understand how is the presentation will look and how it
## ! will be oriented in model space during construction.
## !
## ! Orientation of dimension line in model space relatively to the base shapes is defined
## ! with the flyouts. Flyouts specify length of flyout lines and their orientation relatively
## ! to the attachment points on the working plane.
## ! For linear dimensions:
## !   Direction of flyouts is specified with direction of main dimension line
## !   (vector from the first attachment to the second attachment) and the normal of the dimension plane.
## !   Positive direction of flyouts is defined by vector multiplication: AttachVector * PlaneNormal.
## ! For angular dimensions:
## !   Flyouts are defined by vectors from the center point to the attachment points.
## !   These vectors directions are supposed to be the positive directions of flyouts.
## !   Negative flyouts directions means that these vectors should be reversed
## !   (and dimension will be built out of the angle constructed with center and two attach points).
## !
## ! The dimension plane can be constructed automatically by application (where possible,
## ! it depends on the measured geometry).
## ! It can be also set by user. However, if the user-defined plane does not fit the
## ! geometry of the dimension (attach points do not belong to it), the dimension could not
## ! be built.
## ! If it is not possible to compute automatic plane (for example, in case of length between
## ! two points) the user is supposed to specify the custom plane.
## !
## ! Since the dimensions feature automated construction procedures from an arbitrary shapes,
## ! the interfaces to check the validness are also implemented. Once the measured geometry is
## ! specified, the one can inquire the validness status by calling "IsValid()" method. If the result
## ! is TRUE, then all of public parameters should be pre-computed and ready. The presentation
## ! should be also computable. Otherwise, the parameters may return invalid values. In this case,
## ! the presentation will not be computed and displayed.
## !
## ! The dimension support two local selection modes: main dimension line selection and text label
## ! selection. These modes can be used to develop interactive modification of dimension presentations.
## ! The component highlighting in these selection modes is provided by PrsDim_DimensionOwner class.
## ! Please note that selection is unavailable until the presentation is computed.
## !
## ! The specific drawing attributes are controlled through Prs3d_DimensionAspect. The one can change
## ! color, arrows, text and arrow style and specify positioning of value label by setting corresponding
## ! values to the aspect.
## !
## ! Such set of parameters that consists of:
## ! - flyout size and direction,
## ! - user-defined  dimension plane,
## ! - horizontal and vertical text alignment
## ! can be uniquely replaced with text position in 3d space. Therefore, there are methods to convert
## ! this set of parameters to the text position and vice versa:
## !
## ! - If the fixed text position is defined by user, called SetTextPosition (theTextPos) method converts
## ! this 3d point to the set of parameters including adjusting of the dimension plane (this plane will be
## ! automatic plane, NOT user-defined one).
## ! If the fixed text position is set, the flag myIsFixedTextPosition is set to TRUE.
## ! ATTENSION! myIsFixedTextPosition fixes all parameters of the set from recomputing inside
## ! SetMeasureGeometry() methods. Parameters in dimension aspect (they are horizontal text position
## ! and extension size) are adjusted on presentation computing step, user-defined values in
## ! dimension aspect are not changed.
## ! But plane and flyout as dimension position parameters are changed by SetTextPosition() method
## ! according with user-defined text position.
## ! If parameters from the set are changed by user with calls of setters, it leads to disabling of
## ! fixed text position (myIsFixedTextPosition is set to FALSE).
## ! If the fixed text position is set and geometry is changed by user (SetMeasureGeometry() method
## ! is called) and the geometry doesn't satisfy computed dimension plane, the dimension is not valid.
## !
## ! - If the set of parameters was set by user (may be without the user-defined plane or with it),
## ! it can be converted to the text position by calling the method GetTextPosition(). In this case
## ! the text position is NOT fixed, and SetMeasureGeometry() without user-defined plane adjusts
## ! the automatic plane according input geometry (if it is possible).

type
  PrsDimDimension* {.importcpp: "PrsDim_Dimension", header: "PrsDim_Dimension.hxx",
                    bycopy.} = object of AIS_InteractiveObject ## ! Geometry type defines type of shapes on which the dimension is to be built.
                                                          ## ! Some type of geometry allows automatic plane computing and
                                                          ## ! can be built without user-defined plane
                                                          ## ! Another types can't be built without user-defined plane.
                                                          ## ! Specifies supported presentation compute modes.
                                                          ## ! Used to compute only parts of presentation for
                                                          ## ! advanced highlighting.
                                                          ## ! Constructor with default parameters values.
                                                          ## ! @param theType [in] the type of dimension.
                                                          ## ! Gets the dimension aspect from AIS object drawer.
                                                          ## ! Dimension aspect contains aspects of line, text and arrows for dimension presentation.
                                                          ## ! @return dimension special symbol display options.
                                                          ## ! Returns selection tolerance for text2d:
                                                          ## ! For 2d text selection detection sensitive point with tolerance is used
                                                          ## ! Important! Only for 2d text.
                                                          ## ! @name Static auxilliary methods for geometry extraction
                                                          ## ! If it is possible extracts circle from planar face.
                                                          ## ! @param theFace        [in] the planar face
                                                          ## ! @param theCurve       [out] the circular curve
                                                          ## ! @param theFirstPoint  [out] the point of the first parameter of the circlular curve
                                                          ## ! @param theSecondPoint [out] the point of the last parameter of the circlular curve
                                                          ## ! @return TRUE in case of successful circle extraction
                                                          ## ! @name Behavior to implement
                                                          ## ! Override this method to check if user-defined plane
                                                          ## ! is valid for the dimension geometry.
                                                          ## ! @param thePlane [in] the working plane for positioning every
                                                          ## ! dimension in the application.
                                                          ## ! @return true is the plane is suitable for building dimension
                                                          ## ! with computed dimension geometry.
                                                          ## ! @name Selection geometry
                                                          ## ! Selection geometry of dimension presentation. The structure is filled with data
                                                          ## ! during compute of presentation, then this data is used to generate selection
                                                          ## ! sensitives when computing selection.
                                                          ## ! @name Value properties
                                                          ## ! @name Fixed text position properties
                                                          ## ! @name Units properties
                                                          ## ! @name Geometrical properties
    ## !< Sensitive point tolerance for 2d text selection.
    ## ! type of value (computed or user-defined)
    ## !< Value of the dimension (computed or user-defined).
    ## !< Value of the dimension (computed or user-defined).
    ## !< Stores text position fixed by user.
    ## !< Is the text label position fixed by user.
    ## !< Special symbol.
    ## !< Special symbol display options.
    ## !< defines type of shapes on which the dimension is to be built.
    ## !< Plane where dimension will be built (computed or user defined).
    ## !< Is plane defined by user (otherwise it will be computed automatically).
    ## !< Flyout distance.
    ## !< Is dimension geometry properly defined.

  PrsDimDimensionComputeMode* {.size: sizeof(cint),
                               importcpp: "PrsDim_Dimension::ComputeMode",
                               header: "PrsDim_Dimension.hxx".} = enum
    ComputeModeAll = 0,         ## !< "0" is reserved as neutral mode
    ComputeModeLine = 1,        ## !< corresponds to selection mode
    ComputeModeText = 2


proc newPrsDimDimension*(theType: PrsDimKindOfDimension): PrsDimDimension {.cdecl,
    constructor, importcpp: "PrsDim_Dimension(@)", header: "PrsDim_Dimension.hxx".}
proc getValue*(this: PrsDimDimension): cfloat {.noSideEffect, cdecl,
    importcpp: "GetValue", header: "PrsDim_Dimension.hxx".}
proc setComputedValue*(this: var PrsDimDimension) {.cdecl,
    importcpp: "SetComputedValue", header: "PrsDim_Dimension.hxx".}
proc setCustomValue*(this: var PrsDimDimension; theValue: cfloat) {.cdecl,
    importcpp: "SetCustomValue", header: "PrsDim_Dimension.hxx".}
proc setCustomValue*(this: var PrsDimDimension; theValue: TCollectionExtendedString) {.
    cdecl, importcpp: "SetCustomValue", header: "PrsDim_Dimension.hxx".}
proc getCustomValue*(this: PrsDimDimension): TCollectionExtendedString {.
    noSideEffect, cdecl, importcpp: "GetCustomValue", header: "PrsDim_Dimension.hxx".}
proc getPlane*(this: PrsDimDimension): PlnObj {.noSideEffect, cdecl,
    importcpp: "GetPlane", header: "PrsDim_Dimension.hxx".}
proc getGeometryType*(this: PrsDimDimension): cint {.noSideEffect, cdecl,
    importcpp: "GetGeometryType", header: "PrsDim_Dimension.hxx".}
proc setCustomPlane*(this: var PrsDimDimension; thePlane: PlnObj) {.cdecl,
    importcpp: "SetCustomPlane", header: "PrsDim_Dimension.hxx".}
proc unsetCustomPlane*(this: var PrsDimDimension) {.cdecl,
    importcpp: "UnsetCustomPlane", header: "PrsDim_Dimension.hxx".}
proc isTextPositionCustom*(this: PrsDimDimension): bool {.noSideEffect, cdecl,
    importcpp: "IsTextPositionCustom", header: "PrsDim_Dimension.hxx".}
proc setTextPosition*(this: var PrsDimDimension; a2: PntObj) {.cdecl,
    importcpp: "SetTextPosition", header: "PrsDim_Dimension.hxx".}
  ## theTextPos
proc getTextPosition*(this: PrsDimDimension): PntObj {.noSideEffect, cdecl,
    importcpp: "GetTextPosition", header: "PrsDim_Dimension.hxx".}
proc dimensionAspect*(this: PrsDimDimension): Handle[Prs3dDimensionAspect] {.
    noSideEffect, cdecl, importcpp: "DimensionAspect", header: "PrsDim_Dimension.hxx".}
proc setDimensionAspect*(this: var PrsDimDimension;
                        theDimensionAspect: Handle[Prs3dDimensionAspect]) {.cdecl,
    importcpp: "SetDimensionAspect", header: "PrsDim_Dimension.hxx".}
proc kindOfDimension*(this: PrsDimDimension): PrsDimKindOfDimension {.noSideEffect,
    cdecl, importcpp: "KindOfDimension", header: "PrsDim_Dimension.hxx".}
proc `type`*(this: PrsDimDimension): AIS_KindOfInteractive {.noSideEffect, cdecl,
    importcpp: "Type", header: "PrsDim_Dimension.hxx".}
proc acceptDisplayMode*(this: PrsDimDimension; theMode: cint): bool {.noSideEffect,
    cdecl, importcpp: "AcceptDisplayMode", header: "PrsDim_Dimension.hxx".}
proc displaySpecialSymbol*(this: PrsDimDimension): PrsDimDisplaySpecialSymbol {.
    noSideEffect, cdecl, importcpp: "DisplaySpecialSymbol", header: "PrsDim_Dimension.hxx".}
proc setDisplaySpecialSymbol*(this: var PrsDimDimension;
                             theDisplaySpecSymbol: PrsDimDisplaySpecialSymbol) {.
    cdecl, importcpp: "SetDisplaySpecialSymbol", header: "PrsDim_Dimension.hxx".}
proc specialSymbol*(this: PrsDimDimension): StandardExtCharacter {.noSideEffect,
    cdecl, importcpp: "SpecialSymbol", header: "PrsDim_Dimension.hxx".}
proc setSpecialSymbol*(this: var PrsDimDimension;
                      theSpecialSymbol: StandardExtCharacter) {.cdecl,
    importcpp: "SetSpecialSymbol", header: "PrsDim_Dimension.hxx".}
proc getDisplayUnits*(this: PrsDimDimension): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "GetDisplayUnits", header: "PrsDim_Dimension.hxx".}
proc getModelUnits*(this: PrsDimDimension): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "GetModelUnits", header: "PrsDim_Dimension.hxx".}
proc setDisplayUnits*(this: var PrsDimDimension; a2: TCollectionAsciiString) {.cdecl,
    importcpp: "SetDisplayUnits", header: "PrsDim_Dimension.hxx".}
  ## theUnits
proc setModelUnits*(this: var PrsDimDimension; a2: TCollectionAsciiString) {.cdecl,
    importcpp: "SetModelUnits", header: "PrsDim_Dimension.hxx".}
  ## theUnits
proc unsetFixedTextPosition*(this: var PrsDimDimension) {.cdecl,
    importcpp: "UnsetFixedTextPosition", header: "PrsDim_Dimension.hxx".}
proc selToleranceForText2d*(this: PrsDimDimension): cfloat {.noSideEffect, cdecl,
    importcpp: "SelToleranceForText2d", header: "PrsDim_Dimension.hxx".}
proc setSelToleranceForText2d*(this: var PrsDimDimension; theTol: cfloat) {.cdecl,
    importcpp: "SetSelToleranceForText2d", header: "PrsDim_Dimension.hxx".}
proc getFlyout*(this: PrsDimDimension): cfloat {.noSideEffect, cdecl,
    importcpp: "GetFlyout", header: "PrsDim_Dimension.hxx".}
proc setFlyout*(this: var PrsDimDimension; theFlyout: cfloat) {.cdecl,
    importcpp: "SetFlyout", header: "PrsDim_Dimension.hxx".}
proc isValid*(this: PrsDimDimension): bool {.noSideEffect, cdecl,
    importcpp: "IsValid", header: "PrsDim_Dimension.hxx".}