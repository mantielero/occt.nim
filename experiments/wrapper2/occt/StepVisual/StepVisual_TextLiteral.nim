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
  ../StepGeom/StepGeom_Axis2Placement, StepVisual_TextPath, StepVisual_FontSelect,
  ../StepGeom/StepGeom_GeometricRepresentationItem

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Axis2Placement"
discard "forward decl of StepVisual_FontSelect"
discard "forward decl of StepVisual_TextLiteral"
discard "forward decl of StepVisual_TextLiteral"
type
  Handle_StepVisual_TextLiteral* = handle[StepVisual_TextLiteral]
  StepVisual_TextLiteral* {.importcpp: "StepVisual_TextLiteral",
                           header: "StepVisual_TextLiteral.hxx", bycopy.} = object of StepGeom_GeometricRepresentationItem ##
                                                                                                                    ## !
                                                                                                                    ## Returns
                                                                                                                    ## a
                                                                                                                    ## TextLiteral


proc constructStepVisual_TextLiteral*(): StepVisual_TextLiteral {.constructor,
    importcpp: "StepVisual_TextLiteral(@)", header: "StepVisual_TextLiteral.hxx".}
proc Init*(this: var StepVisual_TextLiteral;
          aName: handle[TCollection_HAsciiString];
          aLiteral: handle[TCollection_HAsciiString];
          aPlacement: StepGeom_Axis2Placement;
          aAlignment: handle[TCollection_HAsciiString];
          aPath: StepVisual_TextPath; aFont: StepVisual_FontSelect) {.
    importcpp: "Init", header: "StepVisual_TextLiteral.hxx".}
proc SetLiteral*(this: var StepVisual_TextLiteral;
                aLiteral: handle[TCollection_HAsciiString]) {.
    importcpp: "SetLiteral", header: "StepVisual_TextLiteral.hxx".}
proc Literal*(this: StepVisual_TextLiteral): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Literal", header: "StepVisual_TextLiteral.hxx".}
proc SetPlacement*(this: var StepVisual_TextLiteral;
                  aPlacement: StepGeom_Axis2Placement) {.
    importcpp: "SetPlacement", header: "StepVisual_TextLiteral.hxx".}
proc Placement*(this: StepVisual_TextLiteral): StepGeom_Axis2Placement {.
    noSideEffect, importcpp: "Placement", header: "StepVisual_TextLiteral.hxx".}
proc SetAlignment*(this: var StepVisual_TextLiteral;
                  aAlignment: handle[TCollection_HAsciiString]) {.
    importcpp: "SetAlignment", header: "StepVisual_TextLiteral.hxx".}
proc Alignment*(this: StepVisual_TextLiteral): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Alignment", header: "StepVisual_TextLiteral.hxx".}
proc SetPath*(this: var StepVisual_TextLiteral; aPath: StepVisual_TextPath) {.
    importcpp: "SetPath", header: "StepVisual_TextLiteral.hxx".}
proc Path*(this: StepVisual_TextLiteral): StepVisual_TextPath {.noSideEffect,
    importcpp: "Path", header: "StepVisual_TextLiteral.hxx".}
proc SetFont*(this: var StepVisual_TextLiteral; aFont: StepVisual_FontSelect) {.
    importcpp: "SetFont", header: "StepVisual_TextLiteral.hxx".}
proc Font*(this: StepVisual_TextLiteral): StepVisual_FontSelect {.noSideEffect,
    importcpp: "Font", header: "StepVisual_TextLiteral.hxx".}
type
  StepVisual_TextLiteralbase_type* = StepGeom_GeometricRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepVisual_TextLiteral::get_type_name(@)",
                              header: "StepVisual_TextLiteral.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_TextLiteral::get_type_descriptor(@)",
    header: "StepVisual_TextLiteral.hxx".}
proc DynamicType*(this: StepVisual_TextLiteral): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepVisual_TextLiteral.hxx".}