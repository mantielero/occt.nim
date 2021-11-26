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

discard "forward decl of IMeshData_Edge"
type
  IMeshDataWire* {.importcpp: "IMeshData_Wire", header: "IMeshData_Wire.hxx", bycopy.} = object of IMeshDataTessellatedShape ##
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


proc destroyIMeshDataWire*(this: var IMeshDataWire) {.
    importcpp: "#.~IMeshData_Wire()", header: "IMeshData_Wire.hxx".}
proc getWire*(this: IMeshDataWire): TopoDS_Wire {.noSideEffect, importcpp: "GetWire",
    header: "IMeshData_Wire.hxx".}
proc edgesNb*(this: IMeshDataWire): cint {.noSideEffect, importcpp: "EdgesNb",
                                       header: "IMeshData_Wire.hxx".}
proc addEdge*(this: var IMeshDataWire; theDEdge: IEdgePtr;
             theOrientation: TopAbsOrientation): cint {.importcpp: "AddEdge",
    header: "IMeshData_Wire.hxx".}
proc getEdge*(this: IMeshDataWire; theIndex: cint): IEdgePtr {.noSideEffect,
    importcpp: "GetEdge", header: "IMeshData_Wire.hxx".}
proc getEdgeOrientation*(this: IMeshDataWire; theIndex: cint): TopAbsOrientation {.
    noSideEffect, importcpp: "GetEdgeOrientation", header: "IMeshData_Wire.hxx".}
type
  IMeshDataWirebaseType* = IMeshDataTessellatedShape

proc getTypeName*(): cstring {.importcpp: "IMeshData_Wire::get_type_name(@)",
                            header: "IMeshData_Wire.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IMeshData_Wire::get_type_descriptor(@)",
    header: "IMeshData_Wire.hxx".}
proc dynamicType*(this: IMeshDataWire): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IMeshData_Wire.hxx".}

























