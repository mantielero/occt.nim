##  Created on: 2007-05-29
##  Created by: Vlad Romashko
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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
discard "forward decl of TDataStd_Tick"
discard "forward decl of TDataStd_Tick"
type
  HandleTDataStdTick* = Handle[TDataStdTick]

## ! Defines a boolean attribute.
## ! If it exists at a label - true,
## ! Otherwise - false.

type
  TDataStdTick* {.importcpp: "TDataStd_Tick", header: "TDataStd_Tick.hxx", bycopy.} = object of TDataStdGenericEmpty ##
                                                                                                           ## !
                                                                                                           ## Static
                                                                                                           ## methods
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## ==============


proc getID*(): StandardGUID {.importcpp: "TDataStd_Tick::GetID(@)",
                           header: "TDataStd_Tick.hxx".}
proc set*(label: TDF_Label): Handle[TDataStdTick] {.
    importcpp: "TDataStd_Tick::Set(@)", header: "TDataStd_Tick.hxx".}
proc constructTDataStdTick*(): TDataStdTick {.constructor,
    importcpp: "TDataStd_Tick(@)", header: "TDataStd_Tick.hxx".}
proc id*(this: TDataStdTick): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_Tick.hxx".}
proc dump*(this: TDataStdTick; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_Tick.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( TDataStd_Tick , TDataStd_GenericEmpty ) }
## Error: token expected: ) but got: ,!!!

