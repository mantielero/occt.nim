##  Created on: 1996-12-16
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
discard "forward decl of TNaming_NewShapeIterator"
discard "forward decl of TNaming_OldShapeIterator"
discard "forward decl of TNaming_NamedShape"
discard "forward decl of TDF_Label"
discard "forward decl of TopoDS_Shape"
type
  TNamingIterator* {.importcpp: "TNaming_Iterator", header: "TNaming_Iterator.hxx",
                    bycopy.} = object ## ! Iterates on all  the history records in
                                   ## ! <anAtt>.


proc constructTNamingIterator*(anAtt: Handle[TNamingNamedShape]): TNamingIterator {.
    constructor, importcpp: "TNaming_Iterator(@)", header: "TNaming_Iterator.hxx".}
proc constructTNamingIterator*(aLabel: TDF_Label): TNamingIterator {.constructor,
    importcpp: "TNaming_Iterator(@)", header: "TNaming_Iterator.hxx".}
proc constructTNamingIterator*(aLabel: TDF_Label; aTrans: cint): TNamingIterator {.
    constructor, importcpp: "TNaming_Iterator(@)", header: "TNaming_Iterator.hxx".}
proc more*(this: TNamingIterator): bool {.noSideEffect, importcpp: "More",
                                      header: "TNaming_Iterator.hxx".}
proc next*(this: var TNamingIterator) {.importcpp: "Next",
                                    header: "TNaming_Iterator.hxx".}
proc oldShape*(this: TNamingIterator): TopoDS_Shape {.noSideEffect,
    importcpp: "OldShape", header: "TNaming_Iterator.hxx".}
proc newShape*(this: TNamingIterator): TopoDS_Shape {.noSideEffect,
    importcpp: "NewShape", header: "TNaming_Iterator.hxx".}
proc isModification*(this: TNamingIterator): bool {.noSideEffect,
    importcpp: "IsModification", header: "TNaming_Iterator.hxx".}
proc evolution*(this: TNamingIterator): TNamingEvolution {.noSideEffect,
    importcpp: "Evolution", header: "TNaming_Iterator.hxx".}

























