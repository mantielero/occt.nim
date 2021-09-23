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

import
  ../IMeshTools/IMeshTools_Context

## ! Class implemeting default context of BRepMesh algorithm.
## ! Initializes context by default algorithms.

type
  BRepMesh_Context* {.importcpp: "BRepMesh_Context",
                     header: "BRepMesh_Context.hxx", bycopy.} = object of IMeshTools_Context ##
                                                                                      ## !
                                                                                      ## Constructor.


proc constructBRepMesh_Context*(theMeshType: IMeshTools_MeshAlgoType = IMeshTools_MeshAlgoType_DEFAULT): BRepMesh_Context {.
    constructor, importcpp: "BRepMesh_Context(@)", header: "BRepMesh_Context.hxx".}
proc destroyBRepMesh_Context*(this: var BRepMesh_Context) {.
    importcpp: "#.~BRepMesh_Context()", header: "BRepMesh_Context.hxx".}
type
  BRepMesh_Contextbase_type* = IMeshTools_Context

proc get_type_name*(): cstring {.importcpp: "BRepMesh_Context::get_type_name(@)",
                              header: "BRepMesh_Context.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMesh_Context::get_type_descriptor(@)",
    header: "BRepMesh_Context.hxx".}
proc DynamicType*(this: BRepMesh_Context): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMesh_Context.hxx".}