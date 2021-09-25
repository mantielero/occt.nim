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
  TNamingNewShapeIterator* {.importcpp: "TNaming_NewShapeIterator",
                            header: "TNaming_NewShapeIterator.hxx", bycopy.} = object


proc constructTNamingNewShapeIterator*(aShape: TopoDS_Shape; transaction: int;
                                      access: TDF_Label): TNamingNewShapeIterator {.
    constructor, importcpp: "TNaming_NewShapeIterator(@)",
    header: "TNaming_NewShapeIterator.hxx".}
proc constructTNamingNewShapeIterator*(aShape: TopoDS_Shape; access: TDF_Label): TNamingNewShapeIterator {.
    constructor, importcpp: "TNaming_NewShapeIterator(@)",
    header: "TNaming_NewShapeIterator.hxx".}
proc constructTNamingNewShapeIterator*(anIterator: TNamingNewShapeIterator): TNamingNewShapeIterator {.
    constructor, importcpp: "TNaming_NewShapeIterator(@)",
    header: "TNaming_NewShapeIterator.hxx".}
proc constructTNamingNewShapeIterator*(anIterator: TNamingIterator): TNamingNewShapeIterator {.
    constructor, importcpp: "TNaming_NewShapeIterator(@)",
    header: "TNaming_NewShapeIterator.hxx".}
proc more*(this: TNamingNewShapeIterator): bool {.noSideEffect, importcpp: "More",
    header: "TNaming_NewShapeIterator.hxx".}
proc next*(this: var TNamingNewShapeIterator) {.importcpp: "Next",
    header: "TNaming_NewShapeIterator.hxx".}
proc label*(this: TNamingNewShapeIterator): TDF_Label {.noSideEffect,
    importcpp: "Label", header: "TNaming_NewShapeIterator.hxx".}
proc namedShape*(this: TNamingNewShapeIterator): Handle[TNamingNamedShape] {.
    noSideEffect, importcpp: "NamedShape", header: "TNaming_NewShapeIterator.hxx".}
proc shape*(this: TNamingNewShapeIterator): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "TNaming_NewShapeIterator.hxx".}
proc isModification*(this: TNamingNewShapeIterator): bool {.noSideEffect,
    importcpp: "IsModification", header: "TNaming_NewShapeIterator.hxx".}
