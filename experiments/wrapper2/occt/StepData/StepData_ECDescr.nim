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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_SequenceOfTransient, StepData_EDescr,
  ../Standard/Standard_Integer, ../TColStd/TColStd_HSequenceOfAsciiString,
  ../Standard/Standard_Boolean, ../Standard/Standard_CString

discard "forward decl of StepData_ESDescr"
discard "forward decl of StepData_Described"
discard "forward decl of StepData_ECDescr"
discard "forward decl of StepData_ECDescr"
type
  Handle_StepData_ECDescr* = handle[StepData_ECDescr]

## ! Describes a Complex Entity (Plex) as a list of Simple ones

type
  StepData_ECDescr* {.importcpp: "StepData_ECDescr",
                     header: "StepData_ECDescr.hxx", bycopy.} = object of StepData_EDescr ##
                                                                                   ## !
                                                                                   ## Creates
                                                                                   ## an
                                                                                   ## ECDescr,
                                                                                   ## empty


proc constructStepData_ECDescr*(): StepData_ECDescr {.constructor,
    importcpp: "StepData_ECDescr(@)", header: "StepData_ECDescr.hxx".}
proc Add*(this: var StepData_ECDescr; member: handle[StepData_ESDescr]) {.
    importcpp: "Add", header: "StepData_ECDescr.hxx".}
proc NbMembers*(this: StepData_ECDescr): Standard_Integer {.noSideEffect,
    importcpp: "NbMembers", header: "StepData_ECDescr.hxx".}
proc Member*(this: StepData_ECDescr; num: Standard_Integer): handle[StepData_ESDescr] {.
    noSideEffect, importcpp: "Member", header: "StepData_ECDescr.hxx".}
proc TypeList*(this: StepData_ECDescr): handle[TColStd_HSequenceOfAsciiString] {.
    noSideEffect, importcpp: "TypeList", header: "StepData_ECDescr.hxx".}
proc Matches*(this: StepData_ECDescr; steptype: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "Matches", header: "StepData_ECDescr.hxx".}
proc IsComplex*(this: StepData_ECDescr): Standard_Boolean {.noSideEffect,
    importcpp: "IsComplex", header: "StepData_ECDescr.hxx".}
proc NewEntity*(this: StepData_ECDescr): handle[StepData_Described] {.noSideEffect,
    importcpp: "NewEntity", header: "StepData_ECDescr.hxx".}
type
  StepData_ECDescrbase_type* = StepData_EDescr

proc get_type_name*(): cstring {.importcpp: "StepData_ECDescr::get_type_name(@)",
                              header: "StepData_ECDescr.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepData_ECDescr::get_type_descriptor(@)",
    header: "StepData_ECDescr.hxx".}
proc DynamicType*(this: StepData_ECDescr): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_ECDescr.hxx".}