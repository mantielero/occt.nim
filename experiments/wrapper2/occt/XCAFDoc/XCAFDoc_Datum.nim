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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDimTolObjects_DatumObject"
# when defined(GetObject):
#   discard
discard "forward decl of XCAFDoc_Datum"
discard "forward decl of XCAFDoc_Datum"
type
  HandleXCAFDocDatum* = Handle[XCAFDocDatum]

## ! attribute to store datum

type
  XCAFDocDatum* {.importcpp: "XCAFDoc_Datum", header: "XCAFDoc_Datum.hxx", bycopy.} = object of TDF_Attribute


proc constructXCAFDocDatum*(): XCAFDocDatum {.constructor,
    importcpp: "XCAFDoc_Datum(@)", header: "XCAFDoc_Datum.hxx".}
proc getID*(): StandardGUID {.importcpp: "XCAFDoc_Datum::GetID(@)",
                           header: "XCAFDoc_Datum.hxx".}
proc set*(label: TDF_Label; aName: Handle[TCollectionHAsciiString];
         aDescription: Handle[TCollectionHAsciiString];
         anIdentification: Handle[TCollectionHAsciiString]): Handle[XCAFDocDatum] {.
    importcpp: "XCAFDoc_Datum::Set(@)", header: "XCAFDoc_Datum.hxx".}
proc set*(theLabel: TDF_Label): Handle[XCAFDocDatum] {.
    importcpp: "XCAFDoc_Datum::Set(@)", header: "XCAFDoc_Datum.hxx".}
proc set*(this: var XCAFDocDatum; aName: Handle[TCollectionHAsciiString];
         aDescription: Handle[TCollectionHAsciiString];
         anIdentification: Handle[TCollectionHAsciiString]) {.importcpp: "Set",
    header: "XCAFDoc_Datum.hxx".}
proc getName*(this: XCAFDocDatum): Handle[TCollectionHAsciiString] {.noSideEffect,
    importcpp: "GetName", header: "XCAFDoc_Datum.hxx".}
proc getDescription*(this: XCAFDocDatum): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "GetDescription", header: "XCAFDoc_Datum.hxx".}
proc getIdentification*(this: XCAFDocDatum): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "GetIdentification", header: "XCAFDoc_Datum.hxx".}
proc getObject*(this: XCAFDocDatum): Handle[XCAFDimTolObjectsDatumObject] {.
    noSideEffect, importcpp: "GetObject", header: "XCAFDoc_Datum.hxx".}
proc setObject*(this: var XCAFDocDatum;
               theDatumObject: Handle[XCAFDimTolObjectsDatumObject]) {.
    importcpp: "SetObject", header: "XCAFDoc_Datum.hxx".}
proc id*(this: XCAFDocDatum): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_Datum.hxx".}
proc restore*(this: var XCAFDocDatum; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "XCAFDoc_Datum.hxx".}
proc newEmpty*(this: XCAFDocDatum): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XCAFDoc_Datum.hxx".}
proc paste*(this: XCAFDocDatum; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "XCAFDoc_Datum.hxx".}
proc dumpJson*(this: XCAFDocDatum; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "XCAFDoc_Datum.hxx".}
type
  XCAFDocDatumbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "XCAFDoc_Datum::get_type_name(@)",
                            header: "XCAFDoc_Datum.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XCAFDoc_Datum::get_type_descriptor(@)",
    header: "XCAFDoc_Datum.hxx".}
proc dynamicType*(this: XCAFDocDatum): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFDoc_Datum.hxx".}
