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
  IMeshData_Shape, ../Standard/Standard_Type, ../TopoDS/TopoDS_Shape,
  IMeshData_Types

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of IMeshData_Face"
discard "forward decl of IMeshData_Edge"
type
  IMeshData_Model* {.importcpp: "IMeshData_Model", header: "IMeshData_Model.hxx",
                    bycopy.} = object of IMeshData_Shape ## ! Destructor.
                                                    ## ! @name discrete faces
                                                    ## ! Returns number of faces in discrete model.
                                                    ## ! @name discrete edges
                                                    ## ! Returns number of edges in discrete model.
                                                    ## ! Constructor.
                                                    ## ! Initializes empty model.


proc destroyIMeshData_Model*(this: var IMeshData_Model) {.
    importcpp: "#.~IMeshData_Model()", header: "IMeshData_Model.hxx".}
proc GetMaxSize*(this: IMeshData_Model): Standard_Real {.noSideEffect,
    importcpp: "GetMaxSize", header: "IMeshData_Model.hxx".}
type
  IMeshData_Modelbase_type* = IMeshData_Shape

proc get_type_name*(): cstring {.importcpp: "IMeshData_Model::get_type_name(@)",
                              header: "IMeshData_Model.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IMeshData_Model::get_type_descriptor(@)",
    header: "IMeshData_Model.hxx".}
proc DynamicType*(this: IMeshData_Model): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IMeshData_Model.hxx".}
proc FacesNb*(this: IMeshData_Model): Standard_Integer {.noSideEffect,
    importcpp: "FacesNb", header: "IMeshData_Model.hxx".}
proc AddFace*(this: var IMeshData_Model; theFace: TopoDS_Face): IFaceHandle {.
    importcpp: "AddFace", header: "IMeshData_Model.hxx".}
proc GetFace*(this: IMeshData_Model; theIndex: Standard_Integer): IFaceHandle {.
    noSideEffect, importcpp: "GetFace", header: "IMeshData_Model.hxx".}
proc EdgesNb*(this: IMeshData_Model): Standard_Integer {.noSideEffect,
    importcpp: "EdgesNb", header: "IMeshData_Model.hxx".}
proc AddEdge*(this: var IMeshData_Model; theEdge: TopoDS_Edge): IEdgeHandle {.
    importcpp: "AddEdge", header: "IMeshData_Model.hxx".}
proc GetEdge*(this: IMeshData_Model; theIndex: Standard_Integer): IEdgeHandle {.
    noSideEffect, importcpp: "GetEdge", header: "IMeshData_Model.hxx".}