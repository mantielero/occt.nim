##  Created on: 2001-09-14
##  Created by: Alexander GRIGORIEV
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
  ../Standard/Standard_Handle, ../XmlObjMgt/XmlObjMgt_Element,
  ../Standard/Standard_Integer, ../TopAbs/TopAbs_Orientation,
  ../XmlObjMgt/XmlObjMgt_Document

discard "forward decl of TopoDS_Shape"
type
  XmlMNaming_Shape1* {.importcpp: "XmlMNaming_Shape1",
                      header: "XmlMNaming_Shape1.hxx", bycopy.} = object


proc constructXmlMNaming_Shape1*(Doc: var XmlObjMgt_Document): XmlMNaming_Shape1 {.
    constructor, importcpp: "XmlMNaming_Shape1(@)", header: "XmlMNaming_Shape1.hxx".}
proc constructXmlMNaming_Shape1*(E: XmlObjMgt_Element): XmlMNaming_Shape1 {.
    constructor, importcpp: "XmlMNaming_Shape1(@)", header: "XmlMNaming_Shape1.hxx".}
proc Element*(this: XmlMNaming_Shape1): XmlObjMgt_Element {.noSideEffect,
    importcpp: "Element", header: "XmlMNaming_Shape1.hxx".}
proc Element*(this: var XmlMNaming_Shape1): var XmlObjMgt_Element {.
    importcpp: "Element", header: "XmlMNaming_Shape1.hxx".}
proc TShapeId*(this: XmlMNaming_Shape1): Standard_Integer {.noSideEffect,
    importcpp: "TShapeId", header: "XmlMNaming_Shape1.hxx".}
proc LocId*(this: XmlMNaming_Shape1): Standard_Integer {.noSideEffect,
    importcpp: "LocId", header: "XmlMNaming_Shape1.hxx".}
proc Orientation*(this: XmlMNaming_Shape1): TopAbs_Orientation {.noSideEffect,
    importcpp: "Orientation", header: "XmlMNaming_Shape1.hxx".}
proc SetShape*(this: var XmlMNaming_Shape1; ID: Standard_Integer;
              LocID: Standard_Integer; Orient: TopAbs_Orientation) {.
    importcpp: "SetShape", header: "XmlMNaming_Shape1.hxx".}
proc SetVertex*(this: var XmlMNaming_Shape1; theVertex: TopoDS_Shape) {.
    importcpp: "SetVertex", header: "XmlMNaming_Shape1.hxx".}