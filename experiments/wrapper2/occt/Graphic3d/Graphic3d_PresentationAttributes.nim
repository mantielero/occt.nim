##  Created on: 2016-08-24
##  Created by: Varvara POSKONINA
##  Copyright (c) 2016 OPEN CASCADE SAS
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
  ../Aspect/Aspect_TypeOfHighlightMethod, Graphic3d_AspectFillArea3d,
  Graphic3d_ZLayerId, ../Standard/Standard_Transient, ../Standard/Standard_Type,
  ../Quantity/Quantity_ColorRGBA

## ! Class defines presentation properties.

type
  Graphic3d_PresentationAttributes* {.importcpp: "Graphic3d_PresentationAttributes", header: "Graphic3d_PresentationAttributes.hxx",
                                     bycopy.} = object of Standard_Transient ## ! Empty
                                                                        ## constructor.
    ## !< presentation fill area aspect
    ## !< presentation color
    ## !< box or color highlighting
    ## !< Z-layer
    ## !< display mode

  Graphic3d_PresentationAttributesbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_PresentationAttributes::get_type_name(@)",
                              header: "Graphic3d_PresentationAttributes.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_PresentationAttributes::get_type_descriptor(@)",
    header: "Graphic3d_PresentationAttributes.hxx".}
proc DynamicType*(this: Graphic3d_PresentationAttributes): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Graphic3d_PresentationAttributes.hxx".}
proc constructGraphic3d_PresentationAttributes*(): Graphic3d_PresentationAttributes {.
    constructor, importcpp: "Graphic3d_PresentationAttributes(@)",
    header: "Graphic3d_PresentationAttributes.hxx".}
proc destroyGraphic3d_PresentationAttributes*(
    this: var Graphic3d_PresentationAttributes) {.
    importcpp: "#.~Graphic3d_PresentationAttributes()",
    header: "Graphic3d_PresentationAttributes.hxx".}
proc Method*(this: Graphic3d_PresentationAttributes): Aspect_TypeOfHighlightMethod {.
    noSideEffect, importcpp: "Method",
    header: "Graphic3d_PresentationAttributes.hxx".}
proc SetMethod*(this: var Graphic3d_PresentationAttributes;
               theMethod: Aspect_TypeOfHighlightMethod) {.importcpp: "SetMethod",
    header: "Graphic3d_PresentationAttributes.hxx".}
proc ColorRGBA*(this: Graphic3d_PresentationAttributes): Quantity_ColorRGBA {.
    noSideEffect, importcpp: "ColorRGBA",
    header: "Graphic3d_PresentationAttributes.hxx".}
proc Color*(this: Graphic3d_PresentationAttributes): Quantity_Color {.noSideEffect,
    importcpp: "Color", header: "Graphic3d_PresentationAttributes.hxx".}
proc SetColor*(this: var Graphic3d_PresentationAttributes; theColor: Quantity_Color) {.
    importcpp: "SetColor", header: "Graphic3d_PresentationAttributes.hxx".}
proc Transparency*(this: Graphic3d_PresentationAttributes): Standard_ShortReal {.
    noSideEffect, importcpp: "Transparency",
    header: "Graphic3d_PresentationAttributes.hxx".}
proc SetTransparency*(this: var Graphic3d_PresentationAttributes;
                     theTranspCoef: Standard_ShortReal) {.
    importcpp: "SetTransparency", header: "Graphic3d_PresentationAttributes.hxx".}
proc ZLayer*(this: Graphic3d_PresentationAttributes): Graphic3d_ZLayerId {.
    noSideEffect, importcpp: "ZLayer",
    header: "Graphic3d_PresentationAttributes.hxx".}
proc SetZLayer*(this: var Graphic3d_PresentationAttributes;
               theLayer: Graphic3d_ZLayerId) {.importcpp: "SetZLayer",
    header: "Graphic3d_PresentationAttributes.hxx".}
proc DisplayMode*(this: Graphic3d_PresentationAttributes): Standard_Integer {.
    noSideEffect, importcpp: "DisplayMode",
    header: "Graphic3d_PresentationAttributes.hxx".}
proc SetDisplayMode*(this: var Graphic3d_PresentationAttributes;
                    theMode: Standard_Integer) {.importcpp: "SetDisplayMode",
    header: "Graphic3d_PresentationAttributes.hxx".}
proc BasicFillAreaAspect*(this: Graphic3d_PresentationAttributes): handle[
    Graphic3d_AspectFillArea3d] {.noSideEffect, importcpp: "BasicFillAreaAspect",
                                 header: "Graphic3d_PresentationAttributes.hxx".}
proc SetBasicFillAreaAspect*(this: var Graphic3d_PresentationAttributes;
                            theAspect: handle[Graphic3d_AspectFillArea3d]) {.
    importcpp: "SetBasicFillAreaAspect",
    header: "Graphic3d_PresentationAttributes.hxx".}
proc DumpJson*(this: Graphic3d_PresentationAttributes;
              theOStream: var Standard_OStream; theDepth: Standard_Integer = -1) {.
    noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_PresentationAttributes.hxx".}
discard "forward decl of Graphic3d_PresentationAttributes"
type
  Handle_Graphic3d_PresentationAttributes* = handle[
      Graphic3d_PresentationAttributes]
