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
discard "forward decl of OpenGl_Structure"
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

  OpenGlStructurebaseType* = Graphic3dCStructure

proc getTypeName*(): cstring {.importcpp: "OpenGl_Structure::get_type_name(@)",
                            header: "OpenGl_Structure.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "OpenGl_Structure::get_type_descriptor(@)",
    header: "OpenGl_Structure.hxx".}
proc dynamicType*(this: OpenGlStructure): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_Structure.hxx".}
type
  OpenGlStructureStructIterator* = SubclassStructIterator[OpenGlStructure]
  OpenGlStructureGroupIterator* = SubclassGroupIterator[OpenGlGroup]

proc constructOpenGlStructure*(theManager: Handle[Graphic3dStructureManager]): OpenGlStructure {.
    constructor, importcpp: "OpenGl_Structure(@)", header: "OpenGl_Structure.hxx".}
proc onVisibilityChanged*(this: var OpenGlStructure) {.
    importcpp: "OnVisibilityChanged", header: "OpenGl_Structure.hxx".}
proc clear*(this: var OpenGlStructure) {.importcpp: "Clear",
                                     header: "OpenGl_Structure.hxx".}
proc connect*(this: var OpenGlStructure; theStructure: var Graphic3dCStructure) {.
    importcpp: "Connect", header: "OpenGl_Structure.hxx".}
proc disconnect*(this: var OpenGlStructure; theStructure: var Graphic3dCStructure) {.
    importcpp: "Disconnect", header: "OpenGl_Structure.hxx".}
proc setTransformation*(this: var OpenGlStructure; theTrsf: Handle[TopLocDatum3D]) {.
    importcpp: "SetTransformation", header: "OpenGl_Structure.hxx".}
proc setTransformPersistence*(this: var OpenGlStructure;
                             theTrsfPers: Handle[Graphic3dTransformPers]) {.
    importcpp: "SetTransformPersistence", header: "OpenGl_Structure.hxx".}
proc setZLayer*(this: var OpenGlStructure; theLayerIndex: Graphic3dZLayerId) {.
    importcpp: "SetZLayer", header: "OpenGl_Structure.hxx".}
proc graphicHighlight*(this: var OpenGlStructure;
                      theStyle: Handle[Graphic3dPresentationAttributes]) {.
    importcpp: "GraphicHighlight", header: "OpenGl_Structure.hxx".}
proc graphicUnhighlight*(this: var OpenGlStructure) {.
    importcpp: "GraphicUnhighlight", header: "OpenGl_Structure.hxx".}
proc shadowLink*(this: OpenGlStructure;
                theManager: Handle[Graphic3dStructureManager]): Handle[
    Graphic3dCStructure] {.noSideEffect, importcpp: "ShadowLink",
                          header: "OpenGl_Structure.hxx".}
proc newGroup*(this: var OpenGlStructure; theStruct: Handle[Graphic3dStructure]): Handle[
    Graphic3dGroup] {.importcpp: "NewGroup", header: "OpenGl_Structure.hxx".}
proc removeGroup*(this: var OpenGlStructure; theGroup: Handle[Graphic3dGroup]) {.
    importcpp: "RemoveGroup", header: "OpenGl_Structure.hxx".}
proc glDriver*(this: OpenGlStructure): ptr OpenGlGraphicDriver {.noSideEffect,
    importcpp: "GlDriver", header: "OpenGl_Structure.hxx".}
proc clear*(this: var OpenGlStructure; theGlCtx: Handle[OpenGlContext]) {.
    importcpp: "Clear", header: "OpenGl_Structure.hxx".}
proc render*(this: OpenGlStructure; theWorkspace: Handle[OpenGlWorkspace]) {.
    noSideEffect, importcpp: "Render", header: "OpenGl_Structure.hxx".}
proc release*(this: var OpenGlStructure; theGlCtx: Handle[OpenGlContext]) {.
    importcpp: "Release", header: "OpenGl_Structure.hxx".}
proc releaseGlResources*(this: var OpenGlStructure; theGlCtx: Handle[OpenGlContext]) {.
    importcpp: "ReleaseGlResources", header: "OpenGl_Structure.hxx".}
proc instancedStructure*(this: OpenGlStructure): ptr OpenGlStructure {.noSideEffect,
    importcpp: "InstancedStructure", header: "OpenGl_Structure.hxx".}
proc modificationState*(this: OpenGlStructure): StandardSize {.noSideEffect,
    importcpp: "ModificationState", header: "OpenGl_Structure.hxx".}
proc resetModificationState*(this: OpenGlStructure) {.noSideEffect,
    importcpp: "ResetModificationState", header: "OpenGl_Structure.hxx".}
proc isRaytracable*(this: OpenGlStructure): StandardBoolean {.noSideEffect,
    importcpp: "IsRaytracable", header: "OpenGl_Structure.hxx".}
proc updateLayerTransformation*(this: var OpenGlStructure) {.
    importcpp: "updateLayerTransformation", header: "OpenGl_Structure.hxx".}
proc dumpJson*(this: OpenGlStructure; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "OpenGl_Structure.hxx".}

