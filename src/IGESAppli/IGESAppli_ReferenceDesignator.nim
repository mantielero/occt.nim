##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Arun MENON )
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESAppli_ReferenceDesignator"
discard "forward decl of IGESAppli_ReferenceDesignator"
type
  HandleC1C1* = Handle[IGESAppliReferenceDesignator]

## ! defines ReferenceDesignator, Type <406> Form <7>
## ! in package IGESAppli
## ! Used to attach a text string containing the value of
## ! a component reference designator to an entity being
## ! used to represent a component.

type
  IGESAppliReferenceDesignator* {.importcpp: "IGESAppli_ReferenceDesignator",
                                 header: "IGESAppli_ReferenceDesignator.hxx",
                                 bycopy.} = object of IGESDataIGESEntity


proc constructIGESAppliReferenceDesignator*(): IGESAppliReferenceDesignator {.
    constructor, importcpp: "IGESAppli_ReferenceDesignator(@)",
    header: "IGESAppli_ReferenceDesignator.hxx".}
proc init*(this: var IGESAppliReferenceDesignator; nbPropVal: cint;
          aText: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "IGESAppli_ReferenceDesignator.hxx".}
proc nbPropertyValues*(this: IGESAppliReferenceDesignator): cint {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESAppli_ReferenceDesignator.hxx".}
proc refDesignatorText*(this: IGESAppliReferenceDesignator): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "RefDesignatorText",
                              header: "IGESAppli_ReferenceDesignator.hxx".}
type
  IGESAppliReferenceDesignatorbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESAppli_ReferenceDesignator::get_type_name(@)",
                            header: "IGESAppli_ReferenceDesignator.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESAppli_ReferenceDesignator::get_type_descriptor(@)",
    header: "IGESAppli_ReferenceDesignator.hxx".}
proc dynamicType*(this: IGESAppliReferenceDesignator): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESAppli_ReferenceDesignator.hxx".}

























