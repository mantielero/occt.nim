##  Created on: 1995-10-23
##  Created by: Yves FRICAUD
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of TopoDS_Shape"
type
  BRepAlgoTool* {.importcpp: "BRepAlgo_Tool", header: "BRepAlgo_Tool.hxx", bycopy.} = object


proc `new`*(this: var BRepAlgoTool; theSize: csize_t): pointer {.
    importcpp: "BRepAlgo_Tool::operator new", header: "BRepAlgo_Tool.hxx".}
proc `delete`*(this: var BRepAlgoTool; theAddress: pointer) {.
    importcpp: "BRepAlgo_Tool::operator delete", header: "BRepAlgo_Tool.hxx".}
proc `new[]`*(this: var BRepAlgoTool; theSize: csize_t): pointer {.
    importcpp: "BRepAlgo_Tool::operator new[]", header: "BRepAlgo_Tool.hxx".}
proc `delete[]`*(this: var BRepAlgoTool; theAddress: pointer) {.
    importcpp: "BRepAlgo_Tool::operator delete[]", header: "BRepAlgo_Tool.hxx".}
proc `new`*(this: var BRepAlgoTool; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepAlgo_Tool::operator new", header: "BRepAlgo_Tool.hxx".}
proc `delete`*(this: var BRepAlgoTool; a2: pointer; a3: pointer) {.
    importcpp: "BRepAlgo_Tool::operator delete", header: "BRepAlgo_Tool.hxx".}
proc deboucle3D*(s: TopoDS_Shape; boundary: TopToolsMapOfShape): TopoDS_Shape {.
    importcpp: "BRepAlgo_Tool::Deboucle3D(@)", header: "BRepAlgo_Tool.hxx".}