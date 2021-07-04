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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../TopLoc/TopLoc_Location,
  ../TDF/TDF_Attribute

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TopLoc_Location"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDoc_Location"
discard "forward decl of XCAFDoc_Location"
type
  Handle_XCAFDoc_Location* = handle[XCAFDoc_Location]

## ! attribute to store TopLoc_Location

type
  XCAFDoc_Location* {.importcpp: "XCAFDoc_Location",
                     header: "XCAFDoc_Location.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                 ## !
                                                                                 ## class
                                                                                 ## methods
                                                                                 ##
                                                                                 ## !
                                                                                 ## =============


proc constructXCAFDoc_Location*(): XCAFDoc_Location {.constructor,
    importcpp: "XCAFDoc_Location(@)", header: "XCAFDoc_Location.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "XCAFDoc_Location::GetID(@)",
                            header: "XCAFDoc_Location.hxx".}
proc Set*(label: TDF_Label; Loc: TopLoc_Location): handle[XCAFDoc_Location] {.
    importcpp: "XCAFDoc_Location::Set(@)", header: "XCAFDoc_Location.hxx".}
proc Set*(this: var XCAFDoc_Location; Loc: TopLoc_Location) {.importcpp: "Set",
    header: "XCAFDoc_Location.hxx".}
proc Get*(this: XCAFDoc_Location): TopLoc_Location {.noSideEffect, importcpp: "Get",
    header: "XCAFDoc_Location.hxx".}
proc ID*(this: XCAFDoc_Location): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_Location.hxx".}
proc Restore*(this: var XCAFDoc_Location; With: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "XCAFDoc_Location.hxx".}
proc NewEmpty*(this: XCAFDoc_Location): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XCAFDoc_Location.hxx".}
proc Paste*(this: XCAFDoc_Location; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "XCAFDoc_Location.hxx".}
proc DumpJson*(this: XCAFDoc_Location; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "XCAFDoc_Location.hxx".}
type
  XCAFDoc_Locationbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "XCAFDoc_Location::get_type_name(@)",
                              header: "XCAFDoc_Location.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XCAFDoc_Location::get_type_descriptor(@)",
    header: "XCAFDoc_Location.hxx".}
proc DynamicType*(this: XCAFDoc_Location): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFDoc_Location.hxx".}