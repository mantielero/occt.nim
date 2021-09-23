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
  BRepMesh_CustomBaseMeshAlgo, ../NCollection/NCollection_Shared,
  ../IMeshTools/IMeshTools_Parameters

discard "forward decl of BRepMesh_DataStructureOfDelaun"
discard "forward decl of BRepMesh_Delaun"
type
  BRepMesh_DelabellaBaseMeshAlgo* {.importcpp: "BRepMesh_DelabellaBaseMeshAlgo", header: "BRepMesh_DelabellaBaseMeshAlgo.hxx",
                                   bycopy.} = object of BRepMesh_CustomBaseMeshAlgo ## !
                                                                               ## Constructor.
                                                                               ## !
                                                                               ## Builds
                                                                               ## base
                                                                               ## triangulation
                                                                               ## using
                                                                               ## Delabella
                                                                               ## project.


proc constructBRepMesh_DelabellaBaseMeshAlgo*(): BRepMesh_DelabellaBaseMeshAlgo {.
    constructor, importcpp: "BRepMesh_DelabellaBaseMeshAlgo(@)",
    header: "BRepMesh_DelabellaBaseMeshAlgo.hxx".}
proc destroyBRepMesh_DelabellaBaseMeshAlgo*(
    this: var BRepMesh_DelabellaBaseMeshAlgo) {.
    importcpp: "#.~BRepMesh_DelabellaBaseMeshAlgo()",
    header: "BRepMesh_DelabellaBaseMeshAlgo.hxx".}
type
  BRepMesh_DelabellaBaseMeshAlgobase_type* = BRepMesh_CustomBaseMeshAlgo

proc get_type_name*(): cstring {.importcpp: "BRepMesh_DelabellaBaseMeshAlgo::get_type_name(@)",
                              header: "BRepMesh_DelabellaBaseMeshAlgo.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMesh_DelabellaBaseMeshAlgo::get_type_descriptor(@)",
    header: "BRepMesh_DelabellaBaseMeshAlgo.hxx".}
proc DynamicType*(this: BRepMesh_DelabellaBaseMeshAlgo): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRepMesh_DelabellaBaseMeshAlgo.hxx".}