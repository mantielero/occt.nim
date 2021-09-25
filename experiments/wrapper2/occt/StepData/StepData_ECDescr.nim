##  Created on: 1997-05-09
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

discard "forward decl of StepData_ESDescr"
discard "forward decl of StepData_Described"
discard "forward decl of StepData_ECDescr"
discard "forward decl of StepData_ECDescr"
type
  HandleStepDataECDescr* = Handle[StepDataECDescr]

## ! Describes a Complex Entity (Plex) as a list of Simple ones

type
  StepDataECDescr* {.importcpp: "StepData_ECDescr", header: "StepData_ECDescr.hxx",
                    bycopy.} = object of StepDataEDescr ## ! Creates an ECDescr, empty


proc constructStepDataECDescr*(): StepDataECDescr {.constructor,
    importcpp: "StepData_ECDescr(@)", header: "StepData_ECDescr.hxx".}
proc add*(this: var StepDataECDescr; member: Handle[StepDataESDescr]) {.
    importcpp: "Add", header: "StepData_ECDescr.hxx".}
proc nbMembers*(this: StepDataECDescr): int {.noSideEffect, importcpp: "NbMembers",
    header: "StepData_ECDescr.hxx".}
proc member*(this: StepDataECDescr; num: int): Handle[StepDataESDescr] {.noSideEffect,
    importcpp: "Member", header: "StepData_ECDescr.hxx".}
proc typeList*(this: StepDataECDescr): Handle[TColStdHSequenceOfAsciiString] {.
    noSideEffect, importcpp: "TypeList", header: "StepData_ECDescr.hxx".}
proc matches*(this: StepDataECDescr; steptype: StandardCString): bool {.noSideEffect,
    importcpp: "Matches", header: "StepData_ECDescr.hxx".}
proc isComplex*(this: StepDataECDescr): bool {.noSideEffect, importcpp: "IsComplex",
    header: "StepData_ECDescr.hxx".}
proc newEntity*(this: StepDataECDescr): Handle[StepDataDescribed] {.noSideEffect,
    importcpp: "NewEntity", header: "StepData_ECDescr.hxx".}
type
  StepDataECDescrbaseType* = StepDataEDescr

proc getTypeName*(): cstring {.importcpp: "StepData_ECDescr::get_type_name(@)",
                            header: "StepData_ECDescr.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepData_ECDescr::get_type_descriptor(@)",
    header: "StepData_ECDescr.hxx".}
proc dynamicType*(this: StepDataECDescr): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_ECDescr.hxx".}
