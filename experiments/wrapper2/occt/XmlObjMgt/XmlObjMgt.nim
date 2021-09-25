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

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of XmlObjMgt_Persistent"
discard "forward decl of XmlObjMgt_GP"
discard "forward decl of XmlObjMgt_Array1"
type
  XmlObjMgt* {.importcpp: "XmlObjMgt", header: "XmlObjMgt.hxx", bycopy.} = object ## ! Define the name of
                                                                          ## XMLattribute 'ID' (to be used
                                                                          ## everywhere)


proc idString*(): XmlObjMgtDOMString {.importcpp: "XmlObjMgt::IdString(@)",
                                    header: "XmlObjMgt.hxx".}
proc setExtendedString*(theElement: var XmlObjMgtElement;
                       theString: TCollectionExtendedString): bool {.
    importcpp: "XmlObjMgt::SetExtendedString(@)", header: "XmlObjMgt.hxx".}
proc getExtendedString*(theElement: XmlObjMgtElement;
                       theString: var TCollectionExtendedString): bool {.
    importcpp: "XmlObjMgt::GetExtendedString(@)", header: "XmlObjMgt.hxx".}
proc getStringValue*(theElement: XmlObjMgtElement): XmlObjMgtDOMString {.
    importcpp: "XmlObjMgt::GetStringValue(@)", header: "XmlObjMgt.hxx".}
proc setStringValue*(theElement: var XmlObjMgtElement; theData: XmlObjMgtDOMString;
                    isClearText: bool = false) {.
    importcpp: "XmlObjMgt::SetStringValue(@)", header: "XmlObjMgt.hxx".}
proc getTagEntryString*(theTarget: XmlObjMgtDOMString;
                       theTagEntry: var TCollectionAsciiString): bool {.
    importcpp: "XmlObjMgt::GetTagEntryString(@)", header: "XmlObjMgt.hxx".}
proc setTagEntryString*(theSource: var XmlObjMgtDOMString;
                       theTagEntry: TCollectionAsciiString) {.
    importcpp: "XmlObjMgt::SetTagEntryString(@)", header: "XmlObjMgt.hxx".}
proc findChildElement*(theSource: XmlObjMgtElement; theObjId: int): XmlObjMgtElement {.
    importcpp: "XmlObjMgt::FindChildElement(@)", header: "XmlObjMgt.hxx".}
proc findChildByRef*(theSource: XmlObjMgtElement; theRefName: XmlObjMgtDOMString): XmlObjMgtElement {.
    importcpp: "XmlObjMgt::FindChildByRef(@)", header: "XmlObjMgt.hxx".}
proc findChildByName*(theSource: XmlObjMgtElement; theName: XmlObjMgtDOMString): XmlObjMgtElement {.
    importcpp: "XmlObjMgt::FindChildByName(@)", header: "XmlObjMgt.hxx".}
proc getInteger*(theString: var StandardCString; theValue: var int): bool {.
    importcpp: "XmlObjMgt::GetInteger(@)", header: "XmlObjMgt.hxx".}
proc getReal*(theString: var StandardCString; theValue: var float): bool {.
    importcpp: "XmlObjMgt::GetReal(@)", header: "XmlObjMgt.hxx".}
proc getReal*(theString: XmlObjMgtDOMString; theValue: var float): bool {.
    importcpp: "XmlObjMgt::GetReal(@)", header: "XmlObjMgt.hxx".}
