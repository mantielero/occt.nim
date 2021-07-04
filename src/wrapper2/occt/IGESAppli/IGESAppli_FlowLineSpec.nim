##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Anand NATRAJAN )
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../Interface/Interface_HArray1OfHAsciiString, ../IGESData/IGESData_IGESEntity,
  ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESAppli_FlowLineSpec"
discard "forward decl of IGESAppli_FlowLineSpec"
type
  Handle_IGESAppli_FlowLineSpec* = handle[IGESAppli_FlowLineSpec]

## ! defines FlowLineSpec, Type <406> Form <14>
## ! in package IGESAppli
## ! Attaches one or more text strings to entities being
## ! used to represent a flow line

type
  IGESAppli_FlowLineSpec* {.importcpp: "IGESAppli_FlowLineSpec",
                           header: "IGESAppli_FlowLineSpec.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESAppli_FlowLineSpec*(): IGESAppli_FlowLineSpec {.constructor,
    importcpp: "IGESAppli_FlowLineSpec(@)", header: "IGESAppli_FlowLineSpec.hxx".}
proc Init*(this: var IGESAppli_FlowLineSpec;
          allProperties: handle[Interface_HArray1OfHAsciiString]) {.
    importcpp: "Init", header: "IGESAppli_FlowLineSpec.hxx".}
proc NbPropertyValues*(this: IGESAppli_FlowLineSpec): Standard_Integer {.
    noSideEffect, importcpp: "NbPropertyValues",
    header: "IGESAppli_FlowLineSpec.hxx".}
proc FlowLineName*(this: IGESAppli_FlowLineSpec): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "FlowLineName", header: "IGESAppli_FlowLineSpec.hxx".}
proc Modifier*(this: IGESAppli_FlowLineSpec; Index: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Modifier",
                               header: "IGESAppli_FlowLineSpec.hxx".}
type
  IGESAppli_FlowLineSpecbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESAppli_FlowLineSpec::get_type_name(@)",
                              header: "IGESAppli_FlowLineSpec.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESAppli_FlowLineSpec::get_type_descriptor(@)",
    header: "IGESAppli_FlowLineSpec.hxx".}
proc DynamicType*(this: IGESAppli_FlowLineSpec): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESAppli_FlowLineSpec.hxx".}