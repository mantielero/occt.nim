##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
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
  ../Standard/Standard, ../Standard/Standard_Type, StepVisual_MarkerSelect,
  ../StepBasic/StepBasic_SizeSelect, ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepVisual_Colour"
discard "forward decl of StepVisual_MarkerSelect"
discard "forward decl of StepBasic_SizeSelect"
discard "forward decl of StepVisual_PointStyle"
discard "forward decl of StepVisual_PointStyle"
type
  Handle_StepVisual_PointStyle* = handle[StepVisual_PointStyle]
  StepVisual_PointStyle* {.importcpp: "StepVisual_PointStyle",
                          header: "StepVisual_PointStyle.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## a
                                                                                                ## PointStyle


proc constructStepVisual_PointStyle*(): StepVisual_PointStyle {.constructor,
    importcpp: "StepVisual_PointStyle(@)", header: "StepVisual_PointStyle.hxx".}
proc Init*(this: var StepVisual_PointStyle; aName: handle[TCollection_HAsciiString];
          aMarker: StepVisual_MarkerSelect; aMarkerSize: StepBasic_SizeSelect;
          aMarkerColour: handle[StepVisual_Colour]) {.importcpp: "Init",
    header: "StepVisual_PointStyle.hxx".}
proc SetName*(this: var StepVisual_PointStyle;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepVisual_PointStyle.hxx".}
proc Name*(this: StepVisual_PointStyle): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepVisual_PointStyle.hxx".}
proc SetMarker*(this: var StepVisual_PointStyle; aMarker: StepVisual_MarkerSelect) {.
    importcpp: "SetMarker", header: "StepVisual_PointStyle.hxx".}
proc Marker*(this: StepVisual_PointStyle): StepVisual_MarkerSelect {.noSideEffect,
    importcpp: "Marker", header: "StepVisual_PointStyle.hxx".}
proc SetMarkerSize*(this: var StepVisual_PointStyle;
                   aMarkerSize: StepBasic_SizeSelect) {.
    importcpp: "SetMarkerSize", header: "StepVisual_PointStyle.hxx".}
proc MarkerSize*(this: StepVisual_PointStyle): StepBasic_SizeSelect {.noSideEffect,
    importcpp: "MarkerSize", header: "StepVisual_PointStyle.hxx".}
proc SetMarkerColour*(this: var StepVisual_PointStyle;
                     aMarkerColour: handle[StepVisual_Colour]) {.
    importcpp: "SetMarkerColour", header: "StepVisual_PointStyle.hxx".}
proc MarkerColour*(this: StepVisual_PointStyle): handle[StepVisual_Colour] {.
    noSideEffect, importcpp: "MarkerColour", header: "StepVisual_PointStyle.hxx".}
type
  StepVisual_PointStylebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepVisual_PointStyle::get_type_name(@)",
                              header: "StepVisual_PointStyle.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_PointStyle::get_type_descriptor(@)",
    header: "StepVisual_PointStyle.hxx".}
proc DynamicType*(this: StepVisual_PointStyle): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepVisual_PointStyle.hxx".}