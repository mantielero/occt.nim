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

discard "forward decl of OpenGl_GraphicDriver"
type
  HandleOpenGlStructure* = Handle[OpenGlStructure]
  OpenGlListOfStructure* = NCollectionList[ptr OpenGlStructure]

## ! Implementation of low-level graphic structure.

type
  OpenGlStructure* {.importcpp: "OpenGl_Structure", header: "OpenGl_Structure.hxx",
                    bycopy.} = object of Graphic3dCStructure ## ! Auxiliary wrapper to iterate OpenGl_Structure sequence.
                                                        ## ! Create empty structure
                                                        ## ! Access graphic driver
    ## !< transformation, actually used for rendering (includes Local Origin shift)
    ## !< Used to tell OpenGl to interpret polygons in clockwise order.

  OpenGlStructureStructIterator* = SubclassStructIterator[OpenGlStructure]
  OpenGlStructureGroupIterator* = SubclassGroupIterator[OpenGlGroup]

proc newOpenGlStructure*(theManager: Handle[Graphic3dStructureManager]): OpenGlStructure {.
    cdecl, constructor, importcpp: "OpenGl_Structure(@)", dynlib: tkkxbase.}
proc onVisibilityChanged*(this: var OpenGlStructure) {.cdecl,
    importcpp: "OnVisibilityChanged", dynlib: tkkxbase.}
proc clear*(this: var OpenGlStructure) {.cdecl, importcpp: "Clear", dynlib: tkkxbase.}
proc connect*(this: var OpenGlStructure; theStructure: var Graphic3dCStructure) {.
    cdecl, importcpp: "Connect", dynlib: tkkxbase.}
proc disconnect*(this: var OpenGlStructure; theStructure: var Graphic3dCStructure) {.
    cdecl, importcpp: "Disconnect", dynlib: tkkxbase.}
proc setTransformation*(this: var OpenGlStructure; theTrsf: Handle[TopLocDatum3D]) {.
    cdecl, importcpp: "SetTransformation", dynlib: tkkxbase.}
proc setTransformPersistence*(this: var OpenGlStructure;
                             theTrsfPers: Handle[Graphic3dTransformPers]) {.cdecl,
    importcpp: "SetTransformPersistence", dynlib: tkkxbase.}
proc setZLayer*(this: var OpenGlStructure; theLayerIndex: Graphic3dZLayerId) {.cdecl,
    importcpp: "SetZLayer", dynlib: tkkxbase.}
proc graphicHighlight*(this: var OpenGlStructure;
                      theStyle: Handle[Graphic3dPresentationAttributes]) {.cdecl,
    importcpp: "GraphicHighlight", dynlib: tkkxbase.}
proc graphicUnhighlight*(this: var OpenGlStructure) {.cdecl,
    importcpp: "GraphicUnhighlight", dynlib: tkkxbase.}
proc shadowLink*(this: OpenGlStructure;
                theManager: Handle[Graphic3dStructureManager]): Handle[
    Graphic3dCStructure] {.noSideEffect, cdecl, importcpp: "ShadowLink",
                          dynlib: tkkxbase.}
proc newGroup*(this: var OpenGlStructure; theStruct: Handle[Graphic3dStructure]): Handle[
    Graphic3dGroup] {.cdecl, importcpp: "NewGroup", dynlib: tkkxbase.}
proc removeGroup*(this: var OpenGlStructure; theGroup: Handle[Graphic3dGroup]) {.
    cdecl, importcpp: "RemoveGroup", dynlib: tkkxbase.}
proc glDriver*(this: OpenGlStructure): ptr OpenGlGraphicDriver {.noSideEffect, cdecl,
    importcpp: "GlDriver", dynlib: tkkxbase.}
proc clear*(this: var OpenGlStructure; theGlCtx: Handle[OpenGlContext]) {.cdecl,
    importcpp: "Clear", dynlib: tkkxbase.}
proc render*(this: OpenGlStructure; theWorkspace: Handle[OpenGlWorkspace]) {.
    noSideEffect, cdecl, importcpp: "Render", dynlib: tkkxbase.}
proc release*(this: var OpenGlStructure; theGlCtx: Handle[OpenGlContext]) {.cdecl,
    importcpp: "Release", dynlib: tkkxbase.}
proc releaseGlResources*(this: var OpenGlStructure; theGlCtx: Handle[OpenGlContext]) {.
    cdecl, importcpp: "ReleaseGlResources", dynlib: tkkxbase.}
proc instancedStructure*(this: OpenGlStructure): ptr OpenGlStructure {.noSideEffect,
    cdecl, importcpp: "InstancedStructure", dynlib: tkkxbase.}
proc modificationState*(this: OpenGlStructure): csize_t {.noSideEffect, cdecl,
    importcpp: "ModificationState", dynlib: tkkxbase.}
proc resetModificationState*(this: OpenGlStructure) {.noSideEffect, cdecl,
    importcpp: "ResetModificationState", dynlib: tkkxbase.}
proc isRaytracable*(this: OpenGlStructure): bool {.noSideEffect, cdecl,
    importcpp: "IsRaytracable", dynlib: tkkxbase.}
proc updateLayerTransformation*(this: var OpenGlStructure) {.cdecl,
    importcpp: "updateLayerTransformation", dynlib: tkkxbase.}
proc dumpJson*(this: OpenGlStructure; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkkxbase.}