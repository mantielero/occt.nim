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

import
  AIS_InteractiveObject, ../Graphic3d/Graphic3d_ArrayOfPolylines,
  ../Graphic3d/Graphic3d_ArrayOfTriangles, ../Graphic3d/Graphic3d_Vec2,
  ../NCollection/NCollection_Sequence

discard "forward decl of AIS_RubberBand"
type
  Handle_AIS_RubberBand* = handle[AIS_RubberBand]

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

  AIS_RubberBandbase_type* = AIS_InteractiveObject

proc get_type_name*(): cstring {.importcpp: "AIS_RubberBand::get_type_name(@)",
                              header: "AIS_RubberBand.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_RubberBand::get_type_descriptor(@)",
    header: "AIS_RubberBand.hxx".}
proc DynamicType*(this: AIS_RubberBand): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_RubberBand.hxx".}
proc constructAIS_RubberBand*(): AIS_RubberBand {.constructor,
    importcpp: "AIS_RubberBand(@)", header: "AIS_RubberBand.hxx".}
proc constructAIS_RubberBand*(theLineColor: Quantity_Color;
                             theType: Aspect_TypeOfLine;
                             theLineWidth: Standard_Real = 1.0; theIsPolygonClosed: Standard_Boolean = Standard_True): AIS_RubberBand {.
    constructor, importcpp: "AIS_RubberBand(@)", header: "AIS_RubberBand.hxx".}
proc constructAIS_RubberBand*(theLineColor: Quantity_Color;
                             theType: Aspect_TypeOfLine;
                             theFillColor: Quantity_Color;
                             theTransparency: Standard_Real = 1.0;
                             theLineWidth: Standard_Real = 1.0; theIsPolygonClosed: Standard_Boolean = Standard_True): AIS_RubberBand {.
    constructor, importcpp: "AIS_RubberBand(@)", header: "AIS_RubberBand.hxx".}
proc destroyAIS_RubberBand*(this: var AIS_RubberBand) {.
    importcpp: "#.~AIS_RubberBand()", header: "AIS_RubberBand.hxx".}
proc SetRectangle*(this: var AIS_RubberBand; theMinX: Standard_Integer;
                  theMinY: Standard_Integer; theMaxX: Standard_Integer;
                  theMaxY: Standard_Integer) {.importcpp: "SetRectangle",
    header: "AIS_RubberBand.hxx".}
proc AddPoint*(this: var AIS_RubberBand; thePoint: Graphic3d_Vec2i) {.
    importcpp: "AddPoint", header: "AIS_RubberBand.hxx".}
proc RemoveLastPoint*(this: var AIS_RubberBand) {.importcpp: "RemoveLastPoint",
    header: "AIS_RubberBand.hxx".}
proc Points*(this: AIS_RubberBand): NCollection_Sequence[Graphic3d_Vec2i] {.
    noSideEffect, importcpp: "Points", header: "AIS_RubberBand.hxx".}
proc ClearPoints*(this: var AIS_RubberBand) {.importcpp: "ClearPoints",
    header: "AIS_RubberBand.hxx".}
proc LineColor*(this: AIS_RubberBand): Quantity_Color {.noSideEffect,
    importcpp: "LineColor", header: "AIS_RubberBand.hxx".}
proc SetLineColor*(this: var AIS_RubberBand; theColor: Quantity_Color) {.
    importcpp: "SetLineColor", header: "AIS_RubberBand.hxx".}
proc FillColor*(this: AIS_RubberBand): Quantity_Color {.noSideEffect,
    importcpp: "FillColor", header: "AIS_RubberBand.hxx".}
proc SetFillColor*(this: var AIS_RubberBand; theColor: Quantity_Color) {.
    importcpp: "SetFillColor", header: "AIS_RubberBand.hxx".}
proc SetLineWidth*(this: AIS_RubberBand; theWidth: Standard_Real) {.noSideEffect,
    importcpp: "SetLineWidth", header: "AIS_RubberBand.hxx".}
proc LineWidth*(this: AIS_RubberBand): Standard_Real {.noSideEffect,
    importcpp: "LineWidth", header: "AIS_RubberBand.hxx".}
proc SetLineType*(this: var AIS_RubberBand; theType: Aspect_TypeOfLine) {.
    importcpp: "SetLineType", header: "AIS_RubberBand.hxx".}
proc LineType*(this: AIS_RubberBand): Aspect_TypeOfLine {.noSideEffect,
    importcpp: "LineType", header: "AIS_RubberBand.hxx".}
proc SetFillTransparency*(this: AIS_RubberBand; theValue: Standard_Real) {.
    noSideEffect, importcpp: "SetFillTransparency", header: "AIS_RubberBand.hxx".}
proc FillTransparency*(this: AIS_RubberBand): Standard_Real {.noSideEffect,
    importcpp: "FillTransparency", header: "AIS_RubberBand.hxx".}
proc SetFilling*(this: var AIS_RubberBand; theIsFilling: Standard_Boolean) {.
    importcpp: "SetFilling", header: "AIS_RubberBand.hxx".}
proc SetFilling*(this: var AIS_RubberBand; theColor: Quantity_Color;
                theTransparency: Standard_Real) {.importcpp: "SetFilling",
    header: "AIS_RubberBand.hxx".}
proc IsFilling*(this: AIS_RubberBand): Standard_Boolean {.noSideEffect,
    importcpp: "IsFilling", header: "AIS_RubberBand.hxx".}
proc IsPolygonClosed*(this: AIS_RubberBand): Standard_Boolean {.noSideEffect,
    importcpp: "IsPolygonClosed", header: "AIS_RubberBand.hxx".}
proc SetPolygonClosed*(this: var AIS_RubberBand;
                      theIsPolygonClosed: Standard_Boolean) {.
    importcpp: "SetPolygonClosed", header: "AIS_RubberBand.hxx".}