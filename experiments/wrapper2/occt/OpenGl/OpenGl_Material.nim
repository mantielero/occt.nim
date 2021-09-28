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


proc shine*(this: OpenGlMaterialCommon): cfloat {.noSideEffect, importcpp: "Shine",
    header: "OpenGl_Material.hxx".}
proc changeShine*(this: var OpenGlMaterialCommon): var cfloat {.
    importcpp: "ChangeShine", header: "OpenGl_Material.hxx".}
proc transparency*(this: OpenGlMaterialCommon): cfloat {.noSideEffect,
    importcpp: "Transparency", header: "OpenGl_Material.hxx".}
proc changeTransparency*(this: var OpenGlMaterialCommon): var cfloat {.
    importcpp: "ChangeTransparency", header: "OpenGl_Material.hxx".}
proc constructOpenGlMaterialCommon*(): OpenGlMaterialCommon {.constructor,
    importcpp: "OpenGl_MaterialCommon(@)", header: "OpenGl_Material.hxx".}
proc packed*(this: OpenGlMaterialCommon): ptr OpenGlVec4 {.noSideEffect,
    importcpp: "Packed", header: "OpenGl_Material.hxx".}
proc nbOfVec4*(): cint {.importcpp: "OpenGl_MaterialCommon::NbOfVec4(@)",
                      header: "OpenGl_Material.hxx".}
## ! OpenGL material definition

type
  OpenGlMaterialPBR* {.importcpp: "OpenGl_MaterialPBR",
                      header: "OpenGl_Material.hxx", bycopy.} = object
    baseColor* {.importc: "BaseColor".}: OpenGlVec4 ## !< base color of PBR material with alpha component
    emissionIOR* {.importc: "EmissionIOR".}: OpenGlVec4 ## !< light intensity which is emitted by PBR material and index of refraction
    params* {.importc: "Params".}: OpenGlVec4 ## !< extra packed parameters


proc metallic*(this: OpenGlMaterialPBR): cfloat {.noSideEffect,
    importcpp: "Metallic", header: "OpenGl_Material.hxx".}
proc changeMetallic*(this: var OpenGlMaterialPBR): var cfloat {.
    importcpp: "ChangeMetallic", header: "OpenGl_Material.hxx".}
proc roughness*(this: OpenGlMaterialPBR): cfloat {.noSideEffect,
    importcpp: "Roughness", header: "OpenGl_Material.hxx".}
proc changeRoughness*(this: var OpenGlMaterialPBR): var cfloat {.
    importcpp: "ChangeRoughness", header: "OpenGl_Material.hxx".}
proc constructOpenGlMaterialPBR*(): OpenGlMaterialPBR {.constructor,
    importcpp: "OpenGl_MaterialPBR(@)", header: "OpenGl_Material.hxx".}
proc packed*(this: OpenGlMaterialPBR): ptr OpenGlVec4 {.noSideEffect,
    importcpp: "Packed", header: "OpenGl_Material.hxx".}
proc nbOfVec4*(): cint {.importcpp: "OpenGl_MaterialPBR::NbOfVec4(@)",
                      header: "OpenGl_Material.hxx".}
## ! OpenGL material definition

type
  OpenGlMaterial* {.importcpp: "OpenGl_Material", header: "OpenGl_Material.hxx",
                   bycopy.} = object
    common* {.importc: "Common".}: OpenGlMaterialCommon
    pbr* {.importc: "Pbr".}: OpenGlMaterialPBR ## ! Set material color.


proc setColor*(this: var OpenGlMaterial; theColor: OpenGlVec4) {.
    importcpp: "SetColor", header: "OpenGl_Material.hxx".}
proc init*(this: var OpenGlMaterial; theCtx: OpenGlContext;
          theProp: Graphic3dMaterialAspect; theInteriorColor: QuantityColor) {.
    importcpp: "Init", header: "OpenGl_Material.hxx".}
proc isEqual*(this: OpenGlMaterial; theOther: OpenGlMaterial): bool {.noSideEffect,
    importcpp: "IsEqual", header: "OpenGl_Material.hxx".}
proc `==`*(this: var OpenGlMaterial; theOther: OpenGlMaterial): bool {.
    importcpp: "(# == #)", header: "OpenGl_Material.hxx".}
proc `==`*(this: OpenGlMaterial; theOther: OpenGlMaterial): bool {.noSideEffect,
    importcpp: "(# == #)", header: "OpenGl_Material.hxx".}
## ! Material flag

type
  OpenGlMaterialFlag* {.size: sizeof(cint), importcpp: "OpenGl_MaterialFlag",
                       header: "OpenGl_Material.hxx".} = enum
    OpenGlMaterialFlagFront,  ## !< material for front faces
    OpenGlMaterialFlagBack    ## !< material for back  faces



























