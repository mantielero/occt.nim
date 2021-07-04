##  Created on: 1996-09-04
##  Created by: Christian CAILLET
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HSequenceOfTransient, Transfer_ProcessForTransient,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../Standard/Standard_CString, ../Standard/Standard_Type,
  ../Standard/Standard_Transient, ../TCollection/TCollection_AsciiString,
  ../NCollection/NCollection_DataMap

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_HGraph"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of Transfer_TransientProcess"
type
  Handle_Transfer_TransientProcess* = handle[Transfer_TransientProcess]

## ! Adds specific features to the generic definition :
## ! TransientProcess is intended to work from an InterfaceModel
## ! to a set of application objects.
## !
## ! Hence, some informations about starting entities can be gotten
## ! from the model : for Trace, CheckList, Integrity Status

type
  Transfer_TransientProcess* {.importcpp: "Transfer_TransientProcess",
                              header: "Transfer_TransientProcess.hxx", bycopy.} = object of Transfer_ProcessForTransient ##
                                                                                                                  ## !
                                                                                                                  ## Sets
                                                                                                                  ## TransientProcess
                                                                                                                  ## at
                                                                                                                  ## initial
                                                                                                                  ## state,
                                                                                                                  ## with
                                                                                                                  ## an
                                                                                                                  ## initial
                                                                                                                  ## size


proc constructTransfer_TransientProcess*(nb: Standard_Integer = 10000): Transfer_TransientProcess {.
    constructor, importcpp: "Transfer_TransientProcess(@)",
    header: "Transfer_TransientProcess.hxx".}
proc SetModel*(this: var Transfer_TransientProcess;
              model: handle[Interface_InterfaceModel]) {.importcpp: "SetModel",
    header: "Transfer_TransientProcess.hxx".}
proc Model*(this: Transfer_TransientProcess): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "Transfer_TransientProcess.hxx".}
proc SetGraph*(this: var Transfer_TransientProcess; HG: handle[Interface_HGraph]) {.
    importcpp: "SetGraph", header: "Transfer_TransientProcess.hxx".}
proc HasGraph*(this: Transfer_TransientProcess): Standard_Boolean {.noSideEffect,
    importcpp: "HasGraph", header: "Transfer_TransientProcess.hxx".}
proc HGraph*(this: Transfer_TransientProcess): handle[Interface_HGraph] {.
    noSideEffect, importcpp: "HGraph", header: "Transfer_TransientProcess.hxx".}
proc Graph*(this: Transfer_TransientProcess): Interface_Graph {.noSideEffect,
    importcpp: "Graph", header: "Transfer_TransientProcess.hxx".}
proc SetContext*(this: var Transfer_TransientProcess; name: Standard_CString;
                ctx: handle[Standard_Transient]) {.importcpp: "SetContext",
    header: "Transfer_TransientProcess.hxx".}
proc GetContext*(this: Transfer_TransientProcess; name: Standard_CString;
                `type`: handle[Standard_Type]; ctx: var handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "GetContext", header: "Transfer_TransientProcess.hxx".}
proc Context*(this: var Transfer_TransientProcess): var NCollection_DataMap[
    TCollection_AsciiString, handle[Standard_Transient]] {.importcpp: "Context",
    header: "Transfer_TransientProcess.hxx".}
proc PrintTrace*(this: Transfer_TransientProcess;
                start: handle[Standard_Transient]; S: var Standard_OStream) {.
    noSideEffect, importcpp: "PrintTrace", header: "Transfer_TransientProcess.hxx".}
proc CheckNum*(this: Transfer_TransientProcess; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CheckNum", header: "Transfer_TransientProcess.hxx".}
proc TypedSharings*(this: Transfer_TransientProcess;
                   start: handle[Standard_Transient];
                   `type`: handle[Standard_Type]): Interface_EntityIterator {.
    noSideEffect, importcpp: "TypedSharings",
    header: "Transfer_TransientProcess.hxx".}
proc IsDataLoaded*(this: Transfer_TransientProcess; ent: handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "IsDataLoaded",
    header: "Transfer_TransientProcess.hxx".}
proc IsDataFail*(this: Transfer_TransientProcess; ent: handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "IsDataFail", header: "Transfer_TransientProcess.hxx".}
proc PrintStats*(this: Transfer_TransientProcess; mode: Standard_Integer;
                S: var Standard_OStream) {.noSideEffect, importcpp: "PrintStats",
                                        header: "Transfer_TransientProcess.hxx".}
proc RootsForTransfer*(this: var Transfer_TransientProcess): handle[
    TColStd_HSequenceOfTransient] {.importcpp: "RootsForTransfer",
                                   header: "Transfer_TransientProcess.hxx".}
type
  Transfer_TransientProcessbase_type* = Transfer_ProcessForTransient

proc get_type_name*(): cstring {.importcpp: "Transfer_TransientProcess::get_type_name(@)",
                              header: "Transfer_TransientProcess.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Transfer_TransientProcess::get_type_descriptor(@)",
    header: "Transfer_TransientProcess.hxx".}
proc DynamicType*(this: Transfer_TransientProcess): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Transfer_TransientProcess.hxx".}