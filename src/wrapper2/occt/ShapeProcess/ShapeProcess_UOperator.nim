##  Created on: 2000-08-22
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ShapeProcess_OperFunc,
  ShapeProcess_Operator, ../Standard/Standard_Boolean

discard "forward decl of ShapeProcess_Context"
discard "forward decl of ShapeProcess_UOperator"
discard "forward decl of ShapeProcess_UOperator"
type
  Handle_ShapeProcess_UOperator* = handle[ShapeProcess_UOperator]

## ! Defines operator as container for static function
## ! OperFunc. This allows user to create new operators
## ! without creation of new classes

type
  ShapeProcess_UOperator* {.importcpp: "ShapeProcess_UOperator",
                           header: "ShapeProcess_UOperator.hxx", bycopy.} = object of ShapeProcess_Operator ##
                                                                                                     ## !
                                                                                                     ## Creates
                                                                                                     ## operator
                                                                                                     ## with
                                                                                                     ## implementation
                                                                                                     ## defined
                                                                                                     ## as
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## OperFunc
                                                                                                     ## (static
                                                                                                     ## function)


proc constructShapeProcess_UOperator*(`func`: ShapeProcess_OperFunc): ShapeProcess_UOperator {.
    constructor, importcpp: "ShapeProcess_UOperator(@)",
    header: "ShapeProcess_UOperator.hxx".}
proc Perform*(this: var ShapeProcess_UOperator;
             context: handle[ShapeProcess_Context];
             theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "Perform", header: "ShapeProcess_UOperator.hxx".}
type
  ShapeProcess_UOperatorbase_type* = ShapeProcess_Operator

proc get_type_name*(): cstring {.importcpp: "ShapeProcess_UOperator::get_type_name(@)",
                              header: "ShapeProcess_UOperator.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeProcess_UOperator::get_type_descriptor(@)",
    header: "ShapeProcess_UOperator.hxx".}
proc DynamicType*(this: ShapeProcess_UOperator): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeProcess_UOperator.hxx".}