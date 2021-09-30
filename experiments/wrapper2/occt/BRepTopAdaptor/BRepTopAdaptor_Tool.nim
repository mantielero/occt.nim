##  Created on: 1997-10-07
##  Created by: Laurent BUCHARD
##  Copyright (c) 1997-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

discard "forward decl of BRepTopAdaptor_TopolTool"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of TopoDS_Face"
type
  BRepTopAdaptorTool* {.importcpp: "BRepTopAdaptor_Tool",
                       header: "BRepTopAdaptor_Tool.hxx", bycopy.} = object


proc `new`*(this: var BRepTopAdaptorTool; theSize: csize_t): pointer {.
    importcpp: "BRepTopAdaptor_Tool::operator new",
    header: "BRepTopAdaptor_Tool.hxx".}
proc `delete`*(this: var BRepTopAdaptorTool; theAddress: pointer) {.
    importcpp: "BRepTopAdaptor_Tool::operator delete",
    header: "BRepTopAdaptor_Tool.hxx".}
proc `new[]`*(this: var BRepTopAdaptorTool; theSize: csize_t): pointer {.
    importcpp: "BRepTopAdaptor_Tool::operator new[]",
    header: "BRepTopAdaptor_Tool.hxx".}
proc `delete[]`*(this: var BRepTopAdaptorTool; theAddress: pointer) {.
    importcpp: "BRepTopAdaptor_Tool::operator delete[]",
    header: "BRepTopAdaptor_Tool.hxx".}
proc `new`*(this: var BRepTopAdaptorTool; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepTopAdaptor_Tool::operator new",
    header: "BRepTopAdaptor_Tool.hxx".}
proc `delete`*(this: var BRepTopAdaptorTool; a2: pointer; a3: pointer) {.
    importcpp: "BRepTopAdaptor_Tool::operator delete",
    header: "BRepTopAdaptor_Tool.hxx".}
proc constructBRepTopAdaptorTool*(): BRepTopAdaptorTool {.constructor,
    importcpp: "BRepTopAdaptor_Tool(@)", header: "BRepTopAdaptor_Tool.hxx".}
proc constructBRepTopAdaptorTool*(f: TopoDS_Face; tol2d: StandardReal): BRepTopAdaptorTool {.
    constructor, importcpp: "BRepTopAdaptor_Tool(@)",
    header: "BRepTopAdaptor_Tool.hxx".}
proc constructBRepTopAdaptorTool*(surface: Handle[Adaptor3dHSurface];
                                 tol2d: StandardReal): BRepTopAdaptorTool {.
    constructor, importcpp: "BRepTopAdaptor_Tool(@)",
    header: "BRepTopAdaptor_Tool.hxx".}
proc init*(this: var BRepTopAdaptorTool; f: TopoDS_Face; tol2d: StandardReal) {.
    importcpp: "Init", header: "BRepTopAdaptor_Tool.hxx".}
proc init*(this: var BRepTopAdaptorTool; surface: Handle[Adaptor3dHSurface];
          tol2d: StandardReal) {.importcpp: "Init",
                               header: "BRepTopAdaptor_Tool.hxx".}
proc getTopolTool*(this: var BRepTopAdaptorTool): Handle[BRepTopAdaptorTopolTool] {.
    importcpp: "GetTopolTool", header: "BRepTopAdaptor_Tool.hxx".}
proc setTopolTool*(this: var BRepTopAdaptorTool; tt: Handle[BRepTopAdaptorTopolTool]) {.
    importcpp: "SetTopolTool", header: "BRepTopAdaptor_Tool.hxx".}
proc getSurface*(this: var BRepTopAdaptorTool): Handle[Adaptor3dHSurface] {.
    importcpp: "GetSurface", header: "BRepTopAdaptor_Tool.hxx".}
proc destroy*(this: var BRepTopAdaptorTool) {.importcpp: "Destroy",
    header: "BRepTopAdaptor_Tool.hxx".}
proc destroyBRepTopAdaptorTool*(this: var BRepTopAdaptorTool) {.
    importcpp: "#.~BRepTopAdaptor_Tool()", header: "BRepTopAdaptor_Tool.hxx".}