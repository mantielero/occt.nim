import ../toploc/toploc_types
import ../gp/gp_types
import ../aspect/aspect_types
import ../standard/standard_types
import ../prs3d/prs3d_types
import prsmgr_types
import ../graphic3d/graphic3d_types
import ../tcolstd/tcolstd_types
import ../quantity/quantity_types
import ../bnd/bnd_types
import ../gp/gp_pnt




##  Created on: 1995-01-25
##  Created by: Jean-Louis Frenkel
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





proc presentations*(this: var PrsMgrPresentableObject): var PrsMgrPresentations {.
    cdecl, importcpp: "Presentations", header: "PrsMgr_PresentableObject.hxx".}
proc zLayer*(this: PrsMgrPresentableObject): Graphic3dZLayerId {.noSideEffect, cdecl,
    importcpp: "ZLayer", header: "PrsMgr_PresentableObject.hxx".}
proc setZLayer*(this: var PrsMgrPresentableObject; theLayerId: Graphic3dZLayerId) {.
    cdecl, importcpp: "SetZLayer", header: "PrsMgr_PresentableObject.hxx".}
proc isMutable*(this: PrsMgrPresentableObject): bool {.noSideEffect, cdecl,
    importcpp: "IsMutable", header: "PrsMgr_PresentableObject.hxx".}
proc setMutable*(this: var PrsMgrPresentableObject; theIsMutable: bool) {.cdecl,
    importcpp: "SetMutable", header: "PrsMgr_PresentableObject.hxx".}
proc hasDisplayMode*(this: PrsMgrPresentableObject): bool {.noSideEffect, cdecl,
    importcpp: "HasDisplayMode", header: "PrsMgr_PresentableObject.hxx".}
proc displayMode*(this: PrsMgrPresentableObject): cint {.noSideEffect, cdecl,
    importcpp: "DisplayMode", header: "PrsMgr_PresentableObject.hxx".}
proc setDisplayMode*(this: var PrsMgrPresentableObject; theMode: cint) {.cdecl,
    importcpp: "SetDisplayMode", header: "PrsMgr_PresentableObject.hxx".}
proc unsetDisplayMode*(this: var PrsMgrPresentableObject) {.cdecl,
    importcpp: "UnsetDisplayMode", header: "PrsMgr_PresentableObject.hxx".}
proc hasHilightMode*(this: PrsMgrPresentableObject): bool {.noSideEffect, cdecl,
    importcpp: "HasHilightMode", header: "PrsMgr_PresentableObject.hxx".}
proc hilightMode*(this: PrsMgrPresentableObject): cint {.noSideEffect, cdecl,
    importcpp: "HilightMode", header: "PrsMgr_PresentableObject.hxx".}
proc setHilightMode*(this: var PrsMgrPresentableObject; theMode: cint) {.cdecl,
    importcpp: "SetHilightMode", header: "PrsMgr_PresentableObject.hxx".}
proc unsetHilightMode*(this: var PrsMgrPresentableObject) {.cdecl,
    importcpp: "UnsetHilightMode", header: "PrsMgr_PresentableObject.hxx".}
proc acceptDisplayMode*(this: PrsMgrPresentableObject; theMode: cint): bool {.
    noSideEffect, cdecl, importcpp: "AcceptDisplayMode", header: "PrsMgr_PresentableObject.hxx".}
proc defaultDisplayMode*(this: PrsMgrPresentableObject): cint {.noSideEffect, cdecl,
    importcpp: "DefaultDisplayMode", header: "PrsMgr_PresentableObject.hxx".}
proc toBeUpdated*(this: PrsMgrPresentableObject; theToIncludeHidden: bool = false): bool {.
    noSideEffect, cdecl, importcpp: "ToBeUpdated", header: "PrsMgr_PresentableObject.hxx".}
proc setToUpdate*(this: var PrsMgrPresentableObject; theMode: cint) {.cdecl,
    importcpp: "SetToUpdate", header: "PrsMgr_PresentableObject.hxx".}
