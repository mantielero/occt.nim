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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../TColStd/TColStd_HArray1OfInteger, ../Standard/Standard_CString,
  ../Standard/Standard_Real

discard "forward decl of TCollection_HAsciiString"
type
  MoniTool_Stat* {.importcpp: "MoniTool_Stat", header: "MoniTool_Stat.hxx", bycopy.} = object ##
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


proc constructMoniTool_Stat*(title: Standard_CString = ""): MoniTool_Stat {.
    constructor, importcpp: "MoniTool_Stat(@)", header: "MoniTool_Stat.hxx".}
proc constructMoniTool_Stat*(other: MoniTool_Stat): MoniTool_Stat {.constructor,
    importcpp: "MoniTool_Stat(@)", header: "MoniTool_Stat.hxx".}
proc Current*(): var MoniTool_Stat {.importcpp: "MoniTool_Stat::Current(@)",
                                 header: "MoniTool_Stat.hxx".}
proc Open*(this: var MoniTool_Stat; nb: Standard_Integer = 100): Standard_Integer {.
    importcpp: "Open", header: "MoniTool_Stat.hxx".}
proc OpenMore*(this: var MoniTool_Stat; id: Standard_Integer; nb: Standard_Integer) {.
    importcpp: "OpenMore", header: "MoniTool_Stat.hxx".}
proc Add*(this: var MoniTool_Stat; nb: Standard_Integer = 1) {.importcpp: "Add",
    header: "MoniTool_Stat.hxx".}
proc AddSub*(this: var MoniTool_Stat; nb: Standard_Integer = 1) {.importcpp: "AddSub",
    header: "MoniTool_Stat.hxx".}
proc AddEnd*(this: var MoniTool_Stat) {.importcpp: "AddEnd",
                                    header: "MoniTool_Stat.hxx".}
proc Close*(this: var MoniTool_Stat; id: Standard_Integer) {.importcpp: "Close",
    header: "MoniTool_Stat.hxx".}
proc Level*(this: MoniTool_Stat): Standard_Integer {.noSideEffect,
    importcpp: "Level", header: "MoniTool_Stat.hxx".}
proc Percent*(this: MoniTool_Stat; fromlev: Standard_Integer = 0): Standard_Real {.
    noSideEffect, importcpp: "Percent", header: "MoniTool_Stat.hxx".}