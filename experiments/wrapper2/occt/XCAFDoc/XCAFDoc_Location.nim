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

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TopLoc_Location"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDoc_Location"
discard "forward decl of XCAFDoc_Location"
type
  HandleC1C1* = Handle[XCAFDocLocation]

## ! attribute to store TopLoc_Location

type
  XCAFDocLocation* {.importcpp: "XCAFDoc_Location", header: "XCAFDoc_Location.hxx",
                    bycopy.} = object of TDF_Attribute ## ! class methods
                                                  ## ! =============


proc constructXCAFDocLocation*(): XCAFDocLocation {.constructor,
    importcpp: "XCAFDoc_Location(@)", header: "XCAFDoc_Location.hxx".}
proc getID*(): StandardGUID {.importcpp: "XCAFDoc_Location::GetID(@)",
                           header: "XCAFDoc_Location.hxx".}
proc set*(label: TDF_Label; loc: TopLocLocation): Handle[XCAFDocLocation] {.
    importcpp: "XCAFDoc_Location::Set(@)", header: "XCAFDoc_Location.hxx".}
proc set*(this: var XCAFDocLocation; loc: TopLocLocation) {.importcpp: "Set",
    header: "XCAFDoc_Location.hxx".}
proc get*(this: XCAFDocLocation): TopLocLocation {.noSideEffect, importcpp: "Get",
    header: "XCAFDoc_Location.hxx".}
proc id*(this: XCAFDocLocation): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_Location.hxx".}
proc restore*(this: var XCAFDocLocation; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "XCAFDoc_Location.hxx".}
proc newEmpty*(this: XCAFDocLocation): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XCAFDoc_Location.hxx".}
proc paste*(this: XCAFDocLocation; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "XCAFDoc_Location.hxx".}
proc dumpJson*(this: XCAFDocLocation; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "XCAFDoc_Location.hxx".}
type
  XCAFDocLocationbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "XCAFDoc_Location::get_type_name(@)",
                            header: "XCAFDoc_Location.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XCAFDoc_Location::get_type_descriptor(@)",
    header: "XCAFDoc_Location.hxx".}
proc dynamicType*(this: XCAFDocLocation): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFDoc_Location.hxx".}

























