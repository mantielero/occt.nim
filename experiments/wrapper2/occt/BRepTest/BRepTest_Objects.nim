##  Created on: 2018/03/21
##  Created by: Eugeny MALTCHIKOV
##  Copyright (c) 2018 OPEN CASCADE SAS
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
  ../BRepTools/BRepTools_History

## ! Provides the access to the useful tools common for the algorithms.

type
  BRepTest_Objects* {.importcpp: "BRepTest_Objects",
                     header: "BRepTest_Objects.hxx", bycopy.} = object ## ! Sets the given history into the session.


proc SetHistory*(theHistory: handle[BRepTools_History]) {.
    importcpp: "BRepTest_Objects::SetHistory(@)", header: "BRepTest_Objects.hxx".}
proc AddHistory*(theHistory: handle[BRepTools_History]) {.
    importcpp: "BRepTest_Objects::AddHistory(@)", header: "BRepTest_Objects.hxx".}
proc SetHistory*[TheAlgo](theArguments: TopTools_ListOfShape; theAlgo: var TheAlgo) {.
    importcpp: "BRepTest_Objects::SetHistory(@)", header: "BRepTest_Objects.hxx".}
proc AddHistory*[TheAlgo](theArguments: TopTools_ListOfShape; theAlgo: var TheAlgo) {.
    importcpp: "BRepTest_Objects::AddHistory(@)", header: "BRepTest_Objects.hxx".}
proc History*(): handle[BRepTools_History] {.
    importcpp: "BRepTest_Objects::History(@)", header: "BRepTest_Objects.hxx".}
proc SetToFillHistory*(theFillHist: Standard_Boolean) {.
    importcpp: "BRepTest_Objects::SetToFillHistory(@)",
    header: "BRepTest_Objects.hxx".}
proc IsHistoryNeeded*(): Standard_Boolean {.
    importcpp: "BRepTest_Objects::IsHistoryNeeded(@)",
    header: "BRepTest_Objects.hxx".}