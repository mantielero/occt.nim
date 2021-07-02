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

discard "forward decl of IMeshData_Wire"
discard "forward decl of TopoDS_Wire"
type
  IMeshDataFace* {.importcpp: "IMeshData_Face", header: "IMeshData_Face.hxx", bycopy.} = object of IMeshDataTessellatedShape ##
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


proc destroyIMeshDataFace*(this: var IMeshDataFace) {.
    importcpp: "#.~IMeshData_Face()", header: "IMeshData_Face.hxx".}
proc wiresNb*(this: IMeshDataFace): StandardInteger {.noSideEffect,
    importcpp: "WiresNb", header: "IMeshData_Face.hxx".}
proc addWire*(this: var IMeshDataFace; theWire: TopoDS_Wire;
             theEdgeNb: StandardInteger = 0): IWireHandle {.importcpp: "AddWire",
    header: "IMeshData_Face.hxx".}
proc getWire*(this: IMeshDataFace; theIndex: StandardInteger): IWireHandle {.
    noSideEffect, importcpp: "GetWire", header: "IMeshData_Face.hxx".}
proc getSurface*(this: IMeshDataFace): Handle[BRepAdaptorHSurface] {.noSideEffect,
    importcpp: "GetSurface", header: "IMeshData_Face.hxx".}
proc getFace*(this: IMeshDataFace): TopoDS_Face {.noSideEffect, importcpp: "GetFace",
    header: "IMeshData_Face.hxx".}
proc isValid*(this: IMeshDataFace): StandardBoolean {.noSideEffect,
    importcpp: "IsValid", header: "IMeshData_Face.hxx".}
type
  IMeshDataFacebaseType* = IMeshDataTessellatedShape

proc getTypeName*(): cstring {.importcpp: "IMeshData_Face::get_type_name(@)",
                            header: "IMeshData_Face.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IMeshData_Face::get_type_descriptor(@)",
    header: "IMeshData_Face.hxx".}
proc dynamicType*(this: IMeshDataFace): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IMeshData_Face.hxx".}

