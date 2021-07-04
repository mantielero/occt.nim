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
  ../IGESData/IGESData_IGESEntity

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESAppli_LevelFunction"
discard "forward decl of IGESAppli_LevelFunction"
type
  Handle_IGESAppli_LevelFunction* = handle[IGESAppli_LevelFunction]

## ! defines LevelFunction, Type <406> Form <3>
## ! in package IGESAppli
## ! Used to transfer the meaning or intended use of a level
## ! in the sending system

type
  IGESAppli_LevelFunction* {.importcpp: "IGESAppli_LevelFunction",
                            header: "IGESAppli_LevelFunction.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESAppli_LevelFunction*(): IGESAppli_LevelFunction {.constructor,
    importcpp: "IGESAppli_LevelFunction(@)", header: "IGESAppli_LevelFunction.hxx".}
proc Init*(this: var IGESAppli_LevelFunction; nbPropVal: Standard_Integer;
          aCode: Standard_Integer; aFuncDescrip: handle[TCollection_HAsciiString]) {.
    importcpp: "Init", header: "IGESAppli_LevelFunction.hxx".}
proc NbPropertyValues*(this: IGESAppli_LevelFunction): Standard_Integer {.
    noSideEffect, importcpp: "NbPropertyValues",
    header: "IGESAppli_LevelFunction.hxx".}
proc FuncDescriptionCode*(this: IGESAppli_LevelFunction): Standard_Integer {.
    noSideEffect, importcpp: "FuncDescriptionCode",
    header: "IGESAppli_LevelFunction.hxx".}
proc FuncDescription*(this: IGESAppli_LevelFunction): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "FuncDescription",
                               header: "IGESAppli_LevelFunction.hxx".}
type
  IGESAppli_LevelFunctionbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESAppli_LevelFunction::get_type_name(@)",
                              header: "IGESAppli_LevelFunction.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESAppli_LevelFunction::get_type_descriptor(@)",
    header: "IGESAppli_LevelFunction.hxx".}
proc DynamicType*(this: IGESAppli_LevelFunction): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESAppli_LevelFunction.hxx".}