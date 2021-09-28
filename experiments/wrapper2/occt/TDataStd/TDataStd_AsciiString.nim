##  Created on: 2007-07-31
##  Created by: Sergey ZARITCHNY
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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

discard "forward decl of TDF_Label"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataStd_AsciiString"
discard "forward decl of TDataStd_AsciiString"
type
  HandleC1C1* = Handle[TDataStdAsciiString]

## ! Used to define an AsciiString attribute containing a TCollection_AsciiString

type
  TDataStdAsciiString* {.importcpp: "TDataStd_AsciiString",
                        header: "TDataStd_AsciiString.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                        ## !
                                                                                        ## class
                                                                                        ## methods
                                                                                        ##
                                                                                        ## !
                                                                                        ## =============
                                                                                        ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## the
                                                                                        ## GUID
                                                                                        ## of
                                                                                        ## the
                                                                                        ## attribute.


proc getID*(): StandardGUID {.importcpp: "TDataStd_AsciiString::GetID(@)",
                           header: "TDataStd_AsciiString.hxx".}
proc set*(label: TDF_Label; string: TCollectionAsciiString): Handle[
    TDataStdAsciiString] {.importcpp: "TDataStd_AsciiString::Set(@)",
                          header: "TDataStd_AsciiString.hxx".}
proc set*(label: TDF_Label; guid: StandardGUID; string: TCollectionAsciiString): Handle[
    TDataStdAsciiString] {.importcpp: "TDataStd_AsciiString::Set(@)",
                          header: "TDataStd_AsciiString.hxx".}
proc constructTDataStdAsciiString*(): TDataStdAsciiString {.constructor,
    importcpp: "TDataStd_AsciiString(@)", header: "TDataStd_AsciiString.hxx".}
proc set*(this: var TDataStdAsciiString; s: TCollectionAsciiString) {.
    importcpp: "Set", header: "TDataStd_AsciiString.hxx".}
proc setID*(this: var TDataStdAsciiString; guid: StandardGUID) {.importcpp: "SetID",
    header: "TDataStd_AsciiString.hxx".}
proc setID*(this: var TDataStdAsciiString) {.importcpp: "SetID",
    header: "TDataStd_AsciiString.hxx".}
proc get*(this: TDataStdAsciiString): TCollectionAsciiString {.noSideEffect,
    importcpp: "Get", header: "TDataStd_AsciiString.hxx".}
proc isEmpty*(this: TDataStdAsciiString): bool {.noSideEffect, importcpp: "IsEmpty",
    header: "TDataStd_AsciiString.hxx".}
proc id*(this: TDataStdAsciiString): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_AsciiString.hxx".}
proc restore*(this: var TDataStdAsciiString; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_AsciiString.hxx".}
proc newEmpty*(this: TDataStdAsciiString): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_AsciiString.hxx".}
proc paste*(this: TDataStdAsciiString; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_AsciiString.hxx".}
proc dump*(this: TDataStdAsciiString; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_AsciiString.hxx".}
proc dumpJson*(this: TDataStdAsciiString; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "TDataStd_AsciiString.hxx".}
type
  TDataStdAsciiStringbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataStd_AsciiString::get_type_name(@)",
                            header: "TDataStd_AsciiString.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataStd_AsciiString::get_type_descriptor(@)",
    header: "TDataStd_AsciiString.hxx".}
proc dynamicType*(this: TDataStdAsciiString): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_AsciiString.hxx".}

























