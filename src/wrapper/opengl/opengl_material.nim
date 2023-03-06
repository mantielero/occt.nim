import ../quantity/quantity_types
import ../graphic3d/graphic3d_types
import opengl_types



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



proc shine*(this: OpenGlMaterialCommon): cfloat {.noSideEffect, cdecl,
    importcpp: "Shine", header: "OpenGl_Material.hxx".}
proc changeShine*(this: var OpenGlMaterialCommon): var cfloat {.cdecl,
    importcpp: "ChangeShine", header: "OpenGl_Material.hxx".}
proc transparency*(this: OpenGlMaterialCommon): cfloat {.noSideEffect, cdecl,
    importcpp: "Transparency", header: "OpenGl_Material.hxx".}
proc changeTransparency*(this: var OpenGlMaterialCommon): var cfloat {.cdecl,
    importcpp: "ChangeTransparency", header: "OpenGl_Material.hxx".}
proc newOpenGlMaterialCommon*(): OpenGlMaterialCommon {.cdecl, constructor,
    importcpp: "OpenGl_MaterialCommon(@)", header: "OpenGl_Material.hxx".}
proc packed*(this: OpenGlMaterialCommon): ptr OpenGlVec4 {.noSideEffect, cdecl,
    importcpp: "Packed", header: "OpenGl_Material.hxx".}
proc nbOfVec4*(): cint {.cdecl, importcpp: "OpenGl_MaterialCommon::NbOfVec4(@)",
                      header: "OpenGl_Material.hxx".}
## ! OpenGL material definition



proc metallic*(this: OpenGlMaterialPBR): cfloat {.noSideEffect, cdecl,
    importcpp: "Metallic", header: "OpenGl_Material.hxx".}
proc changeMetallic*(this: var OpenGlMaterialPBR): var cfloat {.cdecl,
    importcpp: "ChangeMetallic", header: "OpenGl_Material.hxx".}
proc roughness*(this: OpenGlMaterialPBR): cfloat {.noSideEffect, cdecl,
    importcpp: "Roughness", header: "OpenGl_Material.hxx".}
proc changeRoughness*(this: var OpenGlMaterialPBR): var cfloat {.cdecl,
    importcpp: "ChangeRoughness", header: "OpenGl_Material.hxx".}
proc newOpenGlMaterialPBR*(): OpenGlMaterialPBR {.cdecl, constructor,
    importcpp: "OpenGl_MaterialPBR(@)", header: "OpenGl_Material.hxx".}
proc packed*(this: OpenGlMaterialPBR): ptr OpenGlVec4 {.noSideEffect, cdecl,
    importcpp: "Packed", header: "OpenGl_Material.hxx".}
# proc nbOfVec4*(): cint {.cdecl, importcpp: "OpenGl_MaterialPBR::NbOfVec4(@)",
#                       header: "OpenGl_Material.hxx".}
## ! OpenGL material definition



proc setColor*(this: var OpenGlMaterial; theColor: OpenGlVec4) {.cdecl,
    importcpp: "SetColor", header: "OpenGl_Material.hxx".}
proc init*(this: var OpenGlMaterial; theCtx: OpenGlContext;
          theProp: Graphic3dMaterialAspect; theInteriorColor: QuantityColor) {.
    cdecl, importcpp: "Init", header: "OpenGl_Material.hxx".}
proc isEqual*(this: OpenGlMaterial; theOther: OpenGlMaterial): bool {.noSideEffect,
    cdecl, importcpp: "IsEqual", header: "OpenGl_Material.hxx".}
proc `==`*(this: var OpenGlMaterial; theOther: OpenGlMaterial): bool {.cdecl,
    importcpp: "(# == #)", header: "OpenGl_Material.hxx".}
proc `==`*(this: OpenGlMaterial; theOther: OpenGlMaterial): bool {.noSideEffect, cdecl,
    importcpp: "(# == #)", header: "OpenGl_Material.hxx".}
## ! Material flag




