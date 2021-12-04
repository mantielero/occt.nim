##  Copyright (c) 2014 OPEN CASCADE SAS
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

type
  Graphic3dZLayerSetting* {.size: sizeof(cint),
                           importcpp: "Graphic3d_ZLayerSetting",
                           header: "Graphic3d_ZLayerSettings.hxx".} = enum
    Graphic3dZLayerDepthTest = 1, Graphic3dZLayerDepthWrite = 2,
    Graphic3dZLayerDepthClear = 4, Graphic3dZLayerDepthOffset = 8


## ! Structure defines list of ZLayer properties.

type
  Graphic3dZLayerSettings* {.importcpp: "Graphic3d_ZLayerSettings",
                            header: "Graphic3d_ZLayerSettings.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Default
                                                                                 ## settings.
    ## !< user-provided name
    ## !< lights list
    ## !< transformation to the origin
    ## !< the origin of all objects within the layer
    ## !< distance to discard objects
    ## !< size to discard objects
    ## !< glPolygonOffset() arguments
    ## !< immediate layer will be drawn after all normal layers
    ## !< option to render layer within ray-tracing engine
    ## !< flag to allow/prevent environment texture mapping usage for specific layer
    ## !< option to enable depth test
    ## !< option to enable write depth values
    ## !< option to clear depth values before drawing the layer
    ## !< option to render layer within depth pre-pass


proc newGraphic3dZLayerSettings*(): Graphic3dZLayerSettings {.cdecl, constructor,
    importcpp: "Graphic3d_ZLayerSettings(@)", header: "Graphic3d_ZLayerSettings.hxx".}
proc name*(this: Graphic3dZLayerSettings): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "Name", header: "Graphic3d_ZLayerSettings.hxx".}
proc setName*(this: var Graphic3dZLayerSettings; theName: TCollectionAsciiString) {.
    cdecl, importcpp: "SetName", header: "Graphic3d_ZLayerSettings.hxx".}
proc lights*(this: Graphic3dZLayerSettings): Handle[Graphic3dLightSet] {.
    noSideEffect, cdecl, importcpp: "Lights", header: "Graphic3d_ZLayerSettings.hxx".}
proc setLights*(this: var Graphic3dZLayerSettings;
               theLights: Handle[Graphic3dLightSet]) {.cdecl,
    importcpp: "SetLights", header: "Graphic3d_ZLayerSettings.hxx".}
proc origin*(this: Graphic3dZLayerSettings): Xyz {.noSideEffect, cdecl,
    importcpp: "Origin", header: "Graphic3d_ZLayerSettings.hxx".}
proc originTransformation*(this: Graphic3dZLayerSettings): Handle[TopLocDatum3D] {.
    noSideEffect, cdecl, importcpp: "OriginTransformation", header: "Graphic3d_ZLayerSettings.hxx".}
proc setOrigin*(this: var Graphic3dZLayerSettings; theOrigin: Xyz) {.cdecl,
    importcpp: "SetOrigin", header: "Graphic3d_ZLayerSettings.hxx".}
proc hasCullingDistance*(this: Graphic3dZLayerSettings): bool {.noSideEffect, cdecl,
    importcpp: "HasCullingDistance", header: "Graphic3d_ZLayerSettings.hxx".}
proc cullingDistance*(this: Graphic3dZLayerSettings): cfloat {.noSideEffect, cdecl,
    importcpp: "CullingDistance", header: "Graphic3d_ZLayerSettings.hxx".}
proc setCullingDistance*(this: var Graphic3dZLayerSettings; theDistance: cfloat) {.
    cdecl, importcpp: "SetCullingDistance", header: "Graphic3d_ZLayerSettings.hxx".}
proc hasCullingSize*(this: Graphic3dZLayerSettings): bool {.noSideEffect, cdecl,
    importcpp: "HasCullingSize", header: "Graphic3d_ZLayerSettings.hxx".}
proc cullingSize*(this: Graphic3dZLayerSettings): cfloat {.noSideEffect, cdecl,
    importcpp: "CullingSize", header: "Graphic3d_ZLayerSettings.hxx".}
proc setCullingSize*(this: var Graphic3dZLayerSettings; theSize: cfloat) {.cdecl,
    importcpp: "SetCullingSize", header: "Graphic3d_ZLayerSettings.hxx".}
proc isImmediate*(this: Graphic3dZLayerSettings): bool {.noSideEffect, cdecl,
    importcpp: "IsImmediate", header: "Graphic3d_ZLayerSettings.hxx".}
proc setImmediate*(this: var Graphic3dZLayerSettings; theValue: bool) {.cdecl,
    importcpp: "SetImmediate", header: "Graphic3d_ZLayerSettings.hxx".}
