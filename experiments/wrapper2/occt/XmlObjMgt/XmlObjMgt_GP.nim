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
  ../Standard/Standard_Handle, XmlObjMgt_DOMString, ../Standard/Standard_Boolean

discard "forward decl of gp_Trsf"
discard "forward decl of gp_Mat"
discard "forward decl of gp_XYZ"
type
  XmlObjMgt_GP* {.importcpp: "XmlObjMgt_GP", header: "XmlObjMgt_GP.hxx", bycopy.} = object


proc Translate*(aTrsf: gp_Trsf): XmlObjMgt_DOMString {.
    importcpp: "XmlObjMgt_GP::Translate(@)", header: "XmlObjMgt_GP.hxx".}
proc Translate*(aMat: gp_Mat): XmlObjMgt_DOMString {.
    importcpp: "XmlObjMgt_GP::Translate(@)", header: "XmlObjMgt_GP.hxx".}
proc Translate*(anXYZ: gp_XYZ): XmlObjMgt_DOMString {.
    importcpp: "XmlObjMgt_GP::Translate(@)", header: "XmlObjMgt_GP.hxx".}
proc Translate*(aStr: XmlObjMgt_DOMString; T: var gp_Trsf): Standard_Boolean {.
    importcpp: "XmlObjMgt_GP::Translate(@)", header: "XmlObjMgt_GP.hxx".}
proc Translate*(aStr: XmlObjMgt_DOMString; T: var gp_Mat): Standard_Boolean {.
    importcpp: "XmlObjMgt_GP::Translate(@)", header: "XmlObjMgt_GP.hxx".}
proc Translate*(aStr: XmlObjMgt_DOMString; T: var gp_XYZ): Standard_Boolean {.
    importcpp: "XmlObjMgt_GP::Translate(@)", header: "XmlObjMgt_GP.hxx".}