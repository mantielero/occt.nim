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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepVisual_Colour"
discard "forward decl of StepVisual_MarkerSelect"
discard "forward decl of StepBasic_SizeSelect"
discard "forward decl of StepVisual_PointStyle"
discard "forward decl of StepVisual_PointStyle"
type
  HandleC1C1* = Handle[StepVisualPointStyle]
  StepVisualPointStyle* {.importcpp: "StepVisual_PointStyle",
                         header: "StepVisual_PointStyle.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## PointStyle


proc constructStepVisualPointStyle*(): StepVisualPointStyle {.constructor,
    importcpp: "StepVisual_PointStyle(@)", header: "StepVisual_PointStyle.hxx".}
proc init*(this: var StepVisualPointStyle; aName: Handle[TCollectionHAsciiString];
          aMarker: StepVisualMarkerSelect; aMarkerSize: StepBasicSizeSelect;
          aMarkerColour: Handle[StepVisualColour]) {.importcpp: "Init",
    header: "StepVisual_PointStyle.hxx".}
proc setName*(this: var StepVisualPointStyle; aName: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetName", header: "StepVisual_PointStyle.hxx".}
proc name*(this: StepVisualPointStyle): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepVisual_PointStyle.hxx".}
proc setMarker*(this: var StepVisualPointStyle; aMarker: StepVisualMarkerSelect) {.
    importcpp: "SetMarker", header: "StepVisual_PointStyle.hxx".}
proc marker*(this: StepVisualPointStyle): StepVisualMarkerSelect {.noSideEffect,
    importcpp: "Marker", header: "StepVisual_PointStyle.hxx".}
proc setMarkerSize*(this: var StepVisualPointStyle; aMarkerSize: StepBasicSizeSelect) {.
    importcpp: "SetMarkerSize", header: "StepVisual_PointStyle.hxx".}
proc markerSize*(this: StepVisualPointStyle): StepBasicSizeSelect {.noSideEffect,
    importcpp: "MarkerSize", header: "StepVisual_PointStyle.hxx".}
proc setMarkerColour*(this: var StepVisualPointStyle;
                     aMarkerColour: Handle[StepVisualColour]) {.
    importcpp: "SetMarkerColour", header: "StepVisual_PointStyle.hxx".}
proc markerColour*(this: StepVisualPointStyle): Handle[StepVisualColour] {.
    noSideEffect, importcpp: "MarkerColour", header: "StepVisual_PointStyle.hxx".}
type
  StepVisualPointStylebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_PointStyle::get_type_name(@)",
                            header: "StepVisual_PointStyle.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_PointStyle::get_type_descriptor(@)",
    header: "StepVisual_PointStyle.hxx".}
proc dynamicType*(this: StepVisualPointStyle): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepVisual_PointStyle.hxx".}