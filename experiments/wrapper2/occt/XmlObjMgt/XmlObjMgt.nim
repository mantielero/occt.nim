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
  ../Standard/Standard_Handle, XmlObjMgt_DOMString, ../Standard/Standard_Boolean,
  XmlObjMgt_Element, ../Standard/Standard_Integer, ../Standard/Standard_CString,
  ../Standard/Standard_Real

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of XmlObjMgt_Persistent"
discard "forward decl of XmlObjMgt_GP"
discard "forward decl of XmlObjMgt_Array1"
type
  XmlObjMgt* {.importcpp: "XmlObjMgt", header: "XmlObjMgt.hxx", bycopy.} = object ## ! Define the name of
                                                                          ## XMLattribute 'ID' (to be used
                                                                          ## everywhere)


proc IdString*(): XmlObjMgt_DOMString {.importcpp: "XmlObjMgt::IdString(@)",
                                     header: "XmlObjMgt.hxx".}
proc SetExtendedString*(theElement: var XmlObjMgt_Element;
                       theString: TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "XmlObjMgt::SetExtendedString(@)", header: "XmlObjMgt.hxx".}
proc GetExtendedString*(theElement: XmlObjMgt_Element;
                       theString: var TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "XmlObjMgt::GetExtendedString(@)", header: "XmlObjMgt.hxx".}
proc GetStringValue*(theElement: XmlObjMgt_Element): XmlObjMgt_DOMString {.
    importcpp: "XmlObjMgt::GetStringValue(@)", header: "XmlObjMgt.hxx".}
proc SetStringValue*(theElement: var XmlObjMgt_Element;
                    theData: XmlObjMgt_DOMString;
                    isClearText: Standard_Boolean = Standard_False) {.
    importcpp: "XmlObjMgt::SetStringValue(@)", header: "XmlObjMgt.hxx".}
proc GetTagEntryString*(theTarget: XmlObjMgt_DOMString;
                       theTagEntry: var TCollection_AsciiString): Standard_Boolean {.
    importcpp: "XmlObjMgt::GetTagEntryString(@)", header: "XmlObjMgt.hxx".}
proc SetTagEntryString*(theSource: var XmlObjMgt_DOMString;
                       theTagEntry: TCollection_AsciiString) {.
    importcpp: "XmlObjMgt::SetTagEntryString(@)", header: "XmlObjMgt.hxx".}
proc FindChildElement*(theSource: XmlObjMgt_Element; theObjId: Standard_Integer): XmlObjMgt_Element {.
    importcpp: "XmlObjMgt::FindChildElement(@)", header: "XmlObjMgt.hxx".}
proc FindChildByRef*(theSource: XmlObjMgt_Element; theRefName: XmlObjMgt_DOMString): XmlObjMgt_Element {.
    importcpp: "XmlObjMgt::FindChildByRef(@)", header: "XmlObjMgt.hxx".}
proc FindChildByName*(theSource: XmlObjMgt_Element; theName: XmlObjMgt_DOMString): XmlObjMgt_Element {.
    importcpp: "XmlObjMgt::FindChildByName(@)", header: "XmlObjMgt.hxx".}
proc GetInteger*(theString: var Standard_CString; theValue: var Standard_Integer): Standard_Boolean {.
    importcpp: "XmlObjMgt::GetInteger(@)", header: "XmlObjMgt.hxx".}
proc GetReal*(theString: var Standard_CString; theValue: var Standard_Real): Standard_Boolean {.
    importcpp: "XmlObjMgt::GetReal(@)", header: "XmlObjMgt.hxx".}
proc GetReal*(theString: XmlObjMgt_DOMString; theValue: var Standard_Real): Standard_Boolean {.
    importcpp: "XmlObjMgt::GetReal(@)", header: "XmlObjMgt.hxx".}