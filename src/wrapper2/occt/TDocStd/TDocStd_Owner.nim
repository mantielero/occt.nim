##  Created on: 1999-07-12
##  Created by: Denis PASCAL
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TDF/TDF_Attribute,
  ../Standard/Standard_OStream

discard "forward decl of TDocStd_Document"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Data"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDocStd_Owner"
discard "forward decl of TDocStd_Owner"
type
  Handle_TDocStd_Owner* = handle[TDocStd_Owner]

## ! This  attribute located  at  the  root label  of the
## ! framework contains  a   back reference to   the  owner
## ! TDocStd_Document, providing acces to the document from
## ! any label.  private class Owner;

type
  TDocStd_Owner* {.importcpp: "TDocStd_Owner", header: "TDocStd_Owner.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                                     ## !
                                                                                                     ## class
                                                                                                     ## methods
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## =============
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## It
                                                                                                     ## keeps
                                                                                                     ## pointer
                                                                                                     ## to
                                                                                                     ## the
                                                                                                     ## document
                                                                                                     ## to
                                                                                                     ## avoid
                                                                                                     ## handles
                                                                                                     ## cyclic
                                                                                                     ## dependency


proc GetID*(): Standard_GUID {.importcpp: "TDocStd_Owner::GetID(@)",
                            header: "TDocStd_Owner.hxx".}
proc SetDocument*(indata: handle[TDF_Data]; doc: handle[TDocStd_Document]) {.
    importcpp: "TDocStd_Owner::SetDocument(@)", header: "TDocStd_Owner.hxx".}
proc SetDocument*(indata: handle[TDF_Data]; doc: ptr TDocStd_Document) {.
    importcpp: "TDocStd_Owner::SetDocument(@)", header: "TDocStd_Owner.hxx".}
proc GetDocument*(ofdata: handle[TDF_Data]): handle[TDocStd_Document] {.
    importcpp: "TDocStd_Owner::GetDocument(@)", header: "TDocStd_Owner.hxx".}
proc constructTDocStd_Owner*(): TDocStd_Owner {.constructor,
    importcpp: "TDocStd_Owner(@)", header: "TDocStd_Owner.hxx".}
proc SetDocument*(this: var TDocStd_Owner; document: handle[TDocStd_Document]) {.
    importcpp: "SetDocument", header: "TDocStd_Owner.hxx".}
proc SetDocument*(this: var TDocStd_Owner; document: ptr TDocStd_Document) {.
    importcpp: "SetDocument", header: "TDocStd_Owner.hxx".}
proc GetDocument*(this: TDocStd_Owner): handle[TDocStd_Document] {.noSideEffect,
    importcpp: "GetDocument", header: "TDocStd_Owner.hxx".}
proc ID*(this: TDocStd_Owner): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDocStd_Owner.hxx".}
proc Restore*(this: var TDocStd_Owner; With: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDocStd_Owner.hxx".}
proc NewEmpty*(this: TDocStd_Owner): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDocStd_Owner.hxx".}
proc Paste*(this: TDocStd_Owner; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDocStd_Owner.hxx".}
proc Dump*(this: TDocStd_Owner; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDocStd_Owner.hxx".}
proc DumpJson*(this: TDocStd_Owner; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDocStd_Owner.hxx".}
type
  TDocStd_Ownerbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDocStd_Owner::get_type_name(@)",
                              header: "TDocStd_Owner.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDocStd_Owner::get_type_descriptor(@)",
    header: "TDocStd_Owner.hxx".}
proc DynamicType*(this: TDocStd_Owner): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDocStd_Owner.hxx".}