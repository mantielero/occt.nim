import ais_types

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




proc findColor*(theValue: cfloat; theMin: cfloat; theMax: cfloat; theColorsCount: cint;
               theColorHlsMin: Graphic3dVec3d; theColorHlsMax: Graphic3dVec3d;
               theColor: var QuantityColor): bool {.cdecl,
    importcpp: "AIS_ColorScale::FindColor(@)", header: "AIS_ColorScale.hxx".}
proc findColor*(theValue: cfloat; theMin: cfloat; theMax: cfloat; theColorsCount: cint;
               theColor: var QuantityColor): bool {.cdecl,
    importcpp: "AIS_ColorScale::FindColor(@)", header: "AIS_ColorScale.hxx".}
proc hueToValidRange*(theHue: cfloat): cfloat {.cdecl,
    importcpp: "AIS_ColorScale::hueToValidRange(@)", header: "AIS_ColorScale.hxx".}
proc newAIS_ColorScale*(): AIS_ColorScale {.cdecl, constructor,
    importcpp: "AIS_ColorScale(@)", header: "AIS_ColorScale.hxx".}
proc findColor*(this: AIS_ColorScale; theValue: cfloat; theColor: var QuantityColor): bool {.
    noSideEffect, cdecl, importcpp: "FindColor", header: "AIS_ColorScale.hxx".}
proc getMin*(this: AIS_ColorScale): cfloat {.noSideEffect, cdecl, importcpp: "GetMin",
    header: "AIS_ColorScale.hxx".}
proc setMin*(this: var AIS_ColorScale; theMin: cfloat) {.cdecl, importcpp: "SetMin",
    header: "AIS_ColorScale.hxx".}
proc getMax*(this: AIS_ColorScale): cfloat {.noSideEffect, cdecl, importcpp: "GetMax",
    header: "AIS_ColorScale.hxx".}
proc setMax*(this: var AIS_ColorScale; theMax: cfloat) {.cdecl, importcpp: "SetMax",
    header: "AIS_ColorScale.hxx".}
proc getRange*(this: AIS_ColorScale; theMin: var cfloat; theMax: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetRange", header: "AIS_ColorScale.hxx".}
proc setRange*(this: var AIS_ColorScale; theMin: cfloat; theMax: cfloat) {.cdecl,
    importcpp: "SetRange", header: "AIS_ColorScale.hxx".}
proc hueMin*(this: AIS_ColorScale): cfloat {.noSideEffect, cdecl, importcpp: "HueMin",
    header: "AIS_ColorScale.hxx".}
proc hueMax*(this: AIS_ColorScale): cfloat {.noSideEffect, cdecl, importcpp: "HueMax",
    header: "AIS_ColorScale.hxx".}
proc hueRange*(this: AIS_ColorScale; theMinAngle: var cfloat; theMaxAngle: var cfloat) {.
    noSideEffect, cdecl, importcpp: "HueRange", header: "AIS_ColorScale.hxx".}
proc setHueRange*(this: var AIS_ColorScale; theMinAngle: cfloat; theMaxAngle: cfloat) {.
    cdecl, importcpp: "SetHueRange", header: "AIS_ColorScale.hxx".}
proc colorRange*(this: AIS_ColorScale; theMinColor: var QuantityColor;
                theMaxColor: var QuantityColor) {.noSideEffect, cdecl,
    importcpp: "ColorRange", header: "AIS_ColorScale.hxx".}
proc setColorRange*(this: var AIS_ColorScale; theMinColor: QuantityColor;
                   theMaxColor: QuantityColor) {.cdecl, importcpp: "SetColorRange",
    header: "AIS_ColorScale.hxx".}
proc getLabelType*(this: AIS_ColorScale): AspectTypeOfColorScaleData {.noSideEffect,
    cdecl, importcpp: "GetLabelType", header: "AIS_ColorScale.hxx".}
proc setLabelType*(this: var AIS_ColorScale; theType: AspectTypeOfColorScaleData) {.
    cdecl, importcpp: "SetLabelType", header: "AIS_ColorScale.hxx".}
proc getColorType*(this: AIS_ColorScale): AspectTypeOfColorScaleData {.noSideEffect,
    cdecl, importcpp: "GetColorType", header: "AIS_ColorScale.hxx".}
proc setColorType*(this: var AIS_ColorScale; theType: AspectTypeOfColorScaleData) {.
    cdecl, importcpp: "SetColorType", header: "AIS_ColorScale.hxx".}
proc getNumberOfIntervals*(this: AIS_ColorScale): cint {.noSideEffect, cdecl,
    importcpp: "GetNumberOfIntervals", header: "AIS_ColorScale.hxx".}
proc setNumberOfIntervals*(this: var AIS_ColorScale; theNum: cint) {.cdecl,
    importcpp: "SetNumberOfIntervals", header: "AIS_ColorScale.hxx".}
proc getTitle*(this: AIS_ColorScale): TCollectionExtendedString {.noSideEffect,
    cdecl, importcpp: "GetTitle", header: "AIS_ColorScale.hxx".}
proc setTitle*(this: var AIS_ColorScale; theTitle: TCollectionExtendedString) {.cdecl,
    importcpp: "SetTitle", header: "AIS_ColorScale.hxx".}
proc getFormat*(this: AIS_ColorScale): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "GetFormat", header: "AIS_ColorScale.hxx".}
proc format*(this: AIS_ColorScale): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Format", header: "AIS_ColorScale.hxx".}
proc setFormat*(this: var AIS_ColorScale; theFormat: TCollectionAsciiString) {.cdecl,
    importcpp: "SetFormat", header: "AIS_ColorScale.hxx".}
