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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_ProductDefinitionShape"
discard "forward decl of StepDimTol_DatumTarget"
discard "forward decl of StepDimTol_DatumTarget"
type
  HandleStepDimTolDatumTarget* = Handle[StepDimTolDatumTarget]

## ! Representation of STEP entity DatumTarget

type
  StepDimTolDatumTarget* {.importcpp: "StepDimTol_DatumTarget",
                          header: "StepDimTol_DatumTarget.hxx", bycopy.} = object of StepReprShapeAspect ##
                                                                                                  ## !
                                                                                                  ## Empty
                                                                                                  ## constructor


proc constructStepDimTolDatumTarget*(): StepDimTolDatumTarget {.constructor,
    importcpp: "StepDimTol_DatumTarget(@)", header: "StepDimTol_DatumTarget.hxx".}
proc init*(this: var StepDimTolDatumTarget;
          theShapeAspectName: Handle[TCollectionHAsciiString];
          theShapeAspectDescription: Handle[TCollectionHAsciiString];
          theShapeAspectOfShape: Handle[StepReprProductDefinitionShape];
          theShapeAspectProductDefinitional: StepDataLogical;
          theTargetId: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepDimTol_DatumTarget.hxx".}
proc targetId*(this: StepDimTolDatumTarget): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "TargetId", header: "StepDimTol_DatumTarget.hxx".}
proc setTargetId*(this: var StepDimTolDatumTarget;
                 theTargetId: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetTargetId", header: "StepDimTol_DatumTarget.hxx".}
type
  StepDimTolDatumTargetbaseType* = StepReprShapeAspect

proc getTypeName*(): cstring {.importcpp: "StepDimTol_DatumTarget::get_type_name(@)",
                            header: "StepDimTol_DatumTarget.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepDimTol_DatumTarget::get_type_descriptor(@)",
    header: "StepDimTol_DatumTarget.hxx".}
proc dynamicType*(this: StepDimTolDatumTarget): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepDimTol_DatumTarget.hxx".}
