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

discard "forward decl of StepDimTol_Datum"
discard "forward decl of StepDimTol_DatumReference"
discard "forward decl of StepDimTol_DatumReference"
type
  HandleStepDimTolDatumReference* = Handle[StepDimTolDatumReference]

## ! Representation of STEP entity DatumReference

type
  StepDimTolDatumReference* {.importcpp: "StepDimTol_DatumReference",
                             header: "StepDimTol_DatumReference.hxx", bycopy.} = object of StandardTransient ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor


proc constructStepDimTolDatumReference*(): StepDimTolDatumReference {.constructor,
    importcpp: "StepDimTol_DatumReference(@)",
    header: "StepDimTol_DatumReference.hxx".}
proc init*(this: var StepDimTolDatumReference; thePrecedence: int;
          theReferencedDatum: Handle[StepDimTolDatum]) {.importcpp: "Init",
    header: "StepDimTol_DatumReference.hxx".}
proc precedence*(this: StepDimTolDatumReference): int {.noSideEffect,
    importcpp: "Precedence", header: "StepDimTol_DatumReference.hxx".}
proc setPrecedence*(this: var StepDimTolDatumReference; thePrecedence: int) {.
    importcpp: "SetPrecedence", header: "StepDimTol_DatumReference.hxx".}
proc referencedDatum*(this: StepDimTolDatumReference): Handle[StepDimTolDatum] {.
    noSideEffect, importcpp: "ReferencedDatum",
    header: "StepDimTol_DatumReference.hxx".}
proc setReferencedDatum*(this: var StepDimTolDatumReference;
                        theReferencedDatum: Handle[StepDimTolDatum]) {.
    importcpp: "SetReferencedDatum", header: "StepDimTol_DatumReference.hxx".}
type
  StepDimTolDatumReferencebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepDimTol_DatumReference::get_type_name(@)",
                            header: "StepDimTol_DatumReference.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepDimTol_DatumReference::get_type_descriptor(@)",
    header: "StepDimTol_DatumReference.hxx".}
proc dynamicType*(this: StepDimTolDatumReference): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepDimTol_DatumReference.hxx".}
