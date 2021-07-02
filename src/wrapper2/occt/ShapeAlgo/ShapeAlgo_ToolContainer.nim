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

discard "forward decl of ShapeFix_Shape"
discard "forward decl of ShapeFix_EdgeProjAux"
discard "forward decl of ShapeAlgo_ToolContainer"
discard "forward decl of ShapeAlgo_ToolContainer"
type
  HandleShapeAlgoToolContainer* = Handle[ShapeAlgoToolContainer]

## ! Returns tools used by AlgoContainer

type
  ShapeAlgoToolContainer* {.importcpp: "ShapeAlgo_ToolContainer",
                           header: "ShapeAlgo_ToolContainer.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Empty
                                                                                                  ## constructor


proc constructShapeAlgoToolContainer*(): ShapeAlgoToolContainer {.constructor,
    importcpp: "ShapeAlgo_ToolContainer(@)", header: "ShapeAlgo_ToolContainer.hxx".}
proc fixShape*(this: ShapeAlgoToolContainer): Handle[ShapeFixShape] {.noSideEffect,
    importcpp: "FixShape", header: "ShapeAlgo_ToolContainer.hxx".}
proc edgeProjAux*(this: ShapeAlgoToolContainer): Handle[ShapeFixEdgeProjAux] {.
    noSideEffect, importcpp: "EdgeProjAux", header: "ShapeAlgo_ToolContainer.hxx".}
type
  ShapeAlgoToolContainerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "ShapeAlgo_ToolContainer::get_type_name(@)",
                            header: "ShapeAlgo_ToolContainer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeAlgo_ToolContainer::get_type_descriptor(@)",
    header: "ShapeAlgo_ToolContainer.hxx".}
proc dynamicType*(this: ShapeAlgoToolContainer): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeAlgo_ToolContainer.hxx".}

