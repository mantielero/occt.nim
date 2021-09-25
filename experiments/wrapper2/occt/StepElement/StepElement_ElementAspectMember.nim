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

discard "forward decl of StepElement_ElementAspectMember"
discard "forward decl of StepElement_ElementAspectMember"
type
  HandleStepElementElementAspectMember* = Handle[StepElementElementAspectMember]

## ! Representation of member for  STEP SELECT type ElementAspect

type
  StepElementElementAspectMember* {.importcpp: "StepElement_ElementAspectMember", header: "StepElement_ElementAspectMember.hxx",
                                   bycopy.} = object of StepDataSelectNamed ## ! Empty
                                                                       ## constructor


proc constructStepElementElementAspectMember*(): StepElementElementAspectMember {.
    constructor, importcpp: "StepElement_ElementAspectMember(@)",
    header: "StepElement_ElementAspectMember.hxx".}
proc hasName*(this: StepElementElementAspectMember): bool {.noSideEffect,
    importcpp: "HasName", header: "StepElement_ElementAspectMember.hxx".}
proc name*(this: StepElementElementAspectMember): StandardCString {.noSideEffect,
    importcpp: "Name", header: "StepElement_ElementAspectMember.hxx".}
proc setName*(this: var StepElementElementAspectMember; name: StandardCString): bool {.
    importcpp: "SetName", header: "StepElement_ElementAspectMember.hxx".}
proc matches*(this: StepElementElementAspectMember; name: StandardCString): bool {.
    noSideEffect, importcpp: "Matches",
    header: "StepElement_ElementAspectMember.hxx".}
type
  StepElementElementAspectMemberbaseType* = StepDataSelectNamed

proc getTypeName*(): cstring {.importcpp: "StepElement_ElementAspectMember::get_type_name(@)",
                            header: "StepElement_ElementAspectMember.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepElement_ElementAspectMember::get_type_descriptor(@)",
    header: "StepElement_ElementAspectMember.hxx".}
proc dynamicType*(this: StepElementElementAspectMember): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepElement_ElementAspectMember.hxx".}
