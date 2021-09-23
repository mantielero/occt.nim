##  Copyright (c) 2015 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Handle,
  ../Standard/Standard_Transient, ../NCollection/NCollection_Sequence,
  ../TDF/TDF_Label

discard "forward decl of StdObjMgt_ReadData"
discard "forward decl of StdObjMgt_WriteData"
discard "forward decl of TDocStd_Document"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_Data"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of TCollection_HExtendedString"
type
  StdObjMgt_Persistent* {.importcpp: "StdObjMgt_Persistent",
                         header: "StdObjMgt_Persistent.hxx", bycopy.} = object of Standard_Transient


proc constructStdObjMgt_Persistent*(): StdObjMgt_Persistent {.constructor,
    importcpp: "StdObjMgt_Persistent(@)", header: "StdObjMgt_Persistent.hxx".}
type
  StdObjMgt_PersistentInstantiator* = proc (): handle[StdObjMgt_Persistent]

proc Instantiate*[Persistent](): handle[StdObjMgt_Persistent] {.
    importcpp: "StdObjMgt_Persistent::Instantiate(@)",
    header: "StdObjMgt_Persistent.hxx".}
proc Read*(this: var StdObjMgt_Persistent; theReadData: var StdObjMgt_ReadData) {.
    importcpp: "Read", header: "StdObjMgt_Persistent.hxx".}
proc Write*(this: StdObjMgt_Persistent; theWriteData: var StdObjMgt_WriteData) {.
    noSideEffect, importcpp: "Write", header: "StdObjMgt_Persistent.hxx".}
type
  StdObjMgt_PersistentSequenceOfPersistent* = NCollection_Sequence[
      handle[StdObjMgt_Persistent]]

proc PChildren*(this: StdObjMgt_Persistent;
               a2: var StdObjMgt_PersistentSequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "StdObjMgt_Persistent.hxx".}
proc PName*(this: StdObjMgt_Persistent): Standard_CString {.noSideEffect,
    importcpp: "PName", header: "StdObjMgt_Persistent.hxx".}
proc ImportDocument*(this: StdObjMgt_Persistent;
                    theDocument: handle[TDocStd_Document]) {.noSideEffect,
    importcpp: "ImportDocument", header: "StdObjMgt_Persistent.hxx".}
proc CreateAttribute*(this: var StdObjMgt_Persistent): handle[TDF_Attribute] {.
    importcpp: "CreateAttribute", header: "StdObjMgt_Persistent.hxx".}
proc GetAttribute*(this: StdObjMgt_Persistent): handle[TDF_Attribute] {.
    noSideEffect, importcpp: "GetAttribute", header: "StdObjMgt_Persistent.hxx".}
proc ImportAttribute*(this: var StdObjMgt_Persistent) {.
    importcpp: "ImportAttribute", header: "StdObjMgt_Persistent.hxx".}
proc AsciiString*(this: StdObjMgt_Persistent): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "AsciiString", header: "StdObjMgt_Persistent.hxx".}
proc ExtString*(this: StdObjMgt_Persistent): handle[TCollection_HExtendedString] {.
    noSideEffect, importcpp: "ExtString", header: "StdObjMgt_Persistent.hxx".}
proc Label*(this: StdObjMgt_Persistent; theDF: handle[TDF_Data]): TDF_Label {.
    noSideEffect, importcpp: "Label", header: "StdObjMgt_Persistent.hxx".}
proc TypeNum*(this: StdObjMgt_Persistent): Standard_Integer {.noSideEffect,
    importcpp: "TypeNum", header: "StdObjMgt_Persistent.hxx".}
proc TypeNum*(this: var StdObjMgt_Persistent; theTypeNum: Standard_Integer) {.
    importcpp: "TypeNum", header: "StdObjMgt_Persistent.hxx".}
proc RefNum*(this: StdObjMgt_Persistent): Standard_Integer {.noSideEffect,
    importcpp: "RefNum", header: "StdObjMgt_Persistent.hxx".}
proc RefNum*(this: var StdObjMgt_Persistent; theRefNum: Standard_Integer) {.
    importcpp: "RefNum", header: "StdObjMgt_Persistent.hxx".}