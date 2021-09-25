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
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataStd_GenericExtString"
discard "forward decl of TDataStd_GenericExtString"
type
  HandleTDataStdGenericExtString* = Handle[TDataStdGenericExtString]

## ! An ancestor attibute for all attributes which have TCollection_ExtendedString field.
## ! If an attribute inherits this one it should not have drivers for persistence.
## ! Also this attribute provides functionality to have on the same label same attributes with different IDs.

type
  TDataStdGenericExtString* {.importcpp: "TDataStd_GenericExtString",
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


proc set*(this: var TDataStdGenericExtString; s: TCollectionExtendedString) {.
    importcpp: "Set", header: "TDataStd_GenericExtString.hxx".}
proc setID*(this: var TDataStdGenericExtString; guid: StandardGUID) {.
    importcpp: "SetID", header: "TDataStd_GenericExtString.hxx".}
proc get*(this: TDataStdGenericExtString): TCollectionExtendedString {.noSideEffect,
    importcpp: "Get", header: "TDataStd_GenericExtString.hxx".}
proc id*(this: TDataStdGenericExtString): StandardGUID {.noSideEffect,
    importcpp: "ID", header: "TDataStd_GenericExtString.hxx".}
proc restore*(this: var TDataStdGenericExtString; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_GenericExtString.hxx".}
proc paste*(this: TDataStdGenericExtString; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_GenericExtString.hxx".}
proc dumpJson*(this: TDataStdGenericExtString; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "TDataStd_GenericExtString.hxx".}
type
  TDataStdGenericExtStringbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataStd_GenericExtString::get_type_name(@)",
                            header: "TDataStd_GenericExtString.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataStd_GenericExtString::get_type_descriptor(@)",
    header: "TDataStd_GenericExtString.hxx".}
proc dynamicType*(this: TDataStdGenericExtString): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "TDataStd_GenericExtString.hxx".}
