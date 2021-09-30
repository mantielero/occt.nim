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
discard "forward decl of StepVisual_FillStyleSelect"
discard "forward decl of StepVisual_FillAreaStyle"
discard "forward decl of StepVisual_FillAreaStyle"
type
  HandleC1C1* = Handle[StepVisualFillAreaStyle]
  StepVisualFillAreaStyle* {.importcpp: "StepVisual_FillAreaStyle",
                            header: "StepVisual_FillAreaStyle.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Returns
                                                                                                    ## a
                                                                                                    ## FillAreaStyle


proc constructStepVisualFillAreaStyle*(): StepVisualFillAreaStyle {.constructor,
    importcpp: "StepVisual_FillAreaStyle(@)",
    header: "StepVisual_FillAreaStyle.hxx".}
proc init*(this: var StepVisualFillAreaStyle;
          aName: Handle[TCollectionHAsciiString];
          aFillStyles: Handle[StepVisualHArray1OfFillStyleSelect]) {.
    importcpp: "Init", header: "StepVisual_FillAreaStyle.hxx".}
proc setName*(this: var StepVisualFillAreaStyle;
             aName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepVisual_FillAreaStyle.hxx".}
proc name*(this: StepVisualFillAreaStyle): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepVisual_FillAreaStyle.hxx".}
proc setFillStyles*(this: var StepVisualFillAreaStyle;
                   aFillStyles: Handle[StepVisualHArray1OfFillStyleSelect]) {.
    importcpp: "SetFillStyles", header: "StepVisual_FillAreaStyle.hxx".}
proc fillStyles*(this: StepVisualFillAreaStyle): Handle[
    StepVisualHArray1OfFillStyleSelect] {.noSideEffect, importcpp: "FillStyles",
    header: "StepVisual_FillAreaStyle.hxx".}
proc fillStylesValue*(this: StepVisualFillAreaStyle; num: cint): StepVisualFillStyleSelect {.
    noSideEffect, importcpp: "FillStylesValue",
    header: "StepVisual_FillAreaStyle.hxx".}
proc nbFillStyles*(this: StepVisualFillAreaStyle): cint {.noSideEffect,
    importcpp: "NbFillStyles", header: "StepVisual_FillAreaStyle.hxx".}
type
  StepVisualFillAreaStylebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_FillAreaStyle::get_type_name(@)",
                            header: "StepVisual_FillAreaStyle.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_FillAreaStyle::get_type_descriptor(@)",
    header: "StepVisual_FillAreaStyle.hxx".}
proc dynamicType*(this: StepVisualFillAreaStyle): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepVisual_FillAreaStyle.hxx".}

























