##  Created on: 2000-09-08
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Pnt,
  ../TDF/TDF_Attribute, ../Standard/Standard_Boolean, ../Standard/Standard_OStream

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of gp_Pnt"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDoc_Centroid"
discard "forward decl of XCAFDoc_Centroid"
type
  Handle_XCAFDoc_Centroid* = handle[XCAFDoc_Centroid]

## ! attribute to store centroid

type
  XCAFDoc_Centroid* {.importcpp: "XCAFDoc_Centroid",
                     header: "XCAFDoc_Centroid.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                 ## !
                                                                                 ## class
                                                                                 ## methods
                                                                                 ##
                                                                                 ## !
                                                                                 ## =============


proc constructXCAFDoc_Centroid*(): XCAFDoc_Centroid {.constructor,
    importcpp: "XCAFDoc_Centroid(@)", header: "XCAFDoc_Centroid.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "XCAFDoc_Centroid::GetID(@)",
                            header: "XCAFDoc_Centroid.hxx".}
proc Set*(label: TDF_Label; pnt: gp_Pnt): handle[XCAFDoc_Centroid] {.
    importcpp: "XCAFDoc_Centroid::Set(@)", header: "XCAFDoc_Centroid.hxx".}
proc Set*(this: var XCAFDoc_Centroid; pnt: gp_Pnt) {.importcpp: "Set",
    header: "XCAFDoc_Centroid.hxx".}
proc Get*(this: XCAFDoc_Centroid): gp_Pnt {.noSideEffect, importcpp: "Get",
                                        header: "XCAFDoc_Centroid.hxx".}
proc Get*(label: TDF_Label; pnt: var gp_Pnt): Standard_Boolean {.
    importcpp: "XCAFDoc_Centroid::Get(@)", header: "XCAFDoc_Centroid.hxx".}
proc ID*(this: XCAFDoc_Centroid): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_Centroid.hxx".}
proc Restore*(this: var XCAFDoc_Centroid; With: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "XCAFDoc_Centroid.hxx".}
proc NewEmpty*(this: XCAFDoc_Centroid): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XCAFDoc_Centroid.hxx".}
proc Paste*(this: XCAFDoc_Centroid; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "XCAFDoc_Centroid.hxx".}
proc Dump*(this: XCAFDoc_Centroid; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "XCAFDoc_Centroid.hxx".}
proc DumpJson*(this: XCAFDoc_Centroid; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "XCAFDoc_Centroid.hxx".}
type
  XCAFDoc_Centroidbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "XCAFDoc_Centroid::get_type_name(@)",
                              header: "XCAFDoc_Centroid.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XCAFDoc_Centroid::get_type_descriptor(@)",
    header: "XCAFDoc_Centroid.hxx".}
proc DynamicType*(this: XCAFDoc_Centroid): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFDoc_Centroid.hxx".}