proc getLabel*(this: AIS_ColorScale; theIndex: cint): TCollectionExtendedString {.
    noSideEffect, cdecl, importcpp: "GetLabel", header: "AIS_ColorScale.hxx".}
proc getIntervalColor*(this: AIS_ColorScale; theIndex: cint): QuantityColor {.
    noSideEffect, cdecl, importcpp: "GetIntervalColor", header: "AIS_ColorScale.hxx".}
proc setIntervalColor*(this: var AIS_ColorScale; theColor: QuantityColor;
                      theIndex: cint) {.cdecl, importcpp: "SetIntervalColor",
                                      header: "AIS_ColorScale.hxx".}
proc getLabels*(this: AIS_ColorScale;
               theLabels: var TColStdSequenceOfExtendedString) {.noSideEffect,
    cdecl, importcpp: "GetLabels", header: "AIS_ColorScale.hxx".}
proc labels*(this: AIS_ColorScale): TColStdSequenceOfExtendedString {.noSideEffect,
    cdecl, importcpp: "Labels", header: "AIS_ColorScale.hxx".}
proc setLabels*(this: var AIS_ColorScale; theSeq: TColStdSequenceOfExtendedString) {.
    cdecl, importcpp: "SetLabels", header: "AIS_ColorScale.hxx".}
proc getColors*(this: AIS_ColorScale; theColors: var AspectSequenceOfColor) {.
    noSideEffect, cdecl, importcpp: "GetColors", header: "AIS_ColorScale.hxx".}
proc getColors*(this: AIS_ColorScale): AspectSequenceOfColor {.noSideEffect, cdecl,
    importcpp: "GetColors", header: "AIS_ColorScale.hxx".}
proc setColors*(this: var AIS_ColorScale; theSeq: AspectSequenceOfColor) {.cdecl,
    importcpp: "SetColors", header: "AIS_ColorScale.hxx".}
proc setUniformColors*(this: var AIS_ColorScale; theLightness: cfloat;
                      theHueFrom: cfloat; theHueTo: cfloat) {.cdecl,
    importcpp: "SetUniformColors", header: "AIS_ColorScale.hxx".}
proc makeUniformColors*(theNbColors: cint; theLightness: cfloat; theHueFrom: cfloat;
                       theHueTo: cfloat): AspectSequenceOfColor {.cdecl,
    importcpp: "AIS_ColorScale::MakeUniformColors(@)", header: "AIS_ColorScale.hxx".}
proc getLabelPosition*(this: AIS_ColorScale): AspectTypeOfColorScalePosition {.
    noSideEffect, cdecl, importcpp: "GetLabelPosition", header: "AIS_ColorScale.hxx".}
proc setLabelPosition*(this: var AIS_ColorScale;
                      thePos: AspectTypeOfColorScalePosition) {.cdecl,
    importcpp: "SetLabelPosition", header: "AIS_ColorScale.hxx".}
proc getTitlePosition*(this: AIS_ColorScale): AspectTypeOfColorScalePosition {.
    noSideEffect, cdecl, importcpp: "GetTitlePosition", header: "AIS_ColorScale.hxx".}
proc setTitlePosition*(this: var AIS_ColorScale;
                      thePos: AspectTypeOfColorScalePosition) {.cdecl,
    importcpp: "SetTitlePosition", header: "AIS_ColorScale.hxx".}
proc isReversed*(this: AIS_ColorScale): bool {.noSideEffect, cdecl,
    importcpp: "IsReversed", header: "AIS_ColorScale.hxx".}
proc setReversed*(this: var AIS_ColorScale; theReverse: bool) {.cdecl,
    importcpp: "SetReversed", header: "AIS_ColorScale.hxx".}
proc isSmoothTransition*(this: AIS_ColorScale): bool {.noSideEffect, cdecl,
    importcpp: "IsSmoothTransition", header: "AIS_ColorScale.hxx".}
proc setSmoothTransition*(this: var AIS_ColorScale; theIsSmooth: bool) {.cdecl,
    importcpp: "SetSmoothTransition", header: "AIS_ColorScale.hxx".}
