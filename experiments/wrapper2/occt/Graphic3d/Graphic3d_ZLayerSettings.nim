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
    myLights* {.importc: "myLights".}: Handle[Graphic3dLightSet] ## !< lights list
    myOriginTrsf* {.importc: "myOriginTrsf".}: Handle[TopLocDatum3D] ## !< transformation to the origin
    myOrigin* {.importc: "myOrigin".}: Xyz ## !< the origin of all objects within the layer
    myCullingDistance* {.importc: "myCullingDistance".}: float ## !< distance to discard objects
    myCullingSize* {.importc: "myCullingSize".}: float ## !< size to discard objects
    myPolygonOffset* {.importc: "myPolygonOffset".}: Graphic3dPolygonOffset ## !< glPolygonOffset() arguments
    myIsImmediate* {.importc: "myIsImmediate".}: bool ## !< immediate layer will be drawn after all normal layers
    myToRaytrace* {.importc: "myToRaytrace".}: bool ## !< option to render layer within ray-tracing engine
    myUseEnvironmentTexture* {.importc: "myUseEnvironmentTexture".}: bool ## !< flag to allow/prevent environment texture mapping usage for specific layer
    myToEnableDepthTest* {.importc: "myToEnableDepthTest".}: bool ## !< option to enable depth test
    myToEnableDepthWrite* {.importc: "myToEnableDepthWrite".}: bool ## !< option to enable write depth values
    myToClearDepth* {.importc: "myToClearDepth".}: bool ## !< option to clear depth values before drawing the layer
    myToRenderInDepthPrepass* {.importc: "myToRenderInDepthPrepass".}: bool ## !< option to render layer within depth pre-pass


proc constructGraphic3dZLayerSettings*(): Graphic3dZLayerSettings {.constructor,
    importcpp: "Graphic3d_ZLayerSettings(@)",
    header: "Graphic3d_ZLayerSettings.hxx".}
proc name*(this: Graphic3dZLayerSettings): TCollectionAsciiString {.noSideEffect,
    importcpp: "Name", header: "Graphic3d_ZLayerSettings.hxx".}
proc setName*(this: var Graphic3dZLayerSettings; theName: TCollectionAsciiString) {.
    importcpp: "SetName", header: "Graphic3d_ZLayerSettings.hxx".}
proc lights*(this: Graphic3dZLayerSettings): Handle[Graphic3dLightSet] {.
    noSideEffect, importcpp: "Lights", header: "Graphic3d_ZLayerSettings.hxx".}
proc setLights*(this: var Graphic3dZLayerSettings;
               theLights: Handle[Graphic3dLightSet]) {.importcpp: "SetLights",
    header: "Graphic3d_ZLayerSettings.hxx".}
proc origin*(this: Graphic3dZLayerSettings): Xyz {.noSideEffect, importcpp: "Origin",
    header: "Graphic3d_ZLayerSettings.hxx".}
proc originTransformation*(this: Graphic3dZLayerSettings): Handle[TopLocDatum3D] {.
    noSideEffect, importcpp: "OriginTransformation",
    header: "Graphic3d_ZLayerSettings.hxx".}
proc setOrigin*(this: var Graphic3dZLayerSettings; theOrigin: Xyz) {.
    importcpp: "SetOrigin", header: "Graphic3d_ZLayerSettings.hxx".}
proc hasCullingDistance*(this: Graphic3dZLayerSettings): bool {.noSideEffect,
    importcpp: "HasCullingDistance", header: "Graphic3d_ZLayerSettings.hxx".}
proc cullingDistance*(this: Graphic3dZLayerSettings): float {.noSideEffect,
    importcpp: "CullingDistance", header: "Graphic3d_ZLayerSettings.hxx".}
proc setCullingDistance*(this: var Graphic3dZLayerSettings; theDistance: float) {.
    importcpp: "SetCullingDistance", header: "Graphic3d_ZLayerSettings.hxx".}
