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

discard "forward decl of StepGeom_Surface"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_HalfSpaceSolid"
discard "forward decl of StepShape_HalfSpaceSolid"
type
  HandleC1C1* = Handle[StepShapeHalfSpaceSolid]
  StepShapeHalfSpaceSolid* {.importcpp: "StepShape_HalfSpaceSolid",
                            header: "StepShape_HalfSpaceSolid.hxx", bycopy.} = object of StepGeomGeometricRepresentationItem ##
                                                                                                                      ## !
                                                                                                                      ## Returns
                                                                                                                      ## a
                                                                                                                      ## HalfSpaceSolid


proc constructStepShapeHalfSpaceSolid*(): StepShapeHalfSpaceSolid {.constructor,
    importcpp: "StepShape_HalfSpaceSolid(@)",
    header: "StepShape_HalfSpaceSolid.hxx".}
proc init*(this: var StepShapeHalfSpaceSolid;
          aName: Handle[TCollectionHAsciiString];
          aBaseSurface: Handle[StepGeomSurface]; aAgreementFlag: bool) {.
    importcpp: "Init", header: "StepShape_HalfSpaceSolid.hxx".}
proc setBaseSurface*(this: var StepShapeHalfSpaceSolid;
                    aBaseSurface: Handle[StepGeomSurface]) {.
    importcpp: "SetBaseSurface", header: "StepShape_HalfSpaceSolid.hxx".}
proc baseSurface*(this: StepShapeHalfSpaceSolid): Handle[StepGeomSurface] {.
    noSideEffect, importcpp: "BaseSurface", header: "StepShape_HalfSpaceSolid.hxx".}
proc setAgreementFlag*(this: var StepShapeHalfSpaceSolid; aAgreementFlag: bool) {.
    importcpp: "SetAgreementFlag", header: "StepShape_HalfSpaceSolid.hxx".}
proc agreementFlag*(this: StepShapeHalfSpaceSolid): bool {.noSideEffect,
    importcpp: "AgreementFlag", header: "StepShape_HalfSpaceSolid.hxx".}
type
  StepShapeHalfSpaceSolidbaseType* = StepGeomGeometricRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepShape_HalfSpaceSolid::get_type_name(@)",
                            header: "StepShape_HalfSpaceSolid.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_HalfSpaceSolid::get_type_descriptor(@)",
    header: "StepShape_HalfSpaceSolid.hxx".}
proc dynamicType*(this: StepShapeHalfSpaceSolid): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_HalfSpaceSolid.hxx".}

























