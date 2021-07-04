##  Created on: 2016-07-22
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
  ../IMeshTools/IMeshTools_ModelAlgo, ../IMeshTools/IMeshTools_Parameters,
  ../IMeshData/IMeshData_Types

## ! Class implements functionality of model post-processing tool.
## ! Stores polygons on triangulations to TopoDS_Edge.

type
  BRepMesh_ModelPostProcessor* {.importcpp: "BRepMesh_ModelPostProcessor",
                                header: "BRepMesh_ModelPostProcessor.hxx", bycopy.} = object of IMeshTools_ModelAlgo ##
                                                                                                              ## !
                                                                                                              ## Constructor.
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## Performs
                                                                                                              ## processing
                                                                                                              ## of
                                                                                                              ## edges
                                                                                                              ## of
                                                                                                              ## the
                                                                                                              ## given
                                                                                                              ## model.


proc constructBRepMesh_ModelPostProcessor*(): BRepMesh_ModelPostProcessor {.
    constructor, importcpp: "BRepMesh_ModelPostProcessor(@)",
    header: "BRepMesh_ModelPostProcessor.hxx".}
proc destroyBRepMesh_ModelPostProcessor*(this: var BRepMesh_ModelPostProcessor) {.
    importcpp: "#.~BRepMesh_ModelPostProcessor()",
    header: "BRepMesh_ModelPostProcessor.hxx".}
type
  BRepMesh_ModelPostProcessorbase_type* = IMeshTools_ModelAlgo

proc get_type_name*(): cstring {.importcpp: "BRepMesh_ModelPostProcessor::get_type_name(@)",
                              header: "BRepMesh_ModelPostProcessor.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMesh_ModelPostProcessor::get_type_descriptor(@)",
    header: "BRepMesh_ModelPostProcessor.hxx".}
proc DynamicType*(this: BRepMesh_ModelPostProcessor): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRepMesh_ModelPostProcessor.hxx".}