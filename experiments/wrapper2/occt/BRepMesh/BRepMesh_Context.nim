##  Created on: 2016-04-07
##  Copyright (c) 2016 OPEN CASCADE SAS
##  Created by: Oleg AGASHIN
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

## ! Class implemeting default context of BRepMesh algorithm.
## ! Initializes context by default algorithms.

type
  BRepMeshContext* {.importcpp: "BRepMesh_Context", header: "BRepMesh_Context.hxx",
                    bycopy.} = object of IMeshToolsContext ## ! Constructor.


proc constructBRepMeshContext*(theMeshType: IMeshToolsMeshAlgoType = iMeshToolsMeshAlgoTypeDEFAULT): BRepMeshContext {.
    constructor, importcpp: "BRepMesh_Context(@)", header: "BRepMesh_Context.hxx".}
proc destroyBRepMeshContext*(this: var BRepMeshContext) {.
    importcpp: "#.~BRepMesh_Context()", header: "BRepMesh_Context.hxx".}
type
  BRepMeshContextbaseType* = IMeshToolsContext

proc getTypeName*(): cstring {.importcpp: "BRepMesh_Context::get_type_name(@)",
                            header: "BRepMesh_Context.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMesh_Context::get_type_descriptor(@)",
    header: "BRepMesh_Context.hxx".}
proc dynamicType*(this: BRepMeshContext): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMesh_Context.hxx".}
