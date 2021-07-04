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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, IntTools_PntOnFace

discard "forward decl of IntTools_PntOnFace"
type
  IntTools_PntOn2Faces* {.importcpp: "IntTools_PntOn2Faces",
                         header: "IntTools_PntOn2Faces.hxx", bycopy.} = object ## ! Empty
                                                                          ## constructor


proc constructIntTools_PntOn2Faces*(): IntTools_PntOn2Faces {.constructor,
    importcpp: "IntTools_PntOn2Faces(@)", header: "IntTools_PntOn2Faces.hxx".}
proc constructIntTools_PntOn2Faces*(aP1: IntTools_PntOnFace;
                                   aP2: IntTools_PntOnFace): IntTools_PntOn2Faces {.
    constructor, importcpp: "IntTools_PntOn2Faces(@)",
    header: "IntTools_PntOn2Faces.hxx".}
proc SetP1*(this: var IntTools_PntOn2Faces; aP1: IntTools_PntOnFace) {.
    importcpp: "SetP1", header: "IntTools_PntOn2Faces.hxx".}
proc SetP2*(this: var IntTools_PntOn2Faces; aP2: IntTools_PntOnFace) {.
    importcpp: "SetP2", header: "IntTools_PntOn2Faces.hxx".}
proc SetValid*(this: var IntTools_PntOn2Faces; bF: Standard_Boolean) {.
    importcpp: "SetValid", header: "IntTools_PntOn2Faces.hxx".}
proc P1*(this: IntTools_PntOn2Faces): IntTools_PntOnFace {.noSideEffect,
    importcpp: "P1", header: "IntTools_PntOn2Faces.hxx".}
proc P2*(this: IntTools_PntOn2Faces): IntTools_PntOnFace {.noSideEffect,
    importcpp: "P2", header: "IntTools_PntOn2Faces.hxx".}
proc IsValid*(this: IntTools_PntOn2Faces): Standard_Boolean {.noSideEffect,
    importcpp: "IsValid", header: "IntTools_PntOn2Faces.hxx".}