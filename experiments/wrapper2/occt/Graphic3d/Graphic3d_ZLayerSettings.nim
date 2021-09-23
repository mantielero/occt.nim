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

import
  ../gp/gp_XYZ, ../TopLoc/TopLoc_Datum3D, Graphic3d_LightSet,
  Graphic3d_PolygonOffset, ../Precision/Precision, ../Standard/Standard_Dump,
  ../TCollection/TCollection_AsciiString

type
  Graphic3d_ZLayerSetting* {.size: sizeof(cint),
                            importcpp: "Graphic3d_ZLayerSetting",
                            header: "Graphic3d_ZLayerSettings.hxx".} = enum
    Graphic3d_ZLayerDepthTest = 1, Graphic3d_ZLayerDepthWrite = 2,
    Graphic3d_ZLayerDepthClear = 4, Graphic3d_ZLayerDepthOffset = 8


## ! Structure defines list of ZLayer properties.

type
  Graphic3d_ZLayerSettings* {.importcpp: "Graphic3d_ZLayerSettings",
                             header: "Graphic3d_ZLayerSettings.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Default
                                                                                  ## settings.
    myLights* {.importc: "myLights".}: handle[Graphic3d_LightSet] ## !< lights list
    myOriginTrsf* {.importc: "myOriginTrsf".}: handle[TopLoc_Datum3D] ## !< transformation to the origin
    myOrigin* {.importc: "myOrigin".}: gp_XYZ ## !< the origin of all objects within the layer
    myCullingDistance* {.importc: "myCullingDistance".}: Standard_Real ## !< distance to discard objects
    myCullingSize* {.importc: "myCullingSize".}: Standard_Real ## !< size to discard objects
    myPolygonOffset* {.importc: "myPolygonOffset".}: Graphic3d_PolygonOffset ## !< glPolygonOffset() arguments
    myIsImmediate* {.importc: "myIsImmediate".}: Standard_Boolean ## !< immediate layer will be drawn after all normal layers
    myToRaytrace* {.importc: "myToRaytrace".}: Standard_Boolean ## !< option to render layer within ray-tracing engine
    myUseEnvironmentTexture* {.importc: "myUseEnvironmentTexture".}: Standard_Boolean ## !< flag to allow/prevent environment texture mapping usage for specific layer
    myToEnableDepthTest* {.importc: "myToEnableDepthTest".}: Standard_Boolean ## !< option to enable depth test
    myToEnableDepthWrite* {.importc: "myToEnableDepthWrite".}: Standard_Boolean ## !< option to enable write depth values
    myToClearDepth* {.importc: "myToClearDepth".}: Standard_Boolean ## !< option to clear depth values before drawing the layer
    myToRenderInDepthPrepass* {.importc: "myToRenderInDepthPrepass".}: Standard_Boolean ## !< option to render layer within depth pre-pass


proc constructGraphic3d_ZLayerSettings*(): Graphic3d_ZLayerSettings {.constructor,
    importcpp: "Graphic3d_ZLayerSettings(@)",
    header: "Graphic3d_ZLayerSettings.hxx".}
proc Name*(this: Graphic3d_ZLayerSettings): TCollection_AsciiString {.noSideEffect,
    importcpp: "Name", header: "Graphic3d_ZLayerSettings.hxx".}
proc SetName*(this: var Graphic3d_ZLayerSettings; theName: TCollection_AsciiString) {.
    importcpp: "SetName", header: "Graphic3d_ZLayerSettings.hxx".}
proc Lights*(this: Graphic3d_ZLayerSettings): handle[Graphic3d_LightSet] {.
    noSideEffect, importcpp: "Lights", header: "Graphic3d_ZLayerSettings.hxx".}
proc SetLights*(this: var Graphic3d_ZLayerSettings;
               theLights: handle[Graphic3d_LightSet]) {.importcpp: "SetLights",
    header: "Graphic3d_ZLayerSettings.hxx".}
proc Origin*(this: Graphic3d_ZLayerSettings): gp_XYZ {.noSideEffect,
    importcpp: "Origin", header: "Graphic3d_ZLayerSettings.hxx".}
proc OriginTransformation*(this: Graphic3d_ZLayerSettings): handle[TopLoc_Datum3D] {.
    noSideEffect, importcpp: "OriginTransformation",
    header: "Graphic3d_ZLayerSettings.hxx".}
proc SetOrigin*(this: var Graphic3d_ZLayerSettings; theOrigin: gp_XYZ) {.
    importcpp: "SetOrigin", header: "Graphic3d_ZLayerSettings.hxx".}
proc HasCullingDistance*(this: Graphic3d_ZLayerSettings): Standard_Boolean {.
    noSideEffect, importcpp: "HasCullingDistance",
    header: "Graphic3d_ZLayerSettings.hxx".}
proc CullingDistance*(this: Graphic3d_ZLayerSettings): Standard_Real {.noSideEffect,
    importcpp: "CullingDistance", header: "Graphic3d_ZLayerSettings.hxx".}
proc SetCullingDistance*(this: var Graphic3d_ZLayerSettings;
                        theDistance: Standard_Real) {.
    importcpp: "SetCullingDistance", header: "Graphic3d_ZLayerSettings.hxx".}
proc HasCullingSize*(this: Graphic3d_ZLayerSettings): Standard_Boolean {.
    noSideEffect, importcpp: "HasCullingSize",
    header: "Graphic3d_ZLayerSettings.hxx".}
proc CullingSize*(this: Graphic3d_ZLayerSettings): Standard_Real {.noSideEffect,
    importcpp: "CullingSize", header: "Graphic3d_ZLayerSettings.hxx".}
proc SetCullingSize*(this: var Graphic3d_ZLayerSettings; theSize: Standard_Real) {.
    importcpp: "SetCullingSize", header: "Graphic3d_ZLayerSettings.hxx".}
proc IsImmediate*(this: Graphic3d_ZLayerSettings): Standard_Boolean {.noSideEffect,
    importcpp: "IsImmediate", header: "Graphic3d_ZLayerSettings.hxx".}
proc SetImmediate*(this: var Graphic3d_ZLayerSettings; theValue: Standard_Boolean) {.
    importcpp: "SetImmediate", header: "Graphic3d_ZLayerSettings.hxx".}
proc IsRaytracable*(this: Graphic3d_ZLayerSettings): Standard_Boolean {.
    noSideEffect, importcpp: "IsRaytracable",
    header: "Graphic3d_ZLayerSettings.hxx".}
proc SetRaytracable*(this: var Graphic3d_ZLayerSettings;
                    theToRaytrace: Standard_Boolean) {.
    importcpp: "SetRaytracable", header: "Graphic3d_ZLayerSettings.hxx".}
proc UseEnvironmentTexture*(this: Graphic3d_ZLayerSettings): Standard_Boolean {.
    noSideEffect, importcpp: "UseEnvironmentTexture",
    header: "Graphic3d_ZLayerSettings.hxx".}
proc SetEnvironmentTexture*(this: var Graphic3d_ZLayerSettings;
                           theValue: Standard_Boolean) {.
    importcpp: "SetEnvironmentTexture", header: "Graphic3d_ZLayerSettings.hxx".}
proc ToEnableDepthTest*(this: Graphic3d_ZLayerSettings): Standard_Boolean {.
    noSideEffect, importcpp: "ToEnableDepthTest",
    header: "Graphic3d_ZLayerSettings.hxx".}
proc SetEnableDepthTest*(this: var Graphic3d_ZLayerSettings;
                        theValue: Standard_Boolean) {.
    importcpp: "SetEnableDepthTest", header: "Graphic3d_ZLayerSettings.hxx".}
proc ToEnableDepthWrite*(this: Graphic3d_ZLayerSettings): Standard_Boolean {.
    noSideEffect, importcpp: "ToEnableDepthWrite",
    header: "Graphic3d_ZLayerSettings.hxx".}
proc SetEnableDepthWrite*(this: var Graphic3d_ZLayerSettings;
                         theValue: Standard_Boolean) {.
    importcpp: "SetEnableDepthWrite", header: "Graphic3d_ZLayerSettings.hxx".}
proc ToClearDepth*(this: Graphic3d_ZLayerSettings): Standard_Boolean {.noSideEffect,
    importcpp: "ToClearDepth", header: "Graphic3d_ZLayerSettings.hxx".}
proc SetClearDepth*(this: var Graphic3d_ZLayerSettings; theValue: Standard_Boolean) {.
    importcpp: "SetClearDepth", header: "Graphic3d_ZLayerSettings.hxx".}
proc ToRenderInDepthPrepass*(this: Graphic3d_ZLayerSettings): Standard_Boolean {.
    noSideEffect, importcpp: "ToRenderInDepthPrepass",
    header: "Graphic3d_ZLayerSettings.hxx".}
proc SetRenderInDepthPrepass*(this: var Graphic3d_ZLayerSettings;
                             theToRender: Standard_Boolean) {.
    importcpp: "SetRenderInDepthPrepass", header: "Graphic3d_ZLayerSettings.hxx".}
proc PolygonOffset*(this: Graphic3d_ZLayerSettings): Graphic3d_PolygonOffset {.
    noSideEffect, importcpp: "PolygonOffset",
    header: "Graphic3d_ZLayerSettings.hxx".}
proc SetPolygonOffset*(this: var Graphic3d_ZLayerSettings;
                      theParams: Graphic3d_PolygonOffset) {.
    importcpp: "SetPolygonOffset", header: "Graphic3d_ZLayerSettings.hxx".}
proc ChangePolygonOffset*(this: var Graphic3d_ZLayerSettings): var Graphic3d_PolygonOffset {.
    importcpp: "ChangePolygonOffset", header: "Graphic3d_ZLayerSettings.hxx".}
## !!!Ignored construct:  ! Returns true if theSetting is enabled. Standard_DEPRECATED ( Deprecated method IsSettingEnabled() should be replaced by individual property getters ) Standard_Boolean IsSettingEnabled ( const Graphic3d_ZLayerSetting theSetting ) const { switch ( theSetting ) { case Graphic3d_ZLayerDepthTest : return myToEnableDepthTest ; case Graphic3d_ZLayerDepthWrite : return myToEnableDepthWrite ; case Graphic3d_ZLayerDepthClear : return myToClearDepth ; case Graphic3d_ZLayerDepthOffset : return myPolygonOffset . Mode != Aspect_POM_Off ; } return Standard_False ; } ! Enables theSetting Standard_DEPRECATED ( Deprecated method EnableSetting() should be replaced by individual property getters ) void EnableSetting ( const Graphic3d_ZLayerSetting theSetting ) { switch ( theSetting ) { case Graphic3d_ZLayerDepthTest : myToEnableDepthTest = Standard_True ; return ; case Graphic3d_ZLayerDepthWrite : myToEnableDepthWrite = Standard_True ; return ; case Graphic3d_ZLayerDepthClear : myToClearDepth = Standard_True ; return ; case Graphic3d_ZLayerDepthOffset : myPolygonOffset . Mode = Aspect_POM_Fill ; return ; } } ! Disables theSetting Standard_DEPRECATED ( Deprecated method DisableSetting() should be replaced by individual property getters ) void DisableSetting ( const Graphic3d_ZLayerSetting theSetting ) { switch ( theSetting ) { case Graphic3d_ZLayerDepthTest : myToEnableDepthTest = Standard_False ; return ; case Graphic3d_ZLayerDepthWrite : myToEnableDepthWrite = Standard_False ; return ; case Graphic3d_ZLayerDepthClear : myToClearDepth = Standard_False ; return ; case Graphic3d_ZLayerDepthOffset : myPolygonOffset . Mode = Aspect_POM_Off ; return ; } } ! Sets minimal possible positive depth offset. void SetDepthOffsetPositive ( ) { myPolygonOffset . Mode = Aspect_POM_Fill ; myPolygonOffset . Factor = 1.0f ; myPolygonOffset . Units = 1.0f ; } ! Sets minimal possible negative depth offset. void SetDepthOffsetNegative ( ) { myPolygonOffset . Mode = Aspect_POM_Fill ; myPolygonOffset . Factor = 1.0f ; myPolygonOffset . Units = - 1.0f ; } ! Dumps the content of me into the stream void DumpJson ( Standard_OStream & theOStream , Standard_Integer theDepth = - 1 ) const { OCCT_DUMP_CLASS_BEGIN ( theOStream , Graphic3d_ZLayerSettings ) OCCT_DUMP_FIELD_VALUE_STRING ( theOStream , myName ) OCCT_DUMP_FIELD_VALUES_DUMPED ( theOStream , theDepth , myOriginTrsf . get ( ) ) OCCT_DUMP_FIELD_VALUES_DUMPED ( theOStream , theDepth , & myOrigin ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , myCullingDistance ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , myCullingSize ) OCCT_DUMP_FIELD_VALUES_DUMPED ( theOStream , theDepth , & myPolygonOffset ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , myIsImmediate ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , myToRaytrace ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , myUseEnvironmentTexture ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , myToEnableDepthTest ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , myToEnableDepthWrite ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , myToClearDepth ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , myToRenderInDepthPrepass ) } protected : TCollection_AsciiString myName ;
## Error: identifier expected, but got: Deprecated method IsSettingEnabled() should be replaced by individual property getters!!!
