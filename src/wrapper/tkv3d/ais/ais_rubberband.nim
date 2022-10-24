import ais_types

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





proc newAIS_RubberBand*(): AIS_RubberBand {.cdecl, constructor,
    importcpp: "AIS_RubberBand(@)", header: "AIS_RubberBand.hxx".}
proc newAIS_RubberBand*(theLineColor: QuantityColor; theType: AspectTypeOfLine;
                       theLineWidth: cfloat = 1.0; theIsPolygonClosed: bool = true): AIS_RubberBand {.
    cdecl, constructor, importcpp: "AIS_RubberBand(@)", header: "AIS_RubberBand.hxx".}
proc newAIS_RubberBand*(theLineColor: QuantityColor; theType: AspectTypeOfLine;
                       theFillColor: QuantityColor; theTransparency: cfloat = 1.0;
                       theLineWidth: cfloat = 1.0; theIsPolygonClosed: bool = true): AIS_RubberBand {.
    cdecl, constructor, importcpp: "AIS_RubberBand(@)", header: "AIS_RubberBand.hxx".}
proc destroyAIS_RubberBand*(this: var AIS_RubberBand) {.cdecl,
    importcpp: "#.~AIS_RubberBand()", header: "AIS_RubberBand.hxx".}
proc setRectangle*(this: var AIS_RubberBand; theMinX: cint; theMinY: cint;
                  theMaxX: cint; theMaxY: cint) {.cdecl, importcpp: "SetRectangle",
    header: "AIS_RubberBand.hxx".}
proc addPoint*(this: var AIS_RubberBand; thePoint: Graphic3dVec2i) {.cdecl,
    importcpp: "AddPoint", header: "AIS_RubberBand.hxx".}
proc removeLastPoint*(this: var AIS_RubberBand) {.cdecl,
    importcpp: "RemoveLastPoint", header: "AIS_RubberBand.hxx".}
proc points*(this: AIS_RubberBand): NCollectionSequence[Graphic3dVec2i] {.
    noSideEffect, cdecl, importcpp: "Points", header: "AIS_RubberBand.hxx".}
proc clearPoints*(this: var AIS_RubberBand) {.cdecl, importcpp: "ClearPoints",
    header: "AIS_RubberBand.hxx".}
proc lineColor*(this: AIS_RubberBand): QuantityColor {.noSideEffect, cdecl,
    importcpp: "LineColor", header: "AIS_RubberBand.hxx".}
proc setLineColor*(this: var AIS_RubberBand; theColor: QuantityColor) {.cdecl,
    importcpp: "SetLineColor", header: "AIS_RubberBand.hxx".}
proc fillColor*(this: AIS_RubberBand): QuantityColor {.noSideEffect, cdecl,
    importcpp: "FillColor", header: "AIS_RubberBand.hxx".}
proc setFillColor*(this: var AIS_RubberBand; theColor: QuantityColor) {.cdecl,
    importcpp: "SetFillColor", header: "AIS_RubberBand.hxx".}
proc setLineWidth*(this: AIS_RubberBand; theWidth: cfloat) {.noSideEffect, cdecl,
    importcpp: "SetLineWidth", header: "AIS_RubberBand.hxx".}
proc lineWidth*(this: AIS_RubberBand): cfloat {.noSideEffect, cdecl,
    importcpp: "LineWidth", header: "AIS_RubberBand.hxx".}
proc setLineType*(this: var AIS_RubberBand; theType: AspectTypeOfLine) {.cdecl,
    importcpp: "SetLineType", header: "AIS_RubberBand.hxx".}
proc lineType*(this: AIS_RubberBand): AspectTypeOfLine {.noSideEffect, cdecl,
    importcpp: "LineType", header: "AIS_RubberBand.hxx".}
proc setFillTransparency*(this: AIS_RubberBand; theValue: cfloat) {.noSideEffect,
    cdecl, importcpp: "SetFillTransparency", header: "AIS_RubberBand.hxx".}
proc fillTransparency*(this: AIS_RubberBand): cfloat {.noSideEffect, cdecl,
    importcpp: "FillTransparency", header: "AIS_RubberBand.hxx".}
proc setFilling*(this: var AIS_RubberBand; theIsFilling: bool) {.cdecl,
    importcpp: "SetFilling", header: "AIS_RubberBand.hxx".}
proc setFilling*(this: var AIS_RubberBand; theColor: QuantityColor;
                theTransparency: cfloat) {.cdecl, importcpp: "SetFilling",
    header: "AIS_RubberBand.hxx".}
proc isFilling*(this: AIS_RubberBand): bool {.noSideEffect, cdecl,
    importcpp: "IsFilling", header: "AIS_RubberBand.hxx".}
proc isPolygonClosed*(this: AIS_RubberBand): bool {.noSideEffect, cdecl,
    importcpp: "IsPolygonClosed", header: "AIS_RubberBand.hxx".}
proc setPolygonClosed*(this: var AIS_RubberBand; theIsPolygonClosed: bool) {.cdecl,
    importcpp: "SetPolygonClosed", header: "AIS_RubberBand.hxx".}
