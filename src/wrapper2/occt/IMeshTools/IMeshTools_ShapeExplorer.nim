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
  ../IMeshData/IMeshData_Shape, ../Standard/Standard_Type,
  IMeshTools_ShapeVisitor, ../TopoDS/TopoDS_Shape

## ! Explores TopoDS_Shape for parts to be meshed - faces and free edges.

type
  IMeshTools_ShapeExplorer* {.importcpp: "IMeshTools_ShapeExplorer",
                             header: "IMeshTools_ShapeExplorer.hxx", bycopy.} = object of IMeshData_Shape ##
                                                                                                   ## !
                                                                                                   ## Constructor.


proc constructIMeshTools_ShapeExplorer*(theShape: TopoDS_Shape): IMeshTools_ShapeExplorer {.
    constructor, importcpp: "IMeshTools_ShapeExplorer(@)",
    header: "IMeshTools_ShapeExplorer.hxx".}
proc destroyIMeshTools_ShapeExplorer*(this: var IMeshTools_ShapeExplorer) {.
    importcpp: "#.~IMeshTools_ShapeExplorer()",
    header: "IMeshTools_ShapeExplorer.hxx".}
proc Accept*(this: var IMeshTools_ShapeExplorer;
            theVisitor: handle[IMeshTools_ShapeVisitor]) {.importcpp: "Accept",
    header: "IMeshTools_ShapeExplorer.hxx".}
type
  IMeshTools_ShapeExplorerbase_type* = IMeshData_Shape

proc get_type_name*(): cstring {.importcpp: "IMeshTools_ShapeExplorer::get_type_name(@)",
                              header: "IMeshTools_ShapeExplorer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IMeshTools_ShapeExplorer::get_type_descriptor(@)",
    header: "IMeshTools_ShapeExplorer.hxx".}
proc DynamicType*(this: IMeshTools_ShapeExplorer): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IMeshTools_ShapeExplorer.hxx".}