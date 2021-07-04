##  Created on: 2011-03-06
##  Created by: Sergey ZERCHANINOV
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
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
  ../Font/Font_FontAspect, ../NCollection/NCollection_Array1,
  ../Quantity/Quantity_Color, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../TCollection/TCollection_AsciiString,
  ../TCollection/TCollection_ExtendedString

discard "forward decl of Graphic3d_CView"
type
  Graphic3d_AxisAspect* {.importcpp: "Graphic3d_AxisAspect",
                         header: "Graphic3d_GraduatedTrihedron.hxx", bycopy.} = object
    ## !< Number of splits along axes
    ## !< Length of tickmarks
    ## !< Color of axis and values
    ## !< Offset for drawing values
    ## !< Offset for drawing name of axis


proc constructGraphic3d_AxisAspect*(theName: TCollection_ExtendedString = "";
    theNameColor: Quantity_Color = Quantity_NOC_BLACK; theColor: Quantity_Color = Quantity_NOC_BLACK;
                                   theValuesOffset: Standard_Integer = 10;
                                   theNameOffset: Standard_Integer = 30;
                                   theTickmarksNumber: Standard_Integer = 5;
                                   theTickmarksLength: Standard_Integer = 10;
    theToDrawName: Standard_Boolean = Standard_True; theToDrawValues: Standard_Boolean = Standard_True;
    theToDrawTickmarks: Standard_Boolean = Standard_True): Graphic3d_AxisAspect {.
    constructor, importcpp: "Graphic3d_AxisAspect(@)",
    header: "Graphic3d_GraduatedTrihedron.hxx".}
