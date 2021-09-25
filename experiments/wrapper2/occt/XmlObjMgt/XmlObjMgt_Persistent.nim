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

## ! root for XML-persistence

type
  XmlObjMgtPersistent* {.importcpp: "XmlObjMgt_Persistent",
                        header: "XmlObjMgt_Persistent.hxx", bycopy.} = object ## ! empty
                                                                         ## constructor


proc constructXmlObjMgtPersistent*(): XmlObjMgtPersistent {.constructor,
    importcpp: "XmlObjMgt_Persistent(@)", header: "XmlObjMgt_Persistent.hxx".}
proc constructXmlObjMgtPersistent*(theElement: XmlObjMgtElement): XmlObjMgtPersistent {.
    constructor, importcpp: "XmlObjMgt_Persistent(@)",
    header: "XmlObjMgt_Persistent.hxx".}
proc constructXmlObjMgtPersistent*(theElement: XmlObjMgtElement;
                                  theRef: XmlObjMgtDOMString): XmlObjMgtPersistent {.
    constructor, importcpp: "XmlObjMgt_Persistent(@)",
    header: "XmlObjMgt_Persistent.hxx".}
proc createElement*(this: var XmlObjMgtPersistent; theParent: var XmlObjMgtElement;
                   theType: XmlObjMgtDOMString; theID: int) {.
    importcpp: "CreateElement", header: "XmlObjMgt_Persistent.hxx".}
proc setId*(this: var XmlObjMgtPersistent; theId: int) {.importcpp: "SetId",
    header: "XmlObjMgt_Persistent.hxx".}
proc element*(this: XmlObjMgtPersistent): XmlObjMgtElement {.noSideEffect,
    importcpp: "Element", header: "XmlObjMgt_Persistent.hxx".}
converter `constXmlObjMgtElement&`*(this: XmlObjMgtPersistent): XmlObjMgtElement {.
    noSideEffect,
    importcpp: "XmlObjMgt_Persistent::operator constXmlObjMgt_Element&",
    header: "XmlObjMgt_Persistent.hxx".}
proc element*(this: var XmlObjMgtPersistent): var XmlObjMgtElement {.
    importcpp: "Element", header: "XmlObjMgt_Persistent.hxx".}
converter `xmlObjMgtElement&`*(this: var XmlObjMgtPersistent): var XmlObjMgtElement {.
    importcpp: "XmlObjMgt_Persistent::operator XmlObjMgt_Element&",
    header: "XmlObjMgt_Persistent.hxx".}
proc id*(this: XmlObjMgtPersistent): int {.noSideEffect, importcpp: "Id",
                                       header: "XmlObjMgt_Persistent.hxx".}
