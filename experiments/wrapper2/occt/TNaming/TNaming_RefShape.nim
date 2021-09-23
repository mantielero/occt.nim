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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape, TNaming_PtrNode

discard "forward decl of TopoDS_Shape"
discard "forward decl of TDF_Label"
discard "forward decl of TNaming_NamedShape"
type
  TNaming_RefShape* {.importcpp: "TNaming_RefShape",
                     header: "TNaming_RefShape.hxx", bycopy.} = object


proc constructTNaming_RefShape*(): TNaming_RefShape {.constructor,
    importcpp: "TNaming_RefShape(@)", header: "TNaming_RefShape.hxx".}
proc constructTNaming_RefShape*(S: TopoDS_Shape): TNaming_RefShape {.constructor,
    importcpp: "TNaming_RefShape(@)", header: "TNaming_RefShape.hxx".}
proc Shape*(this: var TNaming_RefShape; S: TopoDS_Shape) {.importcpp: "Shape",
    header: "TNaming_RefShape.hxx".}
proc FirstUse*(this: var TNaming_RefShape; aPtr: TNaming_PtrNode) {.
    importcpp: "FirstUse", header: "TNaming_RefShape.hxx".}
proc FirstUse*(this: TNaming_RefShape): TNaming_PtrNode {.noSideEffect,
    importcpp: "FirstUse", header: "TNaming_RefShape.hxx".}
proc Shape*(this: TNaming_RefShape): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "TNaming_RefShape.hxx".}
proc Label*(this: TNaming_RefShape): TDF_Label {.noSideEffect, importcpp: "Label",
    header: "TNaming_RefShape.hxx".}
proc NamedShape*(this: TNaming_RefShape): handle[TNaming_NamedShape] {.noSideEffect,
    importcpp: "NamedShape", header: "TNaming_RefShape.hxx".}
proc DumpJson*(this: TNaming_RefShape; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TNaming_RefShape.hxx".}