##  Created on: 1997-04-02
##  Created by: Administrateur Atelier XSTEP
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

discard "forward decl of StepData_Described"
discard "forward decl of StepData_EDescr"
discard "forward decl of StepData_EDescr"
type
  HandleC1C1* = Handle[StepDataEDescr]

## ! This class is intended to describe the authorized form for an
## ! entity, either Simple or Plex

type
  StepDataEDescr* {.importcpp: "StepData_EDescr", header: "StepData_EDescr.hxx",
                   bycopy.} = object of StandardTransient ## ! Tells if a ESDescr matches a step type : exact or super type


proc matches*(this: StepDataEDescr; steptype: StandardCString): StandardBoolean {.
    noSideEffect, importcpp: "Matches", header: "StepData_EDescr.hxx".}
proc isComplex*(this: StepDataEDescr): StandardBoolean {.noSideEffect,
    importcpp: "IsComplex", header: "StepData_EDescr.hxx".}
proc newEntity*(this: StepDataEDescr): Handle[StepDataDescribed] {.noSideEffect,
    importcpp: "NewEntity", header: "StepData_EDescr.hxx".}
type
  StepDataEDescrbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepData_EDescr::get_type_name(@)",
                            header: "StepData_EDescr.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepData_EDescr::get_type_descriptor(@)",
    header: "StepData_EDescr.hxx".}
proc dynamicType*(this: StepDataEDescr): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_EDescr.hxx".}