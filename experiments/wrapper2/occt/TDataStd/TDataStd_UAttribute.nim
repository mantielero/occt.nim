##  Created on: 1999-06-11
##  Created by: Sergey RUIN
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_GUID,
  ../TDF/TDF_Attribute, ../Standard/Standard_OStream

discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DataSet"
discard "forward decl of TDataStd_UAttribute"
discard "forward decl of TDataStd_UAttribute"
type
  Handle_TDataStd_UAttribute* = handle[TDataStd_UAttribute]
  TDataStd_UAttribute* {.importcpp: "TDataStd_UAttribute",
                        header: "TDataStd_UAttribute.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                       ## !
                                                                                       ## api
                                                                                       ## class
                                                                                       ## methods
                                                                                       ##
                                                                                       ## !
                                                                                       ## =============
                                                                                       ##
                                                                                       ## !
                                                                                       ## Find,
                                                                                       ## or
                                                                                       ## create,
                                                                                       ## a
                                                                                       ## UAttribute
                                                                                       ## attribute
                                                                                       ## with
                                                                                       ## <LocalID>
                                                                                       ## as
                                                                                       ## Local
                                                                                       ## GUID.
                                                                                       ##
                                                                                       ## !
                                                                                       ## The
                                                                                       ## UAttribute
                                                                                       ## attribute
                                                                                       ## is
                                                                                       ## returned.
                                                                                       ##
                                                                                       ## !
                                                                                       ## UAttribute
                                                                                       ## methods
                                                                                       ##
                                                                                       ## !
                                                                                       ## ============


proc Set*(label: TDF_Label; LocalID: Standard_GUID): handle[TDataStd_UAttribute] {.
    importcpp: "TDataStd_UAttribute::Set(@)", header: "TDataStd_UAttribute.hxx".}
proc constructTDataStd_UAttribute*(): TDataStd_UAttribute {.constructor,
    importcpp: "TDataStd_UAttribute(@)", header: "TDataStd_UAttribute.hxx".}
proc SetID*(this: var TDataStd_UAttribute; LocalID: Standard_GUID) {.
    importcpp: "SetID", header: "TDataStd_UAttribute.hxx".}
proc ID*(this: TDataStd_UAttribute): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_UAttribute.hxx".}
proc Restore*(this: var TDataStd_UAttribute; with: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_UAttribute.hxx".}
proc NewEmpty*(this: TDataStd_UAttribute): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_UAttribute.hxx".}
proc Paste*(this: TDataStd_UAttribute; into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_UAttribute.hxx".}
proc References*(this: TDataStd_UAttribute; DS: handle[TDF_DataSet]) {.noSideEffect,
    importcpp: "References", header: "TDataStd_UAttribute.hxx".}
proc Dump*(this: TDataStd_UAttribute; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_UAttribute.hxx".}
proc DumpJson*(this: TDataStd_UAttribute; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDataStd_UAttribute.hxx".}
type
  TDataStd_UAttributebase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataStd_UAttribute::get_type_name(@)",
                              header: "TDataStd_UAttribute.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_UAttribute::get_type_descriptor(@)",
    header: "TDataStd_UAttribute.hxx".}
proc DynamicType*(this: TDataStd_UAttribute): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_UAttribute.hxx".}