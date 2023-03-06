import prs3d_types
import ../standard/standard_types
import ../graphic3d/graphic3d_types
import ../quantity/quantity_types
import ../aspect/aspect_types




##  Created on: 1993-04-26
##  Created by: Jean-Louis Frenkel
##  Copyright (c) 1993-1999 Matra Datavision
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

## ! A framework to define the display of shading.
## ! The attributes which make up this definition include:
## ! -   fill aspect
## ! -   color, and
## ! -   material



proc newPrs3dShadingAspect*(): Prs3dShadingAspect {.cdecl, constructor,
    importcpp: "Prs3d_ShadingAspect(@)", header: "Prs3d_ShadingAspect.hxx".}
proc newPrs3dShadingAspect*(theAspect: Handle[Graphic3dAspectFillArea3d]): Prs3dShadingAspect {.
    cdecl, constructor, importcpp: "Prs3d_ShadingAspect(@)", header: "Prs3d_ShadingAspect.hxx".}
proc setColor*(this: var Prs3dShadingAspect; aColor: QuantityColor;
              aModel: AspectTypeOfFacingModel = aspectTOFM_BOTH_SIDE) {.cdecl,
    importcpp: "SetColor", header: "Prs3d_ShadingAspect.hxx".}
proc setMaterial*(this: var Prs3dShadingAspect; aMaterial: Graphic3dMaterialAspect;
                 aModel: AspectTypeOfFacingModel = aspectTOFM_BOTH_SIDE) {.cdecl,
    importcpp: "SetMaterial", header: "Prs3d_ShadingAspect.hxx".}
proc setTransparency*(this: var Prs3dShadingAspect; aValue: cfloat;
                     aModel: AspectTypeOfFacingModel = aspectTOFM_BOTH_SIDE) {.
    cdecl, importcpp: "SetTransparency", header: "Prs3d_ShadingAspect.hxx".}
proc color*(this: Prs3dShadingAspect;
           aModel: AspectTypeOfFacingModel = aspectTOFM_FRONT_SIDE): QuantityColor {.
    noSideEffect, cdecl, importcpp: "Color", header: "Prs3d_ShadingAspect.hxx".}
proc material*(this: Prs3dShadingAspect;
              aModel: AspectTypeOfFacingModel = aspectTOFM_FRONT_SIDE): Graphic3dMaterialAspect {.
    noSideEffect, cdecl, importcpp: "Material", header: "Prs3d_ShadingAspect.hxx".}
proc transparency*(this: Prs3dShadingAspect;
                  aModel: AspectTypeOfFacingModel = aspectTOFM_FRONT_SIDE): cfloat {.
    noSideEffect, cdecl, importcpp: "Transparency", header: "Prs3d_ShadingAspect.hxx".}
proc aspect*(this: Prs3dShadingAspect): Handle[Graphic3dAspectFillArea3d] {.
    noSideEffect, cdecl, importcpp: "Aspect", header: "Prs3d_ShadingAspect.hxx".}
proc setAspect*(this: var Prs3dShadingAspect;
               theAspect: Handle[Graphic3dAspectFillArea3d]) {.cdecl,
    importcpp: "SetAspect", header: "Prs3d_ShadingAspect.hxx".}
proc dumpJson*(this: Prs3dShadingAspect; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Prs3d_ShadingAspect.hxx".}



