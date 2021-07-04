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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, ../gp/gp_Pnt,
  ../Standard/Standard_Real, ../TopoDS/TopoDS_Face

discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt"
type
  IntTools_PntOnFace* {.importcpp: "IntTools_PntOnFace",
                       header: "IntTools_PntOnFace.hxx", bycopy.} = object ## ! Empty
                                                                      ## constructor


proc constructIntTools_PntOnFace*(): IntTools_PntOnFace {.constructor,
    importcpp: "IntTools_PntOnFace(@)", header: "IntTools_PntOnFace.hxx".}
proc Init*(this: var IntTools_PntOnFace; aF: TopoDS_Face; aP: gp_Pnt; U: Standard_Real;
          V: Standard_Real) {.importcpp: "Init", header: "IntTools_PntOnFace.hxx".}
proc SetFace*(this: var IntTools_PntOnFace; aF: TopoDS_Face) {.importcpp: "SetFace",
    header: "IntTools_PntOnFace.hxx".}
proc SetPnt*(this: var IntTools_PntOnFace; aP: gp_Pnt) {.importcpp: "SetPnt",
    header: "IntTools_PntOnFace.hxx".}
proc SetParameters*(this: var IntTools_PntOnFace; U: Standard_Real; V: Standard_Real) {.
    importcpp: "SetParameters", header: "IntTools_PntOnFace.hxx".}
proc SetValid*(this: var IntTools_PntOnFace; bF: Standard_Boolean) {.
    importcpp: "SetValid", header: "IntTools_PntOnFace.hxx".}
proc Valid*(this: IntTools_PntOnFace): Standard_Boolean {.noSideEffect,
    importcpp: "Valid", header: "IntTools_PntOnFace.hxx".}
proc Face*(this: IntTools_PntOnFace): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "IntTools_PntOnFace.hxx".}
proc Pnt*(this: IntTools_PntOnFace): gp_Pnt {.noSideEffect, importcpp: "Pnt",
    header: "IntTools_PntOnFace.hxx".}
proc Parameters*(this: IntTools_PntOnFace; U: var Standard_Real; V: var Standard_Real) {.
    noSideEffect, importcpp: "Parameters", header: "IntTools_PntOnFace.hxx".}
proc IsValid*(this: IntTools_PntOnFace): Standard_Boolean {.noSideEffect,
    importcpp: "IsValid", header: "IntTools_PntOnFace.hxx".}