proc setToUpdate*(this: var PrsMgrPresentableObject) {.cdecl,
    importcpp: "SetToUpdate", header: "PrsMgr_PresentableObject.hxx".}
proc isInfinite*(this: PrsMgrPresentableObject): bool {.noSideEffect, cdecl,
    importcpp: "IsInfinite", header: "PrsMgr_PresentableObject.hxx".}
proc setInfiniteState*(this: var PrsMgrPresentableObject; theFlag: bool = true) {.cdecl,
    importcpp: "SetInfiniteState", header: "PrsMgr_PresentableObject.hxx".}
proc typeOfPresentation3d*(this: PrsMgrPresentableObject): PrsMgrTypeOfPresentation3d {.
    noSideEffect, cdecl, importcpp: "TypeOfPresentation3d", header: "PrsMgr_PresentableObject.hxx".}
proc setTypeOfPresentation*(this: var PrsMgrPresentableObject;
                           theType: PrsMgrTypeOfPresentation3d) {.cdecl,
    importcpp: "SetTypeOfPresentation", header: "PrsMgr_PresentableObject.hxx".}
proc attributes*(this: PrsMgrPresentableObject): Handle[Prs3dDrawer] {.noSideEffect,
    cdecl, importcpp: "Attributes", header: "PrsMgr_PresentableObject.hxx".}
proc setAttributes*(this: var PrsMgrPresentableObject;
                   theDrawer: Handle[Prs3dDrawer]) {.cdecl,
    importcpp: "SetAttributes", header: "PrsMgr_PresentableObject.hxx".}
proc hilightAttributes*(this: PrsMgrPresentableObject): Handle[Prs3dDrawer] {.
    noSideEffect, cdecl, importcpp: "HilightAttributes", header: "PrsMgr_PresentableObject.hxx".}
proc setHilightAttributes*(this: var PrsMgrPresentableObject;
                          theDrawer: Handle[Prs3dDrawer]) {.cdecl,
    importcpp: "SetHilightAttributes", header: "PrsMgr_PresentableObject.hxx".}
proc dynamicHilightAttributes*(this: PrsMgrPresentableObject): Handle[Prs3dDrawer] {.
    noSideEffect, cdecl, importcpp: "DynamicHilightAttributes", header: "PrsMgr_PresentableObject.hxx".}
proc setDynamicHilightAttributes*(this: var PrsMgrPresentableObject;
                                 theDrawer: Handle[Prs3dDrawer]) {.cdecl,
    importcpp: "SetDynamicHilightAttributes", header: "PrsMgr_PresentableObject.hxx".}
proc unsetHilightAttributes*(this: var PrsMgrPresentableObject) {.cdecl,
    importcpp: "UnsetHilightAttributes", header: "PrsMgr_PresentableObject.hxx".}
proc synchronizeAspects*(this: var PrsMgrPresentableObject) {.cdecl,
    importcpp: "SynchronizeAspects", header: "PrsMgr_PresentableObject.hxx".}
proc transformPersistence*(this: PrsMgrPresentableObject): Handle[
    Graphic3dTransformPers] {.noSideEffect, cdecl,
                             importcpp: "TransformPersistence", header: "PrsMgr_PresentableObject.hxx".}
proc setTransformPersistence*(this: var PrsMgrPresentableObject;
                             theTrsfPers: Handle[Graphic3dTransformPers]) {.cdecl,
    importcpp: "SetTransformPersistence", header: "PrsMgr_PresentableObject.hxx".}
proc localTransformationGeom*(this: PrsMgrPresentableObject): Handle[TopLocDatum3D] {.
    noSideEffect, cdecl, importcpp: "LocalTransformationGeom", header: "PrsMgr_PresentableObject.hxx".}
