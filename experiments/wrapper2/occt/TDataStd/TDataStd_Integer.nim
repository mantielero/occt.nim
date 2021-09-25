##  Created on: 1997-02-06
##  Created by: Denis PASCAL
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

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataStd_Integer"
discard "forward decl of TDataStd_Integer"
type
  HandleTDataStdInteger* = Handle[TDataStdInteger]

## ! The basis to define an integer attribute.

type
  TDataStdInteger* {.importcpp: "TDataStd_Integer", header: "TDataStd_Integer.hxx",
                    bycopy.} = object of TDF_Attribute ## ! class methods
                                                  ## ! =============
                                                  ## ! Returns the GUID for integers.


proc getID*(): StandardGUID {.importcpp: "TDataStd_Integer::GetID(@)",
                           header: "TDataStd_Integer.hxx".}
proc set*(label: TDF_Label; value: int): Handle[TDataStdInteger] {.
    importcpp: "TDataStd_Integer::Set(@)", header: "TDataStd_Integer.hxx".}
proc set*(label: TDF_Label; guid: StandardGUID; value: int): Handle[TDataStdInteger] {.
    importcpp: "TDataStd_Integer::Set(@)", header: "TDataStd_Integer.hxx".}
proc set*(this: var TDataStdInteger; v: int) {.importcpp: "Set",
    header: "TDataStd_Integer.hxx".}
proc setID*(this: var TDataStdInteger; guid: StandardGUID) {.importcpp: "SetID",
    header: "TDataStd_Integer.hxx".}
proc setID*(this: var TDataStdInteger) {.importcpp: "SetID",
                                     header: "TDataStd_Integer.hxx".}
proc get*(this: TDataStdInteger): int {.noSideEffect, importcpp: "Get",
                                    header: "TDataStd_Integer.hxx".}
proc isCaptured*(this: TDataStdInteger): bool {.noSideEffect,
    importcpp: "IsCaptured", header: "TDataStd_Integer.hxx".}
proc id*(this: TDataStdInteger): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_Integer.hxx".}
proc restore*(this: var TDataStdInteger; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_Integer.hxx".}
proc newEmpty*(this: TDataStdInteger): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_Integer.hxx".}
proc paste*(this: TDataStdInteger; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_Integer.hxx".}
proc dump*(this: TDataStdInteger; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_Integer.hxx".}
proc constructTDataStdInteger*(): TDataStdInteger {.constructor,
    importcpp: "TDataStd_Integer(@)", header: "TDataStd_Integer.hxx".}
proc dumpJson*(this: TDataStdInteger; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "TDataStd_Integer.hxx".}
type
  TDataStdIntegerbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataStd_Integer::get_type_name(@)",
                            header: "TDataStd_Integer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataStd_Integer::get_type_descriptor(@)",
    header: "TDataStd_Integer.hxx".}
proc dynamicType*(this: TDataStdInteger): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_Integer.hxx".}
