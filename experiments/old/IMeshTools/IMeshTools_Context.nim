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

## ! Interface class representing context of BRepMesh algorithm.
## ! Intended to cache discrete model and instances of tools for
## ! its processing.

type
  IMeshToolsContext* {.importcpp: "IMeshTools_Context",
                      header: "IMeshTools_Context.hxx", bycopy.} = object of IMeshDataShape ##
                                                                                     ## !
                                                                                     ## Constructor.


proc constructIMeshToolsContext*(): IMeshToolsContext {.constructor,
    importcpp: "IMeshTools_Context(@)", header: "IMeshTools_Context.hxx".}
proc destroyIMeshToolsContext*(this: var IMeshToolsContext) {.
    importcpp: "#.~IMeshTools_Context()", header: "IMeshTools_Context.hxx".}
proc buildModel*(this: var IMeshToolsContext): bool {.importcpp: "BuildModel",
    header: "IMeshTools_Context.hxx".}
proc discretizeEdges*(this: var IMeshToolsContext): bool {.
    importcpp: "DiscretizeEdges", header: "IMeshTools_Context.hxx".}
proc healModel*(this: var IMeshToolsContext): bool {.importcpp: "HealModel",
    header: "IMeshTools_Context.hxx".}
proc preProcessModel*(this: var IMeshToolsContext): bool {.
    importcpp: "PreProcessModel", header: "IMeshTools_Context.hxx".}
proc discretizeFaces*(this: var IMeshToolsContext; theRange: MessageProgressRange): bool {.
    importcpp: "DiscretizeFaces", header: "IMeshTools_Context.hxx".}
proc postProcessModel*(this: var IMeshToolsContext): bool {.
    importcpp: "PostProcessModel", header: "IMeshTools_Context.hxx".}
proc clean*(this: var IMeshToolsContext) {.importcpp: "Clean",
                                       header: "IMeshTools_Context.hxx".}
proc getModelBuilder*(this: IMeshToolsContext): Handle[IMeshToolsModelBuilder] {.
    noSideEffect, importcpp: "GetModelBuilder", header: "IMeshTools_Context.hxx".}
proc setModelBuilder*(this: var IMeshToolsContext;
                     theBuilder: Handle[IMeshToolsModelBuilder]) {.
    importcpp: "SetModelBuilder", header: "IMeshTools_Context.hxx".}
proc getEdgeDiscret*(this: IMeshToolsContext): Handle[IMeshToolsModelAlgo] {.
    noSideEffect, importcpp: "GetEdgeDiscret", header: "IMeshTools_Context.hxx".}
proc setEdgeDiscret*(this: var IMeshToolsContext;
                    theEdgeDiscret: Handle[IMeshToolsModelAlgo]) {.
    importcpp: "SetEdgeDiscret", header: "IMeshTools_Context.hxx".}
proc getModelHealer*(this: IMeshToolsContext): Handle[IMeshToolsModelAlgo] {.
    noSideEffect, importcpp: "GetModelHealer", header: "IMeshTools_Context.hxx".}
proc setModelHealer*(this: var IMeshToolsContext;
                    theModelHealer: Handle[IMeshToolsModelAlgo]) {.
    importcpp: "SetModelHealer", header: "IMeshTools_Context.hxx".}
proc getPreProcessor*(this: IMeshToolsContext): Handle[IMeshToolsModelAlgo] {.
    noSideEffect, importcpp: "GetPreProcessor", header: "IMeshTools_Context.hxx".}
proc setPreProcessor*(this: var IMeshToolsContext;
                     thePreProcessor: Handle[IMeshToolsModelAlgo]) {.
    importcpp: "SetPreProcessor", header: "IMeshTools_Context.hxx".}
proc getFaceDiscret*(this: IMeshToolsContext): Handle[IMeshToolsModelAlgo] {.
    noSideEffect, importcpp: "GetFaceDiscret", header: "IMeshTools_Context.hxx".}
proc setFaceDiscret*(this: var IMeshToolsContext;
                    theFaceDiscret: Handle[IMeshToolsModelAlgo]) {.
    importcpp: "SetFaceDiscret", header: "IMeshTools_Context.hxx".}
proc getPostProcessor*(this: IMeshToolsContext): Handle[IMeshToolsModelAlgo] {.
    noSideEffect, importcpp: "GetPostProcessor", header: "IMeshTools_Context.hxx".}
proc setPostProcessor*(this: var IMeshToolsContext;
                      thePostProcessor: Handle[IMeshToolsModelAlgo]) {.
    importcpp: "SetPostProcessor", header: "IMeshTools_Context.hxx".}
proc getParameters*(this: IMeshToolsContext): IMeshToolsParameters {.noSideEffect,
    importcpp: "GetParameters", header: "IMeshTools_Context.hxx".}
proc changeParameters*(this: var IMeshToolsContext): var IMeshToolsParameters {.
    importcpp: "ChangeParameters", header: "IMeshTools_Context.hxx".}
proc getModel*(this: IMeshToolsContext): Handle[IMeshDataModel] {.noSideEffect,
    importcpp: "GetModel", header: "IMeshTools_Context.hxx".}
type
  IMeshToolsContextbaseType* = IMeshDataShape

proc getTypeName*(): cstring {.importcpp: "IMeshTools_Context::get_type_name(@)",
                            header: "IMeshTools_Context.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IMeshTools_Context::get_type_descriptor(@)",
    header: "IMeshTools_Context.hxx".}
proc dynamicType*(this: IMeshToolsContext): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IMeshTools_Context.hxx".}

