proc setLocalTransformation*(this: var PrsMgrPresentableObject; theTrsf: TrsfObj) {.
    cdecl, importcpp: "SetLocalTransformation", header: "PrsMgr_PresentableObject.hxx".}
proc setLocalTransformation*(this: var PrsMgrPresentableObject;
                            theTrsf: Handle[TopLocDatum3D]) {.cdecl,
    importcpp: "SetLocalTransformation", header: "PrsMgr_PresentableObject.hxx".}
proc hasTransformation*(this: PrsMgrPresentableObject): bool {.noSideEffect, cdecl,
    importcpp: "HasTransformation", header: "PrsMgr_PresentableObject.hxx".}
proc transformationGeom*(this: PrsMgrPresentableObject): Handle[TopLocDatum3D] {.
    noSideEffect, cdecl, importcpp: "TransformationGeom", header: "PrsMgr_PresentableObject.hxx".}
proc localTransformation*(this: PrsMgrPresentableObject): TrsfObj {.noSideEffect, cdecl,
    importcpp: "LocalTransformation", header: "PrsMgr_PresentableObject.hxx".}
proc transformation*(this: PrsMgrPresentableObject): TrsfObj {.noSideEffect, cdecl,
    importcpp: "Transformation", header: "PrsMgr_PresentableObject.hxx".}
proc inversedTransformation*(this: PrsMgrPresentableObject): GTrsf {.noSideEffect,
    cdecl, importcpp: "InversedTransformation", header: "PrsMgr_PresentableObject.hxx".}
proc combinedParentTransformation*(this: PrsMgrPresentableObject): Handle[
    TopLocDatum3D] {.noSideEffect, cdecl,
                    importcpp: "CombinedParentTransformation", header: "PrsMgr_PresentableObject.hxx".}
proc resetTransformation*(this: var PrsMgrPresentableObject) {.cdecl,
    importcpp: "ResetTransformation", header: "PrsMgr_PresentableObject.hxx".}
proc updateTransformation*(this: var PrsMgrPresentableObject) {.cdecl,
    importcpp: "UpdateTransformation", header: "PrsMgr_PresentableObject.hxx".}
proc clipPlanes*(this: PrsMgrPresentableObject): Handle[
    Graphic3dSequenceOfHClipPlane] {.noSideEffect, cdecl, importcpp: "ClipPlanes",
                                    header: "PrsMgr_PresentableObject.hxx".}
proc setClipPlanes*(this: var PrsMgrPresentableObject;
                   thePlanes: Handle[Graphic3dSequenceOfHClipPlane]) {.cdecl,
    importcpp: "SetClipPlanes", header: "PrsMgr_PresentableObject.hxx".}
proc addClipPlane*(this: var PrsMgrPresentableObject;
                  thePlane: Handle[Graphic3dClipPlane]) {.cdecl,
    importcpp: "AddClipPlane", header: "PrsMgr_PresentableObject.hxx".}
proc removeClipPlane*(this: var PrsMgrPresentableObject;
                     thePlane: Handle[Graphic3dClipPlane]) {.cdecl,
    importcpp: "RemoveClipPlane", header: "PrsMgr_PresentableObject.hxx".}
proc parent*(this: PrsMgrPresentableObject): ptr PrsMgrPresentableObject {.
    noSideEffect, cdecl, importcpp: "Parent", header: "PrsMgr_PresentableObject.hxx".}
proc children*(this: PrsMgrPresentableObject): PrsMgrListOfPresentableObjects {.
    noSideEffect, cdecl, importcpp: "Children", header: "PrsMgr_PresentableObject.hxx".}
proc addChild*(this: var PrsMgrPresentableObject;
              theObject: Handle[PrsMgrPresentableObject]) {.cdecl,
    importcpp: "AddChild", header: "PrsMgr_PresentableObject.hxx".}
