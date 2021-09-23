##  Created on: 2003-06-02
##  Created by: Galina KULIKOVA
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
  ../XSControl/XSControl_SelectForTransfer

discard "forward decl of XSControl_TransferReader"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of STEPSelections_SelectForTransfer"
discard "forward decl of STEPSelections_SelectForTransfer"
type
  Handle_STEPSelections_SelectForTransfer* = handle[
      STEPSelections_SelectForTransfer]
  STEPSelections_SelectForTransfer* {.importcpp: "STEPSelections_SelectForTransfer", header: "STEPSelections_SelectForTransfer.hxx",
                                     bycopy.} = object of XSControl_SelectForTransfer


proc constructSTEPSelections_SelectForTransfer*(): STEPSelections_SelectForTransfer {.
    constructor, importcpp: "STEPSelections_SelectForTransfer(@)",
    header: "STEPSelections_SelectForTransfer.hxx".}
proc constructSTEPSelections_SelectForTransfer*(
    TR: handle[XSControl_TransferReader]): STEPSelections_SelectForTransfer {.
    constructor, importcpp: "STEPSelections_SelectForTransfer(@)",
    header: "STEPSelections_SelectForTransfer.hxx".}
proc RootResult*(this: STEPSelections_SelectForTransfer; G: Interface_Graph): Interface_EntityIterator {.
    noSideEffect, importcpp: "RootResult",
    header: "STEPSelections_SelectForTransfer.hxx".}
type
  STEPSelections_SelectForTransferbase_type* = XSControl_SelectForTransfer

proc get_type_name*(): cstring {.importcpp: "STEPSelections_SelectForTransfer::get_type_name(@)",
                              header: "STEPSelections_SelectForTransfer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "STEPSelections_SelectForTransfer::get_type_descriptor(@)",
    header: "STEPSelections_SelectForTransfer.hxx".}
proc DynamicType*(this: STEPSelections_SelectForTransfer): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "STEPSelections_SelectForTransfer.hxx".}