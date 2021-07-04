##  Created on: 1997-08-04
##  Created by: VAUTHIER Jean-Claude
##  Copyright (c) 1997-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  TDF_Attribute

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_TagSource"
discard "forward decl of TDF_TagSource"
type
  Handle_TDF_TagSource* = handle[TDF_TagSource]

## ! This attribute manage   a tag provider   to create
## ! child labels of a given one.

type
  TDF_TagSource* {.importcpp: "TDF_TagSource", header: "TDF_TagSource.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                                     ## !
                                                                                                     ## class
                                                                                                     ## methods
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## =============


proc GetID*(): Standard_GUID {.importcpp: "TDF_TagSource::GetID(@)",
                            header: "TDF_TagSource.hxx".}
proc Set*(label: TDF_Label): handle[TDF_TagSource] {.
    importcpp: "TDF_TagSource::Set(@)", header: "TDF_TagSource.hxx".}
proc NewChild*(L: TDF_Label): TDF_Label {.importcpp: "TDF_TagSource::NewChild(@)",
                                      header: "TDF_TagSource.hxx".}
proc constructTDF_TagSource*(): TDF_TagSource {.constructor,
    importcpp: "TDF_TagSource(@)", header: "TDF_TagSource.hxx".}
proc NewTag*(this: var TDF_TagSource): Standard_Integer {.importcpp: "NewTag",
    header: "TDF_TagSource.hxx".}
proc NewChild*(this: var TDF_TagSource): TDF_Label {.importcpp: "NewChild",
    header: "TDF_TagSource.hxx".}
proc Get*(this: TDF_TagSource): Standard_Integer {.noSideEffect, importcpp: "Get",
    header: "TDF_TagSource.hxx".}
proc Set*(this: var TDF_TagSource; T: Standard_Integer) {.importcpp: "Set",
    header: "TDF_TagSource.hxx".}
proc ID*(this: TDF_TagSource): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDF_TagSource.hxx".}
proc Restore*(this: var TDF_TagSource; with: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDF_TagSource.hxx".}
proc NewEmpty*(this: TDF_TagSource): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDF_TagSource.hxx".}
proc Paste*(this: TDF_TagSource; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDF_TagSource.hxx".}
proc DumpJson*(this: TDF_TagSource; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDF_TagSource.hxx".}
type
  TDF_TagSourcebase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDF_TagSource::get_type_name(@)",
                              header: "TDF_TagSource.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDF_TagSource::get_type_descriptor(@)",
    header: "TDF_TagSource.hxx".}
proc DynamicType*(this: TDF_TagSource): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDF_TagSource.hxx".}