proc addChildWithCurrentTransformation*(this: var PrsMgrPresentableObject; theObject: Handle[
    PrsMgrPresentableObject]) {.cdecl,
                               importcpp: "AddChildWithCurrentTransformation",
                               header: "PrsMgr_PresentableObject.hxx".}
proc removeChild*(this: var PrsMgrPresentableObject;
                 theObject: Handle[PrsMgrPresentableObject]) {.cdecl,
    importcpp: "RemoveChild", header: "PrsMgr_PresentableObject.hxx".}
proc removeChildWithRestoreTransformation*(this: var PrsMgrPresentableObject;
    theObject: Handle[PrsMgrPresentableObject]) {.cdecl,
    importcpp: "RemoveChildWithRestoreTransformation", header: "PrsMgr_PresentableObject.hxx".}
proc hasOwnPresentations*(this: PrsMgrPresentableObject): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnPresentations", header: "PrsMgr_PresentableObject.hxx".}
proc boundingBox*(this: var PrsMgrPresentableObject; theBndBox: var BndBox) {.cdecl,
    importcpp: "BoundingBox", header: "PrsMgr_PresentableObject.hxx".}
proc setIsoOnTriangulation*(this: var PrsMgrPresentableObject; theIsEnabled: bool) {.
    cdecl, importcpp: "SetIsoOnTriangulation", header: "PrsMgr_PresentableObject.hxx".}
proc currentFacingModel*(this: PrsMgrPresentableObject): AspectTypeOfFacingModel {.
    noSideEffect, cdecl, importcpp: "CurrentFacingModel", header: "PrsMgr_PresentableObject.hxx".}
proc setCurrentFacingModel*(this: var PrsMgrPresentableObject; theModel: AspectTypeOfFacingModel = aspectTOFM_BOTH_SIDE) {.
    cdecl, importcpp: "SetCurrentFacingModel", header: "PrsMgr_PresentableObject.hxx".}
proc hasColor*(this: PrsMgrPresentableObject): bool {.noSideEffect, cdecl,
    importcpp: "HasColor", header: "PrsMgr_PresentableObject.hxx".}
proc color*(this: PrsMgrPresentableObject; theColor: var QuantityColor) {.
    noSideEffect, cdecl, importcpp: "Color", header: "PrsMgr_PresentableObject.hxx".}
proc setColor*(this: var PrsMgrPresentableObject; theColor: QuantityColor) {.cdecl,
    importcpp: "SetColor", header: "PrsMgr_PresentableObject.hxx".}
proc unsetColor*(this: var PrsMgrPresentableObject) {.cdecl, importcpp: "UnsetColor",
    header: "PrsMgr_PresentableObject.hxx".}
proc hasWidth*(this: PrsMgrPresentableObject): bool {.noSideEffect, cdecl,
    importcpp: "HasWidth", header: "PrsMgr_PresentableObject.hxx".}
proc width*(this: PrsMgrPresentableObject): cfloat {.noSideEffect, cdecl,
    importcpp: "Width", header: "PrsMgr_PresentableObject.hxx".}
proc setWidth*(this: var PrsMgrPresentableObject; theWidth: cfloat) {.cdecl,
    importcpp: "SetWidth", header: "PrsMgr_PresentableObject.hxx".}
proc unsetWidth*(this: var PrsMgrPresentableObject) {.cdecl, importcpp: "UnsetWidth",
    header: "PrsMgr_PresentableObject.hxx".}
proc hasMaterial*(this: PrsMgrPresentableObject): bool {.noSideEffect, cdecl,
    importcpp: "HasMaterial", header: "PrsMgr_PresentableObject.hxx".}
proc material*(this: PrsMgrPresentableObject): Graphic3dNameOfMaterial {.
    noSideEffect, cdecl, importcpp: "Material", header: "PrsMgr_PresentableObject.hxx".}
proc setMaterial*(this: var PrsMgrPresentableObject; aName: Graphic3dMaterialAspect) {.
    cdecl, importcpp: "SetMaterial", header: "PrsMgr_PresentableObject.hxx".}
