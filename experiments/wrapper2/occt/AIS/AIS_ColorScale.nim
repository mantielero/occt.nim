##  Created on: 2015-02-03
##  Copyright (c) 2015 OPEN CASCADE SAS
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
  AIS_InteractiveObject, ../Aspect/Aspect_TypeOfColorScaleData,
  ../Aspect/Aspect_TypeOfColorScalePosition, ../Aspect/Aspect_SequenceOfColor,
  ../Standard/Standard, ../Standard/Standard_DefineHandle,
  ../TCollection/TCollection_ExtendedString,
  ../TColStd/TColStd_SequenceOfExtendedString

discard "forward decl of AIS_ColorScale"
discard "forward decl of AIS_ColorScale"
type
  Handle_AIS_ColorScale* = handle[AIS_ColorScale]

## ! Class for drawing a custom color scale.
## !
## ! The color scale consists of rectangular color bar (composed of fixed
## ! number of color intervals), optional labels, and title.
## ! The labels can be positioned either at the boundaries of the intervals,
## ! or at the middle of each interval.
## ! Colors and labels can be either defined automatically or set by the user.
## ! Automatic labels are calculated from numerical limits of the scale,
## ! its type (logarithmic or plain), and formatted by specified format string.

type
  AIS_ColorScale* {.importcpp: "AIS_ColorScale", header: "AIS_ColorScale.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                                                ## !
                                                                                                                ## Calculate
                                                                                                                ## color
                                                                                                                ## according
                                                                                                                ## passed
                                                                                                                ## value;
                                                                                                                ## returns
                                                                                                                ## true
                                                                                                                ## if
                                                                                                                ## value
                                                                                                                ## is
                                                                                                                ## in
                                                                                                                ## range
                                                                                                                ## or
                                                                                                                ## false,
                                                                                                                ## if
                                                                                                                ## isn't
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Default
                                                                                                                ## constructor.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Returns
                                                                                                                ## the
                                                                                                                ## width
                                                                                                                ## of
                                                                                                                ## text.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## @param
                                                                                                                ## theText
                                                                                                                ## [in]
                                                                                                                ## the
                                                                                                                ## text
                                                                                                                ## of
                                                                                                                ## which
                                                                                                                ## to
                                                                                                                ## calculate
                                                                                                                ## width.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Return
                                                                                                                ## true
                                                                                                                ## if
                                                                                                                ## specified
                                                                                                                ## display
                                                                                                                ## mode
                                                                                                                ## is
                                                                                                                ## supported.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Returns
                                                                                                                ## the
                                                                                                                ## size
                                                                                                                ## of
                                                                                                                ## color
                                                                                                                ## scale.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## @param
                                                                                                                ## theWidth
                                                                                                                ## [out]
                                                                                                                ## the
                                                                                                                ## width
                                                                                                                ## of
                                                                                                                ## color
                                                                                                                ## scale.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## @param
                                                                                                                ## theHeight
                                                                                                                ## [out]
                                                                                                                ## the
                                                                                                                ## height
                                                                                                                ## of
                                                                                                                ## color
                                                                                                                ## scale.
    ## !< values range - minimal value
    ## !< values range - maximal value
    ## !< HLS color corresponding to minimum value
    ## !< HLS color corresponding to maximum value
    ## !< optional title string
    ## !< sprintf() format for generating label from value
    ## !< number of intervals
    ## !< color type
    ## !< label type
    ## !< at border
    ## !< flag indicating reversed order
    ## !< flag indicating logarithmic scale
    ## !< flag indicating smooth transition between the colors
    ## !< sequence of custom colors
    ## !< sequence of custom text labels
    ## !< label position relative to the color scale
    ## !< title position
    ## !< left   position
    ## !< bottom position
    ## !< color scale breadth
    ## !< height of the color scale
    ## !< extra spacing between element
    ## !< label font height

  AIS_ColorScalebase_type* = AIS_InteractiveObject

proc get_type_name*(): cstring {.importcpp: "AIS_ColorScale::get_type_name(@)",
                              header: "AIS_ColorScale.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_ColorScale::get_type_descriptor(@)",
    header: "AIS_ColorScale.hxx".}
proc DynamicType*(this: AIS_ColorScale): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_ColorScale.hxx".}
proc FindColor*(theValue: Standard_Real; theMin: Standard_Real;
               theMax: Standard_Real; theColorsCount: Standard_Integer;
               theColorHlsMin: Graphic3d_Vec3d; theColorHlsMax: Graphic3d_Vec3d;
               theColor: var Quantity_Color): Standard_Boolean {.
    importcpp: "AIS_ColorScale::FindColor(@)", header: "AIS_ColorScale.hxx".}
proc FindColor*(theValue: Standard_Real; theMin: Standard_Real;
               theMax: Standard_Real; theColorsCount: Standard_Integer;
               theColor: var Quantity_Color): Standard_Boolean {.
    importcpp: "AIS_ColorScale::FindColor(@)", header: "AIS_ColorScale.hxx".}
proc hueToValidRange*(theHue: Standard_Real): Standard_Real {.
    importcpp: "AIS_ColorScale::hueToValidRange(@)", header: "AIS_ColorScale.hxx".}
proc constructAIS_ColorScale*(): AIS_ColorScale {.constructor,
    importcpp: "AIS_ColorScale(@)", header: "AIS_ColorScale.hxx".}
proc FindColor*(this: AIS_ColorScale; theValue: Standard_Real;
               theColor: var Quantity_Color): Standard_Boolean {.noSideEffect,
    importcpp: "FindColor", header: "AIS_ColorScale.hxx".}
proc GetMin*(this: AIS_ColorScale): Standard_Real {.noSideEffect,
    importcpp: "GetMin", header: "AIS_ColorScale.hxx".}
proc SetMin*(this: var AIS_ColorScale; theMin: Standard_Real) {.importcpp: "SetMin",
    header: "AIS_ColorScale.hxx".}
proc GetMax*(this: AIS_ColorScale): Standard_Real {.noSideEffect,
    importcpp: "GetMax", header: "AIS_ColorScale.hxx".}
proc SetMax*(this: var AIS_ColorScale; theMax: Standard_Real) {.importcpp: "SetMax",
    header: "AIS_ColorScale.hxx".}
proc GetRange*(this: AIS_ColorScale; theMin: var Standard_Real;
              theMax: var Standard_Real) {.noSideEffect, importcpp: "GetRange",
                                        header: "AIS_ColorScale.hxx".}
proc SetRange*(this: var AIS_ColorScale; theMin: Standard_Real; theMax: Standard_Real) {.
    importcpp: "SetRange", header: "AIS_ColorScale.hxx".}
proc HueMin*(this: AIS_ColorScale): Standard_Real {.noSideEffect,
    importcpp: "HueMin", header: "AIS_ColorScale.hxx".}
proc HueMax*(this: AIS_ColorScale): Standard_Real {.noSideEffect,
    importcpp: "HueMax", header: "AIS_ColorScale.hxx".}
proc HueRange*(this: AIS_ColorScale; theMinAngle: var Standard_Real;
              theMaxAngle: var Standard_Real) {.noSideEffect, importcpp: "HueRange",
    header: "AIS_ColorScale.hxx".}
proc SetHueRange*(this: var AIS_ColorScale; theMinAngle: Standard_Real;
                 theMaxAngle: Standard_Real) {.importcpp: "SetHueRange",
    header: "AIS_ColorScale.hxx".}
proc ColorRange*(this: AIS_ColorScale; theMinColor: var Quantity_Color;
                theMaxColor: var Quantity_Color) {.noSideEffect,
    importcpp: "ColorRange", header: "AIS_ColorScale.hxx".}
proc SetColorRange*(this: var AIS_ColorScale; theMinColor: Quantity_Color;
                   theMaxColor: Quantity_Color) {.importcpp: "SetColorRange",
    header: "AIS_ColorScale.hxx".}
proc GetLabelType*(this: AIS_ColorScale): Aspect_TypeOfColorScaleData {.
    noSideEffect, importcpp: "GetLabelType", header: "AIS_ColorScale.hxx".}
proc SetLabelType*(this: var AIS_ColorScale; theType: Aspect_TypeOfColorScaleData) {.
    importcpp: "SetLabelType", header: "AIS_ColorScale.hxx".}
proc GetColorType*(this: AIS_ColorScale): Aspect_TypeOfColorScaleData {.
    noSideEffect, importcpp: "GetColorType", header: "AIS_ColorScale.hxx".}
proc SetColorType*(this: var AIS_ColorScale; theType: Aspect_TypeOfColorScaleData) {.
    importcpp: "SetColorType", header: "AIS_ColorScale.hxx".}
proc GetNumberOfIntervals*(this: AIS_ColorScale): Standard_Integer {.noSideEffect,
    importcpp: "GetNumberOfIntervals", header: "AIS_ColorScale.hxx".}
proc SetNumberOfIntervals*(this: var AIS_ColorScale; theNum: Standard_Integer) {.
    importcpp: "SetNumberOfIntervals", header: "AIS_ColorScale.hxx".}
proc GetTitle*(this: AIS_ColorScale): TCollection_ExtendedString {.noSideEffect,
    importcpp: "GetTitle", header: "AIS_ColorScale.hxx".}
proc SetTitle*(this: var AIS_ColorScale; theTitle: TCollection_ExtendedString) {.
    importcpp: "SetTitle", header: "AIS_ColorScale.hxx".}
proc GetFormat*(this: AIS_ColorScale): TCollection_AsciiString {.noSideEffect,
    importcpp: "GetFormat", header: "AIS_ColorScale.hxx".}
proc Format*(this: AIS_ColorScale): TCollection_AsciiString {.noSideEffect,
    importcpp: "Format", header: "AIS_ColorScale.hxx".}
proc SetFormat*(this: var AIS_ColorScale; theFormat: TCollection_AsciiString) {.
    importcpp: "SetFormat", header: "AIS_ColorScale.hxx".}
proc GetLabel*(this: AIS_ColorScale; theIndex: Standard_Integer): TCollection_ExtendedString {.
    noSideEffect, importcpp: "GetLabel", header: "AIS_ColorScale.hxx".}
proc GetIntervalColor*(this: AIS_ColorScale; theIndex: Standard_Integer): Quantity_Color {.
    noSideEffect, importcpp: "GetIntervalColor", header: "AIS_ColorScale.hxx".}
proc SetIntervalColor*(this: var AIS_ColorScale; theColor: Quantity_Color;
                      theIndex: Standard_Integer) {.importcpp: "SetIntervalColor",
    header: "AIS_ColorScale.hxx".}
proc GetLabels*(this: AIS_ColorScale;
               theLabels: var TColStd_SequenceOfExtendedString) {.noSideEffect,
    importcpp: "GetLabels", header: "AIS_ColorScale.hxx".}
proc Labels*(this: AIS_ColorScale): TColStd_SequenceOfExtendedString {.noSideEffect,
    importcpp: "Labels", header: "AIS_ColorScale.hxx".}
proc SetLabels*(this: var AIS_ColorScale; theSeq: TColStd_SequenceOfExtendedString) {.
    importcpp: "SetLabels", header: "AIS_ColorScale.hxx".}
proc GetColors*(this: AIS_ColorScale; theColors: var Aspect_SequenceOfColor) {.
    noSideEffect, importcpp: "GetColors", header: "AIS_ColorScale.hxx".}
proc GetColors*(this: AIS_ColorScale): Aspect_SequenceOfColor {.noSideEffect,
    importcpp: "GetColors", header: "AIS_ColorScale.hxx".}
proc SetColors*(this: var AIS_ColorScale; theSeq: Aspect_SequenceOfColor) {.
    importcpp: "SetColors", header: "AIS_ColorScale.hxx".}
proc SetUniformColors*(this: var AIS_ColorScale; theLightness: Standard_Real;
                      theHueFrom: Standard_Real; theHueTo: Standard_Real) {.
    importcpp: "SetUniformColors", header: "AIS_ColorScale.hxx".}
proc MakeUniformColors*(theNbColors: Standard_Integer; theLightness: Standard_Real;
                       theHueFrom: Standard_Real; theHueTo: Standard_Real): Aspect_SequenceOfColor {.
    importcpp: "AIS_ColorScale::MakeUniformColors(@)",
    header: "AIS_ColorScale.hxx".}
proc GetLabelPosition*(this: AIS_ColorScale): Aspect_TypeOfColorScalePosition {.
    noSideEffect, importcpp: "GetLabelPosition", header: "AIS_ColorScale.hxx".}
proc SetLabelPosition*(this: var AIS_ColorScale;
                      thePos: Aspect_TypeOfColorScalePosition) {.
    importcpp: "SetLabelPosition", header: "AIS_ColorScale.hxx".}
proc GetTitlePosition*(this: AIS_ColorScale): Aspect_TypeOfColorScalePosition {.
    noSideEffect, importcpp: "GetTitlePosition", header: "AIS_ColorScale.hxx".}
## !!!Ignored construct:  ! Sets the color scale title position. Standard_DEPRECATED ( AIS_ColorScale::SetTitlePosition() has no effect! ) void SetTitlePosition ( const Aspect_TypeOfColorScalePosition thePos ) { myTitlePos = thePos ; } ! Returns TRUE if the labels and colors used in reversed order, FALSE by default.
## !  - Normal,   bottom-up order with Minimal value on the Bottom and Maximum value on Top.
## !  - Reversed, top-down  order with Maximum value on the Bottom and Minimum value on Top. Standard_Boolean IsReversed ( ) const { return myIsReversed ; } ! Sets true if the labels and colors used in reversed order. void SetReversed ( const Standard_Boolean theReverse ) { myIsReversed = theReverse ; } ! Return TRUE if color transition between neighbor intervals
## ! should be linearly interpolated, FALSE by default. Standard_Boolean IsSmoothTransition ( ) const { return myIsSmooth ; } ! Setup smooth color transition. void SetSmoothTransition ( const Standard_Boolean theIsSmooth ) { myIsSmooth = theIsSmooth ; } ! Returns TRUE if the labels are placed at border of color intervals, TRUE by default.
## ! The automatically generated label will show value exactly on the current position:
## !  - value connecting two neighbor intervals (TRUE)
## !  - value in the middle of interval (FALSE) Standard_Boolean IsLabelAtBorder ( ) const { return myIsLabelAtBorder ; } ! Sets true if the labels are placed at border of color intervals (TRUE by default).
## ! If set to False, labels will be drawn at color intervals rather than at borders. void SetLabelAtBorder ( const Standard_Boolean theOn ) { myIsLabelAtBorder = theOn ; } ! Returns TRUE if the color scale has logarithmic intervals, FALSE by default. Standard_Boolean IsLogarithmic ( ) const { return myIsLogarithmic ; } ! Sets true if the color scale has logarithmic intervals. void SetLogarithmic ( const Standard_Boolean isLogarithmic ) { myIsLogarithmic = isLogarithmic ; } ! Sets the color scale label at index.
## ! Note that list is automatically resized to include specified index.
## ! @param theLabel new label text
## ! @param theIndex index in range [1, GetNumberOfIntervals()] or [1, GetNumberOfIntervals() + 1] if IsLabelAtBorder() is true;
## !                 label is appended to the end of list if negative index is specified void SetLabel ( const TCollection_ExtendedString & theLabel , const Standard_Integer theIndex ) ;
## Error: identifier expected, but got: AIS_ColorScale::SetTitlePosition() has no effect!!!!

proc GetSize*(this: AIS_ColorScale; theBreadth: var Standard_Integer;
             theHeight: var Standard_Integer) {.noSideEffect, importcpp: "GetSize",
    header: "AIS_ColorScale.hxx".}
proc SetSize*(this: var AIS_ColorScale; theBreadth: Standard_Integer;
             theHeight: Standard_Integer) {.importcpp: "SetSize",
    header: "AIS_ColorScale.hxx".}
proc GetBreadth*(this: AIS_ColorScale): Standard_Integer {.noSideEffect,
    importcpp: "GetBreadth", header: "AIS_ColorScale.hxx".}
proc SetBreadth*(this: var AIS_ColorScale; theBreadth: Standard_Integer) {.
    importcpp: "SetBreadth", header: "AIS_ColorScale.hxx".}
proc GetHeight*(this: AIS_ColorScale): Standard_Integer {.noSideEffect,
    importcpp: "GetHeight", header: "AIS_ColorScale.hxx".}
proc SetHeight*(this: var AIS_ColorScale; theHeight: Standard_Integer) {.
    importcpp: "SetHeight", header: "AIS_ColorScale.hxx".}
proc GetPosition*(this: AIS_ColorScale; theX: var Standard_Real;
                 theY: var Standard_Real) {.noSideEffect, importcpp: "GetPosition",
    header: "AIS_ColorScale.hxx".}
proc SetPosition*(this: var AIS_ColorScale; theX: Standard_Integer;
                 theY: Standard_Integer) {.importcpp: "SetPosition",
    header: "AIS_ColorScale.hxx".}
proc GetXPosition*(this: AIS_ColorScale): Standard_Integer {.noSideEffect,
    importcpp: "GetXPosition", header: "AIS_ColorScale.hxx".}
proc SetXPosition*(this: var AIS_ColorScale; theX: Standard_Integer) {.
    importcpp: "SetXPosition", header: "AIS_ColorScale.hxx".}
proc GetYPosition*(this: AIS_ColorScale): Standard_Integer {.noSideEffect,
    importcpp: "GetYPosition", header: "AIS_ColorScale.hxx".}
proc SetYPosition*(this: var AIS_ColorScale; theY: Standard_Integer) {.
    importcpp: "SetYPosition", header: "AIS_ColorScale.hxx".}
proc GetTextHeight*(this: AIS_ColorScale): Standard_Integer {.noSideEffect,
    importcpp: "GetTextHeight", header: "AIS_ColorScale.hxx".}
proc SetTextHeight*(this: var AIS_ColorScale; theHeight: Standard_Integer) {.
    importcpp: "SetTextHeight", header: "AIS_ColorScale.hxx".}
proc TextWidth*(this: AIS_ColorScale; theText: TCollection_ExtendedString): Standard_Integer {.
    noSideEffect, importcpp: "TextWidth", header: "AIS_ColorScale.hxx".}
proc TextHeight*(this: AIS_ColorScale; theText: TCollection_ExtendedString): Standard_Integer {.
    noSideEffect, importcpp: "TextHeight", header: "AIS_ColorScale.hxx".}
proc TextSize*(this: AIS_ColorScale; theText: TCollection_ExtendedString;
              theHeight: Standard_Integer; theWidth: var Standard_Integer;
              theAscent: var Standard_Integer; theDescent: var Standard_Integer) {.
    noSideEffect, importcpp: "TextSize", header: "AIS_ColorScale.hxx".}
proc AcceptDisplayMode*(this: AIS_ColorScale; theMode: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "AcceptDisplayMode", header: "AIS_ColorScale.hxx".}
proc Compute*(this: var AIS_ColorScale;
             thePresentationManager: handle[PrsMgr_PresentationManager3d];
             thePresentation: handle[Prs3d_Presentation];
             theMode: Standard_Integer) {.importcpp: "Compute",
                                        header: "AIS_ColorScale.hxx".}
proc ComputeSelection*(this: var AIS_ColorScale; a2: handle[SelectMgr_Selection]; ## aSelection
                      a3: Standard_Integer) {.importcpp: "ComputeSelection",
    header: "AIS_ColorScale.hxx".}
  ## aMode