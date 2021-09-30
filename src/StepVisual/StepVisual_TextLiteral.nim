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
discard "forward decl of StepGeom_Axis2Placement"
discard "forward decl of StepVisual_FontSelect"
discard "forward decl of StepVisual_TextLiteral"
discard "forward decl of StepVisual_TextLiteral"
type
  HandleC1C1* = Handle[StepVisualTextLiteral]
  StepVisualTextLiteral* {.importcpp: "StepVisual_TextLiteral",
                          header: "StepVisual_TextLiteral.hxx", bycopy.} = object of StepGeomGeometricRepresentationItem ##
                                                                                                                  ## !
                                                                                                                  ## Returns
                                                                                                                  ## a
                                                                                                                  ## TextLiteral


proc constructStepVisualTextLiteral*(): StepVisualTextLiteral {.constructor,
    importcpp: "StepVisual_TextLiteral(@)", header: "StepVisual_TextLiteral.hxx".}
proc init*(this: var StepVisualTextLiteral; aName: Handle[TCollectionHAsciiString];
          aLiteral: Handle[TCollectionHAsciiString];
          aPlacement: StepGeomAxis2Placement;
          aAlignment: Handle[TCollectionHAsciiString]; aPath: StepVisualTextPath;
          aFont: StepVisualFontSelect) {.importcpp: "Init",
                                       header: "StepVisual_TextLiteral.hxx".}
proc setLiteral*(this: var StepVisualTextLiteral;
                aLiteral: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetLiteral", header: "StepVisual_TextLiteral.hxx".}
proc literal*(this: StepVisualTextLiteral): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Literal", header: "StepVisual_TextLiteral.hxx".}
proc setPlacement*(this: var StepVisualTextLiteral;
                  aPlacement: StepGeomAxis2Placement) {.importcpp: "SetPlacement",
    header: "StepVisual_TextLiteral.hxx".}
proc placement*(this: StepVisualTextLiteral): StepGeomAxis2Placement {.noSideEffect,
    importcpp: "Placement", header: "StepVisual_TextLiteral.hxx".}
proc setAlignment*(this: var StepVisualTextLiteral;
                  aAlignment: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetAlignment", header: "StepVisual_TextLiteral.hxx".}
proc alignment*(this: StepVisualTextLiteral): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Alignment", header: "StepVisual_TextLiteral.hxx".}
proc setPath*(this: var StepVisualTextLiteral; aPath: StepVisualTextPath) {.
    importcpp: "SetPath", header: "StepVisual_TextLiteral.hxx".}
proc path*(this: StepVisualTextLiteral): StepVisualTextPath {.noSideEffect,
    importcpp: "Path", header: "StepVisual_TextLiteral.hxx".}
proc setFont*(this: var StepVisualTextLiteral; aFont: StepVisualFontSelect) {.
    importcpp: "SetFont", header: "StepVisual_TextLiteral.hxx".}
proc font*(this: StepVisualTextLiteral): StepVisualFontSelect {.noSideEffect,
    importcpp: "Font", header: "StepVisual_TextLiteral.hxx".}
type
  StepVisualTextLiteralbaseType* = StepGeomGeometricRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepVisual_TextLiteral::get_type_name(@)",
                            header: "StepVisual_TextLiteral.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_TextLiteral::get_type_descriptor(@)",
    header: "StepVisual_TextLiteral.hxx".}
proc dynamicType*(this: StepVisualTextLiteral): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepVisual_TextLiteral.hxx".}

























