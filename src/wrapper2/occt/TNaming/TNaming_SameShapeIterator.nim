##  Created on: 1997-04-24
##  Created by: Yves FRICAUD
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard_Handle, TNaming_PtrNode, ../Standard/Standard_Boolean

discard "forward decl of Standard_NoMoreObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TNaming_Tool"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TNaming_UsedShapes"
discard "forward decl of TDF_Label"
type
  TNaming_SameShapeIterator* {.importcpp: "TNaming_SameShapeIterator",
                              header: "TNaming_SameShapeIterator.hxx", bycopy.} = object


proc constructTNaming_SameShapeIterator*(aShape: TopoDS_Shape; access: TDF_Label): TNaming_SameShapeIterator {.
    constructor, importcpp: "TNaming_SameShapeIterator(@)",
    header: "TNaming_SameShapeIterator.hxx".}
proc More*(this: TNaming_SameShapeIterator): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "TNaming_SameShapeIterator.hxx".}
proc Next*(this: var TNaming_SameShapeIterator) {.importcpp: "Next",
    header: "TNaming_SameShapeIterator.hxx".}
proc Label*(this: TNaming_SameShapeIterator): TDF_Label {.noSideEffect,
    importcpp: "Label", header: "TNaming_SameShapeIterator.hxx".}