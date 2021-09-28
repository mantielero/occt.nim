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

discard "forward decl of BRepMesh_DataStructureOfDelaun"
discard "forward decl of BRepMesh_Delaun"
type
  BRepMeshDelaunayBaseMeshAlgo* {.importcpp: "BRepMesh_DelaunayBaseMeshAlgo",
                                 header: "BRepMesh_DelaunayBaseMeshAlgo.hxx",
                                 bycopy.} = object of BRepMeshConstrainedBaseMeshAlgo ##
                                                                                 ## !
                                                                                 ## Constructor.
                                                                                 ##
                                                                                 ## !
                                                                                 ## Generates
                                                                                 ## mesh
                                                                                 ## for
                                                                                 ## the
                                                                                 ## contour
                                                                                 ## stored
                                                                                 ## in
                                                                                 ## data
                                                                                 ## structure.


proc constructBRepMeshDelaunayBaseMeshAlgo*(): BRepMeshDelaunayBaseMeshAlgo {.
    constructor, importcpp: "BRepMesh_DelaunayBaseMeshAlgo(@)",
    header: "BRepMesh_DelaunayBaseMeshAlgo.hxx".}
proc destroyBRepMeshDelaunayBaseMeshAlgo*(this: var BRepMeshDelaunayBaseMeshAlgo) {.
    importcpp: "#.~BRepMesh_DelaunayBaseMeshAlgo()",
    header: "BRepMesh_DelaunayBaseMeshAlgo.hxx".}
type
  BRepMeshDelaunayBaseMeshAlgobaseType* = BRepMeshConstrainedBaseMeshAlgo

proc getTypeName*(): cstring {.importcpp: "BRepMesh_DelaunayBaseMeshAlgo::get_type_name(@)",
                            header: "BRepMesh_DelaunayBaseMeshAlgo.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMesh_DelaunayBaseMeshAlgo::get_type_descriptor(@)",
    header: "BRepMesh_DelaunayBaseMeshAlgo.hxx".}
proc dynamicType*(this: BRepMeshDelaunayBaseMeshAlgo): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRepMesh_DelaunayBaseMeshAlgo.hxx".}

























