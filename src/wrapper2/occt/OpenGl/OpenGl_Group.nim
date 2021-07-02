##  Created on: 2011-08-01
##  Created by: Sergey ZERCHANINOV
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
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

discard "forward decl of OpenGl_Group"
discard "forward decl of OpenGl_Structure"
type
  OpenGlElementNode* {.importcpp: "OpenGl_ElementNode", header: "OpenGl_Group.hxx",
                      bycopy.} = object
    elem* {.importc: "elem".}: ptr OpenGlElement
    next* {.importc: "next".}: ptr OpenGlElementNode


## ! Implementation of low-level graphic group.

type
  OpenGlGroup* {.importcpp: "OpenGl_Group", header: "OpenGl_Group.hxx", bycopy.} = object of Graphic3dGroup ##
                                                                                                  ## !
                                                                                                  ## Create
                                                                                                  ## empty
                                                                                                  ## group.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Will
                                                                                                  ## throw
                                                                                                  ## exception
                                                                                                  ## if
                                                                                                  ## not
                                                                                                  ## created
                                                                                                  ## by
                                                                                                  ## OpenGl_Structure.


proc constructOpenGlGroup*(theStruct: Handle[Graphic3dStructure]): OpenGlGroup {.
    constructor, importcpp: "OpenGl_Group(@)", header: "OpenGl_Group.hxx".}
proc clear*(this: var OpenGlGroup; theToUpdateStructureMgr: StandardBoolean) {.
    importcpp: "Clear", header: "OpenGl_Group.hxx".}
proc aspects*(this: OpenGlGroup): Handle[Graphic3dAspects] {.noSideEffect,
    importcpp: "Aspects", header: "OpenGl_Group.hxx".}
proc setGroupPrimitivesAspect*(this: var OpenGlGroup;
                              theAspect: Handle[Graphic3dAspects]) {.
    importcpp: "SetGroupPrimitivesAspect", header: "OpenGl_Group.hxx".}
proc setPrimitivesAspect*(this: var OpenGlGroup; theAspect: Handle[Graphic3dAspects]) {.
    importcpp: "SetPrimitivesAspect", header: "OpenGl_Group.hxx".}
proc synchronizeAspects*(this: var OpenGlGroup) {.importcpp: "SynchronizeAspects",
    header: "OpenGl_Group.hxx".}
proc replaceAspects*(this: var OpenGlGroup; theMap: Graphic3dMapOfAspectsToAspects) {.
    importcpp: "ReplaceAspects", header: "OpenGl_Group.hxx".}
proc addPrimitiveArray*(this: var OpenGlGroup;
                       theType: Graphic3dTypeOfPrimitiveArray;
                       theIndices: Handle[Graphic3dIndexBuffer];
                       theAttribs: Handle[Graphic3dBuffer];
                       theBounds: Handle[Graphic3dBoundBuffer];
                       theToEvalMinMax: StandardBoolean) {.
    importcpp: "AddPrimitiveArray", header: "OpenGl_Group.hxx".}
proc addText*(this: var OpenGlGroup; theTextParams: Handle[Graphic3dText];
             theToEvalMinMax: StandardBoolean) {.importcpp: "AddText",
    header: "OpenGl_Group.hxx".}
proc setFlippingOptions*(this: var OpenGlGroup; theIsEnabled: StandardBoolean;
                        theRefPlane: GpAx2) {.importcpp: "SetFlippingOptions",
    header: "OpenGl_Group.hxx".}
proc setStencilTestOptions*(this: var OpenGlGroup; theIsEnabled: StandardBoolean) {.
    importcpp: "SetStencilTestOptions", header: "OpenGl_Group.hxx".}
proc glStruct*(this: OpenGlGroup): ptr OpenGlStructure {.noSideEffect,
    importcpp: "GlStruct", header: "OpenGl_Group.hxx".}
proc addElement*(this: var OpenGlGroup; theElem: ptr OpenGlElement) {.
    importcpp: "AddElement", header: "OpenGl_Group.hxx".}
proc render*(this: OpenGlGroup; theWorkspace: Handle[OpenGlWorkspace]) {.
    noSideEffect, importcpp: "Render", header: "OpenGl_Group.hxx".}
proc release*(this: var OpenGlGroup; theGlCtx: Handle[OpenGlContext]) {.
    importcpp: "Release", header: "OpenGl_Group.hxx".}
proc firstNode*(this: OpenGlGroup): ptr OpenGlElementNode {.noSideEffect,
    importcpp: "FirstNode", header: "OpenGl_Group.hxx".}
proc glAspects*(this: OpenGlGroup): ptr OpenGlAspects {.noSideEffect,
    importcpp: "GlAspects", header: "OpenGl_Group.hxx".}
proc isRaytracable*(this: OpenGlGroup): StandardBoolean {.noSideEffect,
    importcpp: "IsRaytracable", header: "OpenGl_Group.hxx".}
proc dumpJson*(this: OpenGlGroup; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "OpenGl_Group.hxx".}
type
  OpenGlGroupbaseType* = Graphic3dGroup

proc getTypeName*(): cstring {.importcpp: "OpenGl_Group::get_type_name(@)",
                            header: "OpenGl_Group.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "OpenGl_Group::get_type_descriptor(@)", header: "OpenGl_Group.hxx".}
proc dynamicType*(this: OpenGlGroup): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_Group.hxx".}
discard "forward decl of OpenGl_Group"
type
  HandleOpenGlGroup* = Handle[OpenGlGroup]


