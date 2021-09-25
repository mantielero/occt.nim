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

discard "forward decl of StepFEA_DegreeOfFreedomMember"
discard "forward decl of StepFEA_DegreeOfFreedomMember"
type
  HandleStepFEA_DegreeOfFreedomMember* = Handle[StepFEA_DegreeOfFreedomMember]

## ! Representation of member for  STEP SELECT type CurveElementFreedom

type
  StepFEA_DegreeOfFreedomMember* {.importcpp: "StepFEA_DegreeOfFreedomMember",
                                  header: "StepFEA_DegreeOfFreedomMember.hxx",
                                  bycopy.} = object of StepDataSelectNamed ## ! Empty
                                                                      ## constructor


proc constructStepFEA_DegreeOfFreedomMember*(): StepFEA_DegreeOfFreedomMember {.
    constructor, importcpp: "StepFEA_DegreeOfFreedomMember(@)",
    header: "StepFEA_DegreeOfFreedomMember.hxx".}
proc hasName*(this: StepFEA_DegreeOfFreedomMember): bool {.noSideEffect,
    importcpp: "HasName", header: "StepFEA_DegreeOfFreedomMember.hxx".}
proc name*(this: StepFEA_DegreeOfFreedomMember): StandardCString {.noSideEffect,
    importcpp: "Name", header: "StepFEA_DegreeOfFreedomMember.hxx".}
proc setName*(this: var StepFEA_DegreeOfFreedomMember; name: StandardCString): bool {.
    importcpp: "SetName", header: "StepFEA_DegreeOfFreedomMember.hxx".}
proc matches*(this: StepFEA_DegreeOfFreedomMember; name: StandardCString): bool {.
    noSideEffect, importcpp: "Matches", header: "StepFEA_DegreeOfFreedomMember.hxx".}
type
  StepFEA_DegreeOfFreedomMemberbaseType* = StepDataSelectNamed

proc getTypeName*(): cstring {.importcpp: "StepFEA_DegreeOfFreedomMember::get_type_name(@)",
                            header: "StepFEA_DegreeOfFreedomMember.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepFEA_DegreeOfFreedomMember::get_type_descriptor(@)",
    header: "StepFEA_DegreeOfFreedomMember.hxx".}
proc dynamicType*(this: StepFEA_DegreeOfFreedomMember): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_DegreeOfFreedomMember.hxx".}
