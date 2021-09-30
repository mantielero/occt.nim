##  Created on: 2016-07-07
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

## ! Default implementation of IMeshTools_MeshAlgoFactory providing algorithms
## ! of different complexity depending on type of target surface.

type
  BRepMeshMeshAlgoFactory* {.importcpp: "BRepMesh_MeshAlgoFactory",
                            header: "BRepMesh_MeshAlgoFactory.hxx", bycopy.} = object of IMeshToolsMeshAlgoFactory ##
                                                                                                            ## !
                                                                                                            ## Constructor.


proc constructBRepMeshMeshAlgoFactory*(): BRepMeshMeshAlgoFactory {.constructor,
    importcpp: "BRepMesh_MeshAlgoFactory(@)",
    header: "BRepMesh_MeshAlgoFactory.hxx".}
proc destroyBRepMeshMeshAlgoFactory*(this: var BRepMeshMeshAlgoFactory) {.
    importcpp: "#.~BRepMesh_MeshAlgoFactory()",
    header: "BRepMesh_MeshAlgoFactory.hxx".}
proc getAlgo*(this: BRepMeshMeshAlgoFactory; theSurfaceType: GeomAbsSurfaceType;
             theParameters: IMeshToolsParameters): Handle[IMeshToolsMeshAlgo] {.
    noSideEffect, importcpp: "GetAlgo", header: "BRepMesh_MeshAlgoFactory.hxx".}
type
  BRepMeshMeshAlgoFactorybaseType* = IMeshToolsMeshAlgoFactory

proc getTypeName*(): cstring {.importcpp: "BRepMesh_MeshAlgoFactory::get_type_name(@)",
                            header: "BRepMesh_MeshAlgoFactory.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMesh_MeshAlgoFactory::get_type_descriptor(@)",
    header: "BRepMesh_MeshAlgoFactory.hxx".}
proc dynamicType*(this: BRepMeshMeshAlgoFactory): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "BRepMesh_MeshAlgoFactory.hxx".}