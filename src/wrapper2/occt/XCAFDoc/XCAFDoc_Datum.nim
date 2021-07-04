##  Created on: 2004-01-15
##  Created by: Sergey KUUL
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TDF/TDF_Attribute

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDimTolObjects_DatumObject"
when defined(GetObject):
  discard
discard "forward decl of XCAFDoc_Datum"
discard "forward decl of XCAFDoc_Datum"
type
  Handle_XCAFDoc_Datum* = handle[XCAFDoc_Datum]

## ! attribute to store datum

type
  XCAFDoc_Datum* {.importcpp: "XCAFDoc_Datum", header: "XCAFDoc_Datum.hxx", bycopy.} = object of TDF_Attribute


proc constructXCAFDoc_Datum*(): XCAFDoc_Datum {.constructor,
    importcpp: "XCAFDoc_Datum(@)", header: "XCAFDoc_Datum.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "XCAFDoc_Datum::GetID(@)",
                            header: "XCAFDoc_Datum.hxx".}
proc Set*(label: TDF_Label; aName: handle[TCollection_HAsciiString];
         aDescription: handle[TCollection_HAsciiString];
         anIdentification: handle[TCollection_HAsciiString]): handle[XCAFDoc_Datum] {.
    importcpp: "XCAFDoc_Datum::Set(@)", header: "XCAFDoc_Datum.hxx".}
proc Set*(theLabel: TDF_Label): handle[XCAFDoc_Datum] {.
    importcpp: "XCAFDoc_Datum::Set(@)", header: "XCAFDoc_Datum.hxx".}
proc Set*(this: var XCAFDoc_Datum; aName: handle[TCollection_HAsciiString];
         aDescription: handle[TCollection_HAsciiString];
         anIdentification: handle[TCollection_HAsciiString]) {.importcpp: "Set",
    header: "XCAFDoc_Datum.hxx".}
proc GetName*(this: XCAFDoc_Datum): handle[TCollection_HAsciiString] {.noSideEffect,
    importcpp: "GetName", header: "XCAFDoc_Datum.hxx".}
proc GetDescription*(this: XCAFDoc_Datum): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "GetDescription", header: "XCAFDoc_Datum.hxx".}
proc GetIdentification*(this: XCAFDoc_Datum): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "GetIdentification", header: "XCAFDoc_Datum.hxx".}
proc GetObject*(this: XCAFDoc_Datum): handle[XCAFDimTolObjects_DatumObject] {.
    noSideEffect, importcpp: "GetObject", header: "XCAFDoc_Datum.hxx".}
proc SetObject*(this: var XCAFDoc_Datum;
               theDatumObject: handle[XCAFDimTolObjects_DatumObject]) {.
    importcpp: "SetObject", header: "XCAFDoc_Datum.hxx".}
proc ID*(this: XCAFDoc_Datum): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_Datum.hxx".}
proc Restore*(this: var XCAFDoc_Datum; With: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "XCAFDoc_Datum.hxx".}
proc NewEmpty*(this: XCAFDoc_Datum): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XCAFDoc_Datum.hxx".}
proc Paste*(this: XCAFDoc_Datum; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "XCAFDoc_Datum.hxx".}
proc DumpJson*(this: XCAFDoc_Datum; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "XCAFDoc_Datum.hxx".}
type
  XCAFDoc_Datumbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "XCAFDoc_Datum::get_type_name(@)",
                              header: "XCAFDoc_Datum.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XCAFDoc_Datum::get_type_descriptor(@)",
    header: "XCAFDoc_Datum.hxx".}
proc DynamicType*(this: XCAFDoc_Datum): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFDoc_Datum.hxx".}