##  Created on: 2001-12-13
##  Created by: Peter KURNEV
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

discard "forward decl of IntTools_PntOnFace"
type
  IntToolsPntOn2Faces* {.importcpp: "IntTools_PntOn2Faces",
                        header: "IntTools_PntOn2Faces.hxx", bycopy.} = object ## ! Empty
                                                                         ## constructor


proc constructIntToolsPntOn2Faces*(): IntToolsPntOn2Faces {.constructor,
    importcpp: "IntTools_PntOn2Faces(@)", header: "IntTools_PntOn2Faces.hxx".}
proc constructIntToolsPntOn2Faces*(aP1: IntToolsPntOnFace; aP2: IntToolsPntOnFace): IntToolsPntOn2Faces {.
    constructor, importcpp: "IntTools_PntOn2Faces(@)",
    header: "IntTools_PntOn2Faces.hxx".}
proc setP1*(this: var IntToolsPntOn2Faces; aP1: IntToolsPntOnFace) {.
    importcpp: "SetP1", header: "IntTools_PntOn2Faces.hxx".}
proc setP2*(this: var IntToolsPntOn2Faces; aP2: IntToolsPntOnFace) {.
    importcpp: "SetP2", header: "IntTools_PntOn2Faces.hxx".}
proc setValid*(this: var IntToolsPntOn2Faces; bF: bool) {.importcpp: "SetValid",
    header: "IntTools_PntOn2Faces.hxx".}
proc p1*(this: IntToolsPntOn2Faces): IntToolsPntOnFace {.noSideEffect,
    importcpp: "P1", header: "IntTools_PntOn2Faces.hxx".}
proc p2*(this: IntToolsPntOn2Faces): IntToolsPntOnFace {.noSideEffect,
    importcpp: "P2", header: "IntTools_PntOn2Faces.hxx".}
proc isValid*(this: IntToolsPntOn2Faces): bool {.noSideEffect, importcpp: "IsValid",
    header: "IntTools_PntOn2Faces.hxx".}
