##  Created on: 2002-12-10
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

discard "forward decl of StepElement_CurveElementFreedomMember"
discard "forward decl of StepElement_CurveElementFreedomMember"
type
  HandleStepElementCurveElementFreedomMember* = Handle[
      StepElementCurveElementFreedomMember]

## ! Representation of member for  STEP SELECT type CurveElementFreedom

type
  StepElementCurveElementFreedomMember* {.
      importcpp: "StepElement_CurveElementFreedomMember",
      header: "StepElement_CurveElementFreedomMember.hxx", bycopy.} = object of StepDataSelectNamed ##
                                                                                             ## !
                                                                                             ## Empty
                                                                                             ## constructor


proc constructStepElementCurveElementFreedomMember*(): StepElementCurveElementFreedomMember {.
    constructor, importcpp: "StepElement_CurveElementFreedomMember(@)",
    header: "StepElement_CurveElementFreedomMember.hxx".}
proc hasName*(this: StepElementCurveElementFreedomMember): bool {.noSideEffect,
    importcpp: "HasName", header: "StepElement_CurveElementFreedomMember.hxx".}
proc name*(this: StepElementCurveElementFreedomMember): StandardCString {.
    noSideEffect, importcpp: "Name",
    header: "StepElement_CurveElementFreedomMember.hxx".}
proc setName*(this: var StepElementCurveElementFreedomMember; name: StandardCString): bool {.
    importcpp: "SetName", header: "StepElement_CurveElementFreedomMember.hxx".}
proc matches*(this: StepElementCurveElementFreedomMember; name: StandardCString): bool {.
    noSideEffect, importcpp: "Matches",
    header: "StepElement_CurveElementFreedomMember.hxx".}
type
  StepElementCurveElementFreedomMemberbaseType* = StepDataSelectNamed

proc getTypeName*(): cstring {.importcpp: "StepElement_CurveElementFreedomMember::get_type_name(@)",
                            header: "StepElement_CurveElementFreedomMember.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepElement_CurveElementFreedomMember::get_type_descriptor(@)",
    header: "StepElement_CurveElementFreedomMember.hxx".}
proc dynamicType*(this: StepElementCurveElementFreedomMember): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepElement_CurveElementFreedomMember.hxx".}
