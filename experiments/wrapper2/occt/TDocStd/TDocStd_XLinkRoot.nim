##  Created by: DAUTRY Philippe
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
  ../Standard/Standard, ../Standard/Standard_Type, TDocStd_XLinkPtr,
  ../TDF/TDF_Attribute, ../Standard/Standard_OStream

discard "forward decl of TDocStd_XLinkIterator"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Data"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDocStd_XLinkRoot"
discard "forward decl of TDocStd_XLinkRoot"
type
  Handle_TDocStd_XLinkRoot* = handle[TDocStd_XLinkRoot]

## ! This attribute is the root of all external
## ! references contained in a Data from TDF. Only one
## ! instance of this class is added to the TDF_Data
## ! root label. Starting from this attribute all the
## ! Reference are linked together, to be found
## ! easely.

type
  TDocStd_XLinkRoot* {.importcpp: "TDocStd_XLinkRoot",
                      header: "TDocStd_XLinkRoot.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                   ## !
                                                                                   ## Returns
                                                                                   ## the
                                                                                   ## ID:
                                                                                   ## 2a96b61d-ec8b-11d0-bee7-080009dc3333
                                                                                   ##
                                                                                   ## !
                                                                                   ## Initializes
                                                                                   ## fields.


proc GetID*(): Standard_GUID {.importcpp: "TDocStd_XLinkRoot::GetID(@)",
                            header: "TDocStd_XLinkRoot.hxx".}
proc Set*(aDF: handle[TDF_Data]): handle[TDocStd_XLinkRoot] {.
    importcpp: "TDocStd_XLinkRoot::Set(@)", header: "TDocStd_XLinkRoot.hxx".}
proc Insert*(anXLinkPtr: TDocStd_XLinkPtr) {.
    importcpp: "TDocStd_XLinkRoot::Insert(@)", header: "TDocStd_XLinkRoot.hxx".}
proc Remove*(anXLinkPtr: TDocStd_XLinkPtr) {.
    importcpp: "TDocStd_XLinkRoot::Remove(@)", header: "TDocStd_XLinkRoot.hxx".}
proc ID*(this: TDocStd_XLinkRoot): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDocStd_XLinkRoot.hxx".}
proc BackupCopy*(this: TDocStd_XLinkRoot): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "BackupCopy", header: "TDocStd_XLinkRoot.hxx".}
proc Restore*(this: var TDocStd_XLinkRoot; anAttribute: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDocStd_XLinkRoot.hxx".}
proc NewEmpty*(this: TDocStd_XLinkRoot): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDocStd_XLinkRoot.hxx".}
proc Paste*(this: TDocStd_XLinkRoot; intoAttribute: handle[TDF_Attribute];
           aRelocationTable: handle[TDF_RelocationTable]) {.noSideEffect,
    importcpp: "Paste", header: "TDocStd_XLinkRoot.hxx".}
proc Dump*(this: TDocStd_XLinkRoot; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDocStd_XLinkRoot.hxx".}
type
  TDocStd_XLinkRootbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDocStd_XLinkRoot::get_type_name(@)",
                              header: "TDocStd_XLinkRoot.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDocStd_XLinkRoot::get_type_descriptor(@)",
    header: "TDocStd_XLinkRoot.hxx".}
proc DynamicType*(this: TDocStd_XLinkRoot): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDocStd_XLinkRoot.hxx".}