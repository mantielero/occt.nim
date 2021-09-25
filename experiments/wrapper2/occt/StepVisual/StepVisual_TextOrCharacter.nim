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

discard "forward decl of Standard_Transient"
discard "forward decl of StepVisual_AnnotationText"
discard "forward decl of StepVisual_CompositeText"
discard "forward decl of StepVisual_TextLiteral"
type
  StepVisualTextOrCharacter* {.importcpp: "StepVisual_TextOrCharacter",
                              header: "StepVisual_TextOrCharacter.hxx", bycopy.} = object of StepDataSelectType ##
                                                                                                         ## !
                                                                                                         ## Returns
                                                                                                         ## a
                                                                                                         ## TextOrCharacter
                                                                                                         ## SelectType


proc constructStepVisualTextOrCharacter*(): StepVisualTextOrCharacter {.
    constructor, importcpp: "StepVisual_TextOrCharacter(@)",
    header: "StepVisual_TextOrCharacter.hxx".}
proc caseNum*(this: StepVisualTextOrCharacter; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepVisual_TextOrCharacter.hxx".}
proc annotationText*(this: StepVisualTextOrCharacter): Handle[
    StepVisualAnnotationText] {.noSideEffect, importcpp: "AnnotationText",
                               header: "StepVisual_TextOrCharacter.hxx".}
proc compositeText*(this: StepVisualTextOrCharacter): Handle[
    StepVisualCompositeText] {.noSideEffect, importcpp: "CompositeText",
                              header: "StepVisual_TextOrCharacter.hxx".}
proc textLiteral*(this: StepVisualTextOrCharacter): Handle[StepVisualTextLiteral] {.
    noSideEffect, importcpp: "TextLiteral",
    header: "StepVisual_TextOrCharacter.hxx".}
