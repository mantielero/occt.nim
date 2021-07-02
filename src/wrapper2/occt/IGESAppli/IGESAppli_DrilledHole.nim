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

discard "forward decl of IGESAppli_DrilledHole"
discard "forward decl of IGESAppli_DrilledHole"
type
  HandleIGESAppliDrilledHole* = Handle[IGESAppliDrilledHole]

## ! defines DrilledHole, Type <406> Form <6>
## ! in package IGESAppli
## ! Identifies an entity representing a drilled hole
## ! through a printed circuit board.

type
  IGESAppliDrilledHole* {.importcpp: "IGESAppli_DrilledHole",
                         header: "IGESAppli_DrilledHole.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESAppliDrilledHole*(): IGESAppliDrilledHole {.constructor,
    importcpp: "IGESAppli_DrilledHole(@)", header: "IGESAppli_DrilledHole.hxx".}
proc init*(this: var IGESAppliDrilledHole; nbPropVal: StandardInteger;
          aSize: StandardReal; anotherSize: StandardReal; aPlating: StandardInteger;
          aLayer: StandardInteger; anotherLayer: StandardInteger) {.
    importcpp: "Init", header: "IGESAppli_DrilledHole.hxx".}
proc nbPropertyValues*(this: IGESAppliDrilledHole): StandardInteger {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESAppli_DrilledHole.hxx".}
proc drillDiaSize*(this: IGESAppliDrilledHole): StandardReal {.noSideEffect,
    importcpp: "DrillDiaSize", header: "IGESAppli_DrilledHole.hxx".}
proc finishDiaSize*(this: IGESAppliDrilledHole): StandardReal {.noSideEffect,
    importcpp: "FinishDiaSize", header: "IGESAppli_DrilledHole.hxx".}
proc isPlating*(this: IGESAppliDrilledHole): StandardBoolean {.noSideEffect,
    importcpp: "IsPlating", header: "IGESAppli_DrilledHole.hxx".}
proc nbLowerLayer*(this: IGESAppliDrilledHole): StandardInteger {.noSideEffect,
    importcpp: "NbLowerLayer", header: "IGESAppli_DrilledHole.hxx".}
proc nbHigherLayer*(this: IGESAppliDrilledHole): StandardInteger {.noSideEffect,
    importcpp: "NbHigherLayer", header: "IGESAppli_DrilledHole.hxx".}
type
  IGESAppliDrilledHolebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESAppli_DrilledHole::get_type_name(@)",
                            header: "IGESAppli_DrilledHole.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESAppli_DrilledHole::get_type_descriptor(@)",
    header: "IGESAppli_DrilledHole.hxx".}
proc dynamicType*(this: IGESAppliDrilledHole): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESAppli_DrilledHole.hxx".}

