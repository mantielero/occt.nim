##  Copyright (c) 2020 OPEN CASCADE SAS
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
discard "forward decl of TDataStd_GenericEmpty"
discard "forward decl of TDataStd_GenericEmpty"
type
  HandleC1C1* = Handle[TDataStdGenericEmpty]

## ! An ancestor attibute for all attributes which have no fields.
## ! If an attribute inherits this one it should not have drivers for persistence.

type
  TDataStdGenericEmpty* {.importcpp: "TDataStd_GenericEmpty",
                         header: "TDataStd_GenericEmpty.hxx", bycopy.} = object of TDF_Attribute


proc restore*(this: var TDataStdGenericEmpty; a2: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_GenericEmpty.hxx".}
proc paste*(this: TDataStdGenericEmpty; a2: Handle[TDF_Attribute];
           a3: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_GenericEmpty.hxx".}
proc dumpJson*(this: TDataStdGenericEmpty; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "TDataStd_GenericEmpty.hxx".}
type
  TDataStdGenericEmptybaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataStd_GenericEmpty::get_type_name(@)",
                            header: "TDataStd_GenericEmpty.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataStd_GenericEmpty::get_type_descriptor(@)",
    header: "TDataStd_GenericEmpty.hxx".}
proc dynamicType*(this: TDataStdGenericEmpty): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_GenericEmpty.hxx".}

























