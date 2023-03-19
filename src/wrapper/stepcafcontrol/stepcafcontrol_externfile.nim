import stepcafcontrol_types
import ../standard/standard_types
import ../stepcontrol/stepcontrol_types
import ../ifselect/ifselect_types
import ../tcollection/tcollection_types
import ../tdf/tdf_types

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


proc newSTEPCAFControl_ExternFile*(): STEPCAFControl_ExternFile {.cdecl,
    constructor, importcpp: "STEPCAFControl_ExternFile(@)",
    header: "STEPCAFControl_ExternFile.hxx".}
proc setWS*(this: var STEPCAFControl_ExternFile; WS: Handle[XSControl_WorkSession]) {.
    cdecl, importcpp: "SetWS", header: "STEPCAFControl_ExternFile.hxx".}
proc getWS*(this: STEPCAFControl_ExternFile): Handle[XSControl_WorkSession] {.
    noSideEffect, cdecl, importcpp: "GetWS", header: "STEPCAFControl_ExternFile.hxx".}
proc setLoadStatus*(this: var STEPCAFControl_ExternFile; stat: IFSelect_ReturnStatus) {.
    cdecl, importcpp: "SetLoadStatus", header: "STEPCAFControl_ExternFile.hxx".}
proc getLoadStatus*(this: STEPCAFControl_ExternFile): IFSelect_ReturnStatus {.
    noSideEffect, cdecl, importcpp: "GetLoadStatus",
    header: "STEPCAFControl_ExternFile.hxx".}
proc setTransferStatus*(this: var STEPCAFControl_ExternFile; isok: bool) {.cdecl,
    importcpp: "SetTransferStatus", header: "STEPCAFControl_ExternFile.hxx".}
proc getTransferStatus*(this: STEPCAFControl_ExternFile): bool {.noSideEffect, cdecl,
    importcpp: "GetTransferStatus", header: "STEPCAFControl_ExternFile.hxx".}
proc setWriteStatus*(this: var STEPCAFControl_ExternFile;
                    stat: IFSelect_ReturnStatus) {.cdecl,
    importcpp: "SetWriteStatus", header: "STEPCAFControl_ExternFile.hxx".}
proc getWriteStatus*(this: STEPCAFControl_ExternFile): IFSelect_ReturnStatus {.
    noSideEffect, cdecl, importcpp: "GetWriteStatus",
    header: "STEPCAFControl_ExternFile.hxx".}
proc setName*(this: var STEPCAFControl_ExternFile;
             name: Handle[TCollection_HAsciiString]) {.cdecl, importcpp: "SetName",
    header: "STEPCAFControl_ExternFile.hxx".}
proc getName*(this: STEPCAFControl_ExternFile): Handle[TCollection_HAsciiString] {.
    noSideEffect, cdecl, importcpp: "GetName",
    header: "STEPCAFControl_ExternFile.hxx".}
proc setLabel*(this: var STEPCAFControl_ExternFile; L: TDF_Label) {.cdecl,
    importcpp: "SetLabel", header: "STEPCAFControl_ExternFile.hxx".}
proc getLabel*(this: STEPCAFControl_ExternFile): TDF_Label {.noSideEffect, cdecl,
    importcpp: "GetLabel", header: "STEPCAFControl_ExternFile.hxx".}