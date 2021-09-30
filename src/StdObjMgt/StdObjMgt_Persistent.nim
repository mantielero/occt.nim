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

discard "forward decl of StdObjMgt_ReadData"
discard "forward decl of StdObjMgt_WriteData"
discard "forward decl of TDocStd_Document"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_Data"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of TCollection_HExtendedString"
type
  StdObjMgtPersistent* {.importcpp: "StdObjMgt_Persistent",
                        header: "StdObjMgt_Persistent.hxx", bycopy.} = object of StandardTransient


proc constructStdObjMgtPersistent*(): StdObjMgtPersistent {.constructor,
    importcpp: "StdObjMgt_Persistent(@)", header: "StdObjMgt_Persistent.hxx".}
type
  StdObjMgtPersistentInstantiator* = proc (): Handle[StdObjMgtPersistent]

proc instantiate*[Persistent](): Handle[StdObjMgtPersistent] {.
    importcpp: "StdObjMgt_Persistent::Instantiate(@)",
    header: "StdObjMgt_Persistent.hxx".}
proc read*(this: var StdObjMgtPersistent; theReadData: var StdObjMgtReadData) {.
    importcpp: "Read", header: "StdObjMgt_Persistent.hxx".}
proc write*(this: StdObjMgtPersistent; theWriteData: var StdObjMgtWriteData) {.
    noSideEffect, importcpp: "Write", header: "StdObjMgt_Persistent.hxx".}
type
  StdObjMgtPersistentSequenceOfPersistent* = NCollectionSequence[
      Handle[StdObjMgtPersistent]]

proc pChildren*(this: StdObjMgtPersistent;
               a2: var StdObjMgtPersistentSequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "StdObjMgt_Persistent.hxx".}
proc pName*(this: StdObjMgtPersistent): StandardCString {.noSideEffect,
    importcpp: "PName", header: "StdObjMgt_Persistent.hxx".}
proc importDocument*(this: StdObjMgtPersistent;
                    theDocument: Handle[TDocStdDocument]) {.noSideEffect,
    importcpp: "ImportDocument", header: "StdObjMgt_Persistent.hxx".}
proc createAttribute*(this: var StdObjMgtPersistent): Handle[TDF_Attribute] {.
    importcpp: "CreateAttribute", header: "StdObjMgt_Persistent.hxx".}
proc getAttribute*(this: StdObjMgtPersistent): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "GetAttribute", header: "StdObjMgt_Persistent.hxx".}
proc importAttribute*(this: var StdObjMgtPersistent) {.importcpp: "ImportAttribute",
    header: "StdObjMgt_Persistent.hxx".}
proc asciiString*(this: StdObjMgtPersistent): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "AsciiString", header: "StdObjMgt_Persistent.hxx".}
proc extString*(this: StdObjMgtPersistent): Handle[TCollectionHExtendedString] {.
    noSideEffect, importcpp: "ExtString", header: "StdObjMgt_Persistent.hxx".}
proc label*(this: StdObjMgtPersistent; theDF: Handle[TDF_Data]): TDF_Label {.
    noSideEffect, importcpp: "Label", header: "StdObjMgt_Persistent.hxx".}
proc typeNum*(this: StdObjMgtPersistent): cint {.noSideEffect, importcpp: "TypeNum",
    header: "StdObjMgt_Persistent.hxx".}
proc typeNum*(this: var StdObjMgtPersistent; theTypeNum: cint) {.importcpp: "TypeNum",
    header: "StdObjMgt_Persistent.hxx".}
proc refNum*(this: StdObjMgtPersistent): cint {.noSideEffect, importcpp: "RefNum",
    header: "StdObjMgt_Persistent.hxx".}
proc refNum*(this: var StdObjMgtPersistent; theRefNum: cint) {.importcpp: "RefNum",
    header: "StdObjMgt_Persistent.hxx".}

























