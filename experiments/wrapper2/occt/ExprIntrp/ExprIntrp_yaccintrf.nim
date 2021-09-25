##  Created on: 1992-02-17
##  Created by: Arnaud BOUZY
##  Copyright (c) 1992-1999 Matra Datavision
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

proc exprIntrpparse*(): cint {.importcpp: "ExprIntrpparse(@)",
                            header: "ExprIntrp_yaccintrf.hxx".}
proc exprIntrperror*(msg: cstring) {.importcpp: "ExprIntrperror(@)",
                                  header: "ExprIntrp_yaccintrf.hxx".}
proc exprIntrpStartString*(str: cstring) {.importcpp: "ExprIntrp_start_string(@)",
                                        header: "ExprIntrp_yaccintrf.hxx".}
proc exprIntrpStopString*() {.importcpp: "ExprIntrp_stop_string(@)",
                            header: "ExprIntrp_yaccintrf.hxx".}
proc exprIntrpSetResult*() {.importcpp: "ExprIntrp_SetResult(@)",
                           header: "ExprIntrp_yaccintrf.hxx".}
proc exprIntrpSetDegree*() {.importcpp: "ExprIntrp_SetDegree(@)",
                           header: "ExprIntrp_yaccintrf.hxx".}
proc exprIntrplex*(): cint {.importcpp: "ExprIntrplex(@)",
                          header: "ExprIntrp_yaccintrf.hxx".}
