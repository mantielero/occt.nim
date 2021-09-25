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

## ! Explores TopoDS_Shape for parts to be meshed - faces and free edges.

type
  IMeshToolsShapeExplorer* {.importcpp: "IMeshTools_ShapeExplorer",
                            header: "IMeshTools_ShapeExplorer.hxx", bycopy.} = object of IMeshDataShape ##
                                                                                                 ## !
                                                                                                 ## Constructor.


proc constructIMeshToolsShapeExplorer*(theShape: TopoDS_Shape): IMeshToolsShapeExplorer {.
    constructor, importcpp: "IMeshTools_ShapeExplorer(@)",
    header: "IMeshTools_ShapeExplorer.hxx".}
proc destroyIMeshToolsShapeExplorer*(this: var IMeshToolsShapeExplorer) {.
    importcpp: "#.~IMeshTools_ShapeExplorer()",
    header: "IMeshTools_ShapeExplorer.hxx".}
proc accept*(this: var IMeshToolsShapeExplorer;
            theVisitor: Handle[IMeshToolsShapeVisitor]) {.importcpp: "Accept",
    header: "IMeshTools_ShapeExplorer.hxx".}
type
  IMeshToolsShapeExplorerbaseType* = IMeshDataShape

proc getTypeName*(): cstring {.importcpp: "IMeshTools_ShapeExplorer::get_type_name(@)",
                            header: "IMeshTools_ShapeExplorer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IMeshTools_ShapeExplorer::get_type_descriptor(@)",
    header: "IMeshTools_ShapeExplorer.hxx".}
proc dynamicType*(this: IMeshToolsShapeExplorer): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IMeshTools_ShapeExplorer.hxx".}
