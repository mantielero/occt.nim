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
  ../TopoDS/TopoDS_Face, ../TopoDS/TopoDS, IMeshData_Status, IMeshData_Types,
  ../BRepAdaptor/BRepAdaptor_HSurface

discard "forward decl of IMeshData_Wire"
discard "forward decl of TopoDS_Wire"
type
  IMeshData_Face* {.importcpp: "IMeshData_Face", header: "IMeshData_Face.hxx", bycopy.} = object of IMeshData_TessellatedShape ##
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


proc destroyIMeshData_Face*(this: var IMeshData_Face) {.
    importcpp: "#.~IMeshData_Face()", header: "IMeshData_Face.hxx".}
proc WiresNb*(this: IMeshData_Face): Standard_Integer {.noSideEffect,
    importcpp: "WiresNb", header: "IMeshData_Face.hxx".}
proc AddWire*(this: var IMeshData_Face; theWire: TopoDS_Wire;
             theEdgeNb: Standard_Integer = 0): IWireHandle {.importcpp: "AddWire",
    header: "IMeshData_Face.hxx".}
proc GetWire*(this: IMeshData_Face; theIndex: Standard_Integer): IWireHandle {.
    noSideEffect, importcpp: "GetWire", header: "IMeshData_Face.hxx".}
proc GetSurface*(this: IMeshData_Face): handle[BRepAdaptor_HSurface] {.noSideEffect,
    importcpp: "GetSurface", header: "IMeshData_Face.hxx".}
proc GetFace*(this: IMeshData_Face): TopoDS_Face {.noSideEffect,
    importcpp: "GetFace", header: "IMeshData_Face.hxx".}
proc IsValid*(this: IMeshData_Face): Standard_Boolean {.noSideEffect,
    importcpp: "IsValid", header: "IMeshData_Face.hxx".}
type
  IMeshData_Facebase_type* = IMeshData_TessellatedShape

proc get_type_name*(): cstring {.importcpp: "IMeshData_Face::get_type_name(@)",
                              header: "IMeshData_Face.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IMeshData_Face::get_type_descriptor(@)",
    header: "IMeshData_Face.hxx".}
proc DynamicType*(this: IMeshData_Face): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IMeshData_Face.hxx".}