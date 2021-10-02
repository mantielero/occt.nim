##  Created on: 1997-04-01
##  Created by: Christian CAILLET
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of StepVisual_MarkerMember"
discard "forward decl of StepVisual_MarkerMember"
type
  HandleC1C1* = Handle[StepVisualMarkerMember]

## ! Defines MarkerType as unique member of MarkerSelect
## ! Works with an EnumTool

type
  StepVisualMarkerMember* {.importcpp: "StepVisual_MarkerMember",
                           header: "StepVisual_MarkerMember.hxx", bycopy.} = object of StepDataSelectInt


proc constructStepVisualMarkerMember*(): StepVisualMarkerMember {.constructor,
    importcpp: "StepVisual_MarkerMember(@)", header: "StepVisual_MarkerMember.hxx".}
proc hasName*(this: StepVisualMarkerMember): StandardBoolean {.noSideEffect,
    importcpp: "HasName", header: "StepVisual_MarkerMember.hxx".}
proc name*(this: StepVisualMarkerMember): StandardCString {.noSideEffect,
    importcpp: "Name", header: "StepVisual_MarkerMember.hxx".}
proc setName*(this: var StepVisualMarkerMember; name: StandardCString): StandardBoolean {.
    importcpp: "SetName", header: "StepVisual_MarkerMember.hxx".}
proc enumText*(this: StepVisualMarkerMember): StandardCString {.noSideEffect,
    importcpp: "EnumText", header: "StepVisual_MarkerMember.hxx".}
proc setEnumText*(this: var StepVisualMarkerMember; val: int; text: StandardCString) {.
    importcpp: "SetEnumText", header: "StepVisual_MarkerMember.hxx".}
proc setValue*(this: var StepVisualMarkerMember; val: StepVisualMarkerType) {.
    importcpp: "SetValue", header: "StepVisual_MarkerMember.hxx".}
proc value*(this: StepVisualMarkerMember): StepVisualMarkerType {.noSideEffect,
    importcpp: "Value", header: "StepVisual_MarkerMember.hxx".}
type
  StepVisualMarkerMemberbaseType* = StepDataSelectInt

proc getTypeName*(): cstring {.importcpp: "StepVisual_MarkerMember::get_type_name(@)",
                            header: "StepVisual_MarkerMember.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_MarkerMember::get_type_descriptor(@)",
    header: "StepVisual_MarkerMember.hxx".}
proc dynamicType*(this: StepVisualMarkerMember): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepVisual_MarkerMember.hxx".}