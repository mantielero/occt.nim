##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Anand NATRAJAN )
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

discard "forward decl of IGESAppli_PWBDrilledHole"
discard "forward decl of IGESAppli_PWBDrilledHole"
type
  HandleC1C1* = Handle[IGESAppliPWBDrilledHole]

## ! defines PWBDrilledHole, Type <406> Form <26>
## ! in package IGESAppli
## ! Used to identify an entity that locates a drilled hole
## ! and to specify the characteristics of the drilled hole

type
  IGESAppliPWBDrilledHole* {.importcpp: "IGESAppli_PWBDrilledHole",
                            header: "IGESAppli_PWBDrilledHole.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESAppliPWBDrilledHole*(): IGESAppliPWBDrilledHole {.constructor,
    importcpp: "IGESAppli_PWBDrilledHole(@)",
    header: "IGESAppli_PWBDrilledHole.hxx".}
proc init*(this: var IGESAppliPWBDrilledHole; nbPropVal: cint; aDrillDia: cfloat;
          aFinishDia: cfloat; aCode: cint) {.importcpp: "Init",
    header: "IGESAppli_PWBDrilledHole.hxx".}
proc nbPropertyValues*(this: IGESAppliPWBDrilledHole): cint {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESAppli_PWBDrilledHole.hxx".}
proc drillDiameterSize*(this: IGESAppliPWBDrilledHole): cfloat {.noSideEffect,
    importcpp: "DrillDiameterSize", header: "IGESAppli_PWBDrilledHole.hxx".}
proc finishDiameterSize*(this: IGESAppliPWBDrilledHole): cfloat {.noSideEffect,
    importcpp: "FinishDiameterSize", header: "IGESAppli_PWBDrilledHole.hxx".}
proc functionCode*(this: IGESAppliPWBDrilledHole): cint {.noSideEffect,
    importcpp: "FunctionCode", header: "IGESAppli_PWBDrilledHole.hxx".}
type
  IGESAppliPWBDrilledHolebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESAppli_PWBDrilledHole::get_type_name(@)",
                            header: "IGESAppli_PWBDrilledHole.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESAppli_PWBDrilledHole::get_type_descriptor(@)",
    header: "IGESAppli_PWBDrilledHole.hxx".}
proc dynamicType*(this: IGESAppliPWBDrilledHole): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESAppli_PWBDrilledHole.hxx".}

























