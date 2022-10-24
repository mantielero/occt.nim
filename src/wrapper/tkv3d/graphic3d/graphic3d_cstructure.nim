import graphic3d_types

##  Copyright (c) 1995-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

discard "forward decl of Graphic3d_GraphicDriver"
discard "forward decl of Graphic3d_StructureManager"


proc graphicDriver*(this: Graphic3dCStructure): Handle[Graphic3dGraphicDriver] {.
    noSideEffect, cdecl, importcpp: "GraphicDriver", header: "Graphic3d_CStructure.hxx".}
proc groups*(this: Graphic3dCStructure): Graphic3dSequenceOfGroup {.noSideEffect,
    cdecl, importcpp: "Groups", header: "Graphic3d_CStructure.hxx".}
proc transformation*(this: Graphic3dCStructure): Handle[TopLocDatum3D] {.
    noSideEffect, cdecl, importcpp: "Transformation", header: "Graphic3d_CStructure.hxx".}
proc setTransformation*(this: var Graphic3dCStructure;
                       theTrsf: Handle[TopLocDatum3D]) {.cdecl,
    importcpp: "SetTransformation", header: "Graphic3d_CStructure.hxx".}
proc transformPersistence*(this: Graphic3dCStructure): Handle[
    Graphic3dTransformPers] {.noSideEffect, cdecl,
                             importcpp: "TransformPersistence", header: "Graphic3d_CStructure.hxx".}
proc setTransformPersistence*(this: var Graphic3dCStructure;
                             theTrsfPers: Handle[Graphic3dTransformPers]) {.cdecl,
    importcpp: "SetTransformPersistence", header: "Graphic3d_CStructure.hxx".}
proc clipPlanes*(this: Graphic3dCStructure): Handle[Graphic3dSequenceOfHClipPlane] {.
    noSideEffect, cdecl, importcpp: "ClipPlanes", header: "Graphic3d_CStructure.hxx".}
proc setClipPlanes*(this: var Graphic3dCStructure;
                   thePlanes: Handle[Graphic3dSequenceOfHClipPlane]) {.cdecl,
    importcpp: "SetClipPlanes", header: "Graphic3d_CStructure.hxx".}
proc boundingBox*(this: Graphic3dCStructure): Graphic3dBndBox3d {.noSideEffect,
    cdecl, importcpp: "BoundingBox", header: "Graphic3d_CStructure.hxx".}
proc changeBoundingBox*(this: var Graphic3dCStructure): var Graphic3dBndBox3d {.cdecl,
    importcpp: "ChangeBoundingBox", header: "Graphic3d_CStructure.hxx".}
proc isVisible*(this: Graphic3dCStructure): bool {.noSideEffect, cdecl,
    importcpp: "IsVisible", header: "Graphic3d_CStructure.hxx".}
proc isVisible*(this: Graphic3dCStructure; theViewId: cint): bool {.noSideEffect,
    cdecl, importcpp: "IsVisible", header: "Graphic3d_CStructure.hxx".}
proc setZLayer*(this: var Graphic3dCStructure; theLayerIndex: Graphic3dZLayerId) {.
    cdecl, importcpp: "SetZLayer", header: "Graphic3d_CStructure.hxx".}
proc zLayer*(this: Graphic3dCStructure): Graphic3dZLayerId {.noSideEffect, cdecl,
    importcpp: "ZLayer", header: "Graphic3d_CStructure.hxx".}
proc highlightStyle*(this: Graphic3dCStructure): Handle[
    Graphic3dPresentationAttributes] {.noSideEffect, cdecl,
                                      importcpp: "HighlightStyle", header: "Graphic3d_CStructure.hxx".}
proc isCulled*(this: Graphic3dCStructure): bool {.noSideEffect, cdecl,
    importcpp: "IsCulled", header: "Graphic3d_CStructure.hxx".}
proc setCulled*(this: Graphic3dCStructure; theIsCulled: bool) {.noSideEffect, cdecl,
    importcpp: "SetCulled", header: "Graphic3d_CStructure.hxx".}
proc markAsNotCulled*(this: Graphic3dCStructure) {.noSideEffect, cdecl,
    importcpp: "MarkAsNotCulled", header: "Graphic3d_CStructure.hxx".}
proc bndBoxClipCheck*(this: Graphic3dCStructure): bool {.noSideEffect, cdecl,
    importcpp: "BndBoxClipCheck", header: "Graphic3d_CStructure.hxx".}
proc setBndBoxClipCheck*(this: var Graphic3dCStructure; theBndBoxClipCheck: bool) {.
    cdecl, importcpp: "SetBndBoxClipCheck", header: "Graphic3d_CStructure.hxx".}
proc isAlwaysRendered*(this: Graphic3dCStructure): bool {.noSideEffect, cdecl,
    importcpp: "IsAlwaysRendered", header: "Graphic3d_CStructure.hxx".}
proc onVisibilityChanged*(this: var Graphic3dCStructure) {.cdecl,
    importcpp: "OnVisibilityChanged", header: "Graphic3d_CStructure.hxx".}
proc clear*(this: var Graphic3dCStructure) {.cdecl, importcpp: "Clear", header: "Graphic3d_CStructure.hxx".}
proc connect*(this: var Graphic3dCStructure; theStructure: var Graphic3dCStructure) {.
    cdecl, importcpp: "Connect", header: "Graphic3d_CStructure.hxx".}
proc disconnect*(this: var Graphic3dCStructure;
                theStructure: var Graphic3dCStructure) {.cdecl,
    importcpp: "Disconnect", header: "Graphic3d_CStructure.hxx".}
proc graphicHighlight*(this: var Graphic3dCStructure;
                      theStyle: Handle[Graphic3dPresentationAttributes]) {.cdecl,
    importcpp: "GraphicHighlight", header: "Graphic3d_CStructure.hxx".}
proc graphicUnhighlight*(this: var Graphic3dCStructure) {.cdecl,
    importcpp: "GraphicUnhighlight", header: "Graphic3d_CStructure.hxx".}
proc shadowLink*(this: Graphic3dCStructure;
                theManager: Handle[Graphic3dStructureManager]): Handle[
    Graphic3dCStructure] {.noSideEffect, cdecl, importcpp: "ShadowLink",
                          header: "Graphic3d_CStructure.hxx".}
proc newGroup*(this: var Graphic3dCStructure; theStruct: Handle[Graphic3dStructure]): Handle[
    Graphic3dGroup] {.cdecl, importcpp: "NewGroup", header: "Graphic3d_CStructure.hxx".}
proc removeGroup*(this: var Graphic3dCStructure; theGroup: Handle[Graphic3dGroup]) {.
    cdecl, importcpp: "RemoveGroup", header: "Graphic3d_CStructure.hxx".}
proc updateLayerTransformation*(this: var Graphic3dCStructure) {.cdecl,
    importcpp: "updateLayerTransformation", header: "Graphic3d_CStructure.hxx".}
proc dumpJson*(this: Graphic3dCStructure; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Graphic3d_CStructure.hxx".}

