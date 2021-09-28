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

## ! Default implementation of model entity.

type
  BRepMeshDataModel* {.importcpp: "BRepMeshData_Model",
                      header: "BRepMeshData_Model.hxx", bycopy.} = object of IMeshDataModel ##
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


proc constructBRepMeshDataModel*(theShape: TopoDS_Shape): BRepMeshDataModel {.
    constructor, importcpp: "BRepMeshData_Model(@)",
    header: "BRepMeshData_Model.hxx".}
proc destroyBRepMeshDataModel*(this: var BRepMeshDataModel) {.
    importcpp: "#.~BRepMeshData_Model()", header: "BRepMeshData_Model.hxx".}
proc getMaxSize*(this: BRepMeshDataModel): cfloat {.noSideEffect,
    importcpp: "GetMaxSize", header: "BRepMeshData_Model.hxx".}
proc setMaxSize*(this: var BRepMeshDataModel; theValue: cfloat) {.
    importcpp: "SetMaxSize", header: "BRepMeshData_Model.hxx".}
type
  BRepMeshDataModelbaseType* = IMeshDataModel

proc getTypeName*(): cstring {.importcpp: "BRepMeshData_Model::get_type_name(@)",
                            header: "BRepMeshData_Model.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMeshData_Model::get_type_descriptor(@)",
    header: "BRepMeshData_Model.hxx".}
proc dynamicType*(this: BRepMeshDataModel): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMeshData_Model.hxx".}
proc facesNb*(this: BRepMeshDataModel): cint {.noSideEffect, importcpp: "FacesNb",
    header: "BRepMeshData_Model.hxx".}
proc addFace*(this: var BRepMeshDataModel; theFace: TopoDS_Face): IFaceHandle {.
    importcpp: "AddFace", header: "BRepMeshData_Model.hxx".}
proc getFace*(this: BRepMeshDataModel; theIndex: cint): IFaceHandle {.noSideEffect,
    importcpp: "GetFace", header: "BRepMeshData_Model.hxx".}
proc edgesNb*(this: BRepMeshDataModel): cint {.noSideEffect, importcpp: "EdgesNb",
    header: "BRepMeshData_Model.hxx".}
proc addEdge*(this: var BRepMeshDataModel; theEdge: TopoDS_Edge): IEdgeHandle {.
    importcpp: "AddEdge", header: "BRepMeshData_Model.hxx".}
proc getEdge*(this: BRepMeshDataModel; theIndex: cint): IEdgeHandle {.noSideEffect,
    importcpp: "GetEdge", header: "BRepMeshData_Model.hxx".}

























