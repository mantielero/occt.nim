##  Created on: 1996-12-17
##  Created by: Remi Lequette
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
  ../Standard/Standard_Handle, TNaming_PtrNode, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of Standard_NoMoreObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TNaming_Tool"
discard "forward decl of TNaming_Name"
discard "forward decl of TNaming_Naming"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TNaming_UsedShapes"
discard "forward decl of TDF_Label"
discard "forward decl of TNaming_Iterator"
discard "forward decl of TNaming_NamedShape"
type
  TNaming_NewShapeIterator* {.importcpp: "TNaming_NewShapeIterator",
                             header: "TNaming_NewShapeIterator.hxx", bycopy.} = object


proc constructTNaming_NewShapeIterator*(aShape: TopoDS_Shape;
                                       Transaction: Standard_Integer;
                                       access: TDF_Label): TNaming_NewShapeIterator {.
    constructor, importcpp: "TNaming_NewShapeIterator(@)",
    header: "TNaming_NewShapeIterator.hxx".}
proc constructTNaming_NewShapeIterator*(aShape: TopoDS_Shape; access: TDF_Label): TNaming_NewShapeIterator {.
    constructor, importcpp: "TNaming_NewShapeIterator(@)",
    header: "TNaming_NewShapeIterator.hxx".}
proc constructTNaming_NewShapeIterator*(anIterator: TNaming_NewShapeIterator): TNaming_NewShapeIterator {.
    constructor, importcpp: "TNaming_NewShapeIterator(@)",
    header: "TNaming_NewShapeIterator.hxx".}
proc constructTNaming_NewShapeIterator*(anIterator: TNaming_Iterator): TNaming_NewShapeIterator {.
    constructor, importcpp: "TNaming_NewShapeIterator(@)",
    header: "TNaming_NewShapeIterator.hxx".}
proc More*(this: TNaming_NewShapeIterator): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "TNaming_NewShapeIterator.hxx".}
proc Next*(this: var TNaming_NewShapeIterator) {.importcpp: "Next",
    header: "TNaming_NewShapeIterator.hxx".}
proc Label*(this: TNaming_NewShapeIterator): TDF_Label {.noSideEffect,
    importcpp: "Label", header: "TNaming_NewShapeIterator.hxx".}
proc NamedShape*(this: TNaming_NewShapeIterator): handle[TNaming_NamedShape] {.
    noSideEffect, importcpp: "NamedShape", header: "TNaming_NewShapeIterator.hxx".}
proc Shape*(this: TNaming_NewShapeIterator): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "TNaming_NewShapeIterator.hxx".}
proc IsModification*(this: TNaming_NewShapeIterator): Standard_Boolean {.
    noSideEffect, importcpp: "IsModification",
    header: "TNaming_NewShapeIterator.hxx".}