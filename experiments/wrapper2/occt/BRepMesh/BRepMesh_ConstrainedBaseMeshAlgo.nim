##  Created on: 2019-07-08
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
  BRepMesh_BaseMeshAlgo, ../NCollection/NCollection_Shared,
  ../IMeshTools/IMeshTools_Parameters

discard "forward decl of BRepMesh_DataStructureOfDelaun"
discard "forward decl of BRepMesh_Delaun"
type
  BRepMesh_ConstrainedBaseMeshAlgo* {.importcpp: "BRepMesh_ConstrainedBaseMeshAlgo", header: "BRepMesh_ConstrainedBaseMeshAlgo.hxx",
                                     bycopy.} = object of BRepMesh_BaseMeshAlgo ## !
                                                                           ## Constructor.
                                                                           ## !
                                                                           ## Returns size of cell to be used by
                                                                           ## acceleration
                                                                           ## circles grid
                                                                           ## structure.


proc constructBRepMesh_ConstrainedBaseMeshAlgo*(): BRepMesh_ConstrainedBaseMeshAlgo {.
    constructor, importcpp: "BRepMesh_ConstrainedBaseMeshAlgo(@)",
    header: "BRepMesh_ConstrainedBaseMeshAlgo.hxx".}
proc destroyBRepMesh_ConstrainedBaseMeshAlgo*(
    this: var BRepMesh_ConstrainedBaseMeshAlgo) {.
    importcpp: "#.~BRepMesh_ConstrainedBaseMeshAlgo()",
    header: "BRepMesh_ConstrainedBaseMeshAlgo.hxx".}
type
  BRepMesh_ConstrainedBaseMeshAlgobase_type* = BRepMesh_BaseMeshAlgo

proc get_type_name*(): cstring {.importcpp: "BRepMesh_ConstrainedBaseMeshAlgo::get_type_name(@)",
                              header: "BRepMesh_ConstrainedBaseMeshAlgo.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMesh_ConstrainedBaseMeshAlgo::get_type_descriptor(@)",
    header: "BRepMesh_ConstrainedBaseMeshAlgo.hxx".}
proc DynamicType*(this: BRepMesh_ConstrainedBaseMeshAlgo): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRepMesh_ConstrainedBaseMeshAlgo.hxx".}