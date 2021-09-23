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
  Transfer_ProcessForFinder, ../Interface/Interface_InterfaceModel

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Transfer_TransientMapper"
discard "forward decl of Transfer_Finder"
discard "forward decl of Transfer_FinderProcess"
discard "forward decl of Transfer_FinderProcess"
type
  Handle_Transfer_FinderProcess* = handle[Transfer_FinderProcess]

## ! Adds specific features to the generic definition :
## ! PrintTrace is adapted

type
  Transfer_FinderProcess* {.importcpp: "Transfer_FinderProcess",
                           header: "Transfer_FinderProcess.hxx", bycopy.} = object of Transfer_ProcessForFinder ##
                                                                                                         ## !
                                                                                                         ## Sets
                                                                                                         ## FinderProcess
                                                                                                         ## at
                                                                                                         ## initial
                                                                                                         ## state,
                                                                                                         ## with
                                                                                                         ## an
                                                                                                         ## initial
                                                                                                         ## size


proc constructTransfer_FinderProcess*(nb: Standard_Integer = 10000): Transfer_FinderProcess {.
    constructor, importcpp: "Transfer_FinderProcess(@)",
    header: "Transfer_FinderProcess.hxx".}
proc SetModel*(this: var Transfer_FinderProcess;
              model: handle[Interface_InterfaceModel]) {.importcpp: "SetModel",
    header: "Transfer_FinderProcess.hxx".}
proc Model*(this: Transfer_FinderProcess): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "Transfer_FinderProcess.hxx".}
proc NextMappedWithAttribute*(this: Transfer_FinderProcess; name: Standard_CString;
                             num0: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NextMappedWithAttribute",
    header: "Transfer_FinderProcess.hxx".}
proc TransientMapper*(this: Transfer_FinderProcess; obj: handle[Standard_Transient]): handle[
    Transfer_TransientMapper] {.noSideEffect, importcpp: "TransientMapper",
                               header: "Transfer_FinderProcess.hxx".}
proc PrintTrace*(this: Transfer_FinderProcess; start: handle[Transfer_Finder];
                S: var Standard_OStream) {.noSideEffect, importcpp: "PrintTrace",
                                        header: "Transfer_FinderProcess.hxx".}
proc PrintStats*(this: Transfer_FinderProcess; mode: Standard_Integer;
                S: var Standard_OStream) {.noSideEffect, importcpp: "PrintStats",
                                        header: "Transfer_FinderProcess.hxx".}
type
  Transfer_FinderProcessbase_type* = Transfer_ProcessForFinder

proc get_type_name*(): cstring {.importcpp: "Transfer_FinderProcess::get_type_name(@)",
                              header: "Transfer_FinderProcess.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Transfer_FinderProcess::get_type_descriptor(@)",
    header: "Transfer_FinderProcess.hxx".}
proc DynamicType*(this: Transfer_FinderProcess): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Transfer_FinderProcess.hxx".}