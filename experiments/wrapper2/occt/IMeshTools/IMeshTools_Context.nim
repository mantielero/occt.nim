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
  IMeshTools_ModelBuilder, ../IMeshData/IMeshData_Model, IMeshTools_Parameters,
  IMeshTools_ModelAlgo, ../Message/Message_ProgressRange

## ! Interface class representing context of BRepMesh algorithm.
## ! Intended to cache discrete model and instances of tools for
## ! its processing.

type
  IMeshTools_Context* {.importcpp: "IMeshTools_Context",
                       header: "IMeshTools_Context.hxx", bycopy.} = object of IMeshData_Shape ##
                                                                                       ## !
                                                                                       ## Constructor.


proc constructIMeshTools_Context*(): IMeshTools_Context {.constructor,
    importcpp: "IMeshTools_Context(@)", header: "IMeshTools_Context.hxx".}
proc destroyIMeshTools_Context*(this: var IMeshTools_Context) {.
    importcpp: "#.~IMeshTools_Context()", header: "IMeshTools_Context.hxx".}
proc BuildModel*(this: var IMeshTools_Context): Standard_Boolean {.
    importcpp: "BuildModel", header: "IMeshTools_Context.hxx".}
proc DiscretizeEdges*(this: var IMeshTools_Context): Standard_Boolean {.
    importcpp: "DiscretizeEdges", header: "IMeshTools_Context.hxx".}
proc HealModel*(this: var IMeshTools_Context): Standard_Boolean {.
    importcpp: "HealModel", header: "IMeshTools_Context.hxx".}
proc PreProcessModel*(this: var IMeshTools_Context): Standard_Boolean {.
    importcpp: "PreProcessModel", header: "IMeshTools_Context.hxx".}
proc DiscretizeFaces*(this: var IMeshTools_Context; theRange: Message_ProgressRange): Standard_Boolean {.
    importcpp: "DiscretizeFaces", header: "IMeshTools_Context.hxx".}
proc PostProcessModel*(this: var IMeshTools_Context): Standard_Boolean {.
    importcpp: "PostProcessModel", header: "IMeshTools_Context.hxx".}
proc Clean*(this: var IMeshTools_Context) {.importcpp: "Clean",
                                        header: "IMeshTools_Context.hxx".}
proc GetModelBuilder*(this: IMeshTools_Context): handle[IMeshTools_ModelBuilder] {.
    noSideEffect, importcpp: "GetModelBuilder", header: "IMeshTools_Context.hxx".}
proc SetModelBuilder*(this: var IMeshTools_Context;
                     theBuilder: handle[IMeshTools_ModelBuilder]) {.
    importcpp: "SetModelBuilder", header: "IMeshTools_Context.hxx".}
proc GetEdgeDiscret*(this: IMeshTools_Context): handle[IMeshTools_ModelAlgo] {.
    noSideEffect, importcpp: "GetEdgeDiscret", header: "IMeshTools_Context.hxx".}
proc SetEdgeDiscret*(this: var IMeshTools_Context;
                    theEdgeDiscret: handle[IMeshTools_ModelAlgo]) {.
    importcpp: "SetEdgeDiscret", header: "IMeshTools_Context.hxx".}
proc GetModelHealer*(this: IMeshTools_Context): handle[IMeshTools_ModelAlgo] {.
    noSideEffect, importcpp: "GetModelHealer", header: "IMeshTools_Context.hxx".}
proc SetModelHealer*(this: var IMeshTools_Context;
                    theModelHealer: handle[IMeshTools_ModelAlgo]) {.
    importcpp: "SetModelHealer", header: "IMeshTools_Context.hxx".}
proc GetPreProcessor*(this: IMeshTools_Context): handle[IMeshTools_ModelAlgo] {.
    noSideEffect, importcpp: "GetPreProcessor", header: "IMeshTools_Context.hxx".}
proc SetPreProcessor*(this: var IMeshTools_Context;
                     thePreProcessor: handle[IMeshTools_ModelAlgo]) {.
    importcpp: "SetPreProcessor", header: "IMeshTools_Context.hxx".}
proc GetFaceDiscret*(this: IMeshTools_Context): handle[IMeshTools_ModelAlgo] {.
    noSideEffect, importcpp: "GetFaceDiscret", header: "IMeshTools_Context.hxx".}
proc SetFaceDiscret*(this: var IMeshTools_Context;
                    theFaceDiscret: handle[IMeshTools_ModelAlgo]) {.
    importcpp: "SetFaceDiscret", header: "IMeshTools_Context.hxx".}
proc GetPostProcessor*(this: IMeshTools_Context): handle[IMeshTools_ModelAlgo] {.
    noSideEffect, importcpp: "GetPostProcessor", header: "IMeshTools_Context.hxx".}
proc SetPostProcessor*(this: var IMeshTools_Context;
                      thePostProcessor: handle[IMeshTools_ModelAlgo]) {.
    importcpp: "SetPostProcessor", header: "IMeshTools_Context.hxx".}
proc GetParameters*(this: IMeshTools_Context): IMeshTools_Parameters {.noSideEffect,
    importcpp: "GetParameters", header: "IMeshTools_Context.hxx".}
proc ChangeParameters*(this: var IMeshTools_Context): var IMeshTools_Parameters {.
    importcpp: "ChangeParameters", header: "IMeshTools_Context.hxx".}
proc GetModel*(this: IMeshTools_Context): handle[IMeshData_Model] {.noSideEffect,
    importcpp: "GetModel", header: "IMeshTools_Context.hxx".}
type
  IMeshTools_Contextbase_type* = IMeshData_Shape

proc get_type_name*(): cstring {.importcpp: "IMeshTools_Context::get_type_name(@)",
                              header: "IMeshTools_Context.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IMeshTools_Context::get_type_descriptor(@)",
    header: "IMeshTools_Context.hxx".}
proc DynamicType*(this: IMeshTools_Context): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IMeshTools_Context.hxx".}