proc isRaytracable*(this: Graphic3dZLayerSettings): bool {.noSideEffect, cdecl,
    importcpp: "IsRaytracable", header: "Graphic3d_ZLayerSettings.hxx".}
proc setRaytracable*(this: var Graphic3dZLayerSettings; theToRaytrace: bool) {.cdecl,
    importcpp: "SetRaytracable", header: "Graphic3d_ZLayerSettings.hxx".}
proc useEnvironmentTexture*(this: Graphic3dZLayerSettings): bool {.noSideEffect,
    cdecl, importcpp: "UseEnvironmentTexture", header: "Graphic3d_ZLayerSettings.hxx".}
proc setEnvironmentTexture*(this: var Graphic3dZLayerSettings; theValue: bool) {.
    cdecl, importcpp: "SetEnvironmentTexture", header: "Graphic3d_ZLayerSettings.hxx".}
proc toEnableDepthTest*(this: Graphic3dZLayerSettings): bool {.noSideEffect, cdecl,
    importcpp: "ToEnableDepthTest", header: "Graphic3d_ZLayerSettings.hxx".}
proc setEnableDepthTest*(this: var Graphic3dZLayerSettings; theValue: bool) {.cdecl,
    importcpp: "SetEnableDepthTest", header: "Graphic3d_ZLayerSettings.hxx".}
proc toEnableDepthWrite*(this: Graphic3dZLayerSettings): bool {.noSideEffect, cdecl,
    importcpp: "ToEnableDepthWrite", header: "Graphic3d_ZLayerSettings.hxx".}
proc setEnableDepthWrite*(this: var Graphic3dZLayerSettings; theValue: bool) {.cdecl,
    importcpp: "SetEnableDepthWrite", header: "Graphic3d_ZLayerSettings.hxx".}
proc toClearDepth*(this: Graphic3dZLayerSettings): bool {.noSideEffect, cdecl,
    importcpp: "ToClearDepth", header: "Graphic3d_ZLayerSettings.hxx".}
proc setClearDepth*(this: var Graphic3dZLayerSettings; theValue: bool) {.cdecl,
    importcpp: "SetClearDepth", header: "Graphic3d_ZLayerSettings.hxx".}
proc toRenderInDepthPrepass*(this: Graphic3dZLayerSettings): bool {.noSideEffect,
    cdecl, importcpp: "ToRenderInDepthPrepass", header: "Graphic3d_ZLayerSettings.hxx".}
proc setRenderInDepthPrepass*(this: var Graphic3dZLayerSettings; theToRender: bool) {.
    cdecl, importcpp: "SetRenderInDepthPrepass", header: "Graphic3d_ZLayerSettings.hxx".}
proc polygonOffset*(this: Graphic3dZLayerSettings): Graphic3dPolygonOffset {.
    noSideEffect, cdecl, importcpp: "PolygonOffset", header: "Graphic3d_ZLayerSettings.hxx".}
proc setPolygonOffset*(this: var Graphic3dZLayerSettings;
                      theParams: Graphic3dPolygonOffset) {.cdecl,
    importcpp: "SetPolygonOffset", header: "Graphic3d_ZLayerSettings.hxx".}
proc changePolygonOffset*(this: var Graphic3dZLayerSettings): var Graphic3dPolygonOffset {.
    cdecl, importcpp: "ChangePolygonOffset", header: "Graphic3d_ZLayerSettings.hxx".}
proc isSettingEnabled*(this: Graphic3dZLayerSettings;
                      theSetting: Graphic3dZLayerSetting): bool {.noSideEffect,
    cdecl, importcpp: "IsSettingEnabled", header: "Graphic3d_ZLayerSettings.hxx".}
proc enableSetting*(this: var Graphic3dZLayerSettings;
                   theSetting: Graphic3dZLayerSetting) {.cdecl,
    importcpp: "EnableSetting", header: "Graphic3d_ZLayerSettings.hxx".}
proc disableSetting*(this: var Graphic3dZLayerSettings;
                    theSetting: Graphic3dZLayerSetting) {.cdecl,
    importcpp: "DisableSetting", header: "Graphic3d_ZLayerSettings.hxx".}
proc setDepthOffsetPositive*(this: var Graphic3dZLayerSettings) {.cdecl,
    importcpp: "SetDepthOffsetPositive", header: "Graphic3d_ZLayerSettings.hxx".}
proc setDepthOffsetNegative*(this: var Graphic3dZLayerSettings) {.cdecl,
    importcpp: "SetDepthOffsetNegative", header: "Graphic3d_ZLayerSettings.hxx".}
proc dumpJson*(this: Graphic3dZLayerSettings; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Graphic3d_ZLayerSettings.hxx".}