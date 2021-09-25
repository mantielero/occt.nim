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

## ! Class defines presentation properties.

type
  Graphic3dPresentationAttributes* {.importcpp: "Graphic3d_PresentationAttributes", header: "Graphic3d_PresentationAttributes.hxx",
                                    bycopy.} = object of StandardTransient ## ! Empty
                                                                      ## constructor.
    ## !< presentation fill area aspect
    ## !< presentation color
    ## !< box or color highlighting
    ## !< Z-layer
    ## !< display mode

  Graphic3dPresentationAttributesbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Graphic3d_PresentationAttributes::get_type_name(@)",
                            header: "Graphic3d_PresentationAttributes.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_PresentationAttributes::get_type_descriptor(@)",
    header: "Graphic3d_PresentationAttributes.hxx".}
proc dynamicType*(this: Graphic3dPresentationAttributes): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Graphic3d_PresentationAttributes.hxx".}
proc constructGraphic3dPresentationAttributes*(): Graphic3dPresentationAttributes {.
    constructor, importcpp: "Graphic3d_PresentationAttributes(@)",
    header: "Graphic3d_PresentationAttributes.hxx".}
proc destroyGraphic3dPresentationAttributes*(
    this: var Graphic3dPresentationAttributes) {.
    importcpp: "#.~Graphic3d_PresentationAttributes()",
    header: "Graphic3d_PresentationAttributes.hxx".}
proc `method`*(this: Graphic3dPresentationAttributes): AspectTypeOfHighlightMethod {.
    noSideEffect, importcpp: "Method",
    header: "Graphic3d_PresentationAttributes.hxx".}
proc setMethod*(this: var Graphic3dPresentationAttributes;
               theMethod: AspectTypeOfHighlightMethod) {.importcpp: "SetMethod",
    header: "Graphic3d_PresentationAttributes.hxx".}
proc colorRGBA*(this: Graphic3dPresentationAttributes): QuantityColorRGBA {.
    noSideEffect, importcpp: "ColorRGBA",
    header: "Graphic3d_PresentationAttributes.hxx".}
proc color*(this: Graphic3dPresentationAttributes): QuantityColor {.noSideEffect,
    importcpp: "Color", header: "Graphic3d_PresentationAttributes.hxx".}
proc setColor*(this: var Graphic3dPresentationAttributes; theColor: QuantityColor) {.
    importcpp: "SetColor", header: "Graphic3d_PresentationAttributes.hxx".}
proc transparency*(this: Graphic3dPresentationAttributes): StandardShortReal {.
    noSideEffect, importcpp: "Transparency",
    header: "Graphic3d_PresentationAttributes.hxx".}
proc setTransparency*(this: var Graphic3dPresentationAttributes;
                     theTranspCoef: StandardShortReal) {.
    importcpp: "SetTransparency", header: "Graphic3d_PresentationAttributes.hxx".}
proc zLayer*(this: Graphic3dPresentationAttributes): Graphic3dZLayerId {.
    noSideEffect, importcpp: "ZLayer",
    header: "Graphic3d_PresentationAttributes.hxx".}
proc setZLayer*(this: var Graphic3dPresentationAttributes;
               theLayer: Graphic3dZLayerId) {.importcpp: "SetZLayer",
    header: "Graphic3d_PresentationAttributes.hxx".}
proc displayMode*(this: Graphic3dPresentationAttributes): int {.noSideEffect,
    importcpp: "DisplayMode", header: "Graphic3d_PresentationAttributes.hxx".}
proc setDisplayMode*(this: var Graphic3dPresentationAttributes; theMode: int) {.
    importcpp: "SetDisplayMode", header: "Graphic3d_PresentationAttributes.hxx".}
proc basicFillAreaAspect*(this: Graphic3dPresentationAttributes): Handle[
    Graphic3dAspectFillArea3d] {.noSideEffect, importcpp: "BasicFillAreaAspect",
                                header: "Graphic3d_PresentationAttributes.hxx".}
proc setBasicFillAreaAspect*(this: var Graphic3dPresentationAttributes;
                            theAspect: Handle[Graphic3dAspectFillArea3d]) {.
    importcpp: "SetBasicFillAreaAspect",
    header: "Graphic3d_PresentationAttributes.hxx".}
proc dumpJson*(this: Graphic3dPresentationAttributes;
              theOStream: var StandardOStream; theDepth: int = -1) {.noSideEffect,
    importcpp: "DumpJson", header: "Graphic3d_PresentationAttributes.hxx".}
discard "forward decl of Graphic3d_PresentationAttributes"
type
  HandleGraphic3dPresentationAttributes* = Handle[Graphic3dPresentationAttributes]

