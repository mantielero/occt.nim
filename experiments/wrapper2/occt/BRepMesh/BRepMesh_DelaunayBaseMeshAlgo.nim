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

import
  BRepMesh_ConstrainedBaseMeshAlgo, ../NCollection/NCollection_Shared,
  ../IMeshTools/IMeshTools_Parameters

discard "forward decl of BRepMesh_DataStructureOfDelaun"
discard "forward decl of BRepMesh_Delaun"
type
  BRepMesh_DelaunayBaseMeshAlgo* {.importcpp: "BRepMesh_DelaunayBaseMeshAlgo",
                                  header: "BRepMesh_DelaunayBaseMeshAlgo.hxx",
                                  bycopy.} = object of BRepMesh_ConstrainedBaseMeshAlgo ##
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


proc constructBRepMesh_DelaunayBaseMeshAlgo*(): BRepMesh_DelaunayBaseMeshAlgo {.
    constructor, importcpp: "BRepMesh_DelaunayBaseMeshAlgo(@)",
    header: "BRepMesh_DelaunayBaseMeshAlgo.hxx".}
proc destroyBRepMesh_DelaunayBaseMeshAlgo*(
    this: var BRepMesh_DelaunayBaseMeshAlgo) {.
    importcpp: "#.~BRepMesh_DelaunayBaseMeshAlgo()",
    header: "BRepMesh_DelaunayBaseMeshAlgo.hxx".}
type
  BRepMesh_DelaunayBaseMeshAlgobase_type* = BRepMesh_ConstrainedBaseMeshAlgo

proc get_type_name*(): cstring {.importcpp: "BRepMesh_DelaunayBaseMeshAlgo::get_type_name(@)",
                              header: "BRepMesh_DelaunayBaseMeshAlgo.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMesh_DelaunayBaseMeshAlgo::get_type_descriptor(@)",
    header: "BRepMesh_DelaunayBaseMeshAlgo.hxx".}
proc DynamicType*(this: BRepMesh_DelaunayBaseMeshAlgo): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRepMesh_DelaunayBaseMeshAlgo.hxx".}