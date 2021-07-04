##  Created on: 2003-06-04
##  Created by: Galina KULIKOVA
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Transient

discard "forward decl of StepDimTol_Datum"
discard "forward decl of StepDimTol_DatumReference"
discard "forward decl of StepDimTol_DatumReference"
type
  Handle_StepDimTol_DatumReference* = handle[StepDimTol_DatumReference]

## ! Representation of STEP entity DatumReference

type
  StepDimTol_DatumReference* {.importcpp: "StepDimTol_DatumReference",
                              header: "StepDimTol_DatumReference.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## constructor


proc constructStepDimTol_DatumReference*(): StepDimTol_DatumReference {.
    constructor, importcpp: "StepDimTol_DatumReference(@)",
    header: "StepDimTol_DatumReference.hxx".}
proc Init*(this: var StepDimTol_DatumReference; thePrecedence: Standard_Integer;
          theReferencedDatum: handle[StepDimTol_Datum]) {.importcpp: "Init",
    header: "StepDimTol_DatumReference.hxx".}
proc Precedence*(this: StepDimTol_DatumReference): Standard_Integer {.noSideEffect,
    importcpp: "Precedence", header: "StepDimTol_DatumReference.hxx".}
proc SetPrecedence*(this: var StepDimTol_DatumReference;
                   thePrecedence: Standard_Integer) {.importcpp: "SetPrecedence",
    header: "StepDimTol_DatumReference.hxx".}
proc ReferencedDatum*(this: StepDimTol_DatumReference): handle[StepDimTol_Datum] {.
    noSideEffect, importcpp: "ReferencedDatum",
    header: "StepDimTol_DatumReference.hxx".}
proc SetReferencedDatum*(this: var StepDimTol_DatumReference;
                        theReferencedDatum: handle[StepDimTol_Datum]) {.
    importcpp: "SetReferencedDatum", header: "StepDimTol_DatumReference.hxx".}
type
  StepDimTol_DatumReferencebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepDimTol_DatumReference::get_type_name(@)",
                              header: "StepDimTol_DatumReference.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_DatumReference::get_type_descriptor(@)",
    header: "StepDimTol_DatumReference.hxx".}
proc DynamicType*(this: StepDimTol_DatumReference): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepDimTol_DatumReference.hxx".}