proc unsetMaterial*(this: var PrsMgrPresentableObject) {.cdecl,
    importcpp: "UnsetMaterial", header: "PrsMgr_PresentableObject.hxx".}
proc isTransparent*(this: PrsMgrPresentableObject): bool {.noSideEffect, cdecl,
    importcpp: "IsTransparent", header: "PrsMgr_PresentableObject.hxx".}
proc transparency*(this: PrsMgrPresentableObject): cfloat {.noSideEffect, cdecl,
    importcpp: "Transparency", header: "PrsMgr_PresentableObject.hxx".}
proc setTransparency*(this: var PrsMgrPresentableObject; aValue: cfloat = 0.6) {.cdecl,
    importcpp: "SetTransparency", header: "PrsMgr_PresentableObject.hxx".}
proc unsetTransparency*(this: var PrsMgrPresentableObject) {.cdecl,
    importcpp: "UnsetTransparency", header: "PrsMgr_PresentableObject.hxx".}
proc hasPolygonOffsets*(this: PrsMgrPresentableObject): bool {.noSideEffect, cdecl,
    importcpp: "HasPolygonOffsets", header: "PrsMgr_PresentableObject.hxx".}
proc polygonOffsets*(this: PrsMgrPresentableObject; aMode: var cint;
                    aFactor: var StandardShortReal; aUnits: var StandardShortReal) {.
    noSideEffect, cdecl, importcpp: "PolygonOffsets", header: "PrsMgr_PresentableObject.hxx".}
proc setPolygonOffsets*(this: var PrsMgrPresentableObject; aMode: cint;
                       aFactor: StandardShortReal = 1.0;
                       aUnits: StandardShortReal = 0.0) {.cdecl,
    importcpp: "SetPolygonOffsets", header: "PrsMgr_PresentableObject.hxx".}
proc unsetAttributes*(this: var PrsMgrPresentableObject) {.cdecl,
    importcpp: "UnsetAttributes", header: "PrsMgr_PresentableObject.hxx".}
proc dumpJson*(this: PrsMgrPresentableObject; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "PrsMgr_PresentableObject.hxx".}
proc toBeUpdated*(this: PrsMgrPresentableObject;
                 listOfMode: var TColStdListOfInteger) {.noSideEffect, cdecl,
    importcpp: "ToBeUpdated", header: "PrsMgr_PresentableObject.hxx".}
proc setClipPlanes*(this: var PrsMgrPresentableObject;
                   thePlanes: Graphic3dSequenceOfHClipPlane) {.cdecl,
    importcpp: "SetClipPlanes", header: "PrsMgr_PresentableObject.hxx".}
proc setTransformPersistence*(this: var PrsMgrPresentableObject;
                             theMode: Graphic3dTransModeFlags;
                             thePoint: PntObj = pnt(0.0, 0.0, 0.0)) {.cdecl,
    importcpp: "SetTransformPersistence", header: "PrsMgr_PresentableObject.hxx".}
proc getTransformPersistenceMode*(this: PrsMgrPresentableObject): Graphic3dTransModeFlags {.
    noSideEffect, cdecl, importcpp: "GetTransformPersistenceMode", header: "PrsMgr_PresentableObject.hxx".}
proc getTransformPersistencePoint*(this: PrsMgrPresentableObject): PntObj {.
    noSideEffect, cdecl, importcpp: "GetTransformPersistencePoint", header: "PrsMgr_PresentableObject.hxx".}
proc toPropagateVisualState*(this: PrsMgrPresentableObject): bool {.noSideEffect,
    cdecl, importcpp: "ToPropagateVisualState", header: "PrsMgr_PresentableObject.hxx".}
proc setPropagateVisualState*(this: var PrsMgrPresentableObject; theFlag: bool) {.
    cdecl, importcpp: "SetPropagateVisualState", header: "PrsMgr_PresentableObject.hxx".}



