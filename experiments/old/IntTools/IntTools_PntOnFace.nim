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

discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt"
type
  IntToolsPntOnFace* {.importcpp: "IntTools_PntOnFace",
                      header: "IntTools_PntOnFace.hxx", bycopy.} = object ## ! Empty constructor


proc constructIntToolsPntOnFace*(): IntToolsPntOnFace {.constructor,
    importcpp: "IntTools_PntOnFace(@)", header: "IntTools_PntOnFace.hxx".}
proc init*(this: var IntToolsPntOnFace; aF: TopoDS_Face; aP: Pnt; u: cfloat; v: cfloat) {.
    importcpp: "Init", header: "IntTools_PntOnFace.hxx".}
proc setFace*(this: var IntToolsPntOnFace; aF: TopoDS_Face) {.importcpp: "SetFace",
    header: "IntTools_PntOnFace.hxx".}
proc setPnt*(this: var IntToolsPntOnFace; aP: Pnt) {.importcpp: "SetPnt",
    header: "IntTools_PntOnFace.hxx".}
proc setParameters*(this: var IntToolsPntOnFace; u: cfloat; v: cfloat) {.
    importcpp: "SetParameters", header: "IntTools_PntOnFace.hxx".}
proc setValid*(this: var IntToolsPntOnFace; bF: bool) {.importcpp: "SetValid",
    header: "IntTools_PntOnFace.hxx".}
proc valid*(this: IntToolsPntOnFace): bool {.noSideEffect, importcpp: "Valid",
    header: "IntTools_PntOnFace.hxx".}
proc face*(this: IntToolsPntOnFace): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "IntTools_PntOnFace.hxx".}
proc pnt*(this: IntToolsPntOnFace): Pnt {.noSideEffect, importcpp: "Pnt",
                                      header: "IntTools_PntOnFace.hxx".}
proc parameters*(this: IntToolsPntOnFace; u: var cfloat; v: var cfloat) {.noSideEffect,
    importcpp: "Parameters", header: "IntTools_PntOnFace.hxx".}
proc isValid*(this: IntToolsPntOnFace): bool {.noSideEffect, importcpp: "IsValid",
    header: "IntTools_PntOnFace.hxx".}

























