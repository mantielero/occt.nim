##  Created on: 2000-02-07
##  Created by: data exchange team
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of ShapeFix_Shape"
discard "forward decl of ShapeFix_EdgeProjAux"
discard "forward decl of ShapeAlgo_ToolContainer"
discard "forward decl of ShapeAlgo_ToolContainer"
type
  Handle_ShapeAlgo_ToolContainer* = handle[ShapeAlgo_ToolContainer]

## ! Returns tools used by AlgoContainer

type
  ShapeAlgo_ToolContainer* {.importcpp: "ShapeAlgo_ToolContainer",
                            header: "ShapeAlgo_ToolContainer.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                    ## !
                                                                                                    ## Empty
                                                                                                    ## constructor


proc constructShapeAlgo_ToolContainer*(): ShapeAlgo_ToolContainer {.constructor,
    importcpp: "ShapeAlgo_ToolContainer(@)", header: "ShapeAlgo_ToolContainer.hxx".}
proc FixShape*(this: ShapeAlgo_ToolContainer): handle[ShapeFix_Shape] {.
    noSideEffect, importcpp: "FixShape", header: "ShapeAlgo_ToolContainer.hxx".}
proc EdgeProjAux*(this: ShapeAlgo_ToolContainer): handle[ShapeFix_EdgeProjAux] {.
    noSideEffect, importcpp: "EdgeProjAux", header: "ShapeAlgo_ToolContainer.hxx".}
type
  ShapeAlgo_ToolContainerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "ShapeAlgo_ToolContainer::get_type_name(@)",
                              header: "ShapeAlgo_ToolContainer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeAlgo_ToolContainer::get_type_descriptor(@)",
    header: "ShapeAlgo_ToolContainer.hxx".}
proc DynamicType*(this: ShapeAlgo_ToolContainer): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeAlgo_ToolContainer.hxx".}