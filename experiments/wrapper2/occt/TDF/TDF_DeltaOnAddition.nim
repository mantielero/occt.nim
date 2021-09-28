##  Created by: DAUTRY Philippe
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

discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_DeltaOnAddition"
discard "forward decl of TDF_DeltaOnAddition"
type
  HandleC1C1* = Handle[TDF_DeltaOnAddition]

## ! This class provides default services for an
## ! AttributeDelta on an ADDITION action.
## !
## ! Applying this AttributeDelta means REMOVING its
## ! attribute.

type
  TDF_DeltaOnAddition* {.importcpp: "TDF_DeltaOnAddition",
                        header: "TDF_DeltaOnAddition.hxx", bycopy.} = object of TDF_AttributeDelta ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## a
                                                                                            ## TDF_DeltaOnAddition.


proc constructTDF_DeltaOnAddition*(anAtt: Handle[TDF_Attribute]): TDF_DeltaOnAddition {.
    constructor, importcpp: "TDF_DeltaOnAddition(@)",
    header: "TDF_DeltaOnAddition.hxx".}
proc apply*(this: var TDF_DeltaOnAddition) {.importcpp: "Apply",
    header: "TDF_DeltaOnAddition.hxx".}
type
  TDF_DeltaOnAdditionbaseType* = TDF_AttributeDelta

proc getTypeName*(): cstring {.importcpp: "TDF_DeltaOnAddition::get_type_name(@)",
                            header: "TDF_DeltaOnAddition.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDF_DeltaOnAddition::get_type_descriptor(@)",
    header: "TDF_DeltaOnAddition.hxx".}
proc dynamicType*(this: TDF_DeltaOnAddition): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDF_DeltaOnAddition.hxx".}

























