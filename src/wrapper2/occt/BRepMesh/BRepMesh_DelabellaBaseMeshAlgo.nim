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

discard "forward decl of BRepMesh_DataStructureOfDelaun"
discard "forward decl of BRepMesh_Delaun"
type
  BRepMeshDelabellaBaseMeshAlgo* {.importcpp: "BRepMesh_DelabellaBaseMeshAlgo",
                                  header: "BRepMesh_DelabellaBaseMeshAlgo.hxx",
                                  bycopy.} = object of BRepMeshCustomBaseMeshAlgo ## !
                                                                             ## Constructor.
                                                                             ## !
                                                                             ## Builds
                                                                             ## base
                                                                             ## triangulation
                                                                             ## using
                                                                             ## Delabella
                                                                             ## project.


proc constructBRepMeshDelabellaBaseMeshAlgo*(): BRepMeshDelabellaBaseMeshAlgo {.
    constructor, importcpp: "BRepMesh_DelabellaBaseMeshAlgo(@)",
    header: "BRepMesh_DelabellaBaseMeshAlgo.hxx".}
proc destroyBRepMeshDelabellaBaseMeshAlgo*(
    this: var BRepMeshDelabellaBaseMeshAlgo) {.
    importcpp: "#.~BRepMesh_DelabellaBaseMeshAlgo()",
    header: "BRepMesh_DelabellaBaseMeshAlgo.hxx".}
type
  BRepMeshDelabellaBaseMeshAlgobaseType* = BRepMeshCustomBaseMeshAlgo

proc getTypeName*(): cstring {.importcpp: "BRepMesh_DelabellaBaseMeshAlgo::get_type_name(@)",
                            header: "BRepMesh_DelabellaBaseMeshAlgo.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMesh_DelabellaBaseMeshAlgo::get_type_descriptor(@)",
    header: "BRepMesh_DelabellaBaseMeshAlgo.hxx".}
proc dynamicType*(this: BRepMeshDelabellaBaseMeshAlgo): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRepMesh_DelabellaBaseMeshAlgo.hxx".}

