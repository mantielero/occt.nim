##  Created on: 1996-02-15
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

discard "forward decl of TCollection_HAsciiString"
type
  MoniToolStat* {.importcpp: "MoniTool_Stat", header: "MoniTool_Stat.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Creates
                                                                                     ## a
                                                                                     ## Stat
                                                                                     ## form.
                                                                                     ## At
                                                                                     ## start,
                                                                                     ## one
                                                                                     ## default
                                                                                     ## phase
                                                                                     ## is
                                                                                     ## defined,
                                                                                     ##
                                                                                     ## !
                                                                                     ## with
                                                                                     ## one
                                                                                     ## default
                                                                                     ## step.
                                                                                     ## Then,
                                                                                     ## it
                                                                                     ## suffises
                                                                                     ## to
                                                                                     ## start
                                                                                     ## with
                                                                                     ## a
                                                                                     ##
                                                                                     ## !
                                                                                     ## count
                                                                                     ## of
                                                                                     ## items
                                                                                     ## (and
                                                                                     ## cycles
                                                                                     ## if
                                                                                     ## several)
                                                                                     ## then
                                                                                     ## record
                                                                                     ## items,
                                                                                     ##
                                                                                     ## !
                                                                                     ## to
                                                                                     ## have
                                                                                     ## a
                                                                                     ## queryable
                                                                                     ## report.


proc constructMoniToolStat*(title: StandardCString = ""): MoniToolStat {.constructor,
    importcpp: "MoniTool_Stat(@)", header: "MoniTool_Stat.hxx".}
proc constructMoniToolStat*(other: MoniToolStat): MoniToolStat {.constructor,
    importcpp: "MoniTool_Stat(@)", header: "MoniTool_Stat.hxx".}
proc current*(): var MoniToolStat {.importcpp: "MoniTool_Stat::Current(@)",
                                header: "MoniTool_Stat.hxx".}
proc open*(this: var MoniToolStat; nb: int = 100): int {.importcpp: "Open",
    header: "MoniTool_Stat.hxx".}
proc openMore*(this: var MoniToolStat; id: int; nb: int) {.importcpp: "OpenMore",
    header: "MoniTool_Stat.hxx".}
proc add*(this: var MoniToolStat; nb: int = 1) {.importcpp: "Add",
    header: "MoniTool_Stat.hxx".}
proc addSub*(this: var MoniToolStat; nb: int = 1) {.importcpp: "AddSub",
    header: "MoniTool_Stat.hxx".}
proc addEnd*(this: var MoniToolStat) {.importcpp: "AddEnd",
                                   header: "MoniTool_Stat.hxx".}
proc close*(this: var MoniToolStat; id: int) {.importcpp: "Close",
    header: "MoniTool_Stat.hxx".}
proc level*(this: MoniToolStat): int {.noSideEffect, importcpp: "Level",
                                   header: "MoniTool_Stat.hxx".}
proc percent*(this: MoniToolStat; fromlev: int = 0): float {.noSideEffect,
    importcpp: "Percent", header: "MoniTool_Stat.hxx".}
