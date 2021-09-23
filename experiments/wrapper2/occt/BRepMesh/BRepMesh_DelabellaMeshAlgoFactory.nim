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

import
  ../Standard/Standard_Transient, ../Standard/Standard_Type,
  ../GeomAbs/GeomAbs_SurfaceType, ../IMeshTools/IMeshTools_MeshAlgoFactory

## ! Implementation of IMeshTools_MeshAlgoFactory providing Delabella-based
## ! algorithms of different complexity depending on type of target surface.

type
  BRepMesh_DelabellaMeshAlgoFactory* {.importcpp: "BRepMesh_DelabellaMeshAlgoFactory", header: "BRepMesh_DelabellaMeshAlgoFactory.hxx",
                                      bycopy.} = object of IMeshTools_MeshAlgoFactory ##
                                                                                 ## !
                                                                                 ## Constructor.


proc constructBRepMesh_DelabellaMeshAlgoFactory*(): BRepMesh_DelabellaMeshAlgoFactory {.
    constructor, importcpp: "BRepMesh_DelabellaMeshAlgoFactory(@)",
    header: "BRepMesh_DelabellaMeshAlgoFactory.hxx".}
proc destroyBRepMesh_DelabellaMeshAlgoFactory*(
    this: var BRepMesh_DelabellaMeshAlgoFactory) {.
    importcpp: "#.~BRepMesh_DelabellaMeshAlgoFactory()",
    header: "BRepMesh_DelabellaMeshAlgoFactory.hxx".}
proc GetAlgo*(this: BRepMesh_DelabellaMeshAlgoFactory;
             theSurfaceType: GeomAbs_SurfaceType;
             theParameters: IMeshTools_Parameters): handle[IMeshTools_MeshAlgo] {.
    noSideEffect, importcpp: "GetAlgo",
    header: "BRepMesh_DelabellaMeshAlgoFactory.hxx".}
type
  BRepMesh_DelabellaMeshAlgoFactorybase_type* = IMeshTools_MeshAlgoFactory

proc get_type_name*(): cstring {.importcpp: "BRepMesh_DelabellaMeshAlgoFactory::get_type_name(@)",
                              header: "BRepMesh_DelabellaMeshAlgoFactory.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMesh_DelabellaMeshAlgoFactory::get_type_descriptor(@)",
    header: "BRepMesh_DelabellaMeshAlgoFactory.hxx".}
proc DynamicType*(this: BRepMesh_DelabellaMeshAlgoFactory): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRepMesh_DelabellaMeshAlgoFactory.hxx".}