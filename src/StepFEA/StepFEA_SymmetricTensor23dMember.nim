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

discard "forward decl of StepFEA_SymmetricTensor23dMember"
discard "forward decl of StepFEA_SymmetricTensor23dMember"
type
  HandleC1C1* = Handle[StepFEA_SymmetricTensor23dMember]

## ! Representation of member for  STEP SELECT type SymmetricTensor23d

type
  StepFEA_SymmetricTensor23dMember* {.importcpp: "StepFEA_SymmetricTensor23dMember", header: "StepFEA_SymmetricTensor23dMember.hxx",
                                     bycopy.} = object of StepDataSelectArrReal ## ! Empty
                                                                           ## constructor


proc constructStepFEA_SymmetricTensor23dMember*(): StepFEA_SymmetricTensor23dMember {.
    constructor, importcpp: "StepFEA_SymmetricTensor23dMember(@)",
    header: "StepFEA_SymmetricTensor23dMember.hxx".}
proc hasName*(this: StepFEA_SymmetricTensor23dMember): bool {.noSideEffect,
    importcpp: "HasName", header: "StepFEA_SymmetricTensor23dMember.hxx".}
proc name*(this: StepFEA_SymmetricTensor23dMember): StandardCString {.noSideEffect,
    importcpp: "Name", header: "StepFEA_SymmetricTensor23dMember.hxx".}
proc setName*(this: var StepFEA_SymmetricTensor23dMember; name: StandardCString): bool {.
    importcpp: "SetName", header: "StepFEA_SymmetricTensor23dMember.hxx".}
proc matches*(this: StepFEA_SymmetricTensor23dMember; name: StandardCString): bool {.
    noSideEffect, importcpp: "Matches",
    header: "StepFEA_SymmetricTensor23dMember.hxx".}
type
  StepFEA_SymmetricTensor23dMemberbaseType* = StepDataSelectArrReal

proc getTypeName*(): cstring {.importcpp: "StepFEA_SymmetricTensor23dMember::get_type_name(@)",
                            header: "StepFEA_SymmetricTensor23dMember.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepFEA_SymmetricTensor23dMember::get_type_descriptor(@)",
    header: "StepFEA_SymmetricTensor23dMember.hxx".}
proc dynamicType*(this: StepFEA_SymmetricTensor23dMember): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_SymmetricTensor23dMember.hxx".}

























