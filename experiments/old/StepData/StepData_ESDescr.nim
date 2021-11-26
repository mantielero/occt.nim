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

discard "forward decl of StepData_PDescr"
discard "forward decl of StepData_Described"
discard "forward decl of StepData_ESDescr"
discard "forward decl of StepData_ESDescr"
type
  HandleC1C1* = Handle[StepDataESDescr]

## ! This class is intended to describe the authorized form for a
## ! Simple (not Plex) Entity, as a list of fields

type
  StepDataESDescr* {.importcpp: "StepData_ESDescr", header: "StepData_ESDescr.hxx",
                    bycopy.} = object of StepDataEDescr ## ! Creates an ESDescr with a type name


proc constructStepDataESDescr*(name: StandardCString): StepDataESDescr {.
    constructor, importcpp: "StepData_ESDescr(@)", header: "StepData_ESDescr.hxx".}
proc setNbFields*(this: var StepDataESDescr; nb: int) {.importcpp: "SetNbFields",
    header: "StepData_ESDescr.hxx".}
proc setField*(this: var StepDataESDescr; num: int; name: StandardCString;
              descr: Handle[StepDataPDescr]) {.importcpp: "SetField",
    header: "StepData_ESDescr.hxx".}
proc setBase*(this: var StepDataESDescr; base: Handle[StepDataESDescr]) {.
    importcpp: "SetBase", header: "StepData_ESDescr.hxx".}
proc setSuper*(this: var StepDataESDescr; super: Handle[StepDataESDescr]) {.
    importcpp: "SetSuper", header: "StepData_ESDescr.hxx".}
proc typeName*(this: StepDataESDescr): StandardCString {.noSideEffect,
    importcpp: "TypeName", header: "StepData_ESDescr.hxx".}
proc stepType*(this: StepDataESDescr): TCollectionAsciiString {.noSideEffect,
    importcpp: "StepType", header: "StepData_ESDescr.hxx".}
proc base*(this: StepDataESDescr): Handle[StepDataESDescr] {.noSideEffect,
    importcpp: "Base", header: "StepData_ESDescr.hxx".}
proc super*(this: StepDataESDescr): Handle[StepDataESDescr] {.noSideEffect,
    importcpp: "Super", header: "StepData_ESDescr.hxx".}
proc isSub*(this: StepDataESDescr; other: Handle[StepDataESDescr]): StandardBoolean {.
    noSideEffect, importcpp: "IsSub", header: "StepData_ESDescr.hxx".}
proc nbFields*(this: StepDataESDescr): int {.noSideEffect, importcpp: "NbFields",
    header: "StepData_ESDescr.hxx".}
proc rank*(this: StepDataESDescr; name: StandardCString): int {.noSideEffect,
    importcpp: "Rank", header: "StepData_ESDescr.hxx".}
proc name*(this: StepDataESDescr; num: int): StandardCString {.noSideEffect,
    importcpp: "Name", header: "StepData_ESDescr.hxx".}
proc field*(this: StepDataESDescr; num: int): Handle[StepDataPDescr] {.noSideEffect,
    importcpp: "Field", header: "StepData_ESDescr.hxx".}
proc namedField*(this: StepDataESDescr; name: StandardCString): Handle[StepDataPDescr] {.
    noSideEffect, importcpp: "NamedField", header: "StepData_ESDescr.hxx".}
proc matches*(this: StepDataESDescr; steptype: StandardCString): StandardBoolean {.
    noSideEffect, importcpp: "Matches", header: "StepData_ESDescr.hxx".}
proc isComplex*(this: StepDataESDescr): StandardBoolean {.noSideEffect,
    importcpp: "IsComplex", header: "StepData_ESDescr.hxx".}
proc newEntity*(this: StepDataESDescr): Handle[StepDataDescribed] {.noSideEffect,
    importcpp: "NewEntity", header: "StepData_ESDescr.hxx".}
type
  StepDataESDescrbaseType* = StepDataEDescr

proc getTypeName*(): cstring {.importcpp: "StepData_ESDescr::get_type_name(@)",
                            header: "StepData_ESDescr.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepData_ESDescr::get_type_descriptor(@)",
    header: "StepData_ESDescr.hxx".}
proc dynamicType*(this: StepDataESDescr): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_ESDescr.hxx".}