proc isLabelAtBorder*(this: AIS_ColorScale): bool {.noSideEffect, cdecl,
    importcpp: "IsLabelAtBorder", header: "AIS_ColorScale.hxx".}
proc setLabelAtBorder*(this: var AIS_ColorScale; theOn: bool) {.cdecl,
    importcpp: "SetLabelAtBorder", header: "AIS_ColorScale.hxx".}
proc isLogarithmic*(this: AIS_ColorScale): bool {.noSideEffect, cdecl,
    importcpp: "IsLogarithmic", header: "AIS_ColorScale.hxx".}
proc setLogarithmic*(this: var AIS_ColorScale; isLogarithmic: bool) {.cdecl,
    importcpp: "SetLogarithmic", header: "AIS_ColorScale.hxx".}
proc setLabel*(this: var AIS_ColorScale; theLabel: TCollectionExtendedString;
              theIndex: cint) {.cdecl, importcpp: "SetLabel", header: "AIS_ColorScale.hxx".}
proc getSize*(this: AIS_ColorScale; theBreadth: var cint; theHeight: var cint) {.
    noSideEffect, cdecl, importcpp: "GetSize", header: "AIS_ColorScale.hxx".}
proc setSize*(this: var AIS_ColorScale; theBreadth: cint; theHeight: cint) {.cdecl,
    importcpp: "SetSize", header: "AIS_ColorScale.hxx".}
proc getBreadth*(this: AIS_ColorScale): cint {.noSideEffect, cdecl,
    importcpp: "GetBreadth", header: "AIS_ColorScale.hxx".}
proc setBreadth*(this: var AIS_ColorScale; theBreadth: cint) {.cdecl,
    importcpp: "SetBreadth", header: "AIS_ColorScale.hxx".}
proc getHeight*(this: AIS_ColorScale): cint {.noSideEffect, cdecl,
    importcpp: "GetHeight", header: "AIS_ColorScale.hxx".}
proc setHeight*(this: var AIS_ColorScale; theHeight: cint) {.cdecl,
    importcpp: "SetHeight", header: "AIS_ColorScale.hxx".}
proc getPosition*(this: AIS_ColorScale; theX: var cfloat; theY: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetPosition", header: "AIS_ColorScale.hxx".}
proc setPosition*(this: var AIS_ColorScale; theX: cint; theY: cint) {.cdecl,
    importcpp: "SetPosition", header: "AIS_ColorScale.hxx".}
proc getXPosition*(this: AIS_ColorScale): cint {.noSideEffect, cdecl,
    importcpp: "GetXPosition", header: "AIS_ColorScale.hxx".}
proc setXPosition*(this: var AIS_ColorScale; theX: cint) {.cdecl,
    importcpp: "SetXPosition", header: "AIS_ColorScale.hxx".}
proc getYPosition*(this: AIS_ColorScale): cint {.noSideEffect, cdecl,
    importcpp: "GetYPosition", header: "AIS_ColorScale.hxx".}
proc setYPosition*(this: var AIS_ColorScale; theY: cint) {.cdecl,
    importcpp: "SetYPosition", header: "AIS_ColorScale.hxx".}
proc getTextHeight*(this: AIS_ColorScale): cint {.noSideEffect, cdecl,
    importcpp: "GetTextHeight", header: "AIS_ColorScale.hxx".}
proc setTextHeight*(this: var AIS_ColorScale; theHeight: cint) {.cdecl,
    importcpp: "SetTextHeight", header: "AIS_ColorScale.hxx".}
proc textWidth*(this: AIS_ColorScale; theText: TCollectionExtendedString): cint {.
    noSideEffect, cdecl, importcpp: "TextWidth", header: "AIS_ColorScale.hxx".}
proc textHeight*(this: AIS_ColorScale; theText: TCollectionExtendedString): cint {.
    noSideEffect, cdecl, importcpp: "TextHeight", header: "AIS_ColorScale.hxx".}
proc textSize*(this: AIS_ColorScale; theText: TCollectionExtendedString;
              theHeight: cint; theWidth: var cint; theAscent: var cint;
              theDescent: var cint) {.noSideEffect, cdecl, importcpp: "TextSize",
                                   header: "AIS_ColorScale.hxx".}
proc acceptDisplayMode*(this: AIS_ColorScale; theMode: cint): bool {.noSideEffect,
    cdecl, importcpp: "AcceptDisplayMode", header: "AIS_ColorScale.hxx".}
proc compute*(this: var AIS_ColorScale;
             thePresentationManager: Handle[PrsMgrPresentationManager3d];
             thePresentation: Handle[Prs3dPresentation]; theMode: cint) {.cdecl,
    importcpp: "Compute", header: "AIS_ColorScale.hxx".}
proc computeSelection*(this: var AIS_ColorScale; a2: Handle[SelectMgrSelection]; ## aSelection
                      a3: cint) {.cdecl, importcpp: "ComputeSelection", header: "AIS_ColorScale.hxx".}
