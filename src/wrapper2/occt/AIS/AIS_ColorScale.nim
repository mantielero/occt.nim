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

discard "forward decl of AIS_ColorScale"
discard "forward decl of AIS_ColorScale"
type
  HandleAIS_ColorScale* = Handle[AIS_ColorScale]

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

  AIS_ColorScalebaseType* = AIS_InteractiveObject

proc getTypeName*(): cstring {.importcpp: "AIS_ColorScale::get_type_name(@)",
                            header: "AIS_ColorScale.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_ColorScale::get_type_descriptor(@)",
    header: "AIS_ColorScale.hxx".}
proc dynamicType*(this: AIS_ColorScale): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_ColorScale.hxx".}
proc findColor*(theValue: StandardReal; theMin: StandardReal; theMax: StandardReal;
               theColorsCount: StandardInteger; theColorHlsMin: Graphic3dVec3d;
               theColorHlsMax: Graphic3dVec3d; theColor: var QuantityColor): StandardBoolean {.
    importcpp: "AIS_ColorScale::FindColor(@)", header: "AIS_ColorScale.hxx".}
proc findColor*(theValue: StandardReal; theMin: StandardReal; theMax: StandardReal;
               theColorsCount: StandardInteger; theColor: var QuantityColor): StandardBoolean {.
    importcpp: "AIS_ColorScale::FindColor(@)", header: "AIS_ColorScale.hxx".}
proc hueToValidRange*(theHue: StandardReal): StandardReal {.
    importcpp: "AIS_ColorScale::hueToValidRange(@)", header: "AIS_ColorScale.hxx".}
proc constructAIS_ColorScale*(): AIS_ColorScale {.constructor,
    importcpp: "AIS_ColorScale(@)", header: "AIS_ColorScale.hxx".}
proc findColor*(this: AIS_ColorScale; theValue: StandardReal;
               theColor: var QuantityColor): StandardBoolean {.noSideEffect,
    importcpp: "FindColor", header: "AIS_ColorScale.hxx".}
proc getMin*(this: AIS_ColorScale): StandardReal {.noSideEffect, importcpp: "GetMin",
    header: "AIS_ColorScale.hxx".}
proc setMin*(this: var AIS_ColorScale; theMin: StandardReal) {.importcpp: "SetMin",
    header: "AIS_ColorScale.hxx".}
proc getMax*(this: AIS_ColorScale): StandardReal {.noSideEffect, importcpp: "GetMax",
    header: "AIS_ColorScale.hxx".}
proc setMax*(this: var AIS_ColorScale; theMax: StandardReal) {.importcpp: "SetMax",
    header: "AIS_ColorScale.hxx".}
proc getRange*(this: AIS_ColorScale; theMin: var StandardReal;
              theMax: var StandardReal) {.noSideEffect, importcpp: "GetRange",
                                       header: "AIS_ColorScale.hxx".}
proc setRange*(this: var AIS_ColorScale; theMin: StandardReal; theMax: StandardReal) {.
    importcpp: "SetRange", header: "AIS_ColorScale.hxx".}
proc hueMin*(this: AIS_ColorScale): StandardReal {.noSideEffect, importcpp: "HueMin",
    header: "AIS_ColorScale.hxx".}
proc hueMax*(this: AIS_ColorScale): StandardReal {.noSideEffect, importcpp: "HueMax",
    header: "AIS_ColorScale.hxx".}
proc hueRange*(this: AIS_ColorScale; theMinAngle: var StandardReal;
              theMaxAngle: var StandardReal) {.noSideEffect, importcpp: "HueRange",
    header: "AIS_ColorScale.hxx".}
proc setHueRange*(this: var AIS_ColorScale; theMinAngle: StandardReal;
                 theMaxAngle: StandardReal) {.importcpp: "SetHueRange",
    header: "AIS_ColorScale.hxx".}
proc colorRange*(this: AIS_ColorScale; theMinColor: var QuantityColor;
                theMaxColor: var QuantityColor) {.noSideEffect,
    importcpp: "ColorRange", header: "AIS_ColorScale.hxx".}
proc setColorRange*(this: var AIS_ColorScale; theMinColor: QuantityColor;
                   theMaxColor: QuantityColor) {.importcpp: "SetColorRange",
    header: "AIS_ColorScale.hxx".}
proc getLabelType*(this: AIS_ColorScale): AspectTypeOfColorScaleData {.noSideEffect,
    importcpp: "GetLabelType", header: "AIS_ColorScale.hxx".}
