##  Created on: 2000-03-01
##  Created by: Denis PASCAL
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DataSet"
discard "forward decl of TDF_Reference"
discard "forward decl of TDF_Reference"
type
  HandleTDF_Reference* = Handle[TDF_Reference]

## ! This  attribute is  used to  store in the  framework a
## ! reference to an other label.

type
  TDF_Reference* {.importcpp: "TDF_Reference", header: "TDF_Reference.hxx", bycopy.} = object of TDF_Attribute


proc getID*(): StandardGUID {.importcpp: "TDF_Reference::GetID(@)",
                           header: "TDF_Reference.hxx".}
proc set*(i: TDF_Label; origin: TDF_Label): Handle[TDF_Reference] {.
    importcpp: "TDF_Reference::Set(@)", header: "TDF_Reference.hxx".}
proc set*(this: var TDF_Reference; origin: TDF_Label) {.importcpp: "Set",
    header: "TDF_Reference.hxx".}
proc get*(this: TDF_Reference): TDF_Label {.noSideEffect, importcpp: "Get",
                                        header: "TDF_Reference.hxx".}
proc id*(this: TDF_Reference): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDF_Reference.hxx".}
proc restore*(this: var TDF_Reference; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDF_Reference.hxx".}
proc newEmpty*(this: TDF_Reference): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDF_Reference.hxx".}
proc paste*(this: TDF_Reference; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDF_Reference.hxx".}
proc references*(this: TDF_Reference; ds: Handle[TDF_DataSet]) {.noSideEffect,
    importcpp: "References", header: "TDF_Reference.hxx".}
proc dump*(this: TDF_Reference; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDF_Reference.hxx".}
proc constructTDF_Reference*(): TDF_Reference {.constructor,
    importcpp: "TDF_Reference(@)", header: "TDF_Reference.hxx".}
proc dumpJson*(this: TDF_Reference; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "TDF_Reference.hxx".}
type
  TDF_ReferencebaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDF_Reference::get_type_name(@)",
                            header: "TDF_Reference.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDF_Reference::get_type_descriptor(@)",
    header: "TDF_Reference.hxx".}
proc dynamicType*(this: TDF_Reference): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDF_Reference.hxx".}
