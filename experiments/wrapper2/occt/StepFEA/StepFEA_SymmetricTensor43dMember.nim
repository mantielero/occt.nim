##  Created on: 2003-01-14
##  Created by: data exchange team
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

discard "forward decl of StepFEA_SymmetricTensor43dMember"
discard "forward decl of StepFEA_SymmetricTensor43dMember"
type
  HandleStepFEA_SymmetricTensor43dMember* = Handle[
      StepFEA_SymmetricTensor43dMember]

## ! Representation of member for  STEP SELECT type SymmetricTensor43d

type
  StepFEA_SymmetricTensor43dMember* {.importcpp: "StepFEA_SymmetricTensor43dMember", header: "StepFEA_SymmetricTensor43dMember.hxx",
                                     bycopy.} = object of StepDataSelectArrReal ## ! Empty
                                                                           ## constructor


proc constructStepFEA_SymmetricTensor43dMember*(): StepFEA_SymmetricTensor43dMember {.
    constructor, importcpp: "StepFEA_SymmetricTensor43dMember(@)",
    header: "StepFEA_SymmetricTensor43dMember.hxx".}
proc hasName*(this: StepFEA_SymmetricTensor43dMember): bool {.noSideEffect,
    importcpp: "HasName", header: "StepFEA_SymmetricTensor43dMember.hxx".}
proc name*(this: StepFEA_SymmetricTensor43dMember): StandardCString {.noSideEffect,
    importcpp: "Name", header: "StepFEA_SymmetricTensor43dMember.hxx".}
proc setName*(this: var StepFEA_SymmetricTensor43dMember; name: StandardCString): bool {.
    importcpp: "SetName", header: "StepFEA_SymmetricTensor43dMember.hxx".}
proc matches*(this: StepFEA_SymmetricTensor43dMember; name: StandardCString): bool {.
    noSideEffect, importcpp: "Matches",
    header: "StepFEA_SymmetricTensor43dMember.hxx".}
type
  StepFEA_SymmetricTensor43dMemberbaseType* = StepDataSelectArrReal

proc getTypeName*(): cstring {.importcpp: "StepFEA_SymmetricTensor43dMember::get_type_name(@)",
                            header: "StepFEA_SymmetricTensor43dMember.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepFEA_SymmetricTensor43dMember::get_type_descriptor(@)",
    header: "StepFEA_SymmetricTensor43dMember.hxx".}
proc dynamicType*(this: StepFEA_SymmetricTensor43dMember): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_SymmetricTensor43dMember.hxx".}
