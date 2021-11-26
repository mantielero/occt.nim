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

discard "forward decl of StepDimTol_DatumReferenceCompartment"
discard "forward decl of StepDimTol_DatumReferenceCompartment"
type
  HandleC1C1* = Handle[StepDimTolDatumReferenceCompartment]

## ! Representation of STEP entity DatumReferenceCompartment

type
  StepDimTolDatumReferenceCompartment* {.importcpp: "StepDimTol_DatumReferenceCompartment", header: "StepDimTol_DatumReferenceCompartment.hxx",
                                        bycopy.} = object of StepDimTolGeneralDatumReference ##
                                                                                        ## !
                                                                                        ## Empty
                                                                                        ## constructor


proc constructStepDimTolDatumReferenceCompartment*(): StepDimTolDatumReferenceCompartment {.
    constructor, importcpp: "StepDimTol_DatumReferenceCompartment(@)",
    header: "StepDimTol_DatumReferenceCompartment.hxx".}
type
  StepDimTolDatumReferenceCompartmentbaseType* = StepDimTolGeneralDatumReference

proc getTypeName*(): cstring {.importcpp: "StepDimTol_DatumReferenceCompartment::get_type_name(@)",
                            header: "StepDimTol_DatumReferenceCompartment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepDimTol_DatumReferenceCompartment::get_type_descriptor(@)",
    header: "StepDimTol_DatumReferenceCompartment.hxx".}
proc dynamicType*(this: StepDimTolDatumReferenceCompartment): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_DatumReferenceCompartment.hxx".}