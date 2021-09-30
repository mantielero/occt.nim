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

discard "forward decl of Standard_NoMoreObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TNaming_Tool"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TNaming_UsedShapes"
discard "forward decl of TDF_Label"
type
  TNamingSameShapeIterator* {.importcpp: "TNaming_SameShapeIterator",
                             header: "TNaming_SameShapeIterator.hxx", bycopy.} = object


proc constructTNamingSameShapeIterator*(aShape: TopoDS_Shape; access: TDF_Label): TNamingSameShapeIterator {.
    constructor, importcpp: "TNaming_SameShapeIterator(@)",
    header: "TNaming_SameShapeIterator.hxx".}
proc more*(this: TNamingSameShapeIterator): bool {.noSideEffect, importcpp: "More",
    header: "TNaming_SameShapeIterator.hxx".}
proc next*(this: var TNamingSameShapeIterator) {.importcpp: "Next",
    header: "TNaming_SameShapeIterator.hxx".}
proc label*(this: TNamingSameShapeIterator): TDF_Label {.noSideEffect,
    importcpp: "Label", header: "TNaming_SameShapeIterator.hxx".}

























