##  Created on: 2000-09-28
##  Created by: Andrey BETENEV
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

discard "forward decl of XSControl_WorkSession"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of TDF_Label"
discard "forward decl of STEPCAFControl_ExternFile"
discard "forward decl of STEPCAFControl_ExternFile"
type
  HandleSTEPCAFControlExternFile* = Handle[STEPCAFControlExternFile]

## ! Auxiliary class serving as container for data resulting
## ! from translation of external file

type
  STEPCAFControlExternFile* {.importcpp: "STEPCAFControl_ExternFile",
                             header: "STEPCAFControl_ExternFile.hxx", bycopy.} = object of StandardTransient ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## an
                                                                                                      ## empty
                                                                                                      ## structure


proc constructSTEPCAFControlExternFile*(): STEPCAFControlExternFile {.constructor,
    importcpp: "STEPCAFControl_ExternFile(@)",
    header: "STEPCAFControl_ExternFile.hxx".}
proc setWS*(this: var STEPCAFControlExternFile; ws: Handle[XSControlWorkSession]) {.
    importcpp: "SetWS", header: "STEPCAFControl_ExternFile.hxx".}
proc getWS*(this: STEPCAFControlExternFile): Handle[XSControlWorkSession] {.
    noSideEffect, importcpp: "GetWS", header: "STEPCAFControl_ExternFile.hxx".}
proc setLoadStatus*(this: var STEPCAFControlExternFile; stat: IFSelectReturnStatus) {.
    importcpp: "SetLoadStatus", header: "STEPCAFControl_ExternFile.hxx".}
proc getLoadStatus*(this: STEPCAFControlExternFile): IFSelectReturnStatus {.
    noSideEffect, importcpp: "GetLoadStatus",
    header: "STEPCAFControl_ExternFile.hxx".}
proc setTransferStatus*(this: var STEPCAFControlExternFile; isok: StandardBoolean) {.
    importcpp: "SetTransferStatus", header: "STEPCAFControl_ExternFile.hxx".}
proc getTransferStatus*(this: STEPCAFControlExternFile): StandardBoolean {.
    noSideEffect, importcpp: "GetTransferStatus",
    header: "STEPCAFControl_ExternFile.hxx".}
proc setWriteStatus*(this: var STEPCAFControlExternFile; stat: IFSelectReturnStatus) {.
    importcpp: "SetWriteStatus", header: "STEPCAFControl_ExternFile.hxx".}
proc getWriteStatus*(this: STEPCAFControlExternFile): IFSelectReturnStatus {.
    noSideEffect, importcpp: "GetWriteStatus",
    header: "STEPCAFControl_ExternFile.hxx".}
proc setName*(this: var STEPCAFControlExternFile;
             name: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "STEPCAFControl_ExternFile.hxx".}
proc getName*(this: STEPCAFControlExternFile): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "GetName", header: "STEPCAFControl_ExternFile.hxx".}
proc setLabel*(this: var STEPCAFControlExternFile; L: TDF_Label) {.
    importcpp: "SetLabel", header: "STEPCAFControl_ExternFile.hxx".}
proc getLabel*(this: STEPCAFControlExternFile): TDF_Label {.noSideEffect,
    importcpp: "GetLabel", header: "STEPCAFControl_ExternFile.hxx".}
type
  STEPCAFControlExternFilebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "STEPCAFControl_ExternFile::get_type_name(@)",
                            header: "STEPCAFControl_ExternFile.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "STEPCAFControl_ExternFile::get_type_descriptor(@)",
    header: "STEPCAFControl_ExternFile.hxx".}
proc dynamicType*(this: STEPCAFControlExternFile): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "STEPCAFControl_ExternFile.hxx".}

