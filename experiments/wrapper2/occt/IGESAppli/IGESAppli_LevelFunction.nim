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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESAppli_LevelFunction"
discard "forward decl of IGESAppli_LevelFunction"
type
  HandleIGESAppliLevelFunction* = Handle[IGESAppliLevelFunction]

## ! defines LevelFunction, Type <406> Form <3>
## ! in package IGESAppli
## ! Used to transfer the meaning or intended use of a level
## ! in the sending system

type
  IGESAppliLevelFunction* {.importcpp: "IGESAppli_LevelFunction",
                           header: "IGESAppli_LevelFunction.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESAppliLevelFunction*(): IGESAppliLevelFunction {.constructor,
    importcpp: "IGESAppli_LevelFunction(@)", header: "IGESAppli_LevelFunction.hxx".}
proc init*(this: var IGESAppliLevelFunction; nbPropVal: int; aCode: int;
          aFuncDescrip: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "IGESAppli_LevelFunction.hxx".}
proc nbPropertyValues*(this: IGESAppliLevelFunction): int {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESAppli_LevelFunction.hxx".}
proc funcDescriptionCode*(this: IGESAppliLevelFunction): int {.noSideEffect,
    importcpp: "FuncDescriptionCode", header: "IGESAppli_LevelFunction.hxx".}
proc funcDescription*(this: IGESAppliLevelFunction): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "FuncDescription",
    header: "IGESAppli_LevelFunction.hxx".}
type
  IGESAppliLevelFunctionbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESAppli_LevelFunction::get_type_name(@)",
                            header: "IGESAppli_LevelFunction.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESAppli_LevelFunction::get_type_descriptor(@)",
    header: "IGESAppli_LevelFunction.hxx".}
proc dynamicType*(this: IGESAppliLevelFunction): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESAppli_LevelFunction.hxx".}
