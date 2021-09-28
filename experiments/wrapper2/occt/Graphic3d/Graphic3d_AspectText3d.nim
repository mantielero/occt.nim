##  Created by: NW,JPB,CAL
##  Copyright (c) 1991-1999 Matra Datavision
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

## ! Creates and updates a group of attributes for text primitives.

type
  Graphic3dAspectText3d* {.importcpp: "Graphic3d_AspectText3d",
                          header: "Graphic3d_AspectText3d.hxx", bycopy.} = object of Graphic3dAspects ##
                                                                                               ## !
                                                                                               ## Creates
                                                                                               ## a
                                                                                               ## context
                                                                                               ## table
                                                                                               ## for
                                                                                               ## text
                                                                                               ## primitives
                                                                                               ## defined
                                                                                               ## with
                                                                                               ## the
                                                                                               ## following
                                                                                               ## default
                                                                                               ## values:
                                                                                               ##
                                                                                               ## !
                                                                                               ## Color
                                                                                               ## :
                                                                                               ## Quantity_NOC_YELLOW
                                                                                               ##
                                                                                               ## !
                                                                                               ## Font
                                                                                               ## :
                                                                                               ## Font_NOF_ASCII_MONO
                                                                                               ##
                                                                                               ## !
                                                                                               ## The
                                                                                               ## style
                                                                                               ## :
                                                                                               ## Aspect_TOST_NORMAL
                                                                                               ##
                                                                                               ## !
                                                                                               ## The
                                                                                               ## display
                                                                                               ## type
                                                                                               ## :
                                                                                               ## Aspect_TODT_NORMAL

  Graphic3dAspectText3dbaseType* = Graphic3dAspects

proc getTypeName*(): cstring {.importcpp: "Graphic3d_AspectText3d::get_type_name(@)",
                            header: "Graphic3d_AspectText3d.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_AspectText3d::get_type_descriptor(@)",
    header: "Graphic3d_AspectText3d.hxx".}
proc dynamicType*(this: Graphic3dAspectText3d): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_AspectText3d.hxx".}
proc constructGraphic3dAspectText3d*(): Graphic3dAspectText3d {.constructor,
    importcpp: "Graphic3d_AspectText3d(@)", header: "Graphic3d_AspectText3d.hxx".}
proc constructGraphic3dAspectText3d*(theColor: QuantityColor;
                                    theFont: StandardCString;
                                    theExpansionFactor: cfloat; theSpace: cfloat;
    theStyle: AspectTypeOfStyleText = aspectTOST_NORMAL; theDisplayType: AspectTypeOfDisplayText = aspectTODT_NORMAL): Graphic3dAspectText3d {.
    constructor, importcpp: "Graphic3d_AspectText3d(@)",
    header: "Graphic3d_AspectText3d.hxx".}
proc color*(this: Graphic3dAspectText3d): QuantityColor {.noSideEffect,
    importcpp: "Color", header: "Graphic3d_AspectText3d.hxx".}
proc colorRGBA*(this: Graphic3dAspectText3d): QuantityColorRGBA {.noSideEffect,
    importcpp: "ColorRGBA", header: "Graphic3d_AspectText3d.hxx".}
proc setColor*(this: var Graphic3dAspectText3d; theColor: QuantityColor) {.
    importcpp: "SetColor", header: "Graphic3d_AspectText3d.hxx".}
proc setColor*(this: var Graphic3dAspectText3d; theColor: QuantityColorRGBA) {.
    importcpp: "SetColor", header: "Graphic3d_AspectText3d.hxx".}
proc font*(this: Graphic3dAspectText3d): TCollectionAsciiString {.noSideEffect,
    importcpp: "Font", header: "Graphic3d_AspectText3d.hxx".}
proc setFont*(this: var Graphic3dAspectText3d; theFont: TCollectionAsciiString) {.
    importcpp: "SetFont", header: "Graphic3d_AspectText3d.hxx".}
proc setFont*(this: var Graphic3dAspectText3d; theFont: StandardCString) {.
    importcpp: "SetFont", header: "Graphic3d_AspectText3d.hxx".}
proc style*(this: Graphic3dAspectText3d): AspectTypeOfStyleText {.noSideEffect,
    importcpp: "Style", header: "Graphic3d_AspectText3d.hxx".}
proc setStyle*(this: var Graphic3dAspectText3d; theStyle: AspectTypeOfStyleText) {.
    importcpp: "SetStyle", header: "Graphic3d_AspectText3d.hxx".}
proc displayType*(this: Graphic3dAspectText3d): AspectTypeOfDisplayText {.
    noSideEffect, importcpp: "DisplayType", header: "Graphic3d_AspectText3d.hxx".}
proc setDisplayType*(this: var Graphic3dAspectText3d;
                    theDisplayType: AspectTypeOfDisplayText) {.
    importcpp: "SetDisplayType", header: "Graphic3d_AspectText3d.hxx".}
proc getTextZoomable*(this: Graphic3dAspectText3d): bool {.noSideEffect,
    importcpp: "GetTextZoomable", header: "Graphic3d_AspectText3d.hxx".}
proc getTextAngle*(this: Graphic3dAspectText3d): StandardShortReal {.noSideEffect,
    importcpp: "GetTextAngle", header: "Graphic3d_AspectText3d.hxx".}
proc setTextAngle*(this: var Graphic3dAspectText3d; theAngle: cfloat) {.
    importcpp: "SetTextAngle", header: "Graphic3d_AspectText3d.hxx".}
proc getTextFontAspect*(this: Graphic3dAspectText3d): FontFontAspect {.noSideEffect,
    importcpp: "GetTextFontAspect", header: "Graphic3d_AspectText3d.hxx".}
proc dumpJson*(this: Graphic3dAspectText3d; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "Graphic3d_AspectText3d.hxx".}
discard "forward decl of Graphic3d_AspectText3d"
type
  HandleC1C1* = Handle[Graphic3dAspectText3d]


























