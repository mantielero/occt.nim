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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

discard "forward decl of BRepTopAdaptor_TopolTool"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of TopoDS_Face"
type
  BRepTopAdaptor_Tool* {.importcpp: "BRepTopAdaptor_Tool",
                        header: "BRepTopAdaptor_Tool.hxx", bycopy.} = object


proc constructBRepTopAdaptor_Tool*(): BRepTopAdaptor_Tool {.constructor,
    importcpp: "BRepTopAdaptor_Tool(@)", header: "BRepTopAdaptor_Tool.hxx".}
proc constructBRepTopAdaptor_Tool*(F: TopoDS_Face; Tol2d: Standard_Real): BRepTopAdaptor_Tool {.
    constructor, importcpp: "BRepTopAdaptor_Tool(@)",
    header: "BRepTopAdaptor_Tool.hxx".}
proc constructBRepTopAdaptor_Tool*(Surface: handle[Adaptor3d_HSurface];
                                  Tol2d: Standard_Real): BRepTopAdaptor_Tool {.
    constructor, importcpp: "BRepTopAdaptor_Tool(@)",
    header: "BRepTopAdaptor_Tool.hxx".}
proc Init*(this: var BRepTopAdaptor_Tool; F: TopoDS_Face; Tol2d: Standard_Real) {.
    importcpp: "Init", header: "BRepTopAdaptor_Tool.hxx".}
proc Init*(this: var BRepTopAdaptor_Tool; Surface: handle[Adaptor3d_HSurface];
          Tol2d: Standard_Real) {.importcpp: "Init",
                                header: "BRepTopAdaptor_Tool.hxx".}
proc GetTopolTool*(this: var BRepTopAdaptor_Tool): handle[BRepTopAdaptor_TopolTool] {.
    importcpp: "GetTopolTool", header: "BRepTopAdaptor_Tool.hxx".}
proc SetTopolTool*(this: var BRepTopAdaptor_Tool;
                  TT: handle[BRepTopAdaptor_TopolTool]) {.
    importcpp: "SetTopolTool", header: "BRepTopAdaptor_Tool.hxx".}
proc GetSurface*(this: var BRepTopAdaptor_Tool): handle[Adaptor3d_HSurface] {.
    importcpp: "GetSurface", header: "BRepTopAdaptor_Tool.hxx".}
proc Destroy*(this: var BRepTopAdaptor_Tool) {.importcpp: "Destroy",
    header: "BRepTopAdaptor_Tool.hxx".}
proc destroyBRepTopAdaptor_Tool*(this: var BRepTopAdaptor_Tool) {.
    importcpp: "#.~BRepTopAdaptor_Tool()", header: "BRepTopAdaptor_Tool.hxx".}