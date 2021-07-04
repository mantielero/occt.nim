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

import
  ../Aspect/Aspect_TypeOfFacingModel, ../Graphic3d/Graphic3d_AspectFillArea3d,
  ../Graphic3d/Graphic3d_MaterialAspect, Prs3d_BasicAspect

## ! A framework to define the display of shading.
## ! The attributes which make up this definition include:
## ! -   fill aspect
## ! -   color, and
## ! -   material

type
  Prs3d_ShadingAspect* {.importcpp: "Prs3d_ShadingAspect",
                        header: "Prs3d_ShadingAspect.hxx", bycopy.} = object of Prs3d_BasicAspect ##
                                                                                           ## !
                                                                                           ## Constructs
                                                                                           ## an
                                                                                           ## empty
                                                                                           ## framework
                                                                                           ## to
                                                                                           ## display
                                                                                           ## shading.

  Prs3d_ShadingAspectbase_type* = Prs3d_BasicAspect

proc get_type_name*(): cstring {.importcpp: "Prs3d_ShadingAspect::get_type_name(@)",
                              header: "Prs3d_ShadingAspect.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Prs3d_ShadingAspect::get_type_descriptor(@)",
    header: "Prs3d_ShadingAspect.hxx".}
proc DynamicType*(this: Prs3d_ShadingAspect): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Prs3d_ShadingAspect.hxx".}
proc constructPrs3d_ShadingAspect*(): Prs3d_ShadingAspect {.constructor,
    importcpp: "Prs3d_ShadingAspect(@)", header: "Prs3d_ShadingAspect.hxx".}
proc constructPrs3d_ShadingAspect*(theAspect: handle[Graphic3d_AspectFillArea3d]): Prs3d_ShadingAspect {.
    constructor, importcpp: "Prs3d_ShadingAspect(@)",
    header: "Prs3d_ShadingAspect.hxx".}
proc SetColor*(this: var Prs3d_ShadingAspect; aColor: Quantity_Color;
              aModel: Aspect_TypeOfFacingModel = Aspect_TOFM_BOTH_SIDE) {.
    importcpp: "SetColor", header: "Prs3d_ShadingAspect.hxx".}
proc SetMaterial*(this: var Prs3d_ShadingAspect;
                 aMaterial: Graphic3d_MaterialAspect;
                 aModel: Aspect_TypeOfFacingModel = Aspect_TOFM_BOTH_SIDE) {.
    importcpp: "SetMaterial", header: "Prs3d_ShadingAspect.hxx".}
proc SetTransparency*(this: var Prs3d_ShadingAspect; aValue: Standard_Real;
                     aModel: Aspect_TypeOfFacingModel = Aspect_TOFM_BOTH_SIDE) {.
    importcpp: "SetTransparency", header: "Prs3d_ShadingAspect.hxx".}
proc Color*(this: Prs3d_ShadingAspect;
           aModel: Aspect_TypeOfFacingModel = Aspect_TOFM_FRONT_SIDE): Quantity_Color {.
    noSideEffect, importcpp: "Color", header: "Prs3d_ShadingAspect.hxx".}
proc Material*(this: Prs3d_ShadingAspect;
              aModel: Aspect_TypeOfFacingModel = Aspect_TOFM_FRONT_SIDE): Graphic3d_MaterialAspect {.
    noSideEffect, importcpp: "Material", header: "Prs3d_ShadingAspect.hxx".}
proc Transparency*(this: Prs3d_ShadingAspect;
                  aModel: Aspect_TypeOfFacingModel = Aspect_TOFM_FRONT_SIDE): Standard_Real {.
    noSideEffect, importcpp: "Transparency", header: "Prs3d_ShadingAspect.hxx".}
proc Aspect*(this: Prs3d_ShadingAspect): handle[Graphic3d_AspectFillArea3d] {.
    noSideEffect, importcpp: "Aspect", header: "Prs3d_ShadingAspect.hxx".}
proc SetAspect*(this: var Prs3d_ShadingAspect;
               theAspect: handle[Graphic3d_AspectFillArea3d]) {.
    importcpp: "SetAspect", header: "Prs3d_ShadingAspect.hxx".}
proc DumpJson*(this: Prs3d_ShadingAspect; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Prs3d_ShadingAspect.hxx".}
discard "forward decl of Prs3d_ShadingAspect"
type
  Handle_Prs3d_ShadingAspect* = handle[Prs3d_ShadingAspect]
