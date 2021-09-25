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

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of IMeshData_Face"
discard "forward decl of IMeshData_Edge"
type
  IMeshDataModel* {.importcpp: "IMeshData_Model", header: "IMeshData_Model.hxx",
                   bycopy.} = object of IMeshDataShape ## ! Destructor.
                                                  ## ! @name discrete faces
                                                  ## ! Returns number of faces in discrete model.
                                                  ## ! @name discrete edges
                                                  ## ! Returns number of edges in discrete model.
                                                  ## ! Constructor.
                                                  ## ! Initializes empty model.


proc destroyIMeshDataModel*(this: var IMeshDataModel) {.
    importcpp: "#.~IMeshData_Model()", header: "IMeshData_Model.hxx".}
proc getMaxSize*(this: IMeshDataModel): float {.noSideEffect,
    importcpp: "GetMaxSize", header: "IMeshData_Model.hxx".}
type
  IMeshDataModelbaseType* = IMeshDataShape

proc getTypeName*(): cstring {.importcpp: "IMeshData_Model::get_type_name(@)",
                            header: "IMeshData_Model.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IMeshData_Model::get_type_descriptor(@)",
    header: "IMeshData_Model.hxx".}
proc dynamicType*(this: IMeshDataModel): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IMeshData_Model.hxx".}
proc facesNb*(this: IMeshDataModel): int {.noSideEffect, importcpp: "FacesNb",
                                       header: "IMeshData_Model.hxx".}
proc addFace*(this: var IMeshDataModel; theFace: TopoDS_Face): IFaceHandle {.
    importcpp: "AddFace", header: "IMeshData_Model.hxx".}
proc getFace*(this: IMeshDataModel; theIndex: int): IFaceHandle {.noSideEffect,
    importcpp: "GetFace", header: "IMeshData_Model.hxx".}
proc edgesNb*(this: IMeshDataModel): int {.noSideEffect, importcpp: "EdgesNb",
                                       header: "IMeshData_Model.hxx".}
proc addEdge*(this: var IMeshDataModel; theEdge: TopoDS_Edge): IEdgeHandle {.
    importcpp: "AddEdge", header: "IMeshData_Model.hxx".}
proc getEdge*(this: IMeshDataModel; theIndex: int): IEdgeHandle {.noSideEffect,
    importcpp: "GetEdge", header: "IMeshData_Model.hxx".}
