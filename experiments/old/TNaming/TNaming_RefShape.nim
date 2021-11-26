##  Created on: 1996-12-17
##  Created by: Yves FRICAUD
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TDF_Label"
discard "forward decl of TNaming_NamedShape"
type
  TNamingRefShape* {.importcpp: "TNaming_RefShape", header: "TNaming_RefShape.hxx",
                    bycopy.} = object


proc constructTNamingRefShape*(): TNamingRefShape {.constructor,
    importcpp: "TNaming_RefShape(@)", header: "TNaming_RefShape.hxx".}
proc constructTNamingRefShape*(s: TopoDS_Shape): TNamingRefShape {.constructor,
    importcpp: "TNaming_RefShape(@)", header: "TNaming_RefShape.hxx".}
proc shape*(this: var TNamingRefShape; s: TopoDS_Shape) {.importcpp: "Shape",
    header: "TNaming_RefShape.hxx".}
proc firstUse*(this: var TNamingRefShape; aPtr: TNamingPtrNode) {.
    importcpp: "FirstUse", header: "TNaming_RefShape.hxx".}
proc firstUse*(this: TNamingRefShape): TNamingPtrNode {.noSideEffect,
    importcpp: "FirstUse", header: "TNaming_RefShape.hxx".}
proc shape*(this: TNamingRefShape): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "TNaming_RefShape.hxx".}
proc label*(this: TNamingRefShape): TDF_Label {.noSideEffect, importcpp: "Label",
    header: "TNaming_RefShape.hxx".}
proc namedShape*(this: TNamingRefShape): Handle[TNamingNamedShape] {.noSideEffect,
    importcpp: "NamedShape", header: "TNaming_RefShape.hxx".}
proc dumpJson*(this: TNamingRefShape; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "TNaming_RefShape.hxx".}

























