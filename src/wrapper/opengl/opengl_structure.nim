import opengl_types
import ../../tkernel/standard/standard_types
import ../../tkv3d/graphic3d/graphic3d_types
import ../../tkmath/toploc/toploc_types

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




proc newOpenGlStructure*(theManager: Handle[Graphic3dStructureManager]): OpenGlStructure {.
    cdecl, constructor, importcpp: "OpenGl_Structure(@)", header: "OpenGl_Structure.hxx".}
proc onVisibilityChanged*(this: var OpenGlStructure) {.cdecl,
    importcpp: "OnVisibilityChanged", header: "OpenGl_Structure.hxx".}
proc clear*(this: var OpenGlStructure) {.cdecl, importcpp: "Clear", header: "OpenGl_Structure.hxx".}
proc connect*(this: var OpenGlStructure; theStructure: var Graphic3dCStructure) {.
    cdecl, importcpp: "Connect", header: "OpenGl_Structure.hxx".}
proc disconnect*(this: var OpenGlStructure; theStructure: var Graphic3dCStructure) {.
    cdecl, importcpp: "Disconnect", header: "OpenGl_Structure.hxx".}
proc setTransformation*(this: var OpenGlStructure; theTrsf: Handle[TopLocDatum3D]) {.
    cdecl, importcpp: "SetTransformation", header: "OpenGl_Structure.hxx".}
proc setTransformPersistence*(this: var OpenGlStructure;
                             theTrsfPers: Handle[Graphic3dTransformPers]) {.cdecl,
    importcpp: "SetTransformPersistence", header: "OpenGl_Structure.hxx".}
proc setZLayer*(this: var OpenGlStructure; theLayerIndex: Graphic3dZLayerId) {.cdecl,
    importcpp: "SetZLayer", header: "OpenGl_Structure.hxx".}
proc graphicHighlight*(this: var OpenGlStructure;
                      theStyle: Handle[Graphic3dPresentationAttributes]) {.cdecl,
    importcpp: "GraphicHighlight", header: "OpenGl_Structure.hxx".}
proc graphicUnhighlight*(this: var OpenGlStructure) {.cdecl,
    importcpp: "GraphicUnhighlight", header: "OpenGl_Structure.hxx".}
proc shadowLink*(this: OpenGlStructure;
                theManager: Handle[Graphic3dStructureManager]): Handle[
    Graphic3dCStructure] {.noSideEffect, cdecl, importcpp: "ShadowLink",
                          header: "OpenGl_Structure.hxx".}
proc newGroup*(this: var OpenGlStructure; theStruct: Handle[Graphic3dStructure]): Handle[
    Graphic3dGroup] {.cdecl, importcpp: "NewGroup", header: "OpenGl_Structure.hxx".}
proc removeGroup*(this: var OpenGlStructure; theGroup: Handle[Graphic3dGroup]) {.
    cdecl, importcpp: "RemoveGroup", header: "OpenGl_Structure.hxx".}
proc glDriver*(this: OpenGlStructure): ptr OpenGlGraphicDriver {.noSideEffect, cdecl,
    importcpp: "GlDriver", header: "OpenGl_Structure.hxx".}
proc clear*(this: var OpenGlStructure; theGlCtx: Handle[OpenGlContext]) {.cdecl,
    importcpp: "Clear", header: "OpenGl_Structure.hxx".}
proc render*(this: OpenGlStructure; theWorkspace: Handle[OpenGlWorkspace]) {.
    noSideEffect, cdecl, importcpp: "Render", header: "OpenGl_Structure.hxx".}
proc release*(this: var OpenGlStructure; theGlCtx: Handle[OpenGlContext]) {.cdecl,
    importcpp: "Release", header: "OpenGl_Structure.hxx".}
proc releaseGlResources*(this: var OpenGlStructure; theGlCtx: Handle[OpenGlContext]) {.
    cdecl, importcpp: "ReleaseGlResources", header: "OpenGl_Structure.hxx".}
proc instancedStructure*(this: OpenGlStructure): ptr OpenGlStructure {.noSideEffect,
    cdecl, importcpp: "InstancedStructure", header: "OpenGl_Structure.hxx".}
proc modificationState*(this: OpenGlStructure): csize_t {.noSideEffect, cdecl,
    importcpp: "ModificationState", header: "OpenGl_Structure.hxx".}
proc resetModificationState*(this: OpenGlStructure) {.noSideEffect, cdecl,
    importcpp: "ResetModificationState", header: "OpenGl_Structure.hxx".}
proc isRaytracable*(this: OpenGlStructure): bool {.noSideEffect, cdecl,
    importcpp: "IsRaytracable", header: "OpenGl_Structure.hxx".}
proc updateLayerTransformation*(this: var OpenGlStructure) {.cdecl,
    importcpp: "updateLayerTransformation", header: "OpenGl_Structure.hxx".}
proc dumpJson*(this: OpenGlStructure; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "OpenGl_Structure.hxx".}
