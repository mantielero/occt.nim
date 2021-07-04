##  Created on: 1997-05-27
##  Created by: Jacques GOUSSARD
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_ListOfShape

discard "forward decl of StdFail_NotDone"
discard "forward decl of LocOpe_WiresOnShape"
type
  LocOpe_BuildWires* {.importcpp: "LocOpe_BuildWires",
                      header: "LocOpe_BuildWires.hxx", bycopy.} = object


proc constructLocOpe_BuildWires*(): LocOpe_BuildWires {.constructor,
    importcpp: "LocOpe_BuildWires(@)", header: "LocOpe_BuildWires.hxx".}
proc constructLocOpe_BuildWires*(Ledges: TopTools_ListOfShape;
                                PW: handle[LocOpe_WiresOnShape]): LocOpe_BuildWires {.
    constructor, importcpp: "LocOpe_BuildWires(@)", header: "LocOpe_BuildWires.hxx".}
proc Perform*(this: var LocOpe_BuildWires; Ledges: TopTools_ListOfShape;
             PW: handle[LocOpe_WiresOnShape]) {.importcpp: "Perform",
    header: "LocOpe_BuildWires.hxx".}
proc IsDone*(this: LocOpe_BuildWires): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "LocOpe_BuildWires.hxx".}
proc Result*(this: LocOpe_BuildWires): TopTools_ListOfShape {.noSideEffect,
    importcpp: "Result", header: "LocOpe_BuildWires.hxx".}