##  Created on: 2012-03-23
##  Created by: DBV
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

discard "forward decl of QABugs_MyText"
discard "forward decl of QABugs_PresentableObject"
type
  QABugs* {.importcpp: "QABugs", header: "QABugs.hxx", bycopy.} = object


proc Commands*(DI: var Draw_Interpretor) {.importcpp: "QABugs::Commands(@)",
                                       header: "QABugs.hxx".}
proc Commands_1*(DI: var Draw_Interpretor) {.importcpp: "QABugs::Commands_1(@)",
    header: "QABugs.hxx".}
proc Commands_2*(DI: var Draw_Interpretor) {.importcpp: "QABugs::Commands_2(@)",
    header: "QABugs.hxx".}
proc Commands_3*(DI: var Draw_Interpretor) {.importcpp: "QABugs::Commands_3(@)",
    header: "QABugs.hxx".}
proc Commands_5*(DI: var Draw_Interpretor) {.importcpp: "QABugs::Commands_5(@)",
    header: "QABugs.hxx".}
proc Commands_6*(DI: var Draw_Interpretor) {.importcpp: "QABugs::Commands_6(@)",
    header: "QABugs.hxx".}
proc Commands_7*(DI: var Draw_Interpretor) {.importcpp: "QABugs::Commands_7(@)",
    header: "QABugs.hxx".}
proc Commands_8*(DI: var Draw_Interpretor) {.importcpp: "QABugs::Commands_8(@)",
    header: "QABugs.hxx".}
proc Commands_9*(DI: var Draw_Interpretor) {.importcpp: "QABugs::Commands_9(@)",
    header: "QABugs.hxx".}
proc Commands_10*(DI: var Draw_Interpretor) {.importcpp: "QABugs::Commands_10(@)",
    header: "QABugs.hxx".}
proc Commands_11*(DI: var Draw_Interpretor) {.importcpp: "QABugs::Commands_11(@)",
    header: "QABugs.hxx".}
proc Commands_12*(DI: var Draw_Interpretor) {.importcpp: "QABugs::Commands_12(@)",
    header: "QABugs.hxx".}
proc Commands_13*(DI: var Draw_Interpretor) {.importcpp: "QABugs::Commands_13(@)",
    header: "QABugs.hxx".}
proc Commands_14*(DI: var Draw_Interpretor) {.importcpp: "QABugs::Commands_14(@)",
    header: "QABugs.hxx".}
proc Commands_15*(DI: var Draw_Interpretor) {.importcpp: "QABugs::Commands_15(@)",
    header: "QABugs.hxx".}
proc Commands_16*(DI: var Draw_Interpretor) {.importcpp: "QABugs::Commands_16(@)",
    header: "QABugs.hxx".}
proc Commands_17*(DI: var Draw_Interpretor) {.importcpp: "QABugs::Commands_17(@)",
    header: "QABugs.hxx".}
proc Commands_18*(DI: var Draw_Interpretor) {.importcpp: "QABugs::Commands_18(@)",
    header: "QABugs.hxx".}
proc Commands_19*(DI: var Draw_Interpretor) {.importcpp: "QABugs::Commands_19(@)",
    header: "QABugs.hxx".}
proc Commands_20*(DI: var Draw_Interpretor) {.importcpp: "QABugs::Commands_20(@)",
    header: "QABugs.hxx".}
proc Commands_BVH*(DI: var Draw_Interpretor) {.importcpp: "QABugs::Commands_BVH(@)",
    header: "QABugs.hxx".}