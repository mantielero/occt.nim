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
  ../TColStd/TColStd_SequenceOfTransient, StepData_Described,
  ../Standard/Standard_Boolean, ../Standard/Standard_CString,
  ../Standard/Standard_Integer, ../TColStd/TColStd_HSequenceOfAsciiString

discard "forward decl of Interface_InterfaceMismatch"
discard "forward decl of StepData_ECDescr"
discard "forward decl of StepData_Simple"
discard "forward decl of StepData_Field"
discard "forward decl of Interface_Check"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of StepData_Plex"
discard "forward decl of StepData_Plex"
type
  Handle_StepData_Plex* = handle[StepData_Plex]

## ! A Plex (for Complex) Entity is defined as a list of Simple
## ! Members ("external mapping")
## ! The types of these members must be in alphabetic order

type
  StepData_Plex* {.importcpp: "StepData_Plex", header: "StepData_Plex.hxx", bycopy.} = object of StepData_Described ##
                                                                                                          ## !
                                                                                                          ## Creates
                                                                                                          ## a
                                                                                                          ## Plex
                                                                                                          ## (empty).
                                                                                                          ## The
                                                                                                          ## complete
                                                                                                          ## creation
                                                                                                          ## is
                                                                                                          ## made
                                                                                                          ## by
                                                                                                          ## the
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## ECDescr
                                                                                                          ## itself,
                                                                                                          ## by
                                                                                                          ## calling
                                                                                                          ## Add


proc constructStepData_Plex*(descr: handle[StepData_ECDescr]): StepData_Plex {.
    constructor, importcpp: "StepData_Plex(@)", header: "StepData_Plex.hxx".}
proc Add*(this: var StepData_Plex; member: handle[StepData_Simple]) {.
    importcpp: "Add", header: "StepData_Plex.hxx".}
proc ECDescr*(this: StepData_Plex): handle[StepData_ECDescr] {.noSideEffect,
    importcpp: "ECDescr", header: "StepData_Plex.hxx".}
proc IsComplex*(this: StepData_Plex): Standard_Boolean {.noSideEffect,
    importcpp: "IsComplex", header: "StepData_Plex.hxx".}
proc Matches*(this: StepData_Plex; steptype: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "Matches", header: "StepData_Plex.hxx".}
proc As*(this: StepData_Plex; steptype: Standard_CString): handle[StepData_Simple] {.
    noSideEffect, importcpp: "As", header: "StepData_Plex.hxx".}
proc HasField*(this: StepData_Plex; name: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "HasField", header: "StepData_Plex.hxx".}
proc Field*(this: StepData_Plex; name: Standard_CString): StepData_Field {.
    noSideEffect, importcpp: "Field", header: "StepData_Plex.hxx".}
proc CField*(this: var StepData_Plex; name: Standard_CString): var StepData_Field {.
    importcpp: "CField", header: "StepData_Plex.hxx".}
proc NbMembers*(this: StepData_Plex): Standard_Integer {.noSideEffect,
    importcpp: "NbMembers", header: "StepData_Plex.hxx".}
proc Member*(this: StepData_Plex; num: Standard_Integer): handle[StepData_Simple] {.
    noSideEffect, importcpp: "Member", header: "StepData_Plex.hxx".}
proc TypeList*(this: StepData_Plex): handle[TColStd_HSequenceOfAsciiString] {.
    noSideEffect, importcpp: "TypeList", header: "StepData_Plex.hxx".}
proc Check*(this: StepData_Plex; ach: var handle[Interface_Check]) {.noSideEffect,
    importcpp: "Check", header: "StepData_Plex.hxx".}
proc Shared*(this: StepData_Plex; list: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "Shared", header: "StepData_Plex.hxx".}
type
  StepData_Plexbase_type* = StepData_Described

proc get_type_name*(): cstring {.importcpp: "StepData_Plex::get_type_name(@)",
                              header: "StepData_Plex.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepData_Plex::get_type_descriptor(@)",
    header: "StepData_Plex.hxx".}
proc DynamicType*(this: StepData_Plex): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_Plex.hxx".}