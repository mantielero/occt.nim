##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Arun MENON )
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../IGESData/IGESData_IGESEntity,
  ../Standard/Standard_Boolean

discard "forward decl of IGESAppli_DrilledHole"
discard "forward decl of IGESAppli_DrilledHole"
type
  Handle_IGESAppli_DrilledHole* = handle[IGESAppli_DrilledHole]

## ! defines DrilledHole, Type <406> Form <6>
## ! in package IGESAppli
## ! Identifies an entity representing a drilled hole
## ! through a printed circuit board.

type
  IGESAppli_DrilledHole* {.importcpp: "IGESAppli_DrilledHole",
                          header: "IGESAppli_DrilledHole.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESAppli_DrilledHole*(): IGESAppli_DrilledHole {.constructor,
    importcpp: "IGESAppli_DrilledHole(@)", header: "IGESAppli_DrilledHole.hxx".}
proc Init*(this: var IGESAppli_DrilledHole; nbPropVal: Standard_Integer;
          aSize: Standard_Real; anotherSize: Standard_Real;
          aPlating: Standard_Integer; aLayer: Standard_Integer;
          anotherLayer: Standard_Integer) {.importcpp: "Init",
    header: "IGESAppli_DrilledHole.hxx".}
proc NbPropertyValues*(this: IGESAppli_DrilledHole): Standard_Integer {.
    noSideEffect, importcpp: "NbPropertyValues",
    header: "IGESAppli_DrilledHole.hxx".}
proc DrillDiaSize*(this: IGESAppli_DrilledHole): Standard_Real {.noSideEffect,
    importcpp: "DrillDiaSize", header: "IGESAppli_DrilledHole.hxx".}
proc FinishDiaSize*(this: IGESAppli_DrilledHole): Standard_Real {.noSideEffect,
    importcpp: "FinishDiaSize", header: "IGESAppli_DrilledHole.hxx".}
proc IsPlating*(this: IGESAppli_DrilledHole): Standard_Boolean {.noSideEffect,
    importcpp: "IsPlating", header: "IGESAppli_DrilledHole.hxx".}
proc NbLowerLayer*(this: IGESAppli_DrilledHole): Standard_Integer {.noSideEffect,
    importcpp: "NbLowerLayer", header: "IGESAppli_DrilledHole.hxx".}
proc NbHigherLayer*(this: IGESAppli_DrilledHole): Standard_Integer {.noSideEffect,
    importcpp: "NbHigherLayer", header: "IGESAppli_DrilledHole.hxx".}
type
  IGESAppli_DrilledHolebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESAppli_DrilledHole::get_type_name(@)",
                              header: "IGESAppli_DrilledHole.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESAppli_DrilledHole::get_type_descriptor(@)",
    header: "IGESAppli_DrilledHole.hxx".}
proc DynamicType*(this: IGESAppli_DrilledHole): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESAppli_DrilledHole.hxx".}