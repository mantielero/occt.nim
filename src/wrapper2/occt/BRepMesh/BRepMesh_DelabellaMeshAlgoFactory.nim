##  Created on: 2019-07-05
##  Copyright (c) 2019 OPEN CASCADE SAS
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

## ! Implementation of IMeshTools_MeshAlgoFactory providing Delabella-based
## ! algorithms of different complexity depending on type of target surface.

type
  BRepMeshDelabellaMeshAlgoFactory* {.importcpp: "BRepMesh_DelabellaMeshAlgoFactory", header: "BRepMesh_DelabellaMeshAlgoFactory.hxx",
                                     bycopy.} = object of IMeshToolsMeshAlgoFactory ## !
                                                                               ## Constructor.


proc constructBRepMeshDelabellaMeshAlgoFactory*(): BRepMeshDelabellaMeshAlgoFactory {.
    constructor, importcpp: "BRepMesh_DelabellaMeshAlgoFactory(@)",
    header: "BRepMesh_DelabellaMeshAlgoFactory.hxx".}
proc destroyBRepMeshDelabellaMeshAlgoFactory*(
    this: var BRepMeshDelabellaMeshAlgoFactory) {.
    importcpp: "#.~BRepMesh_DelabellaMeshAlgoFactory()",
    header: "BRepMesh_DelabellaMeshAlgoFactory.hxx".}
proc getAlgo*(this: BRepMeshDelabellaMeshAlgoFactory;
             theSurfaceType: GeomAbsSurfaceType;
             theParameters: IMeshToolsParameters): Handle[IMeshToolsMeshAlgo] {.
    noSideEffect, importcpp: "GetAlgo",
    header: "BRepMesh_DelabellaMeshAlgoFactory.hxx".}
type
  BRepMeshDelabellaMeshAlgoFactorybaseType* = IMeshToolsMeshAlgoFactory

proc getTypeName*(): cstring {.importcpp: "BRepMesh_DelabellaMeshAlgoFactory::get_type_name(@)",
                            header: "BRepMesh_DelabellaMeshAlgoFactory.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMesh_DelabellaMeshAlgoFactory::get_type_descriptor(@)",
    header: "BRepMesh_DelabellaMeshAlgoFactory.hxx".}
proc dynamicType*(this: BRepMeshDelabellaMeshAlgoFactory): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRepMesh_DelabellaMeshAlgoFactory.hxx".}

