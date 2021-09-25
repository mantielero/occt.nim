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

discard "forward decl of QABugs_MyText"
discard "forward decl of QABugs_PresentableObject"
type
  QABugs* {.importcpp: "QABugs", header: "QABugs.hxx", bycopy.} = object


proc commands*(di: var DrawInterpretor) {.importcpp: "QABugs::Commands(@)",
                                      header: "QABugs.hxx".}
proc commands1*(di: var DrawInterpretor) {.importcpp: "QABugs::Commands_1(@)",
                                       header: "QABugs.hxx".}
proc commands2*(di: var DrawInterpretor) {.importcpp: "QABugs::Commands_2(@)",
                                       header: "QABugs.hxx".}
proc commands3*(di: var DrawInterpretor) {.importcpp: "QABugs::Commands_3(@)",
                                       header: "QABugs.hxx".}
proc commands5*(di: var DrawInterpretor) {.importcpp: "QABugs::Commands_5(@)",
                                       header: "QABugs.hxx".}
proc commands6*(di: var DrawInterpretor) {.importcpp: "QABugs::Commands_6(@)",
                                       header: "QABugs.hxx".}
proc commands7*(di: var DrawInterpretor) {.importcpp: "QABugs::Commands_7(@)",
                                       header: "QABugs.hxx".}
proc commands8*(di: var DrawInterpretor) {.importcpp: "QABugs::Commands_8(@)",
                                       header: "QABugs.hxx".}
proc commands9*(di: var DrawInterpretor) {.importcpp: "QABugs::Commands_9(@)",
                                       header: "QABugs.hxx".}
proc commands10*(di: var DrawInterpretor) {.importcpp: "QABugs::Commands_10(@)",
                                        header: "QABugs.hxx".}
proc commands11*(di: var DrawInterpretor) {.importcpp: "QABugs::Commands_11(@)",
                                        header: "QABugs.hxx".}
proc commands12*(di: var DrawInterpretor) {.importcpp: "QABugs::Commands_12(@)",
                                        header: "QABugs.hxx".}
proc commands13*(di: var DrawInterpretor) {.importcpp: "QABugs::Commands_13(@)",
                                        header: "QABugs.hxx".}
proc commands14*(di: var DrawInterpretor) {.importcpp: "QABugs::Commands_14(@)",
                                        header: "QABugs.hxx".}
proc commands15*(di: var DrawInterpretor) {.importcpp: "QABugs::Commands_15(@)",
                                        header: "QABugs.hxx".}
proc commands16*(di: var DrawInterpretor) {.importcpp: "QABugs::Commands_16(@)",
                                        header: "QABugs.hxx".}
proc commands17*(di: var DrawInterpretor) {.importcpp: "QABugs::Commands_17(@)",
                                        header: "QABugs.hxx".}
proc commands18*(di: var DrawInterpretor) {.importcpp: "QABugs::Commands_18(@)",
                                        header: "QABugs.hxx".}
proc commands19*(di: var DrawInterpretor) {.importcpp: "QABugs::Commands_19(@)",
                                        header: "QABugs.hxx".}
proc commands20*(di: var DrawInterpretor) {.importcpp: "QABugs::Commands_20(@)",
                                        header: "QABugs.hxx".}
proc commandsBVH*(di: var DrawInterpretor) {.importcpp: "QABugs::Commands_BVH(@)",
    header: "QABugs.hxx".}
