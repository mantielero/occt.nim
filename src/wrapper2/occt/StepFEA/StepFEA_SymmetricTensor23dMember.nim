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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../StepData/StepData_SelectArrReal, ../Standard/Standard_Boolean,
  ../Standard/Standard_CString

discard "forward decl of StepFEA_SymmetricTensor23dMember"
discard "forward decl of StepFEA_SymmetricTensor23dMember"
type
  Handle_StepFEA_SymmetricTensor23dMember* = handle[
      StepFEA_SymmetricTensor23dMember]

## ! Representation of member for  STEP SELECT type SymmetricTensor23d

type
  StepFEA_SymmetricTensor23dMember* {.importcpp: "StepFEA_SymmetricTensor23dMember", header: "StepFEA_SymmetricTensor23dMember.hxx",
                                     bycopy.} = object of StepData_SelectArrReal ## !
                                                                            ## Empty
                                                                            ## constructor


proc constructStepFEA_SymmetricTensor23dMember*(): StepFEA_SymmetricTensor23dMember {.
    constructor, importcpp: "StepFEA_SymmetricTensor23dMember(@)",
    header: "StepFEA_SymmetricTensor23dMember.hxx".}
proc HasName*(this: StepFEA_SymmetricTensor23dMember): Standard_Boolean {.
    noSideEffect, importcpp: "HasName",
    header: "StepFEA_SymmetricTensor23dMember.hxx".}
proc Name*(this: StepFEA_SymmetricTensor23dMember): Standard_CString {.noSideEffect,
    importcpp: "Name", header: "StepFEA_SymmetricTensor23dMember.hxx".}
proc SetName*(this: var StepFEA_SymmetricTensor23dMember; name: Standard_CString): Standard_Boolean {.
    importcpp: "SetName", header: "StepFEA_SymmetricTensor23dMember.hxx".}
proc Matches*(this: StepFEA_SymmetricTensor23dMember; name: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "Matches",
    header: "StepFEA_SymmetricTensor23dMember.hxx".}
type
  StepFEA_SymmetricTensor23dMemberbase_type* = StepData_SelectArrReal

proc get_type_name*(): cstring {.importcpp: "StepFEA_SymmetricTensor23dMember::get_type_name(@)",
                              header: "StepFEA_SymmetricTensor23dMember.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepFEA_SymmetricTensor23dMember::get_type_descriptor(@)",
    header: "StepFEA_SymmetricTensor23dMember.hxx".}
proc DynamicType*(this: StepFEA_SymmetricTensor23dMember): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_SymmetricTensor23dMember.hxx".}