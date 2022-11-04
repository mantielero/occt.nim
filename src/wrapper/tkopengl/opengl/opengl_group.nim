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
                                                                                                  ##
                                                                                                  ## Type
                                                                                                  ## definition


proc newOpenGlGroup*(theStruct: Handle[Graphic3dStructure]): OpenGlGroup {.cdecl,
    constructor, importcpp: "OpenGl_Group(@)", dynlib: tkkxbase.}
proc clear*(this: var OpenGlGroup; theToUpdateStructureMgr: bool) {.cdecl,
    importcpp: "Clear", dynlib: tkkxbase.}
proc aspects*(this: OpenGlGroup): Handle[Graphic3dAspects] {.noSideEffect, cdecl,
    importcpp: "Aspects", dynlib: tkkxbase.}
proc setGroupPrimitivesAspect*(this: var OpenGlGroup;
                              theAspect: Handle[Graphic3dAspects]) {.cdecl,
    importcpp: "SetGroupPrimitivesAspect", dynlib: tkkxbase.}
proc setPrimitivesAspect*(this: var OpenGlGroup; theAspect: Handle[Graphic3dAspects]) {.
    cdecl, importcpp: "SetPrimitivesAspect", dynlib: tkkxbase.}
proc synchronizeAspects*(this: var OpenGlGroup) {.cdecl,
    importcpp: "SynchronizeAspects", dynlib: tkkxbase.}
proc replaceAspects*(this: var OpenGlGroup; theMap: Graphic3dMapOfAspectsToAspects) {.
    cdecl, importcpp: "ReplaceAspects", dynlib: tkkxbase.}
proc addPrimitiveArray*(this: var OpenGlGroup;
                       theType: Graphic3dTypeOfPrimitiveArray;
                       theIndices: Handle[Graphic3dIndexBuffer];
                       theAttribs: Handle[Graphic3dBuffer];
                       theBounds: Handle[Graphic3dBoundBuffer];
                       theToEvalMinMax: bool) {.cdecl,
    importcpp: "AddPrimitiveArray", dynlib: tkkxbase.}
proc addText*(this: var OpenGlGroup; theTextParams: Handle[Graphic3dText];
             theToEvalMinMax: bool) {.cdecl, importcpp: "AddText", dynlib: tkkxbase.}
proc setFlippingOptions*(this: var OpenGlGroup; theIsEnabled: bool; theRefPlane: Ax2) {.
    cdecl, importcpp: "SetFlippingOptions", dynlib: tkkxbase.}
proc setStencilTestOptions*(this: var OpenGlGroup; theIsEnabled: bool) {.cdecl,
    importcpp: "SetStencilTestOptions", dynlib: tkkxbase.}
proc glStruct*(this: OpenGlGroup): ptr OpenGlStructure {.noSideEffect, cdecl,
    importcpp: "GlStruct", dynlib: tkkxbase.}
proc addElement*(this: var OpenGlGroup; theElem: ptr OpenGlElement) {.cdecl,
    importcpp: "AddElement", dynlib: tkkxbase.}
proc render*(this: OpenGlGroup; theWorkspace: Handle[OpenGlWorkspace]) {.
    noSideEffect, cdecl, importcpp: "Render", dynlib: tkkxbase.}
proc release*(this: var OpenGlGroup; theGlCtx: Handle[OpenGlContext]) {.cdecl,
    importcpp: "Release", dynlib: tkkxbase.}
proc firstNode*(this: OpenGlGroup): ptr OpenGlElementNode {.noSideEffect, cdecl,
    importcpp: "FirstNode", dynlib: tkkxbase.}
proc glAspects*(this: OpenGlGroup): ptr OpenGlAspects {.noSideEffect, cdecl,
    importcpp: "GlAspects", dynlib: tkkxbase.}
proc isRaytracable*(this: OpenGlGroup): bool {.noSideEffect, cdecl,
    importcpp: "IsRaytracable", dynlib: tkkxbase.}
proc dumpJson*(this: OpenGlGroup; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkkxbase.}
type
  HandleOpenGlGroup* = Handle[OpenGlGroup]
