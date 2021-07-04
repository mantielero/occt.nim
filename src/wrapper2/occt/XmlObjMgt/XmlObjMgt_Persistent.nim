##  Created on: 2001-07-17
##  Created by: Julia DOROVSKIKH <jfa@hotdox.nnov.matra-dtv.fr>
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
  ../Standard/Standard_Handle, XmlObjMgt_Element, ../Standard/Standard_Integer,
  XmlObjMgt_DOMString

## ! root for XML-persistence

type
  XmlObjMgt_Persistent* {.importcpp: "XmlObjMgt_Persistent",
                         header: "XmlObjMgt_Persistent.hxx", bycopy.} = object ## ! empty
                                                                          ## constructor


proc constructXmlObjMgt_Persistent*(): XmlObjMgt_Persistent {.constructor,
    importcpp: "XmlObjMgt_Persistent(@)", header: "XmlObjMgt_Persistent.hxx".}
proc constructXmlObjMgt_Persistent*(theElement: XmlObjMgt_Element): XmlObjMgt_Persistent {.
    constructor, importcpp: "XmlObjMgt_Persistent(@)",
    header: "XmlObjMgt_Persistent.hxx".}
proc constructXmlObjMgt_Persistent*(theElement: XmlObjMgt_Element;
                                   theRef: XmlObjMgt_DOMString): XmlObjMgt_Persistent {.
    constructor, importcpp: "XmlObjMgt_Persistent(@)",
    header: "XmlObjMgt_Persistent.hxx".}
proc CreateElement*(this: var XmlObjMgt_Persistent;
                   theParent: var XmlObjMgt_Element; theType: XmlObjMgt_DOMString;
                   theID: Standard_Integer) {.importcpp: "CreateElement",
    header: "XmlObjMgt_Persistent.hxx".}
proc SetId*(this: var XmlObjMgt_Persistent; theId: Standard_Integer) {.
    importcpp: "SetId", header: "XmlObjMgt_Persistent.hxx".}
proc Element*(this: XmlObjMgt_Persistent): XmlObjMgt_Element {.noSideEffect,
    importcpp: "Element", header: "XmlObjMgt_Persistent.hxx".}
converter `constXmlObjMgt_Element&`*(this: XmlObjMgt_Persistent): XmlObjMgt_Element {.
    noSideEffect,
    importcpp: "XmlObjMgt_Persistent::operator constXmlObjMgt_Element&",
    header: "XmlObjMgt_Persistent.hxx".}
proc Element*(this: var XmlObjMgt_Persistent): var XmlObjMgt_Element {.
    importcpp: "Element", header: "XmlObjMgt_Persistent.hxx".}
converter `XmlObjMgt_Element&`*(this: var XmlObjMgt_Persistent): var XmlObjMgt_Element {.
    importcpp: "XmlObjMgt_Persistent::operator XmlObjMgt_Element&",
    header: "XmlObjMgt_Persistent.hxx".}
proc Id*(this: XmlObjMgt_Persistent): Standard_Integer {.noSideEffect,
    importcpp: "Id", header: "XmlObjMgt_Persistent.hxx".}