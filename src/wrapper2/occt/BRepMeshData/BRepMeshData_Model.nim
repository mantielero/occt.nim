##  Created on: 2016-04-07
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
  ../IMeshData/IMeshData_Model, ../IMeshData/IMeshData_Types,
  ../NCollection/NCollection_IncAllocator, ../IMeshData/IMeshData_Face,
  ../IMeshData/IMeshData_Edge

## ! Default implementation of model entity.

type
  BRepMeshData_Model* {.importcpp: "BRepMeshData_Model",
                       header: "BRepMeshData_Model.hxx", bycopy.} = object of IMeshData_Model ##
                                                                                       ## !
                                                                                       ## Constructor.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Initializes
                                                                                       ## empty
                                                                                       ## model.
                                                                                       ##
                                                                                       ## !
                                                                                       ## @name
                                                                                       ## discrete
                                                                                       ## faces
                                                                                       ##
                                                                                       ## !
                                                                                       ## Returns
                                                                                       ## number
                                                                                       ## of
                                                                                       ## faces
                                                                                       ## in
                                                                                       ## discrete
                                                                                       ## model.
                                                                                       ##
                                                                                       ## !
                                                                                       ## @name
                                                                                       ## discrete
                                                                                       ## edges
                                                                                       ##
                                                                                       ## !
                                                                                       ## Returns
                                                                                       ## number
                                                                                       ## of
                                                                                       ## edges
                                                                                       ## in
                                                                                       ## discrete
                                                                                       ## model.


proc constructBRepMeshData_Model*(theShape: TopoDS_Shape): BRepMeshData_Model {.
    constructor, importcpp: "BRepMeshData_Model(@)",
    header: "BRepMeshData_Model.hxx".}
proc destroyBRepMeshData_Model*(this: var BRepMeshData_Model) {.
    importcpp: "#.~BRepMeshData_Model()", header: "BRepMeshData_Model.hxx".}
proc GetMaxSize*(this: BRepMeshData_Model): Standard_Real {.noSideEffect,
    importcpp: "GetMaxSize", header: "BRepMeshData_Model.hxx".}
proc SetMaxSize*(this: var BRepMeshData_Model; theValue: Standard_Real) {.
    importcpp: "SetMaxSize", header: "BRepMeshData_Model.hxx".}
type
  BRepMeshData_Modelbase_type* = IMeshData_Model

proc get_type_name*(): cstring {.importcpp: "BRepMeshData_Model::get_type_name(@)",
                              header: "BRepMeshData_Model.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMeshData_Model::get_type_descriptor(@)",
    header: "BRepMeshData_Model.hxx".}
proc DynamicType*(this: BRepMeshData_Model): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMeshData_Model.hxx".}
proc FacesNb*(this: BRepMeshData_Model): Standard_Integer {.noSideEffect,
    importcpp: "FacesNb", header: "BRepMeshData_Model.hxx".}
proc AddFace*(this: var BRepMeshData_Model; theFace: TopoDS_Face): IFaceHandle {.
    importcpp: "AddFace", header: "BRepMeshData_Model.hxx".}
proc GetFace*(this: BRepMeshData_Model; theIndex: Standard_Integer): IFaceHandle {.
    noSideEffect, importcpp: "GetFace", header: "BRepMeshData_Model.hxx".}
proc EdgesNb*(this: BRepMeshData_Model): Standard_Integer {.noSideEffect,
    importcpp: "EdgesNb", header: "BRepMeshData_Model.hxx".}
proc AddEdge*(this: var BRepMeshData_Model; theEdge: TopoDS_Edge): IEdgeHandle {.
    importcpp: "AddEdge", header: "BRepMeshData_Model.hxx".}
proc GetEdge*(this: BRepMeshData_Model; theIndex: Standard_Integer): IEdgeHandle {.
    noSideEffect, importcpp: "GetEdge", header: "BRepMeshData_Model.hxx".}