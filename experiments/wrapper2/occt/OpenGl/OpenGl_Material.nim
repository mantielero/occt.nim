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

import
  ../Graphic3d/Graphic3d_MaterialAspect, OpenGl_Vec

discard "forward decl of OpenGl_Context"
type
  OpenGl_MaterialCommon* {.importcpp: "OpenGl_MaterialCommon",
                          header: "OpenGl_Material.hxx", bycopy.} = object
    Ambient* {.importc: "Ambient".}: OpenGl_Vec4 ## !< ambient reflection coefficient
    Diffuse* {.importc: "Diffuse".}: OpenGl_Vec4 ## !< diffuse reflection coefficient
    Specular* {.importc: "Specular".}: OpenGl_Vec4 ## !< glossy  reflection coefficient
    Emission* {.importc: "Emission".}: OpenGl_Vec4 ## !< material emission
    Params* {.importc: "Params".}: OpenGl_Vec4 ## !< extra packed parameters


proc Shine*(this: OpenGl_MaterialCommon): cfloat {.noSideEffect, importcpp: "Shine",
    header: "OpenGl_Material.hxx".}
proc ChangeShine*(this: var OpenGl_MaterialCommon): var cfloat {.
    importcpp: "ChangeShine", header: "OpenGl_Material.hxx".}
proc Transparency*(this: OpenGl_MaterialCommon): cfloat {.noSideEffect,
    importcpp: "Transparency", header: "OpenGl_Material.hxx".}
proc ChangeTransparency*(this: var OpenGl_MaterialCommon): var cfloat {.
    importcpp: "ChangeTransparency", header: "OpenGl_Material.hxx".}
proc constructOpenGl_MaterialCommon*(): OpenGl_MaterialCommon {.constructor,
    importcpp: "OpenGl_MaterialCommon(@)", header: "OpenGl_Material.hxx".}
proc Packed*(this: OpenGl_MaterialCommon): ptr OpenGl_Vec4 {.noSideEffect,
    importcpp: "Packed", header: "OpenGl_Material.hxx".}
proc NbOfVec4*(): Standard_Integer {.importcpp: "OpenGl_MaterialCommon::NbOfVec4(@)",
                                  header: "OpenGl_Material.hxx".}
## ! OpenGL material definition

type
  OpenGl_MaterialPBR* {.importcpp: "OpenGl_MaterialPBR",
                       header: "OpenGl_Material.hxx", bycopy.} = object
    BaseColor* {.importc: "BaseColor".}: OpenGl_Vec4 ## !< base color of PBR material with alpha component
    EmissionIOR* {.importc: "EmissionIOR".}: OpenGl_Vec4 ## !< light intensity which is emitted by PBR material and index of refraction
    Params* {.importc: "Params".}: OpenGl_Vec4 ## !< extra packed parameters


proc Metallic*(this: OpenGl_MaterialPBR): cfloat {.noSideEffect,
    importcpp: "Metallic", header: "OpenGl_Material.hxx".}
proc ChangeMetallic*(this: var OpenGl_MaterialPBR): var cfloat {.
    importcpp: "ChangeMetallic", header: "OpenGl_Material.hxx".}
proc Roughness*(this: OpenGl_MaterialPBR): cfloat {.noSideEffect,
    importcpp: "Roughness", header: "OpenGl_Material.hxx".}
proc ChangeRoughness*(this: var OpenGl_MaterialPBR): var cfloat {.
    importcpp: "ChangeRoughness", header: "OpenGl_Material.hxx".}
proc constructOpenGl_MaterialPBR*(): OpenGl_MaterialPBR {.constructor,
    importcpp: "OpenGl_MaterialPBR(@)", header: "OpenGl_Material.hxx".}
proc Packed*(this: OpenGl_MaterialPBR): ptr OpenGl_Vec4 {.noSideEffect,
    importcpp: "Packed", header: "OpenGl_Material.hxx".}
proc NbOfVec4*(): Standard_Integer {.importcpp: "OpenGl_MaterialPBR::NbOfVec4(@)",
                                  header: "OpenGl_Material.hxx".}
## ! OpenGL material definition

type
  OpenGl_Material* {.importcpp: "OpenGl_Material", header: "OpenGl_Material.hxx",
                    bycopy.} = object
    Common* {.importc: "Common".}: OpenGl_MaterialCommon
    Pbr* {.importc: "Pbr".}: OpenGl_MaterialPBR ## ! Set material color.


proc SetColor*(this: var OpenGl_Material; theColor: OpenGl_Vec4) {.
    importcpp: "SetColor", header: "OpenGl_Material.hxx".}
proc Init*(this: var OpenGl_Material; theCtx: OpenGl_Context;
          theProp: Graphic3d_MaterialAspect; theInteriorColor: Quantity_Color) {.
    importcpp: "Init", header: "OpenGl_Material.hxx".}
proc IsEqual*(this: OpenGl_Material; theOther: OpenGl_Material): bool {.noSideEffect,
    importcpp: "IsEqual", header: "OpenGl_Material.hxx".}
proc `==`*(this: var OpenGl_Material; theOther: OpenGl_Material): bool {.
    importcpp: "(# == #)", header: "OpenGl_Material.hxx".}
proc `==`*(this: OpenGl_Material; theOther: OpenGl_Material): bool {.noSideEffect,
    importcpp: "(# == #)", header: "OpenGl_Material.hxx".}
## ! Material flag

type
  OpenGl_MaterialFlag* {.size: sizeof(cint), importcpp: "OpenGl_MaterialFlag",
                        header: "OpenGl_Material.hxx".} = enum
    OpenGl_MaterialFlag_Front, ## !< material for front faces
    OpenGl_MaterialFlag_Back  ## !< material for back  faces

