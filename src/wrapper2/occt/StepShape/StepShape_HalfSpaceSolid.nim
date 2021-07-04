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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../StepGeom/StepGeom_GeometricRepresentationItem

discard "forward decl of StepGeom_Surface"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_HalfSpaceSolid"
discard "forward decl of StepShape_HalfSpaceSolid"
type
  Handle_StepShape_HalfSpaceSolid* = handle[StepShape_HalfSpaceSolid]
  StepShape_HalfSpaceSolid* {.importcpp: "StepShape_HalfSpaceSolid",
                             header: "StepShape_HalfSpaceSolid.hxx", bycopy.} = object of StepGeom_GeometricRepresentationItem ##
                                                                                                                        ## !
                                                                                                                        ## Returns
                                                                                                                        ## a
                                                                                                                        ## HalfSpaceSolid


proc constructStepShape_HalfSpaceSolid*(): StepShape_HalfSpaceSolid {.constructor,
    importcpp: "StepShape_HalfSpaceSolid(@)",
    header: "StepShape_HalfSpaceSolid.hxx".}
proc Init*(this: var StepShape_HalfSpaceSolid;
          aName: handle[TCollection_HAsciiString];
          aBaseSurface: handle[StepGeom_Surface]; aAgreementFlag: Standard_Boolean) {.
    importcpp: "Init", header: "StepShape_HalfSpaceSolid.hxx".}
proc SetBaseSurface*(this: var StepShape_HalfSpaceSolid;
                    aBaseSurface: handle[StepGeom_Surface]) {.
    importcpp: "SetBaseSurface", header: "StepShape_HalfSpaceSolid.hxx".}
proc BaseSurface*(this: StepShape_HalfSpaceSolid): handle[StepGeom_Surface] {.
    noSideEffect, importcpp: "BaseSurface", header: "StepShape_HalfSpaceSolid.hxx".}
proc SetAgreementFlag*(this: var StepShape_HalfSpaceSolid;
                      aAgreementFlag: Standard_Boolean) {.
    importcpp: "SetAgreementFlag", header: "StepShape_HalfSpaceSolid.hxx".}
proc AgreementFlag*(this: StepShape_HalfSpaceSolid): Standard_Boolean {.
    noSideEffect, importcpp: "AgreementFlag",
    header: "StepShape_HalfSpaceSolid.hxx".}
type
  StepShape_HalfSpaceSolidbase_type* = StepGeom_GeometricRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepShape_HalfSpaceSolid::get_type_name(@)",
                              header: "StepShape_HalfSpaceSolid.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_HalfSpaceSolid::get_type_descriptor(@)",
    header: "StepShape_HalfSpaceSolid.hxx".}
proc DynamicType*(this: StepShape_HalfSpaceSolid): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_HalfSpaceSolid.hxx".}