proc SetName*(this: var Graphic3d_AxisAspect; theName: TCollection_ExtendedString) {.
    importcpp: "SetName", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc Name*(this: Graphic3d_AxisAspect): TCollection_ExtendedString {.noSideEffect,
    importcpp: "Name", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc ToDrawName*(this: Graphic3d_AxisAspect): Standard_Boolean {.noSideEffect,
    importcpp: "ToDrawName", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc SetDrawName*(this: var Graphic3d_AxisAspect; theToDraw: Standard_Boolean) {.
    importcpp: "SetDrawName", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc ToDrawTickmarks*(this: Graphic3d_AxisAspect): Standard_Boolean {.noSideEffect,
    importcpp: "ToDrawTickmarks", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc SetDrawTickmarks*(this: var Graphic3d_AxisAspect; theToDraw: Standard_Boolean) {.
    importcpp: "SetDrawTickmarks", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc ToDrawValues*(this: Graphic3d_AxisAspect): Standard_Boolean {.noSideEffect,
    importcpp: "ToDrawValues", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc SetDrawValues*(this: var Graphic3d_AxisAspect; theToDraw: Standard_Boolean) {.
    importcpp: "SetDrawValues", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc NameColor*(this: Graphic3d_AxisAspect): Quantity_Color {.noSideEffect,
    importcpp: "NameColor", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc SetNameColor*(this: var Graphic3d_AxisAspect; theColor: Quantity_Color) {.
    importcpp: "SetNameColor", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc Color*(this: Graphic3d_AxisAspect): Quantity_Color {.noSideEffect,
    importcpp: "Color", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc SetColor*(this: var Graphic3d_AxisAspect; theColor: Quantity_Color) {.
    importcpp: "SetColor", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc TickmarksNumber*(this: Graphic3d_AxisAspect): Standard_Integer {.noSideEffect,
    importcpp: "TickmarksNumber", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc SetTickmarksNumber*(this: var Graphic3d_AxisAspect; theValue: Standard_Integer) {.
    importcpp: "SetTickmarksNumber", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc TickmarksLength*(this: Graphic3d_AxisAspect): Standard_Integer {.noSideEffect,
    importcpp: "TickmarksLength", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc SetTickmarksLength*(this: var Graphic3d_AxisAspect; theValue: Standard_Integer) {.
    importcpp: "SetTickmarksLength", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc ValuesOffset*(this: Graphic3d_AxisAspect): Standard_Integer {.noSideEffect,
    importcpp: "ValuesOffset", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc SetValuesOffset*(this: var Graphic3d_AxisAspect; theValue: Standard_Integer) {.
    importcpp: "SetValuesOffset", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc NameOffset*(this: Graphic3d_AxisAspect): Standard_Integer {.noSideEffect,
    importcpp: "NameOffset", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc SetNameOffset*(this: var Graphic3d_AxisAspect; theValue: Standard_Integer) {.
    importcpp: "SetNameOffset", header: "Graphic3d_GraduatedTrihedron.hxx".}
## ! Defines the class of a graduated trihedron.
## ! It contains main style parameters for implementation of graduated trihedron
## ! @sa OpenGl_GraduatedTrihedron

type
  Graphic3d_GraduatedTrihedron* {.importcpp: "Graphic3d_GraduatedTrihedron",
                                 header: "Graphic3d_GraduatedTrihedron.hxx",
                                 bycopy.} = object ## ! Default constructor
                                                ## ! Constructs the default graduated trihedron with grid, X, Y, Z axes, and tickmarks
    CubicAxesCallback* {.importc: "CubicAxesCallback".}: Graphic3d_GraduatedTrihedronMinMaxValuesCallback ## !< Callback function to define boundary box of displayed objects
    PtrView* {.importc: "PtrView".}: ptr Graphic3d_CView
    ## !< Font name of names of axes: Courier, Arial, ...
    ## !< Style of names of axes: OSD_FA_Regular, OSD_FA_Bold,..
    ## !< Size of names of axes: 8, 10,..
    ## !< Font name of values: Courier, Arial, ...
    ## !< Style of values: OSD_FA_Regular, OSD_FA_Bold, ...
    ## !< Size of values: 8, 10, 12, 14, ...
    ## !< X, Y and Z axes parameters

  Graphic3d_GraduatedTrihedronMinMaxValuesCallback* = proc (a1: ptr Graphic3d_CView)

proc constructGraphic3d_GraduatedTrihedron*(
    theNamesFont: TCollection_AsciiString = "Arial";
    theNamesStyle: Font_FontAspect = Font_FA_Bold;
    theNamesSize: Standard_Integer = 12;
    theValuesFont: TCollection_AsciiString = "Arial";
    theValuesStyle: Font_FontAspect = Font_FA_Regular;
    theValuesSize: Standard_Integer = 12;
    theArrowsLength: Standard_ShortReal = 30.0f;
    theGridColor: Quantity_Color = Quantity_NOC_WHITE;
    theToDrawGrid: Standard_Boolean = Standard_True;
    theToDrawAxes: Standard_Boolean = Standard_True): Graphic3d_GraduatedTrihedron {.
    constructor, importcpp: "Graphic3d_GraduatedTrihedron(@)",
    header: "Graphic3d_GraduatedTrihedron.hxx".}
proc ChangeXAxisAspect*(this: var Graphic3d_GraduatedTrihedron): var Graphic3d_AxisAspect {.
    importcpp: "ChangeXAxisAspect", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc ChangeYAxisAspect*(this: var Graphic3d_GraduatedTrihedron): var Graphic3d_AxisAspect {.
    importcpp: "ChangeYAxisAspect", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc ChangeZAxisAspect*(this: var Graphic3d_GraduatedTrihedron): var Graphic3d_AxisAspect {.
    importcpp: "ChangeZAxisAspect", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc ChangeAxisAspect*(this: var Graphic3d_GraduatedTrihedron;
                      theIndex: Standard_Integer): var Graphic3d_AxisAspect {.
    importcpp: "ChangeAxisAspect", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc XAxisAspect*(this: Graphic3d_GraduatedTrihedron): Graphic3d_AxisAspect {.
    noSideEffect, importcpp: "XAxisAspect",
    header: "Graphic3d_GraduatedTrihedron.hxx".}
proc YAxisAspect*(this: Graphic3d_GraduatedTrihedron): Graphic3d_AxisAspect {.
    noSideEffect, importcpp: "YAxisAspect",
    header: "Graphic3d_GraduatedTrihedron.hxx".}
proc ZAxisAspect*(this: Graphic3d_GraduatedTrihedron): Graphic3d_AxisAspect {.
    noSideEffect, importcpp: "ZAxisAspect",
    header: "Graphic3d_GraduatedTrihedron.hxx".}
proc AxisAspect*(this: Graphic3d_GraduatedTrihedron; theIndex: Standard_Integer): Graphic3d_AxisAspect {.
    noSideEffect, importcpp: "AxisAspect",
    header: "Graphic3d_GraduatedTrihedron.hxx".}
proc ArrowsLength*(this: Graphic3d_GraduatedTrihedron): Standard_ShortReal {.
    noSideEffect, importcpp: "ArrowsLength",
    header: "Graphic3d_GraduatedTrihedron.hxx".}
proc SetArrowsLength*(this: var Graphic3d_GraduatedTrihedron;
                     theValue: Standard_ShortReal) {.importcpp: "SetArrowsLength",
    header: "Graphic3d_GraduatedTrihedron.hxx".}
proc GridColor*(this: Graphic3d_GraduatedTrihedron): Quantity_Color {.noSideEffect,
    importcpp: "GridColor", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc SetGridColor*(this: var Graphic3d_GraduatedTrihedron; theColor: Quantity_Color) {.
    importcpp: "SetGridColor", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc ToDrawGrid*(this: Graphic3d_GraduatedTrihedron): Standard_Boolean {.
    noSideEffect, importcpp: "ToDrawGrid",
    header: "Graphic3d_GraduatedTrihedron.hxx".}
proc SetDrawGrid*(this: var Graphic3d_GraduatedTrihedron;
                 theToDraw: Standard_Boolean) {.importcpp: "SetDrawGrid",
    header: "Graphic3d_GraduatedTrihedron.hxx".}
proc ToDrawAxes*(this: Graphic3d_GraduatedTrihedron): Standard_Boolean {.
    noSideEffect, importcpp: "ToDrawAxes",
    header: "Graphic3d_GraduatedTrihedron.hxx".}
proc SetDrawAxes*(this: var Graphic3d_GraduatedTrihedron;
                 theToDraw: Standard_Boolean) {.importcpp: "SetDrawAxes",
    header: "Graphic3d_GraduatedTrihedron.hxx".}
proc NamesFont*(this: Graphic3d_GraduatedTrihedron): TCollection_AsciiString {.
    noSideEffect, importcpp: "NamesFont",
    header: "Graphic3d_GraduatedTrihedron.hxx".}
proc SetNamesFont*(this: var Graphic3d_GraduatedTrihedron;
                  theFont: TCollection_AsciiString) {.importcpp: "SetNamesFont",
    header: "Graphic3d_GraduatedTrihedron.hxx".}
proc NamesFontAspect*(this: Graphic3d_GraduatedTrihedron): Font_FontAspect {.
    noSideEffect, importcpp: "NamesFontAspect",
    header: "Graphic3d_GraduatedTrihedron.hxx".}
proc SetNamesFontAspect*(this: var Graphic3d_GraduatedTrihedron;
                        theAspect: Font_FontAspect) {.
    importcpp: "SetNamesFontAspect", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc NamesSize*(this: Graphic3d_GraduatedTrihedron): Standard_Integer {.
    noSideEffect, importcpp: "NamesSize",
    header: "Graphic3d_GraduatedTrihedron.hxx".}
proc SetNamesSize*(this: var Graphic3d_GraduatedTrihedron;
                  theValue: Standard_Integer) {.importcpp: "SetNamesSize",
    header: "Graphic3d_GraduatedTrihedron.hxx".}
proc ValuesFont*(this: Graphic3d_GraduatedTrihedron): TCollection_AsciiString {.
    noSideEffect, importcpp: "ValuesFont",
    header: "Graphic3d_GraduatedTrihedron.hxx".}
proc SetValuesFont*(this: var Graphic3d_GraduatedTrihedron;
                   theFont: TCollection_AsciiString) {.importcpp: "SetValuesFont",
    header: "Graphic3d_GraduatedTrihedron.hxx".}
proc ValuesFontAspect*(this: Graphic3d_GraduatedTrihedron): Font_FontAspect {.
    noSideEffect, importcpp: "ValuesFontAspect",
    header: "Graphic3d_GraduatedTrihedron.hxx".}
proc SetValuesFontAspect*(this: var Graphic3d_GraduatedTrihedron;
                         theAspect: Font_FontAspect) {.
    importcpp: "SetValuesFontAspect", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc ValuesSize*(this: Graphic3d_GraduatedTrihedron): Standard_Integer {.
    noSideEffect, importcpp: "ValuesSize",
    header: "Graphic3d_GraduatedTrihedron.hxx".}
proc SetValuesSize*(this: var Graphic3d_GraduatedTrihedron;
                   theValue: Standard_Integer) {.importcpp: "SetValuesSize",
    header: "Graphic3d_GraduatedTrihedron.hxx".}