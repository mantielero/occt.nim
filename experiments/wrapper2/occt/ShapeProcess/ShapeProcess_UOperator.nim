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

discard "forward decl of ShapeProcess_Context"
discard "forward decl of ShapeProcess_UOperator"
discard "forward decl of ShapeProcess_UOperator"
type
  HandleShapeProcessUOperator* = Handle[ShapeProcessUOperator]

## ! Defines operator as container for static function
## ! OperFunc. This allows user to create new operators
## ! without creation of new classes

type
  ShapeProcessUOperator* {.importcpp: "ShapeProcess_UOperator",
                          header: "ShapeProcess_UOperator.hxx", bycopy.} = object of ShapeProcessOperator ##
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


proc constructShapeProcessUOperator*(`func`: ShapeProcessOperFunc): ShapeProcessUOperator {.
    constructor, importcpp: "ShapeProcess_UOperator(@)",
    header: "ShapeProcess_UOperator.hxx".}
proc perform*(this: var ShapeProcessUOperator; context: Handle[ShapeProcessContext];
             theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "Perform", header: "ShapeProcess_UOperator.hxx".}
type
  ShapeProcessUOperatorbaseType* = ShapeProcessOperator

proc getTypeName*(): cstring {.importcpp: "ShapeProcess_UOperator::get_type_name(@)",
                            header: "ShapeProcess_UOperator.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeProcess_UOperator::get_type_descriptor(@)",
    header: "ShapeProcess_UOperator.hxx".}
proc dynamicType*(this: ShapeProcessUOperator): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeProcess_UOperator.hxx".}
