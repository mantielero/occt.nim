##  Created on: 2002-02-01
##  Created by: QA Admin
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

type
  QADraw* {.importcpp: "QADraw", header: "QADraw.hxx", bycopy.} = object ## ! Define specicial commands for AIS.


proc commonCommands*(di: var DrawInterpretor) {.
    importcpp: "QADraw::CommonCommands(@)", header: "QADraw.hxx".}
proc additionalCommands*(di: var DrawInterpretor) {.
    importcpp: "QADraw::AdditionalCommands(@)", header: "QADraw.hxx".}
proc factory*(di: var DrawInterpretor) {.importcpp: "QADraw::Factory(@)",
                                     header: "QADraw.hxx".}

