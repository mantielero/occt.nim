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
discard "forward decl of StepData_ESDescr"
discard "forward decl of StepData_Field"
discard "forward decl of StepData_FieldListN"
discard "forward decl of Interface_Check"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of StepData_Simple"
discard "forward decl of StepData_Simple"
type
  HandleC1C1* = Handle[StepDataSimple]

## ! A Simple Entity is defined by a type (which can heve super
## ! types) and a list of parameters

type
  StepDataSimple* {.importcpp: "StepData_Simple", header: "StepData_Simple.hxx",
                   bycopy.} = object of StepDataDescribed ## ! Creates a Simple Entity


proc constructStepDataSimple*(descr: Handle[StepDataESDescr]): StepDataSimple {.
    constructor, importcpp: "StepData_Simple(@)", header: "StepData_Simple.hxx".}
proc eSDescr*(this: StepDataSimple): Handle[StepDataESDescr] {.noSideEffect,
    importcpp: "ESDescr", header: "StepData_Simple.hxx".}
proc stepType*(this: StepDataSimple): StandardCString {.noSideEffect,
    importcpp: "StepType", header: "StepData_Simple.hxx".}
proc isComplex*(this: StepDataSimple): bool {.noSideEffect, importcpp: "IsComplex",
    header: "StepData_Simple.hxx".}
proc matches*(this: StepDataSimple; steptype: StandardCString): bool {.noSideEffect,
    importcpp: "Matches", header: "StepData_Simple.hxx".}
proc `as`*(this: StepDataSimple; steptype: StandardCString): Handle[StepDataSimple] {.
    noSideEffect, importcpp: "As", header: "StepData_Simple.hxx".}
proc hasField*(this: StepDataSimple; name: StandardCString): bool {.noSideEffect,
    importcpp: "HasField", header: "StepData_Simple.hxx".}
proc field*(this: StepDataSimple; name: StandardCString): StepDataField {.
    noSideEffect, importcpp: "Field", header: "StepData_Simple.hxx".}
proc cField*(this: var StepDataSimple; name: StandardCString): var StepDataField {.
    importcpp: "CField", header: "StepData_Simple.hxx".}
proc nbFields*(this: StepDataSimple): cint {.noSideEffect, importcpp: "NbFields",
    header: "StepData_Simple.hxx".}
proc fieldNum*(this: StepDataSimple; num: cint): StepDataField {.noSideEffect,
    importcpp: "FieldNum", header: "StepData_Simple.hxx".}
proc cFieldNum*(this: var StepDataSimple; num: cint): var StepDataField {.
    importcpp: "CFieldNum", header: "StepData_Simple.hxx".}
proc fields*(this: StepDataSimple): StepDataFieldListN {.noSideEffect,
    importcpp: "Fields", header: "StepData_Simple.hxx".}
proc cFields*(this: var StepDataSimple): var StepDataFieldListN {.
    importcpp: "CFields", header: "StepData_Simple.hxx".}
proc check*(this: StepDataSimple; ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "Check", header: "StepData_Simple.hxx".}
proc shared*(this: StepDataSimple; list: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "Shared", header: "StepData_Simple.hxx".}
type
  StepDataSimplebaseType* = StepDataDescribed

proc getTypeName*(): cstring {.importcpp: "StepData_Simple::get_type_name(@)",
                            header: "StepData_Simple.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepData_Simple::get_type_descriptor(@)",
    header: "StepData_Simple.hxx".}
proc dynamicType*(this: StepDataSimple): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_Simple.hxx".}

























