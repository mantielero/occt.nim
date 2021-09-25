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

## ! This is a common interface for meshing algorithms
## ! instantiated by Mesh Factory and implemented by plugins.

type
  BRepMeshDiscretRoot* {.importcpp: "BRepMesh_DiscretRoot",
                        header: "BRepMesh_DiscretRoot.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Destructor
                                                                                            ##
                                                                                            ## !
                                                                                            ## Constructor


proc destroyBRepMeshDiscretRoot*(this: var BRepMeshDiscretRoot) {.
    importcpp: "#.~BRepMesh_DiscretRoot()", header: "BRepMesh_DiscretRoot.hxx".}
proc setShape*(this: var BRepMeshDiscretRoot; theShape: TopoDS_Shape) {.
    importcpp: "SetShape", header: "BRepMesh_DiscretRoot.hxx".}
proc shape*(this: BRepMeshDiscretRoot): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "BRepMesh_DiscretRoot.hxx".}
proc isDone*(this: BRepMeshDiscretRoot): bool {.noSideEffect, importcpp: "IsDone",
    header: "BRepMesh_DiscretRoot.hxx".}
proc perform*(this: var BRepMeshDiscretRoot;
             theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Perform", header: "BRepMesh_DiscretRoot.hxx".}
type
  BRepMeshDiscretRootbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BRepMesh_DiscretRoot::get_type_name(@)",
                            header: "BRepMesh_DiscretRoot.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMesh_DiscretRoot::get_type_descriptor(@)",
    header: "BRepMesh_DiscretRoot.hxx".}
proc dynamicType*(this: BRepMeshDiscretRoot): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMesh_DiscretRoot.hxx".}
discard "forward decl of BRepMesh_DiscretRoot"
type
  HandleBRepMeshDiscretRoot* = Handle[BRepMeshDiscretRoot]

