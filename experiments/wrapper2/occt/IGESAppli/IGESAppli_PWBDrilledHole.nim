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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../IGESData/IGESData_IGESEntity

discard "forward decl of IGESAppli_PWBDrilledHole"
discard "forward decl of IGESAppli_PWBDrilledHole"
type
  Handle_IGESAppli_PWBDrilledHole* = handle[IGESAppli_PWBDrilledHole]

## ! defines PWBDrilledHole, Type <406> Form <26>
## ! in package IGESAppli
## ! Used to identify an entity that locates a drilled hole
## ! and to specify the characteristics of the drilled hole

type
  IGESAppli_PWBDrilledHole* {.importcpp: "IGESAppli_PWBDrilledHole",
                             header: "IGESAppli_PWBDrilledHole.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESAppli_PWBDrilledHole*(): IGESAppli_PWBDrilledHole {.constructor,
    importcpp: "IGESAppli_PWBDrilledHole(@)",
    header: "IGESAppli_PWBDrilledHole.hxx".}
proc Init*(this: var IGESAppli_PWBDrilledHole; nbPropVal: Standard_Integer;
          aDrillDia: Standard_Real; aFinishDia: Standard_Real;
          aCode: Standard_Integer) {.importcpp: "Init",
                                   header: "IGESAppli_PWBDrilledHole.hxx".}
proc NbPropertyValues*(this: IGESAppli_PWBDrilledHole): Standard_Integer {.
    noSideEffect, importcpp: "NbPropertyValues",
    header: "IGESAppli_PWBDrilledHole.hxx".}
proc DrillDiameterSize*(this: IGESAppli_PWBDrilledHole): Standard_Real {.
    noSideEffect, importcpp: "DrillDiameterSize",
    header: "IGESAppli_PWBDrilledHole.hxx".}
proc FinishDiameterSize*(this: IGESAppli_PWBDrilledHole): Standard_Real {.
    noSideEffect, importcpp: "FinishDiameterSize",
    header: "IGESAppli_PWBDrilledHole.hxx".}
proc FunctionCode*(this: IGESAppli_PWBDrilledHole): Standard_Integer {.noSideEffect,
    importcpp: "FunctionCode", header: "IGESAppli_PWBDrilledHole.hxx".}
type
  IGESAppli_PWBDrilledHolebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESAppli_PWBDrilledHole::get_type_name(@)",
                              header: "IGESAppli_PWBDrilledHole.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESAppli_PWBDrilledHole::get_type_descriptor(@)",
    header: "IGESAppli_PWBDrilledHole.hxx".}
proc DynamicType*(this: IGESAppli_PWBDrilledHole): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESAppli_PWBDrilledHole.hxx".}