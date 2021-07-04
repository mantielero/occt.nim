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
  IMeshData_TessellatedShape, IMeshData_StatusOwner, ../Standard/Standard_Type,
  ../TopoDS/TopoDS_Wire, ../TopoDS/TopoDS, IMeshData_Types

discard "forward decl of IMeshData_Edge"
type
  IMeshData_Wire* {.importcpp: "IMeshData_Wire", header: "IMeshData_Wire.hxx", bycopy.} = object of IMeshData_TessellatedShape ##
                                                                                                                     ## !
                                                                                                                     ## Destructor.
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## Constructor.
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## Initializes
                                                                                                                     ## empty
                                                                                                                     ## model.


proc destroyIMeshData_Wire*(this: var IMeshData_Wire) {.
    importcpp: "#.~IMeshData_Wire()", header: "IMeshData_Wire.hxx".}
proc GetWire*(this: IMeshData_Wire): TopoDS_Wire {.noSideEffect,
    importcpp: "GetWire", header: "IMeshData_Wire.hxx".}
proc EdgesNb*(this: IMeshData_Wire): Standard_Integer {.noSideEffect,
    importcpp: "EdgesNb", header: "IMeshData_Wire.hxx".}
proc AddEdge*(this: var IMeshData_Wire; theDEdge: IEdgePtr;
             theOrientation: TopAbs_Orientation): Standard_Integer {.
    importcpp: "AddEdge", header: "IMeshData_Wire.hxx".}
proc GetEdge*(this: IMeshData_Wire; theIndex: Standard_Integer): IEdgePtr {.
    noSideEffect, importcpp: "GetEdge", header: "IMeshData_Wire.hxx".}
proc GetEdgeOrientation*(this: IMeshData_Wire; theIndex: Standard_Integer): TopAbs_Orientation {.
    noSideEffect, importcpp: "GetEdgeOrientation", header: "IMeshData_Wire.hxx".}
type
  IMeshData_Wirebase_type* = IMeshData_TessellatedShape

proc get_type_name*(): cstring {.importcpp: "IMeshData_Wire::get_type_name(@)",
                              header: "IMeshData_Wire.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IMeshData_Wire::get_type_descriptor(@)",
    header: "IMeshData_Wire.hxx".}
proc DynamicType*(this: IMeshData_Wire): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IMeshData_Wire.hxx".}