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

import
  ../TDF/TDF_DerivedAttribute, ../TCollection/TCollection_ExtendedString,
  ../Standard/Standard_GUID

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataStd_GenericExtString"
discard "forward decl of TDataStd_GenericExtString"
type
  Handle_TDataStd_GenericExtString* = handle[TDataStd_GenericExtString]

## ! An ancestor attibute for all attributes which have TCollection_ExtendedString field.
## ! If an attribute inherits this one it should not have drivers for persistence.
## ! Also this attribute provides functionality to have on the same label same attributes with different IDs.

type
  TDataStd_GenericExtString* {.importcpp: "TDataStd_GenericExtString",
                              header: "TDataStd_GenericExtString.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                                   ## !
                                                                                                   ## Sets
                                                                                                   ## <S>
                                                                                                   ## as
                                                                                                   ## name.
                                                                                                   ## Raises
                                                                                                   ## if
                                                                                                   ## <S>
                                                                                                   ## is
                                                                                                   ## not
                                                                                                   ## a
                                                                                                   ## valid
                                                                                                   ## name.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## A
                                                                                                   ## string
                                                                                                   ## field
                                                                                                   ## of
                                                                                                   ## the
                                                                                                   ## attribute,
                                                                                                   ## participated
                                                                                                   ## in
                                                                                                   ## persistence.
    ## ! A private GUID of the attribute.


proc Set*(this: var TDataStd_GenericExtString; S: TCollection_ExtendedString) {.
    importcpp: "Set", header: "TDataStd_GenericExtString.hxx".}
proc SetID*(this: var TDataStd_GenericExtString; guid: Standard_GUID) {.
    importcpp: "SetID", header: "TDataStd_GenericExtString.hxx".}
proc Get*(this: TDataStd_GenericExtString): TCollection_ExtendedString {.
    noSideEffect, importcpp: "Get", header: "TDataStd_GenericExtString.hxx".}
proc ID*(this: TDataStd_GenericExtString): Standard_GUID {.noSideEffect,
    importcpp: "ID", header: "TDataStd_GenericExtString.hxx".}
proc Restore*(this: var TDataStd_GenericExtString; with: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_GenericExtString.hxx".}
proc Paste*(this: TDataStd_GenericExtString; into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_GenericExtString.hxx".}
proc DumpJson*(this: TDataStd_GenericExtString; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDataStd_GenericExtString.hxx".}
type
  TDataStd_GenericExtStringbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataStd_GenericExtString::get_type_name(@)",
                              header: "TDataStd_GenericExtString.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_GenericExtString::get_type_descriptor(@)",
    header: "TDataStd_GenericExtString.hxx".}
proc DynamicType*(this: TDataStd_GenericExtString): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TDataStd_GenericExtString.hxx".}