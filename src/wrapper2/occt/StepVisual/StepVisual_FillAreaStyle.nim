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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepVisual_HArray1OfFillStyleSelect, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepVisual_FillStyleSelect"
discard "forward decl of StepVisual_FillAreaStyle"
discard "forward decl of StepVisual_FillAreaStyle"
type
  Handle_StepVisual_FillAreaStyle* = handle[StepVisual_FillAreaStyle]
  StepVisual_FillAreaStyle* {.importcpp: "StepVisual_FillAreaStyle",
                             header: "StepVisual_FillAreaStyle.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                      ## !
                                                                                                      ## Returns
                                                                                                      ## a
                                                                                                      ## FillAreaStyle


proc constructStepVisual_FillAreaStyle*(): StepVisual_FillAreaStyle {.constructor,
    importcpp: "StepVisual_FillAreaStyle(@)",
    header: "StepVisual_FillAreaStyle.hxx".}
proc Init*(this: var StepVisual_FillAreaStyle;
          aName: handle[TCollection_HAsciiString];
          aFillStyles: handle[StepVisual_HArray1OfFillStyleSelect]) {.
    importcpp: "Init", header: "StepVisual_FillAreaStyle.hxx".}
proc SetName*(this: var StepVisual_FillAreaStyle;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepVisual_FillAreaStyle.hxx".}
proc Name*(this: StepVisual_FillAreaStyle): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepVisual_FillAreaStyle.hxx".}
proc SetFillStyles*(this: var StepVisual_FillAreaStyle;
                   aFillStyles: handle[StepVisual_HArray1OfFillStyleSelect]) {.
    importcpp: "SetFillStyles", header: "StepVisual_FillAreaStyle.hxx".}
proc FillStyles*(this: StepVisual_FillAreaStyle): handle[
    StepVisual_HArray1OfFillStyleSelect] {.noSideEffect, importcpp: "FillStyles",
    header: "StepVisual_FillAreaStyle.hxx".}
proc FillStylesValue*(this: StepVisual_FillAreaStyle; num: Standard_Integer): StepVisual_FillStyleSelect {.
    noSideEffect, importcpp: "FillStylesValue",
    header: "StepVisual_FillAreaStyle.hxx".}
proc NbFillStyles*(this: StepVisual_FillAreaStyle): Standard_Integer {.noSideEffect,
    importcpp: "NbFillStyles", header: "StepVisual_FillAreaStyle.hxx".}
type
  StepVisual_FillAreaStylebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepVisual_FillAreaStyle::get_type_name(@)",
                              header: "StepVisual_FillAreaStyle.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_FillAreaStyle::get_type_descriptor(@)",
    header: "StepVisual_FillAreaStyle.hxx".}
proc DynamicType*(this: StepVisual_FillAreaStyle): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepVisual_FillAreaStyle.hxx".}