proc setLabelType*(this: var AIS_ColorScale; theType: AspectTypeOfColorScaleData) {.
    importcpp: "SetLabelType", header: "AIS_ColorScale.hxx".}
proc getColorType*(this: AIS_ColorScale): AspectTypeOfColorScaleData {.noSideEffect,
    importcpp: "GetColorType", header: "AIS_ColorScale.hxx".}
proc setColorType*(this: var AIS_ColorScale; theType: AspectTypeOfColorScaleData) {.
    importcpp: "SetColorType", header: "AIS_ColorScale.hxx".}
proc getNumberOfIntervals*(this: AIS_ColorScale): StandardInteger {.noSideEffect,
    importcpp: "GetNumberOfIntervals", header: "AIS_ColorScale.hxx".}
proc setNumberOfIntervals*(this: var AIS_ColorScale; theNum: StandardInteger) {.
    importcpp: "SetNumberOfIntervals", header: "AIS_ColorScale.hxx".}
proc getTitle*(this: AIS_ColorScale): TCollectionExtendedString {.noSideEffect,
    importcpp: "GetTitle", header: "AIS_ColorScale.hxx".}
proc setTitle*(this: var AIS_ColorScale; theTitle: TCollectionExtendedString) {.
    importcpp: "SetTitle", header: "AIS_ColorScale.hxx".}
proc getFormat*(this: AIS_ColorScale): TCollectionAsciiString {.noSideEffect,
    importcpp: "GetFormat", header: "AIS_ColorScale.hxx".}
proc format*(this: AIS_ColorScale): TCollectionAsciiString {.noSideEffect,
    importcpp: "Format", header: "AIS_ColorScale.hxx".}
proc setFormat*(this: var AIS_ColorScale; theFormat: TCollectionAsciiString) {.
    importcpp: "SetFormat", header: "AIS_ColorScale.hxx".}
proc getLabel*(this: AIS_ColorScale; theIndex: StandardInteger): TCollectionExtendedString {.
    noSideEffect, importcpp: "GetLabel", header: "AIS_ColorScale.hxx".}
proc getIntervalColor*(this: AIS_ColorScale; theIndex: StandardInteger): QuantityColor {.
    noSideEffect, importcpp: "GetIntervalColor", header: "AIS_ColorScale.hxx".}
proc setIntervalColor*(this: var AIS_ColorScale; theColor: QuantityColor;
                      theIndex: StandardInteger) {.importcpp: "SetIntervalColor",
    header: "AIS_ColorScale.hxx".}
proc getLabels*(this: AIS_ColorScale;
               theLabels: var TColStdSequenceOfExtendedString) {.noSideEffect,
    importcpp: "GetLabels", header: "AIS_ColorScale.hxx".}
proc labels*(this: AIS_ColorScale): TColStdSequenceOfExtendedString {.noSideEffect,
    importcpp: "Labels", header: "AIS_ColorScale.hxx".}
proc setLabels*(this: var AIS_ColorScale; theSeq: TColStdSequenceOfExtendedString) {.
    importcpp: "SetLabels", header: "AIS_ColorScale.hxx".}
proc getColors*(this: AIS_ColorScale; theColors: var AspectSequenceOfColor) {.
    noSideEffect, importcpp: "GetColors", header: "AIS_ColorScale.hxx".}
proc getColors*(this: AIS_ColorScale): AspectSequenceOfColor {.noSideEffect,
    importcpp: "GetColors", header: "AIS_ColorScale.hxx".}
proc setColors*(this: var AIS_ColorScale; theSeq: AspectSequenceOfColor) {.
    importcpp: "SetColors", header: "AIS_ColorScale.hxx".}
proc setUniformColors*(this: var AIS_ColorScale; theLightness: StandardReal;
                      theHueFrom: StandardReal; theHueTo: StandardReal) {.
    importcpp: "SetUniformColors", header: "AIS_ColorScale.hxx".}
proc makeUniformColors*(theNbColors: StandardInteger; theLightness: StandardReal;
                       theHueFrom: StandardReal; theHueTo: StandardReal): AspectSequenceOfColor {.
    importcpp: "AIS_ColorScale::MakeUniformColors(@)",
    header: "AIS_ColorScale.hxx".}
proc getLabelPosition*(this: AIS_ColorScale): AspectTypeOfColorScalePosition {.
    noSideEffect, importcpp: "GetLabelPosition", header: "AIS_ColorScale.hxx".}
