import ../tdf/tdf_types
import xcafdoc_types
import ../standard/standard_types
import ../tcollection/tcollection_types
import ../xcafdimtolobjects/xcafdimtolobjects_types


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

when defined(GetObject):
  discard




proc newXCAFDocDatum*(): XCAFDocDatum {.cdecl, constructor,
                                     importcpp: "XCAFDoc_Datum(@)",
                                     header: "XCAFDoc_Datum.hxx".}
proc getID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc_Datum::GetID(@)",
                           header: "XCAFDoc_Datum.hxx".}
proc set*(label: TDF_Label; aName: Handle[TCollectionHAsciiString];
         aDescription: Handle[TCollectionHAsciiString];
         anIdentification: Handle[TCollectionHAsciiString]): Handle[XCAFDocDatum] {.
    cdecl, importcpp: "XCAFDoc_Datum::Set(@)", header: "XCAFDoc_Datum.hxx".}
proc set*(theLabel: TDF_Label): Handle[XCAFDocDatum] {.cdecl,
    importcpp: "XCAFDoc_Datum::Set(@)", header: "XCAFDoc_Datum.hxx".}
proc set*(this: var XCAFDocDatum; aName: Handle[TCollectionHAsciiString];
         aDescription: Handle[TCollectionHAsciiString];
         anIdentification: Handle[TCollectionHAsciiString]) {.cdecl,
    importcpp: "Set", header: "XCAFDoc_Datum.hxx".}
proc getName*(this: XCAFDocDatum): Handle[TCollectionHAsciiString] {.noSideEffect,
    cdecl, importcpp: "GetName", header: "XCAFDoc_Datum.hxx".}
proc getDescription*(this: XCAFDocDatum): Handle[TCollectionHAsciiString] {.
    noSideEffect, cdecl, importcpp: "GetDescription", header: "XCAFDoc_Datum.hxx".}
proc getIdentification*(this: XCAFDocDatum): Handle[TCollectionHAsciiString] {.
    noSideEffect, cdecl, importcpp: "GetIdentification", header: "XCAFDoc_Datum.hxx".}
proc getObject*(this: XCAFDocDatum): Handle[XCAFDimTolObjectsDatumObject] {.
    noSideEffect, cdecl, importcpp: "GetObject", header: "XCAFDoc_Datum.hxx".}
proc setObject*(this: var XCAFDocDatum;
               theDatumObject: Handle[XCAFDimTolObjectsDatumObject]) {.cdecl,
    importcpp: "SetObject", header: "XCAFDoc_Datum.hxx".}
proc id*(this: XCAFDocDatum): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "XCAFDoc_Datum.hxx".}
proc restore*(this: var XCAFDocDatum; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "XCAFDoc_Datum.hxx".}
proc newEmpty*(this: XCAFDocDatum): Handle[TDF_Attribute] {.noSideEffect, cdecl,
    importcpp: "NewEmpty", header: "XCAFDoc_Datum.hxx".}
proc paste*(this: XCAFDocDatum; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "XCAFDoc_Datum.hxx".}
proc dumpJson*(this: XCAFDocDatum; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_Datum.hxx".}

