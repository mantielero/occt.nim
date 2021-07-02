##  Created on: 2015-11-23
##  Created by: Anastasia BORISOVA
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

discard "forward decl of AIS_RubberBand"
type
  HandleAIS_RubberBand* = Handle[AIS_RubberBand]

## ! Presentation for drawing rubber band selection.
## ! It supports rectangle and polygonal selection.
## ! It is constructed in 2d overlay.
## ! Default configaration is built without filling.
## ! For rectangle selection use SetRectangle() method.
## ! For polygonal selection use AddPoint() and GetPoints() methods.

type
  AIS_RubberBand* {.importcpp: "AIS_RubberBand", header: "AIS_RubberBand.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                                                ## !
                                                                                                                ## Computes
                                                                                                                ## presentation
                                                                                                                ## of
                                                                                                                ## rubber
                                                                                                                ## band.
    ## !< Array of screen points
    ## !< Triangles for rubber band filling
    ## !< Polylines for rubber band borders
    ## !< automatic closing of rubber-band flag

  AIS_RubberBandbaseType* = AIS_InteractiveObject

proc getTypeName*(): cstring {.importcpp: "AIS_RubberBand::get_type_name(@)",
                            header: "AIS_RubberBand.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_RubberBand::get_type_descriptor(@)",
    header: "AIS_RubberBand.hxx".}
proc dynamicType*(this: AIS_RubberBand): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_RubberBand.hxx".}
proc constructAIS_RubberBand*(): AIS_RubberBand {.constructor,
    importcpp: "AIS_RubberBand(@)", header: "AIS_RubberBand.hxx".}
proc constructAIS_RubberBand*(theLineColor: QuantityColor;
                             theType: AspectTypeOfLine;
                             theLineWidth: StandardReal = 1.0;
                             theIsPolygonClosed: StandardBoolean = standardTrue): AIS_RubberBand {.
    constructor, importcpp: "AIS_RubberBand(@)", header: "AIS_RubberBand.hxx".}
proc constructAIS_RubberBand*(theLineColor: QuantityColor;
                             theType: AspectTypeOfLine;
                             theFillColor: QuantityColor;
                             theTransparency: StandardReal = 1.0;
                             theLineWidth: StandardReal = 1.0;
                             theIsPolygonClosed: StandardBoolean = standardTrue): AIS_RubberBand {.
    constructor, importcpp: "AIS_RubberBand(@)", header: "AIS_RubberBand.hxx".}
proc destroyAIS_RubberBand*(this: var AIS_RubberBand) {.
    importcpp: "#.~AIS_RubberBand()", header: "AIS_RubberBand.hxx".}
proc setRectangle*(this: var AIS_RubberBand; theMinX: StandardInteger;
                  theMinY: StandardInteger; theMaxX: StandardInteger;
                  theMaxY: StandardInteger) {.importcpp: "SetRectangle",
    header: "AIS_RubberBand.hxx".}
proc addPoint*(this: var AIS_RubberBand; thePoint: Graphic3dVec2i) {.
    importcpp: "AddPoint", header: "AIS_RubberBand.hxx".}
proc removeLastPoint*(this: var AIS_RubberBand) {.importcpp: "RemoveLastPoint",
    header: "AIS_RubberBand.hxx".}
proc points*(this: AIS_RubberBand): NCollectionSequence[Graphic3dVec2i] {.
    noSideEffect, importcpp: "Points", header: "AIS_RubberBand.hxx".}
proc clearPoints*(this: var AIS_RubberBand) {.importcpp: "ClearPoints",
    header: "AIS_RubberBand.hxx".}
proc lineColor*(this: AIS_RubberBand): QuantityColor {.noSideEffect,
    importcpp: "LineColor", header: "AIS_RubberBand.hxx".}
proc setLineColor*(this: var AIS_RubberBand; theColor: QuantityColor) {.
    importcpp: "SetLineColor", header: "AIS_RubberBand.hxx".}
proc fillColor*(this: AIS_RubberBand): QuantityColor {.noSideEffect,
    importcpp: "FillColor", header: "AIS_RubberBand.hxx".}
proc setFillColor*(this: var AIS_RubberBand; theColor: QuantityColor) {.
    importcpp: "SetFillColor", header: "AIS_RubberBand.hxx".}
proc setLineWidth*(this: AIS_RubberBand; theWidth: StandardReal) {.noSideEffect,
    importcpp: "SetLineWidth", header: "AIS_RubberBand.hxx".}
proc lineWidth*(this: AIS_RubberBand): StandardReal {.noSideEffect,
    importcpp: "LineWidth", header: "AIS_RubberBand.hxx".}
proc setLineType*(this: var AIS_RubberBand; theType: AspectTypeOfLine) {.
    importcpp: "SetLineType", header: "AIS_RubberBand.hxx".}
proc lineType*(this: AIS_RubberBand): AspectTypeOfLine {.noSideEffect,
    importcpp: "LineType", header: "AIS_RubberBand.hxx".}
proc setFillTransparency*(this: AIS_RubberBand; theValue: StandardReal) {.
    noSideEffect, importcpp: "SetFillTransparency", header: "AIS_RubberBand.hxx".}
proc fillTransparency*(this: AIS_RubberBand): StandardReal {.noSideEffect,
    importcpp: "FillTransparency", header: "AIS_RubberBand.hxx".}
proc setFilling*(this: var AIS_RubberBand; theIsFilling: StandardBoolean) {.
    importcpp: "SetFilling", header: "AIS_RubberBand.hxx".}
proc setFilling*(this: var AIS_RubberBand; theColor: QuantityColor;
                theTransparency: StandardReal) {.importcpp: "SetFilling",
    header: "AIS_RubberBand.hxx".}
proc isFilling*(this: AIS_RubberBand): StandardBoolean {.noSideEffect,
    importcpp: "IsFilling", header: "AIS_RubberBand.hxx".}
proc isPolygonClosed*(this: AIS_RubberBand): StandardBoolean {.noSideEffect,
    importcpp: "IsPolygonClosed", header: "AIS_RubberBand.hxx".}
proc setPolygonClosed*(this: var AIS_RubberBand; theIsPolygonClosed: StandardBoolean) {.
    importcpp: "SetPolygonClosed", header: "AIS_RubberBand.hxx".}