proc setLabelPosition*(this: var AIS_ColorScale;
                      thePos: AspectTypeOfColorScalePosition) {.
    importcpp: "SetLabelPosition", header: "AIS_ColorScale.hxx".}
proc getTitlePosition*(this: AIS_ColorScale): AspectTypeOfColorScalePosition {.
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

proc getSize*(this: AIS_ColorScale; theBreadth: var StandardInteger;
             theHeight: var StandardInteger) {.noSideEffect, importcpp: "GetSize",
    header: "AIS_ColorScale.hxx".}
proc setSize*(this: var AIS_ColorScale; theBreadth: StandardInteger;
             theHeight: StandardInteger) {.importcpp: "SetSize",
    header: "AIS_ColorScale.hxx".}
proc getBreadth*(this: AIS_ColorScale): StandardInteger {.noSideEffect,
    importcpp: "GetBreadth", header: "AIS_ColorScale.hxx".}
proc setBreadth*(this: var AIS_ColorScale; theBreadth: StandardInteger) {.
    importcpp: "SetBreadth", header: "AIS_ColorScale.hxx".}
proc getHeight*(this: AIS_ColorScale): StandardInteger {.noSideEffect,
    importcpp: "GetHeight", header: "AIS_ColorScale.hxx".}
proc setHeight*(this: var AIS_ColorScale; theHeight: StandardInteger) {.
    importcpp: "SetHeight", header: "AIS_ColorScale.hxx".}
proc getPosition*(this: AIS_ColorScale; theX: var StandardReal; theY: var StandardReal) {.
    noSideEffect, importcpp: "GetPosition", header: "AIS_ColorScale.hxx".}
proc setPosition*(this: var AIS_ColorScale; theX: StandardInteger;
                 theY: StandardInteger) {.importcpp: "SetPosition",
                                        header: "AIS_ColorScale.hxx".}
proc getXPosition*(this: AIS_ColorScale): StandardInteger {.noSideEffect,
    importcpp: "GetXPosition", header: "AIS_ColorScale.hxx".}
proc setXPosition*(this: var AIS_ColorScale; theX: StandardInteger) {.
    importcpp: "SetXPosition", header: "AIS_ColorScale.hxx".}
proc getYPosition*(this: AIS_ColorScale): StandardInteger {.noSideEffect,
    importcpp: "GetYPosition", header: "AIS_ColorScale.hxx".}
proc setYPosition*(this: var AIS_ColorScale; theY: StandardInteger) {.
    importcpp: "SetYPosition", header: "AIS_ColorScale.hxx".}
proc getTextHeight*(this: AIS_ColorScale): StandardInteger {.noSideEffect,
    importcpp: "GetTextHeight", header: "AIS_ColorScale.hxx".}
proc setTextHeight*(this: var AIS_ColorScale; theHeight: StandardInteger) {.
    importcpp: "SetTextHeight", header: "AIS_ColorScale.hxx".}
proc textWidth*(this: AIS_ColorScale; theText: TCollectionExtendedString): StandardInteger {.
    noSideEffect, importcpp: "TextWidth", header: "AIS_ColorScale.hxx".}
proc textHeight*(this: AIS_ColorScale; theText: TCollectionExtendedString): StandardInteger {.
    noSideEffect, importcpp: "TextHeight", header: "AIS_ColorScale.hxx".}
proc textSize*(this: AIS_ColorScale; theText: TCollectionExtendedString;
              theHeight: StandardInteger; theWidth: var StandardInteger;
              theAscent: var StandardInteger; theDescent: var StandardInteger) {.
    noSideEffect, importcpp: "TextSize", header: "AIS_ColorScale.hxx".}
proc acceptDisplayMode*(this: AIS_ColorScale; theMode: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "AcceptDisplayMode", header: "AIS_ColorScale.hxx".}
proc compute*(this: var AIS_ColorScale;
             thePresentationManager: Handle[PrsMgrPresentationManager3d];
             thePresentation: Handle[Prs3dPresentation]; theMode: StandardInteger) {.
    importcpp: "Compute", header: "AIS_ColorScale.hxx".}
proc computeSelection*(this: var AIS_ColorScale; a2: Handle[SelectMgrSelection]; ## aSelection
                      a3: StandardInteger) {.importcpp: "ComputeSelection",
    header: "AIS_ColorScale.hxx".}
  ## aMode

