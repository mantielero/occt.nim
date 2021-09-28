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

discard "forward decl of TDocStd_XLinkIterator"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Data"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDocStd_XLinkRoot"
discard "forward decl of TDocStd_XLinkRoot"
type
  HandleC1C1* = Handle[TDocStdXLinkRoot]

## ! This attribute is the root of all external
## ! references contained in a Data from TDF. Only one
## ! instance of this class is added to the TDF_Data
## ! root label. Starting from this attribute all the
## ! Reference are linked together, to be found
## ! easely.

type
  TDocStdXLinkRoot* {.importcpp: "TDocStd_XLinkRoot",
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


proc getID*(): StandardGUID {.importcpp: "TDocStd_XLinkRoot::GetID(@)",
                           header: "TDocStd_XLinkRoot.hxx".}
proc set*(aDF: Handle[TDF_Data]): Handle[TDocStdXLinkRoot] {.
    importcpp: "TDocStd_XLinkRoot::Set(@)", header: "TDocStd_XLinkRoot.hxx".}
proc insert*(anXLinkPtr: TDocStdXLinkPtr) {.
    importcpp: "TDocStd_XLinkRoot::Insert(@)", header: "TDocStd_XLinkRoot.hxx".}
proc remove*(anXLinkPtr: TDocStdXLinkPtr) {.
    importcpp: "TDocStd_XLinkRoot::Remove(@)", header: "TDocStd_XLinkRoot.hxx".}
proc id*(this: TDocStdXLinkRoot): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDocStd_XLinkRoot.hxx".}
proc backupCopy*(this: TDocStdXLinkRoot): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "BackupCopy", header: "TDocStd_XLinkRoot.hxx".}
proc restore*(this: var TDocStdXLinkRoot; anAttribute: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDocStd_XLinkRoot.hxx".}
proc newEmpty*(this: TDocStdXLinkRoot): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDocStd_XLinkRoot.hxx".}
proc paste*(this: TDocStdXLinkRoot; intoAttribute: Handle[TDF_Attribute];
           aRelocationTable: Handle[TDF_RelocationTable]) {.noSideEffect,
    importcpp: "Paste", header: "TDocStd_XLinkRoot.hxx".}
proc dump*(this: TDocStdXLinkRoot; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDocStd_XLinkRoot.hxx".}
type
  TDocStdXLinkRootbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDocStd_XLinkRoot::get_type_name(@)",
                            header: "TDocStd_XLinkRoot.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDocStd_XLinkRoot::get_type_descriptor(@)",
    header: "TDocStd_XLinkRoot.hxx".}
proc dynamicType*(this: TDocStdXLinkRoot): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDocStd_XLinkRoot.hxx".}

























