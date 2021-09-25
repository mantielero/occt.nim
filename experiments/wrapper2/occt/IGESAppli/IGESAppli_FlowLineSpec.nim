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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESAppli_FlowLineSpec"
discard "forward decl of IGESAppli_FlowLineSpec"
type
  HandleIGESAppliFlowLineSpec* = Handle[IGESAppliFlowLineSpec]

## ! defines FlowLineSpec, Type <406> Form <14>
## ! in package IGESAppli
## ! Attaches one or more text strings to entities being
## ! used to represent a flow line

type
  IGESAppliFlowLineSpec* {.importcpp: "IGESAppli_FlowLineSpec",
                          header: "IGESAppli_FlowLineSpec.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESAppliFlowLineSpec*(): IGESAppliFlowLineSpec {.constructor,
    importcpp: "IGESAppli_FlowLineSpec(@)", header: "IGESAppli_FlowLineSpec.hxx".}
proc init*(this: var IGESAppliFlowLineSpec;
          allProperties: Handle[InterfaceHArray1OfHAsciiString]) {.
    importcpp: "Init", header: "IGESAppli_FlowLineSpec.hxx".}
proc nbPropertyValues*(this: IGESAppliFlowLineSpec): int {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESAppli_FlowLineSpec.hxx".}
proc flowLineName*(this: IGESAppliFlowLineSpec): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "FlowLineName", header: "IGESAppli_FlowLineSpec.hxx".}
proc modifier*(this: IGESAppliFlowLineSpec; index: int): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Modifier",
                              header: "IGESAppli_FlowLineSpec.hxx".}
type
  IGESAppliFlowLineSpecbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESAppli_FlowLineSpec::get_type_name(@)",
                            header: "IGESAppli_FlowLineSpec.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESAppli_FlowLineSpec::get_type_descriptor(@)",
    header: "IGESAppli_FlowLineSpec.hxx".}
proc dynamicType*(this: IGESAppliFlowLineSpec): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESAppli_FlowLineSpec.hxx".}
