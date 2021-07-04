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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepVisual_AnnotationText"
discard "forward decl of StepVisual_CompositeText"
discard "forward decl of StepVisual_TextLiteral"
type
  StepVisual_TextOrCharacter* {.importcpp: "StepVisual_TextOrCharacter",
                               header: "StepVisual_TextOrCharacter.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                                           ## !
                                                                                                           ## Returns
                                                                                                           ## a
                                                                                                           ## TextOrCharacter
                                                                                                           ## SelectType


proc constructStepVisual_TextOrCharacter*(): StepVisual_TextOrCharacter {.
    constructor, importcpp: "StepVisual_TextOrCharacter(@)",
    header: "StepVisual_TextOrCharacter.hxx".}
proc CaseNum*(this: StepVisual_TextOrCharacter; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepVisual_TextOrCharacter.hxx".}
proc AnnotationText*(this: StepVisual_TextOrCharacter): handle[
    StepVisual_AnnotationText] {.noSideEffect, importcpp: "AnnotationText",
                                header: "StepVisual_TextOrCharacter.hxx".}
proc CompositeText*(this: StepVisual_TextOrCharacter): handle[
    StepVisual_CompositeText] {.noSideEffect, importcpp: "CompositeText",
                               header: "StepVisual_TextOrCharacter.hxx".}
proc TextLiteral*(this: StepVisual_TextOrCharacter): handle[StepVisual_TextLiteral] {.
    noSideEffect, importcpp: "TextLiteral",
    header: "StepVisual_TextOrCharacter.hxx".}