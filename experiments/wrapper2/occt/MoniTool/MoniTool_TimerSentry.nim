##  Created on: 2001-12-13
##  Created by: Sergey KUUl
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../Standard/Standard_CString

discard "forward decl of MoniTool_Timer"
type
  MoniTool_TimerSentry* {.importcpp: "MoniTool_TimerSentry",
                         header: "MoniTool_TimerSentry.hxx", bycopy.} = object ## !
                                                                          ## Constructor
                                                                          ## creates an
                                                                          ## instance and runs the
                                                                          ## corresponding timer


proc constructMoniTool_TimerSentry*(cname: Standard_CString): MoniTool_TimerSentry {.
    constructor, importcpp: "MoniTool_TimerSentry(@)",
    header: "MoniTool_TimerSentry.hxx".}
proc constructMoniTool_TimerSentry*(timer: handle[MoniTool_Timer]): MoniTool_TimerSentry {.
    constructor, importcpp: "MoniTool_TimerSentry(@)",
    header: "MoniTool_TimerSentry.hxx".}
proc destroyMoniTool_TimerSentry*(this: var MoniTool_TimerSentry) {.
    importcpp: "#.~MoniTool_TimerSentry()", header: "MoniTool_TimerSentry.hxx".}
proc Timer*(this: MoniTool_TimerSentry): handle[MoniTool_Timer] {.noSideEffect,
    importcpp: "Timer", header: "MoniTool_TimerSentry.hxx".}
proc Stop*(this: var MoniTool_TimerSentry) {.importcpp: "Stop",
    header: "MoniTool_TimerSentry.hxx".}