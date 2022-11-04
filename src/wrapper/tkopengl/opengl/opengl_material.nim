##  Created on: 2011-09-20
##  Created by: Sergey ZERCHANINOV
##  Copyright (c) 2011-2013 OPEN CASCADE SAS
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

discard "forward decl of OpenGl_Context"
type
  OpenGlMaterialCommon* {.importcpp: "OpenGl_MaterialCommon",
                         header: "OpenGl_Material.hxx", bycopy.} = object
    ambient* {.importc: "Ambient".}: OpenGlVec4 ## !< ambient reflection coefficient
    diffuse* {.importc: "Diffuse".}: OpenGlVec4 ## !< diffuse reflection coefficient
    specular* {.importc: "Specular".}: OpenGlVec4 ## !< glossy  reflection coefficient
    emission* {.importc: "Emission".}: OpenGlVec4 ## !< material emission
    params* {.importc: "Params".}: OpenGlVec4 ## !< extra packed parameters


proc shine*(this: OpenGlMaterialCommon): cfloat {.noSideEffect, cdecl,
    importcpp: "Shine", dynlib: tkkxbase.}
proc changeShine*(this: var OpenGlMaterialCommon): var cfloat {.cdecl,
    importcpp: "ChangeShine", dynlib: tkkxbase.}
proc transparency*(this: OpenGlMaterialCommon): cfloat {.noSideEffect, cdecl,
    importcpp: "Transparency", dynlib: tkkxbase.}
proc changeTransparency*(this: var OpenGlMaterialCommon): var cfloat {.cdecl,
    importcpp: "ChangeTransparency", dynlib: tkkxbase.}
proc newOpenGlMaterialCommon*(): OpenGlMaterialCommon {.cdecl, constructor,
    importcpp: "OpenGl_MaterialCommon(@)", dynlib: tkkxbase.}
proc packed*(this: OpenGlMaterialCommon): ptr OpenGlVec4 {.noSideEffect, cdecl,
    importcpp: "Packed", dynlib: tkkxbase.}
proc nbOfVec4*(): cint {.cdecl, importcpp: "OpenGl_MaterialCommon::NbOfVec4(@)",
                      dynlib: tkkxbase.}
## ! OpenGL material definition

type
  OpenGlMaterialPBR* {.importcpp: "OpenGl_MaterialPBR",
                      header: "OpenGl_Material.hxx", bycopy.} = object
    baseColor* {.importc: "BaseColor".}: OpenGlVec4 ## !< base color of PBR material with alpha component
    emissionIOR* {.importc: "EmissionIOR".}: OpenGlVec4 ## !< light intensity which is emitted by PBR material and index of refraction
    params* {.importc: "Params".}: OpenGlVec4 ## !< extra packed parameters


proc metallic*(this: OpenGlMaterialPBR): cfloat {.noSideEffect, cdecl,
    importcpp: "Metallic", dynlib: tkkxbase.}
proc changeMetallic*(this: var OpenGlMaterialPBR): var cfloat {.cdecl,
    importcpp: "ChangeMetallic", dynlib: tkkxbase.}
proc roughness*(this: OpenGlMaterialPBR): cfloat {.noSideEffect, cdecl,
    importcpp: "Roughness", dynlib: tkkxbase.}
proc changeRoughness*(this: var OpenGlMaterialPBR): var cfloat {.cdecl,
    importcpp: "ChangeRoughness", dynlib: tkkxbase.}
proc newOpenGlMaterialPBR*(): OpenGlMaterialPBR {.cdecl, constructor,
    importcpp: "OpenGl_MaterialPBR(@)", dynlib: tkkxbase.}
proc packed*(this: OpenGlMaterialPBR): ptr OpenGlVec4 {.noSideEffect, cdecl,
    importcpp: "Packed", dynlib: tkkxbase.}
proc nbOfVec4*(): cint {.cdecl, importcpp: "OpenGl_MaterialPBR::NbOfVec4(@)",
                      dynlib: tkkxbase.}
## ! OpenGL material definition

type
  OpenGlMaterial* {.importcpp: "OpenGl_Material", header: "OpenGl_Material.hxx",
                   bycopy.} = object
    common* {.importc: "Common".}: OpenGlMaterialCommon
    pbr* {.importc: "Pbr".}: OpenGlMaterialPBR ## ! Set material color.


proc setColor*(this: var OpenGlMaterial; theColor: OpenGlVec4) {.cdecl,
    importcpp: "SetColor", dynlib: tkkxbase.}
proc init*(this: var OpenGlMaterial; theCtx: OpenGlContext;
          theProp: Graphic3dMaterialAspect; theInteriorColor: QuantityColor) {.
    cdecl, importcpp: "Init", dynlib: tkkxbase.}
proc isEqual*(this: OpenGlMaterial; theOther: OpenGlMaterial): bool {.noSideEffect,
    cdecl, importcpp: "IsEqual", dynlib: tkkxbase.}
proc `==`*(this: var OpenGlMaterial; theOther: OpenGlMaterial): bool {.cdecl,
    importcpp: "(# == #)", dynlib: tkkxbase.}
proc `==`*(this: OpenGlMaterial; theOther: OpenGlMaterial): bool {.noSideEffect, cdecl,
    importcpp: "(# == #)", dynlib: tkkxbase.}
## ! Material flag

type
  OpenGlMaterialFlag* {.size: sizeof(cint), importcpp: "OpenGl_MaterialFlag",
                       header: "OpenGl_Material.hxx".} = enum
    OpenGlMaterialFlagFront,  ## !< material for front faces
    OpenGlMaterialFlagBack    ## !< material for back  faces

