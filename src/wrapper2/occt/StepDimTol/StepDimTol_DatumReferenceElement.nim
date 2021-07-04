##  Created on: 2015-07-16
##  Created by: Irina KRYLOVA
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
  ../Standard/Standard, ../Standard/Standard_DefineHandle,
  ../Standard/Standard_Macro, StepDimTol_GeneralDatumReference

discard "forward decl of StepDimTol_DatumReferenceElement"
discard "forward decl of StepDimTol_DatumReferenceElement"
type
  Handle_StepDimTol_DatumReferenceElement* = handle[
      StepDimTol_DatumReferenceElement]

## ! Representation of STEP entity DatumReferenceElement

type
  StepDimTol_DatumReferenceElement* {.importcpp: "StepDimTol_DatumReferenceElement", header: "StepDimTol_DatumReferenceElement.hxx",
                                     bycopy.} = object of StepDimTol_GeneralDatumReference ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor


proc constructStepDimTol_DatumReferenceElement*(): StepDimTol_DatumReferenceElement {.
    constructor, importcpp: "StepDimTol_DatumReferenceElement(@)",
    header: "StepDimTol_DatumReferenceElement.hxx".}
type
  StepDimTol_DatumReferenceElementbase_type* = StepDimTol_GeneralDatumReference

proc get_type_name*(): cstring {.importcpp: "StepDimTol_DatumReferenceElement::get_type_name(@)",
                              header: "StepDimTol_DatumReferenceElement.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_DatumReferenceElement::get_type_descriptor(@)",
    header: "StepDimTol_DatumReferenceElement.hxx".}
proc DynamicType*(this: StepDimTol_DatumReferenceElement): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_DatumReferenceElement.hxx".}