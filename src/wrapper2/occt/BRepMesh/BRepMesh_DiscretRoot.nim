##  Copyright (c) 2013 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Shape,
  ../Standard/Standard_Transient, ../Message/Message_ProgressRange

## ! This is a common interface for meshing algorithms
## ! instantiated by Mesh Factory and implemented by plugins.

type
  BRepMesh_DiscretRoot* {.importcpp: "BRepMesh_DiscretRoot",
                         header: "BRepMesh_DiscretRoot.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## Destructor
                                                                                              ##
                                                                                              ## !
                                                                                              ## Constructor


proc destroyBRepMesh_DiscretRoot*(this: var BRepMesh_DiscretRoot) {.
    importcpp: "#.~BRepMesh_DiscretRoot()", header: "BRepMesh_DiscretRoot.hxx".}
proc SetShape*(this: var BRepMesh_DiscretRoot; theShape: TopoDS_Shape) {.
    importcpp: "SetShape", header: "BRepMesh_DiscretRoot.hxx".}
proc Shape*(this: BRepMesh_DiscretRoot): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "BRepMesh_DiscretRoot.hxx".}
proc IsDone*(this: BRepMesh_DiscretRoot): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepMesh_DiscretRoot.hxx".}
proc Perform*(this: var BRepMesh_DiscretRoot;
             theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Perform", header: "BRepMesh_DiscretRoot.hxx".}
type
  BRepMesh_DiscretRootbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BRepMesh_DiscretRoot::get_type_name(@)",
                              header: "BRepMesh_DiscretRoot.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMesh_DiscretRoot::get_type_descriptor(@)",
    header: "BRepMesh_DiscretRoot.hxx".}
proc DynamicType*(this: BRepMesh_DiscretRoot): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMesh_DiscretRoot.hxx".}
discard "forward decl of BRepMesh_DiscretRoot"
type
  Handle_BRepMesh_DiscretRoot* = handle[BRepMesh_DiscretRoot]