proc hasCullingSize*(this: Graphic3dZLayerSettings): bool {.noSideEffect,
    importcpp: "HasCullingSize", header: "Graphic3d_ZLayerSettings.hxx".}
proc cullingSize*(this: Graphic3dZLayerSettings): float {.noSideEffect,
    importcpp: "CullingSize", header: "Graphic3d_ZLayerSettings.hxx".}
proc setCullingSize*(this: var Graphic3dZLayerSettings; theSize: float) {.
    importcpp: "SetCullingSize", header: "Graphic3d_ZLayerSettings.hxx".}
proc isImmediate*(this: Graphic3dZLayerSettings): bool {.noSideEffect,
    importcpp: "IsImmediate", header: "Graphic3d_ZLayerSettings.hxx".}
proc setImmediate*(this: var Graphic3dZLayerSettings; theValue: bool) {.
    importcpp: "SetImmediate", header: "Graphic3d_ZLayerSettings.hxx".}
proc isRaytracable*(this: Graphic3dZLayerSettings): bool {.noSideEffect,
    importcpp: "IsRaytracable", header: "Graphic3d_ZLayerSettings.hxx".}
proc setRaytracable*(this: var Graphic3dZLayerSettings; theToRaytrace: bool) {.
    importcpp: "SetRaytracable", header: "Graphic3d_ZLayerSettings.hxx".}
proc useEnvironmentTexture*(this: Graphic3dZLayerSettings): bool {.noSideEffect,
    importcpp: "UseEnvironmentTexture", header: "Graphic3d_ZLayerSettings.hxx".}
proc setEnvironmentTexture*(this: var Graphic3dZLayerSettings; theValue: bool) {.
    importcpp: "SetEnvironmentTexture", header: "Graphic3d_ZLayerSettings.hxx".}
proc toEnableDepthTest*(this: Graphic3dZLayerSettings): bool {.noSideEffect,
    importcpp: "ToEnableDepthTest", header: "Graphic3d_ZLayerSettings.hxx".}
proc setEnableDepthTest*(this: var Graphic3dZLayerSettings; theValue: bool) {.
    importcpp: "SetEnableDepthTest", header: "Graphic3d_ZLayerSettings.hxx".}
proc toEnableDepthWrite*(this: Graphic3dZLayerSettings): bool {.noSideEffect,
    importcpp: "ToEnableDepthWrite", header: "Graphic3d_ZLayerSettings.hxx".}
proc setEnableDepthWrite*(this: var Graphic3dZLayerSettings; theValue: bool) {.
    importcpp: "SetEnableDepthWrite", header: "Graphic3d_ZLayerSettings.hxx".}
proc toClearDepth*(this: Graphic3dZLayerSettings): bool {.noSideEffect,
    importcpp: "ToClearDepth", header: "Graphic3d_ZLayerSettings.hxx".}
proc setClearDepth*(this: var Graphic3dZLayerSettings; theValue: bool) {.
    importcpp: "SetClearDepth", header: "Graphic3d_ZLayerSettings.hxx".}
proc toRenderInDepthPrepass*(this: Graphic3dZLayerSettings): bool {.noSideEffect,
    importcpp: "ToRenderInDepthPrepass", header: "Graphic3d_ZLayerSettings.hxx".}
proc setRenderInDepthPrepass*(this: var Graphic3dZLayerSettings; theToRender: bool) {.
    importcpp: "SetRenderInDepthPrepass", header: "Graphic3d_ZLayerSettings.hxx".}
proc polygonOffset*(this: Graphic3dZLayerSettings): Graphic3dPolygonOffset {.
    noSideEffect, importcpp: "PolygonOffset",
    header: "Graphic3d_ZLayerSettings.hxx".}
proc setPolygonOffset*(this: var Graphic3dZLayerSettings;
                      theParams: Graphic3dPolygonOffset) {.
    importcpp: "SetPolygonOffset", header: "Graphic3d_ZLayerSettings.hxx".}
