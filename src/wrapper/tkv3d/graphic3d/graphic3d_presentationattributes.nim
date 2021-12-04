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


proc newGraphic3dPresentationAttributes*(): Graphic3dPresentationAttributes {.
    cdecl, constructor, importcpp: "Graphic3d_PresentationAttributes(@)",
    header: "Graphic3d_PresentationAttributes.hxx".}
proc destroyGraphic3dPresentationAttributes*(
    this: var Graphic3dPresentationAttributes) {.cdecl,
    importcpp: "#.~Graphic3d_PresentationAttributes()", header: "Graphic3d_PresentationAttributes.hxx".}
proc `method`*(this: Graphic3dPresentationAttributes): AspectTypeOfHighlightMethod {.
    noSideEffect, cdecl, importcpp: "Method", header: "Graphic3d_PresentationAttributes.hxx".}
proc setMethod*(this: var Graphic3dPresentationAttributes;
               theMethod: AspectTypeOfHighlightMethod) {.cdecl,
    importcpp: "SetMethod", header: "Graphic3d_PresentationAttributes.hxx".}
proc colorRGBA*(this: Graphic3dPresentationAttributes): QuantityColorRGBA {.
    noSideEffect, cdecl, importcpp: "ColorRGBA", header: "Graphic3d_PresentationAttributes.hxx".}
proc color*(this: Graphic3dPresentationAttributes): QuantityColor {.noSideEffect,
    cdecl, importcpp: "Color", header: "Graphic3d_PresentationAttributes.hxx".}
proc setColor*(this: var Graphic3dPresentationAttributes; theColor: QuantityColor) {.
    cdecl, importcpp: "SetColor", header: "Graphic3d_PresentationAttributes.hxx".}
proc transparency*(this: Graphic3dPresentationAttributes): StandardShortReal {.
    noSideEffect, cdecl, importcpp: "Transparency", header: "Graphic3d_PresentationAttributes.hxx".}
proc setTransparency*(this: var Graphic3dPresentationAttributes;
                     theTranspCoef: StandardShortReal) {.cdecl,
    importcpp: "SetTransparency", header: "Graphic3d_PresentationAttributes.hxx".}
proc zLayer*(this: Graphic3dPresentationAttributes): Graphic3dZLayerId {.
    noSideEffect, cdecl, importcpp: "ZLayer", header: "Graphic3d_PresentationAttributes.hxx".}
proc setZLayer*(this: var Graphic3dPresentationAttributes;
               theLayer: Graphic3dZLayerId) {.cdecl, importcpp: "SetZLayer",
    header: "Graphic3d_PresentationAttributes.hxx".}
proc displayMode*(this: Graphic3dPresentationAttributes): cint {.noSideEffect, cdecl,
    importcpp: "DisplayMode", header: "Graphic3d_PresentationAttributes.hxx".}
proc setDisplayMode*(this: var Graphic3dPresentationAttributes; theMode: cint) {.
    cdecl, importcpp: "SetDisplayMode", header: "Graphic3d_PresentationAttributes.hxx".}
proc basicFillAreaAspect*(this: Graphic3dPresentationAttributes): Handle[
    Graphic3dAspectFillArea3d] {.noSideEffect, cdecl,
                                importcpp: "BasicFillAreaAspect", header: "Graphic3d_PresentationAttributes.hxx".}
proc setBasicFillAreaAspect*(this: var Graphic3dPresentationAttributes;
                            theAspect: Handle[Graphic3dAspectFillArea3d]) {.cdecl,
    importcpp: "SetBasicFillAreaAspect", header: "Graphic3d_PresentationAttributes.hxx".}
proc dumpJson*(this: Graphic3dPresentationAttributes;
              theOStream: var StandardOStream; theDepth: cint = -1) {.noSideEffect,
    cdecl, importcpp: "DumpJson", header: "Graphic3d_PresentationAttributes.hxx".}
type
  HandleGraphic3dPresentationAttributes* = Handle[Graphic3dPresentationAttributes]
