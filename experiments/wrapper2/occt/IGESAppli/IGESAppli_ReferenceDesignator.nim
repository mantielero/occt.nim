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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../IGESData/IGESData_IGESEntity

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESAppli_ReferenceDesignator"
discard "forward decl of IGESAppli_ReferenceDesignator"
type
  Handle_IGESAppli_ReferenceDesignator* = handle[IGESAppli_ReferenceDesignator]

## ! defines ReferenceDesignator, Type <406> Form <7>
## ! in package IGESAppli
## ! Used to attach a text string containing the value of
## ! a component reference designator to an entity being
## ! used to represent a component.

type
  IGESAppli_ReferenceDesignator* {.importcpp: "IGESAppli_ReferenceDesignator",
                                  header: "IGESAppli_ReferenceDesignator.hxx",
                                  bycopy.} = object of IGESData_IGESEntity


proc constructIGESAppli_ReferenceDesignator*(): IGESAppli_ReferenceDesignator {.
    constructor, importcpp: "IGESAppli_ReferenceDesignator(@)",
    header: "IGESAppli_ReferenceDesignator.hxx".}
proc Init*(this: var IGESAppli_ReferenceDesignator; nbPropVal: Standard_Integer;
          aText: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "IGESAppli_ReferenceDesignator.hxx".}
proc NbPropertyValues*(this: IGESAppli_ReferenceDesignator): Standard_Integer {.
    noSideEffect, importcpp: "NbPropertyValues",
    header: "IGESAppli_ReferenceDesignator.hxx".}
proc RefDesignatorText*(this: IGESAppli_ReferenceDesignator): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "RefDesignatorText",
                               header: "IGESAppli_ReferenceDesignator.hxx".}
type
  IGESAppli_ReferenceDesignatorbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESAppli_ReferenceDesignator::get_type_name(@)",
                              header: "IGESAppli_ReferenceDesignator.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESAppli_ReferenceDesignator::get_type_descriptor(@)",
    header: "IGESAppli_ReferenceDesignator.hxx".}
proc DynamicType*(this: IGESAppli_ReferenceDesignator): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESAppli_ReferenceDesignator.hxx".}