proc changePolygonOffset*(this: var Graphic3dZLayerSettings): var Graphic3dPolygonOffset {.
    importcpp: "ChangePolygonOffset", header: "Graphic3d_ZLayerSettings.hxx".}
## !!!Ignored construct:  ! Returns true if theSetting is enabled. Standard_DEPRECATED ( Deprecated method IsSettingEnabled() should be replaced by individual property getters ) Standard_Boolean IsSettingEnabled ( const Graphic3d_ZLayerSetting theSetting ) const { switch ( theSetting ) { case Graphic3d_ZLayerDepthTest : return myToEnableDepthTest ; case Graphic3d_ZLayerDepthWrite : return myToEnableDepthWrite ; case Graphic3d_ZLayerDepthClear : return myToClearDepth ; case Graphic3d_ZLayerDepthOffset : return myPolygonOffset . Mode != Aspect_POM_Off ; } return Standard_False ; } ! Enables theSetting Standard_DEPRECATED ( Deprecated method EnableSetting() should be replaced by individual property getters ) void EnableSetting ( const Graphic3d_ZLayerSetting theSetting ) { switch ( theSetting ) { case Graphic3d_ZLayerDepthTest : myToEnableDepthTest = Standard_True ; return ; case Graphic3d_ZLayerDepthWrite : myToEnableDepthWrite = Standard_True ; return ; case Graphic3d_ZLayerDepthClear : myToClearDepth = Standard_True ; return ; case Graphic3d_ZLayerDepthOffset : myPolygonOffset . Mode = Aspect_POM_Fill ; return ; } } ! Disables theSetting Standard_DEPRECATED ( Deprecated method DisableSetting() should be replaced by individual property getters ) void DisableSetting ( const Graphic3d_ZLayerSetting theSetting ) { switch ( theSetting ) { case Graphic3d_ZLayerDepthTest : myToEnableDepthTest = Standard_False ; return ; case Graphic3d_ZLayerDepthWrite : myToEnableDepthWrite = Standard_False ; return ; case Graphic3d_ZLayerDepthClear : myToClearDepth = Standard_False ; return ; case Graphic3d_ZLayerDepthOffset : myPolygonOffset . Mode = Aspect_POM_Off ; return ; } } ! Sets minimal possible positive depth offset. void SetDepthOffsetPositive ( ) { myPolygonOffset . Mode = Aspect_POM_Fill ; myPolygonOffset . Factor = 1.0f ; myPolygonOffset . Units = 1.0f ; } ! Sets minimal possible negative depth offset. void SetDepthOffsetNegative ( ) { myPolygonOffset . Mode = Aspect_POM_Fill ; myPolygonOffset . Factor = 1.0f ; myPolygonOffset . Units = - 1.0f ; } ! Dumps the content of me into the stream void DumpJson ( Standard_OStream & theOStream , Standard_Integer theDepth = - 1 ) const { OCCT_DUMP_CLASS_BEGIN ( theOStream , Graphic3d_ZLayerSettings ) OCCT_DUMP_FIELD_VALUE_STRING ( theOStream , myName ) OCCT_DUMP_FIELD_VALUES_DUMPED ( theOStream , theDepth , myOriginTrsf . get ( ) ) OCCT_DUMP_FIELD_VALUES_DUMPED ( theOStream , theDepth , & myOrigin ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , myCullingDistance ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , myCullingSize ) OCCT_DUMP_FIELD_VALUES_DUMPED ( theOStream , theDepth , & myPolygonOffset ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , myIsImmediate ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , myToRaytrace ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , myUseEnvironmentTexture ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , myToEnableDepthTest ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , myToEnableDepthWrite ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , myToClearDepth ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , myToRenderInDepthPrepass ) } protected : TCollection_AsciiString myName ;
## Error: identifier expected, but got: Deprecated method IsSettingEnabled() should be replaced by individual property getters!!!

