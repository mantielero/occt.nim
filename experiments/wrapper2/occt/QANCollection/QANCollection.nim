##  Created on: 2004-03-05
##  Created by: Mikhail KUZMITCHEV
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../Draw/Draw_Interpretor

type
  QANCollection* {.importcpp: "QANCollection", header: "QANCollection.hxx", bycopy.} = object


proc Commands*(DI: var Draw_Interpretor) {.importcpp: "QANCollection::Commands(@)",
                                       header: "QANCollection.hxx".}
proc CommandsTest*(DI: var Draw_Interpretor) {.
    importcpp: "QANCollection::CommandsTest(@)", header: "QANCollection.hxx".}
proc CommandsPerf*(DI: var Draw_Interpretor) {.
    importcpp: "QANCollection::CommandsPerf(@)", header: "QANCollection.hxx".}
proc CommandsAlloc*(DI: var Draw_Interpretor) {.
    importcpp: "QANCollection::CommandsAlloc(@)", header: "QANCollection.hxx".}
proc CommandsStl*(DI: var Draw_Interpretor) {.
    importcpp: "QANCollection::CommandsStl(@)", header: "QANCollection.hxx".}
proc CommandsHandle*(DI: var Draw_Interpretor) {.
    importcpp: "QANCollection::CommandsHandle(@)", header: "QANCollection.hxx".}