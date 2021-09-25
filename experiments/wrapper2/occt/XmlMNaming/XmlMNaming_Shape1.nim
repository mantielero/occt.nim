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

discard "forward decl of TopoDS_Shape"
type
  XmlMNamingShape1* {.importcpp: "XmlMNaming_Shape1",
                     header: "XmlMNaming_Shape1.hxx", bycopy.} = object


proc constructXmlMNamingShape1*(doc: var XmlObjMgtDocument): XmlMNamingShape1 {.
    constructor, importcpp: "XmlMNaming_Shape1(@)", header: "XmlMNaming_Shape1.hxx".}
proc constructXmlMNamingShape1*(e: XmlObjMgtElement): XmlMNamingShape1 {.
    constructor, importcpp: "XmlMNaming_Shape1(@)", header: "XmlMNaming_Shape1.hxx".}
proc element*(this: XmlMNamingShape1): XmlObjMgtElement {.noSideEffect,
    importcpp: "Element", header: "XmlMNaming_Shape1.hxx".}
proc element*(this: var XmlMNamingShape1): var XmlObjMgtElement {.
    importcpp: "Element", header: "XmlMNaming_Shape1.hxx".}
proc tShapeId*(this: XmlMNamingShape1): int {.noSideEffect, importcpp: "TShapeId",
    header: "XmlMNaming_Shape1.hxx".}
proc locId*(this: XmlMNamingShape1): int {.noSideEffect, importcpp: "LocId",
                                       header: "XmlMNaming_Shape1.hxx".}
proc orientation*(this: XmlMNamingShape1): TopAbsOrientation {.noSideEffect,
    importcpp: "Orientation", header: "XmlMNaming_Shape1.hxx".}
proc setShape*(this: var XmlMNamingShape1; id: int; locID: int;
              orient: TopAbsOrientation) {.importcpp: "SetShape",
    header: "XmlMNaming_Shape1.hxx".}
proc setVertex*(this: var XmlMNamingShape1; theVertex: TopoDS_Shape) {.
    importcpp: "SetVertex", header: "XmlMNaming_Shape1.hxx".}
