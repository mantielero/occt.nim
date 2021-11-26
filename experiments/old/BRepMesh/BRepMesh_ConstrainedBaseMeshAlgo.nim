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

discard "forward decl of BRepMesh_DataStructureOfDelaun"
discard "forward decl of BRepMesh_Delaun"
type
  BRepMeshConstrainedBaseMeshAlgo* {.importcpp: "BRepMesh_ConstrainedBaseMeshAlgo", header: "BRepMesh_ConstrainedBaseMeshAlgo.hxx",
                                    bycopy.} = object of BRepMeshBaseMeshAlgo ## !
                                                                         ## Constructor.
                                                                         ## ! Returns size of cell to be used by
                                                                         ## acceleration circles grid
                                                                         ## structure.


proc constructBRepMeshConstrainedBaseMeshAlgo*(): BRepMeshConstrainedBaseMeshAlgo {.
    constructor, importcpp: "BRepMesh_ConstrainedBaseMeshAlgo(@)",
    header: "BRepMesh_ConstrainedBaseMeshAlgo.hxx".}
proc destroyBRepMeshConstrainedBaseMeshAlgo*(
    this: var BRepMeshConstrainedBaseMeshAlgo) {.
    importcpp: "#.~BRepMesh_ConstrainedBaseMeshAlgo()",
    header: "BRepMesh_ConstrainedBaseMeshAlgo.hxx".}
type
  BRepMeshConstrainedBaseMeshAlgobaseType* = BRepMeshBaseMeshAlgo

proc getTypeName*(): cstring {.importcpp: "BRepMesh_ConstrainedBaseMeshAlgo::get_type_name(@)",
                            header: "BRepMesh_ConstrainedBaseMeshAlgo.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMesh_ConstrainedBaseMeshAlgo::get_type_descriptor(@)",
    header: "BRepMesh_ConstrainedBaseMeshAlgo.hxx".}
proc dynamicType*(this: BRepMeshConstrainedBaseMeshAlgo): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRepMesh_ConstrainedBaseMeshAlgo.hxx".}