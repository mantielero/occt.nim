##  Created on: 2016-03-09
##  Created by: Irina KRYLOVA
##  Copyright (c) 2016 OPEN CASCADE SAS
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

discard "forward decl of StepVisual_NullStyleMember"
discard "forward decl of StepVisual_NullStyleMember"
type
  HandleC1C1* = Handle[StepVisualNullStyleMember]

## ! Defines NullStyle as unique member of PresentationStyleSelect
## ! Works with an EnumTool

type
  StepVisualNullStyleMember* {.importcpp: "StepVisual_NullStyleMember",
                              header: "StepVisual_NullStyleMember.hxx", bycopy.} = object of StepDataSelectInt


proc constructStepVisualNullStyleMember*(): StepVisualNullStyleMember {.
    constructor, importcpp: "StepVisual_NullStyleMember(@)",
    header: "StepVisual_NullStyleMember.hxx".}
proc hasName*(this: StepVisualNullStyleMember): bool {.noSideEffect,
    importcpp: "HasName", header: "StepVisual_NullStyleMember.hxx".}
proc name*(this: StepVisualNullStyleMember): StandardCString {.noSideEffect,
    importcpp: "Name", header: "StepVisual_NullStyleMember.hxx".}
proc setName*(this: var StepVisualNullStyleMember; a2: StandardCString): bool {.
    importcpp: "SetName", header: "StepVisual_NullStyleMember.hxx".}
  ## theName
proc kind*(this: StepVisualNullStyleMember): cint {.noSideEffect, importcpp: "Kind",
    header: "StepVisual_NullStyleMember.hxx".}
proc enumText*(this: StepVisualNullStyleMember): StandardCString {.noSideEffect,
    importcpp: "EnumText", header: "StepVisual_NullStyleMember.hxx".}
proc setEnumText*(this: var StepVisualNullStyleMember; theValue: cint;
                 theText: StandardCString) {.importcpp: "SetEnumText",
    header: "StepVisual_NullStyleMember.hxx".}
proc setValue*(this: var StepVisualNullStyleMember; theValue: StepVisualNullStyle) {.
    importcpp: "SetValue", header: "StepVisual_NullStyleMember.hxx".}
proc value*(this: StepVisualNullStyleMember): StepVisualNullStyle {.noSideEffect,
    importcpp: "Value", header: "StepVisual_NullStyleMember.hxx".}
type
  StepVisualNullStyleMemberbaseType* = StepDataSelectInt

proc getTypeName*(): cstring {.importcpp: "StepVisual_NullStyleMember::get_type_name(@)",
                            header: "StepVisual_NullStyleMember.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_NullStyleMember::get_type_descriptor(@)",
    header: "StepVisual_NullStyleMember.hxx".}
proc dynamicType*(this: StepVisualNullStyleMember): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_NullStyleMember.hxx".}

























