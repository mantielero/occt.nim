##  Created on: 2019-06-07
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
  BRepMesh_ConstrainedBaseMeshAlgo, ../NCollection/NCollection_Shared,
  ../IMeshTools/IMeshTools_Parameters, BRepMesh_Delaun, BRepMesh_MeshTool

discard "forward decl of BRepMesh_DataStructureOfDelaun"
type
  BRepMesh_CustomBaseMeshAlgo* {.importcpp: "BRepMesh_CustomBaseMeshAlgo",
                                header: "BRepMesh_CustomBaseMeshAlgo.hxx", bycopy.} = object of BRepMesh_ConstrainedBaseMeshAlgo ##
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
                                                                                                                          ##
                                                                                                                          ## !
                                                                                                                          ## Builds
                                                                                                                          ## base
                                                                                                                          ## triangulation
                                                                                                                          ## using
                                                                                                                          ## custom
                                                                                                                          ## triangulation
                                                                                                                          ## algorithm.


proc constructBRepMesh_CustomBaseMeshAlgo*(): BRepMesh_CustomBaseMeshAlgo {.
    constructor, importcpp: "BRepMesh_CustomBaseMeshAlgo(@)",
    header: "BRepMesh_CustomBaseMeshAlgo.hxx".}
proc destroyBRepMesh_CustomBaseMeshAlgo*(this: var BRepMesh_CustomBaseMeshAlgo) {.
    importcpp: "#.~BRepMesh_CustomBaseMeshAlgo()",
    header: "BRepMesh_CustomBaseMeshAlgo.hxx".}
type
  BRepMesh_CustomBaseMeshAlgobase_type* = BRepMesh_ConstrainedBaseMeshAlgo

proc get_type_name*(): cstring {.importcpp: "BRepMesh_CustomBaseMeshAlgo::get_type_name(@)",
                              header: "BRepMesh_CustomBaseMeshAlgo.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMesh_CustomBaseMeshAlgo::get_type_descriptor(@)",
    header: "BRepMesh_CustomBaseMeshAlgo.hxx".}
proc DynamicType*(this: BRepMesh_CustomBaseMeshAlgo): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRepMesh_CustomBaseMeshAlgo.hxx".}