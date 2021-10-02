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

discard "forward decl of Interface_InterfaceMismatch"
discard "forward decl of StepData_ECDescr"
discard "forward decl of StepData_Simple"
discard "forward decl of StepData_Field"
discard "forward decl of Interface_Check"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of StepData_Plex"
discard "forward decl of StepData_Plex"
type
  HandleC1C1* = Handle[StepDataPlex]

## ! A Plex (for Complex) Entity is defined as a list of Simple
## ! Members ("external mapping")
## ! The types of these members must be in alphabetic order

type
  StepDataPlex* {.importcpp: "StepData_Plex", header: "StepData_Plex.hxx", bycopy.} = object of StepDataDescribed ##
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


proc constructStepDataPlex*(descr: Handle[StepDataECDescr]): StepDataPlex {.
    constructor, importcpp: "StepData_Plex(@)", header: "StepData_Plex.hxx".}
proc add*(this: var StepDataPlex; member: Handle[StepDataSimple]) {.importcpp: "Add",
    header: "StepData_Plex.hxx".}
proc eCDescr*(this: StepDataPlex): Handle[StepDataECDescr] {.noSideEffect,
    importcpp: "ECDescr", header: "StepData_Plex.hxx".}
proc isComplex*(this: StepDataPlex): StandardBoolean {.noSideEffect,
    importcpp: "IsComplex", header: "StepData_Plex.hxx".}
proc matches*(this: StepDataPlex; steptype: StandardCString): StandardBoolean {.
    noSideEffect, importcpp: "Matches", header: "StepData_Plex.hxx".}
proc `as`*(this: StepDataPlex; steptype: StandardCString): Handle[StepDataSimple] {.
    noSideEffect, importcpp: "As", header: "StepData_Plex.hxx".}
proc hasField*(this: StepDataPlex; name: StandardCString): StandardBoolean {.
    noSideEffect, importcpp: "HasField", header: "StepData_Plex.hxx".}
proc field*(this: StepDataPlex; name: StandardCString): StepDataField {.noSideEffect,
    importcpp: "Field", header: "StepData_Plex.hxx".}
proc cField*(this: var StepDataPlex; name: StandardCString): var StepDataField {.
    importcpp: "CField", header: "StepData_Plex.hxx".}
proc nbMembers*(this: StepDataPlex): int {.noSideEffect, importcpp: "NbMembers",
                                       header: "StepData_Plex.hxx".}
proc member*(this: StepDataPlex; num: int): Handle[StepDataSimple] {.noSideEffect,
    importcpp: "Member", header: "StepData_Plex.hxx".}
proc typeList*(this: StepDataPlex): Handle[TColStdHSequenceOfAsciiString] {.
    noSideEffect, importcpp: "TypeList", header: "StepData_Plex.hxx".}
proc check*(this: StepDataPlex; ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "Check", header: "StepData_Plex.hxx".}
proc shared*(this: StepDataPlex; list: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "Shared", header: "StepData_Plex.hxx".}
type
  StepDataPlexbaseType* = StepDataDescribed

proc getTypeName*(): cstring {.importcpp: "StepData_Plex::get_type_name(@)",
                            header: "StepData_Plex.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepData_Plex::get_type_descriptor(@)",
    header: "StepData_Plex.hxx".}
proc dynamicType*(this: StepDataPlex): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_Plex.hxx".}