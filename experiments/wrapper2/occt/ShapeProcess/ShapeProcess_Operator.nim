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
discard "forward decl of ShapeProcess_Operator"
discard "forward decl of ShapeProcess_Operator"
type
  HandleShapeProcessOperator* = Handle[ShapeProcessOperator]

## ! Abstract Operator class providing a tool to
## ! perform an operation on Context

type
  ShapeProcessOperator* {.importcpp: "ShapeProcess_Operator",
                         header: "ShapeProcess_Operator.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## Performs
                                                                                              ## operation
                                                                                              ## and
                                                                                              ## eventually
                                                                                              ## records
                                                                                              ##
                                                                                              ## !
                                                                                              ## changes
                                                                                              ## in
                                                                                              ## the
                                                                                              ## context


proc perform*(this: var ShapeProcessOperator; context: Handle[ShapeProcessContext];
             theProgress: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "Perform", header: "ShapeProcess_Operator.hxx".}
type
  ShapeProcessOperatorbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "ShapeProcess_Operator::get_type_name(@)",
                            header: "ShapeProcess_Operator.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeProcess_Operator::get_type_descriptor(@)",
    header: "ShapeProcess_Operator.hxx".}
proc dynamicType*(this: ShapeProcessOperator): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeProcess_Operator.hxx".}
