##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepElement_SurfaceSectionField"
discard "forward decl of StepElement_SurfaceElementProperty"
discard "forward decl of StepElement_SurfaceElementProperty"
type
  Handle_StepElement_SurfaceElementProperty* = handle[
      StepElement_SurfaceElementProperty]

## ! Representation of STEP entity SurfaceElementProperty

type
  StepElement_SurfaceElementProperty* {.importcpp: "StepElement_SurfaceElementProperty", header: "StepElement_SurfaceElementProperty.hxx",
                                       bycopy.} = object of Standard_Transient ## ! Empty
                                                                          ## constructor


proc constructStepElement_SurfaceElementProperty*(): StepElement_SurfaceElementProperty {.
    constructor, importcpp: "StepElement_SurfaceElementProperty(@)",
    header: "StepElement_SurfaceElementProperty.hxx".}
proc Init*(this: var StepElement_SurfaceElementProperty;
          aPropertyId: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aSection: handle[StepElement_SurfaceSectionField]) {.importcpp: "Init",
    header: "StepElement_SurfaceElementProperty.hxx".}
proc PropertyId*(this: StepElement_SurfaceElementProperty): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "PropertyId",
                               header: "StepElement_SurfaceElementProperty.hxx".}
proc SetPropertyId*(this: var StepElement_SurfaceElementProperty;
                   PropertyId: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPropertyId", header: "StepElement_SurfaceElementProperty.hxx".}
proc Description*(this: StepElement_SurfaceElementProperty): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description",
                               header: "StepElement_SurfaceElementProperty.hxx".}
proc SetDescription*(this: var StepElement_SurfaceElementProperty;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepElement_SurfaceElementProperty.hxx".}
proc Section*(this: StepElement_SurfaceElementProperty): handle[
    StepElement_SurfaceSectionField] {.noSideEffect, importcpp: "Section", header: "StepElement_SurfaceElementProperty.hxx".}
proc SetSection*(this: var StepElement_SurfaceElementProperty;
                Section: handle[StepElement_SurfaceSectionField]) {.
    importcpp: "SetSection", header: "StepElement_SurfaceElementProperty.hxx".}
type
  StepElement_SurfaceElementPropertybase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepElement_SurfaceElementProperty::get_type_name(@)",
                              header: "StepElement_SurfaceElementProperty.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepElement_SurfaceElementProperty::get_type_descriptor(@)",
    header: "StepElement_SurfaceElementProperty.hxx".}
proc DynamicType*(this: StepElement_SurfaceElementProperty): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepElement_SurfaceElementProperty.hxx".}