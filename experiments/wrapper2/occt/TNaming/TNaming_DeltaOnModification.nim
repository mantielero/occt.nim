##  Created on: 1997-12-03
##  Created by: Yves FRICAUD
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

discard "forward decl of TNaming_NamedShape"
discard "forward decl of TNaming_DeltaOnModification"
discard "forward decl of TNaming_DeltaOnModification"
type
  HandleC1C1* = Handle[TNamingDeltaOnModification]

## ! This class provides default services for an
## ! AttributeDelta on a MODIFICATION action.
## !
## ! Applying this AttributeDelta means GOING BACK to
## ! the attribute previously registered state.

type
  TNamingDeltaOnModification* {.importcpp: "TNaming_DeltaOnModification",
                               header: "TNaming_DeltaOnModification.hxx", bycopy.} = object of TDF_DeltaOnModification ##
                                                                                                                ## !
                                                                                                                ## Initializes
                                                                                                                ## a
                                                                                                                ## TDF_DeltaOnModification.


proc constructTNamingDeltaOnModification*(ns: Handle[TNamingNamedShape]): TNamingDeltaOnModification {.
    constructor, importcpp: "TNaming_DeltaOnModification(@)",
    header: "TNaming_DeltaOnModification.hxx".}
proc apply*(this: var TNamingDeltaOnModification) {.importcpp: "Apply",
    header: "TNaming_DeltaOnModification.hxx".}
type
  TNamingDeltaOnModificationbaseType* = TDF_DeltaOnModification

proc getTypeName*(): cstring {.importcpp: "TNaming_DeltaOnModification::get_type_name(@)",
                            header: "TNaming_DeltaOnModification.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TNaming_DeltaOnModification::get_type_descriptor(@)",
    header: "TNaming_DeltaOnModification.hxx".}
proc dynamicType*(this: TNamingDeltaOnModification): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TNaming_DeltaOnModification.hxx".}

























