import ../toploc/toploc_types
import ../tdf/tdf_types
import xcafdoc_types
import ../standard/standard_types



##  Created on: 2000-08-15
##  Created by: data exchange team
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





proc newXCAFDocLocation*(): XCAFDocLocation {.cdecl, constructor,
    importcpp: "XCAFDoc_Location(@)", header: "XCAFDoc_Location.hxx".}
proc getID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc_Location::GetID(@)",
                           header: "XCAFDoc_Location.hxx".}
proc set*(label: TDF_Label; loc: TopLocLocation): Handle[XCAFDocLocation] {.cdecl,
    importcpp: "XCAFDoc_Location::Set(@)", header: "XCAFDoc_Location.hxx".}
proc set*(this: var XCAFDocLocation; loc: TopLocLocation) {.cdecl, importcpp: "Set",
    header: "XCAFDoc_Location.hxx".}
proc get*(this: XCAFDocLocation): TopLocLocation {.noSideEffect, cdecl,
    importcpp: "Get", header: "XCAFDoc_Location.hxx".}
proc id*(this: XCAFDocLocation): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "XCAFDoc_Location.hxx".}
proc restore*(this: var XCAFDocLocation; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "XCAFDoc_Location.hxx".}
proc newEmpty*(this: XCAFDocLocation): Handle[TDF_Attribute] {.noSideEffect, cdecl,
    importcpp: "NewEmpty", header: "XCAFDoc_Location.hxx".}
proc paste*(this: XCAFDocLocation; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "XCAFDoc_Location.hxx".}
proc dumpJson*(this: XCAFDocLocation; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_Location.hxx".}

