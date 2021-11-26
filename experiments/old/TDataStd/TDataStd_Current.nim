##  Created on: 1999-08-02
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

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataStd_Current"
discard "forward decl of TDataStd_Current"
type
  HandleC1C1* = Handle[TDataStdCurrent]

## ! this attribute,  located at root label,  manage an
## ! access to a current label.

type
  TDataStdCurrent* {.importcpp: "TDataStd_Current", header: "TDataStd_Current.hxx",
                    bycopy.} = object of TDF_Attribute ## ! class methods
                                                  ## ! =============


proc getID*(): StandardGUID {.importcpp: "TDataStd_Current::GetID(@)",
                           header: "TDataStd_Current.hxx".}
proc set*(L: TDF_Label) {.importcpp: "TDataStd_Current::Set(@)",
                       header: "TDataStd_Current.hxx".}
proc get*(acces: TDF_Label): TDF_Label {.importcpp: "TDataStd_Current::Get(@)",
                                     header: "TDataStd_Current.hxx".}
proc has*(acces: TDF_Label): bool {.importcpp: "TDataStd_Current::Has(@)",
                                header: "TDataStd_Current.hxx".}
proc constructTDataStdCurrent*(): TDataStdCurrent {.constructor,
    importcpp: "TDataStd_Current(@)", header: "TDataStd_Current.hxx".}
proc setLabel*(this: var TDataStdCurrent; current: TDF_Label) {.importcpp: "SetLabel",
    header: "TDataStd_Current.hxx".}
proc getLabel*(this: TDataStdCurrent): TDF_Label {.noSideEffect,
    importcpp: "GetLabel", header: "TDataStd_Current.hxx".}
proc id*(this: TDataStdCurrent): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_Current.hxx".}
proc restore*(this: var TDataStdCurrent; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_Current.hxx".}
proc newEmpty*(this: TDataStdCurrent): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_Current.hxx".}
proc paste*(this: TDataStdCurrent; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_Current.hxx".}
proc dump*(this: TDataStdCurrent; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_Current.hxx".}
proc dumpJson*(this: TDataStdCurrent; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "TDataStd_Current.hxx".}
type
  TDataStdCurrentbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataStd_Current::get_type_name(@)",
                            header: "TDataStd_Current.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataStd_Current::get_type_descriptor(@)",
    header: "TDataStd_Current.hxx".}
proc dynamicType*(this: TDataStdCurrent): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_Current.hxx".}

























