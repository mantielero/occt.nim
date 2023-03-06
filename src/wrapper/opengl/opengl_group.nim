import ../standard/standard_types
import ../graphic3d/graphic3d_types
import opengl_types
import ../gp/gp_types


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






proc newOpenGlGroup*(theStruct: Handle[Graphic3dStructure]): OpenGlGroup {.cdecl,
    constructor, importcpp: "OpenGl_Group(@)", header: "OpenGl_Group.hxx".}
proc clear*(this: var OpenGlGroup; theToUpdateStructureMgr: bool) {.cdecl,
    importcpp: "Clear", header: "OpenGl_Group.hxx".}
proc aspects*(this: OpenGlGroup): Handle[Graphic3dAspects] {.noSideEffect, cdecl,
    importcpp: "Aspects", header: "OpenGl_Group.hxx".}
proc setGroupPrimitivesAspect*(this: var OpenGlGroup;
                              theAspect: Handle[Graphic3dAspects]) {.cdecl,
    importcpp: "SetGroupPrimitivesAspect", header: "OpenGl_Group.hxx".}
proc setPrimitivesAspect*(this: var OpenGlGroup; theAspect: Handle[Graphic3dAspects]) {.
    cdecl, importcpp: "SetPrimitivesAspect", header: "OpenGl_Group.hxx".}
proc synchronizeAspects*(this: var OpenGlGroup) {.cdecl,
    importcpp: "SynchronizeAspects", header: "OpenGl_Group.hxx".}
proc replaceAspects*(this: var OpenGlGroup; theMap: Graphic3dMapOfAspectsToAspects) {.
    cdecl, importcpp: "ReplaceAspects", header: "OpenGl_Group.hxx".}
proc addPrimitiveArray*(this: var OpenGlGroup;
                       theType: Graphic3dTypeOfPrimitiveArray;
                       theIndices: Handle[Graphic3dIndexBuffer];
                       theAttribs: Handle[Graphic3dBuffer];
                       theBounds: Handle[Graphic3dBoundBuffer];
                       theToEvalMinMax: bool) {.cdecl,
    importcpp: "AddPrimitiveArray", header: "OpenGl_Group.hxx".}
proc addText*(this: var OpenGlGroup; theTextParams: Handle[Graphic3dText];
             theToEvalMinMax: bool) {.cdecl, importcpp: "AddText", header: "OpenGl_Group.hxx".}
proc setFlippingOptions*(this: var OpenGlGroup; theIsEnabled: bool; theRefPlane: Ax2Obj) {.
    cdecl, importcpp: "SetFlippingOptions", header: "OpenGl_Group.hxx".}
proc setStencilTestOptions*(this: var OpenGlGroup; theIsEnabled: bool) {.cdecl,
    importcpp: "SetStencilTestOptions", header: "OpenGl_Group.hxx".}
proc glStruct*(this: OpenGlGroup): ptr OpenGlStructure {.noSideEffect, cdecl,
    importcpp: "GlStruct", header: "OpenGl_Group.hxx".}
proc addElement*(this: var OpenGlGroup; theElem: ptr OpenGlElement) {.cdecl,
    importcpp: "AddElement", header: "OpenGl_Group.hxx".}
proc render*(this: OpenGlGroup; theWorkspace: Handle[OpenGlWorkspace]) {.
    noSideEffect, cdecl, importcpp: "Render", header: "OpenGl_Group.hxx".}
proc release*(this: var OpenGlGroup; theGlCtx: Handle[OpenGlContext]) {.cdecl,
    importcpp: "Release", header: "OpenGl_Group.hxx".}
proc firstNode*(this: OpenGlGroup): ptr OpenGlElementNode {.noSideEffect, cdecl,
    importcpp: "FirstNode", header: "OpenGl_Group.hxx".}
proc glAspects*(this: OpenGlGroup): ptr OpenGlAspects {.noSideEffect, cdecl,
    importcpp: "GlAspects", header: "OpenGl_Group.hxx".}
proc isRaytracable*(this: OpenGlGroup): bool {.noSideEffect, cdecl,
    importcpp: "IsRaytracable", header: "OpenGl_Group.hxx".}
proc dumpJson*(this: OpenGlGroup; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "OpenGl_Group.hxx".}


