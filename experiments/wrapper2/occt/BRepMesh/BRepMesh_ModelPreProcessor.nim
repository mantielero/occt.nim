##  Created on: 2016-07-04
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

## ! Class implements functionality of model pre-processing tool.
## ! Nullifies existing polygonal data in case if model elements
## ! have IMeshData_Outdated status.

type
  BRepMesh_ModelPreProcessor* {.importcpp: "BRepMesh_ModelPreProcessor",
                               header: "BRepMesh_ModelPreProcessor.hxx", bycopy.} = object of IMeshTools_ModelAlgo ##
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


proc constructBRepMesh_ModelPreProcessor*(): BRepMesh_ModelPreProcessor {.
    constructor, importcpp: "BRepMesh_ModelPreProcessor(@)",
    header: "BRepMesh_ModelPreProcessor.hxx".}
proc destroyBRepMesh_ModelPreProcessor*(this: var BRepMesh_ModelPreProcessor) {.
    importcpp: "#.~BRepMesh_ModelPreProcessor()",
    header: "BRepMesh_ModelPreProcessor.hxx".}
type
  BRepMesh_ModelPreProcessorbase_type* = IMeshTools_ModelAlgo

proc get_type_name*(): cstring {.importcpp: "BRepMesh_ModelPreProcessor::get_type_name(@)",
                              header: "BRepMesh_ModelPreProcessor.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMesh_ModelPreProcessor::get_type_descriptor(@)",
    header: "BRepMesh_ModelPreProcessor.hxx".}
proc DynamicType*(this: BRepMesh_ModelPreProcessor): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRepMesh_ModelPreProcessor.hxx".}