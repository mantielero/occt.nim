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

discard "forward decl of StepData_EDescr"
discard "forward decl of Interface_InterfaceMismatch"
discard "forward decl of StepData_Simple"
discard "forward decl of StepData_Field"
discard "forward decl of Interface_Check"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of StepData_Described"
discard "forward decl of StepData_Described"
type
  HandleC1C1* = Handle[StepDataDescribed]

## ! General frame to describe entities with Description (Simple or
## ! Complex)

type
  StepDataDescribed* {.importcpp: "StepData_Described",
                      header: "StepData_Described.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## the
                                                                                        ## Description
                                                                                        ## used
                                                                                        ## to
                                                                                        ## define
                                                                                        ## this
                                                                                        ## entity
                                                                                        ##
                                                                                        ## !
                                                                                        ## Initializes
                                                                                        ## a
                                                                                        ## Described
                                                                                        ## Entity
                                                                                        ## from
                                                                                        ## a
                                                                                        ## Description
                                                                                        ##
                                                                                        ## !
                                                                                        ## (i.e.
                                                                                        ## puts
                                                                                        ## it
                                                                                        ## in
                                                                                        ## a
                                                                                        ## field
                                                                                        ## ...)


proc description*(this: StepDataDescribed): Handle[StepDataEDescr] {.noSideEffect,
    importcpp: "Description", header: "StepData_Described.hxx".}
proc isComplex*(this: StepDataDescribed): bool {.noSideEffect,
    importcpp: "IsComplex", header: "StepData_Described.hxx".}
proc matches*(this: StepDataDescribed; steptype: StandardCString): bool {.
    noSideEffect, importcpp: "Matches", header: "StepData_Described.hxx".}
proc `as`*(this: StepDataDescribed; steptype: StandardCString): Handle[StepDataSimple] {.
    noSideEffect, importcpp: "As", header: "StepData_Described.hxx".}
proc hasField*(this: StepDataDescribed; name: StandardCString): bool {.noSideEffect,
    importcpp: "HasField", header: "StepData_Described.hxx".}
proc field*(this: StepDataDescribed; name: StandardCString): StepDataField {.
    noSideEffect, importcpp: "Field", header: "StepData_Described.hxx".}
proc cField*(this: var StepDataDescribed; name: StandardCString): var StepDataField {.
    importcpp: "CField", header: "StepData_Described.hxx".}
proc check*(this: StepDataDescribed; ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "Check", header: "StepData_Described.hxx".}
proc shared*(this: StepDataDescribed; list: var InterfaceEntityIterator) {.
    noSideEffect, importcpp: "Shared", header: "StepData_Described.hxx".}
type
  StepDataDescribedbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepData_Described::get_type_name(@)",
                            header: "StepData_Described.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepData_Described::get_type_descriptor(@)",
    header: "StepData_Described.hxx".}
proc dynamicType*(this: StepDataDescribed): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_Described.hxx".}

























