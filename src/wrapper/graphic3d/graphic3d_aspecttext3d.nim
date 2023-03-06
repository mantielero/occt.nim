import ../../tkernel/tcollection/tcollection_types
import ../../tkservice/aspect/aspect_types
import ../../tkernel/standard/standard_types
import graphic3d_types
import ../../tkernel/quantity/quantity_types
import ../selectmgr/selectmgr_types




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



proc newGraphic3dAspectText3d*(): Graphic3dAspectText3d {.cdecl, constructor,
    importcpp: "Graphic3d_AspectText3d(@)", header: "Graphic3d_AspectText3d.hxx".}
proc newGraphic3dAspectText3d*(theColor: QuantityColor; theFont: cstring;
                              theExpansionFactor: cfloat; theSpace: cfloat; theStyle: AspectTypeOfStyleText = aspectTOST_NORMAL;
    theDisplayType: AspectTypeOfDisplayText = aspectTODT_NORMAL): Graphic3dAspectText3d {.
    cdecl, constructor, importcpp: "Graphic3d_AspectText3d(@)", header: "Graphic3d_AspectText3d.hxx".}
proc color*(this: Graphic3dAspectText3d): QuantityColor {.noSideEffect, cdecl,
    importcpp: "Color", header: "Graphic3d_AspectText3d.hxx".}
proc colorRGBA*(this: Graphic3dAspectText3d): QuantityColorRGBA {.noSideEffect,
    cdecl, importcpp: "ColorRGBA", header: "Graphic3d_AspectText3d.hxx".}
proc setColor*(this: var Graphic3dAspectText3d; theColor: QuantityColor) {.cdecl,
    importcpp: "SetColor", header: "Graphic3d_AspectText3d.hxx".}
proc setColor*(this: var Graphic3dAspectText3d; theColor: QuantityColorRGBA) {.cdecl,
    importcpp: "SetColor", header: "Graphic3d_AspectText3d.hxx".}
proc font*(this: Graphic3dAspectText3d): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "Font", header: "Graphic3d_AspectText3d.hxx".}
proc setFont*(this: var Graphic3dAspectText3d; theFont: TCollectionAsciiString) {.
    cdecl, importcpp: "SetFont", header: "Graphic3d_AspectText3d.hxx".}
proc setFont*(this: var Graphic3dAspectText3d; theFont: cstring) {.cdecl,
    importcpp: "SetFont", header: "Graphic3d_AspectText3d.hxx".}
proc style*(this: Graphic3dAspectText3d): AspectTypeOfStyleText {.noSideEffect,
    cdecl, importcpp: "Style", header: "Graphic3d_AspectText3d.hxx".}
proc setStyle*(this: var Graphic3dAspectText3d; theStyle: AspectTypeOfStyleText) {.
    cdecl, importcpp: "SetStyle", header: "Graphic3d_AspectText3d.hxx".}
proc displayType*(this: Graphic3dAspectText3d): AspectTypeOfDisplayText {.
    noSideEffect, cdecl, importcpp: "DisplayType", header: "Graphic3d_AspectText3d.hxx".}
proc setDisplayType*(this: var Graphic3dAspectText3d;
                    theDisplayType: AspectTypeOfDisplayText) {.cdecl,
    importcpp: "SetDisplayType", header: "Graphic3d_AspectText3d.hxx".}
proc getTextZoomable*(this: Graphic3dAspectText3d): bool {.noSideEffect, cdecl,
    importcpp: "GetTextZoomable", header: "Graphic3d_AspectText3d.hxx".}
proc getTextAngle*(this: Graphic3dAspectText3d): StandardShortReal {.noSideEffect,
    cdecl, importcpp: "GetTextAngle", header: "Graphic3d_AspectText3d.hxx".}
proc setTextAngle*(this: var Graphic3dAspectText3d; theAngle: cfloat) {.cdecl,
    importcpp: "SetTextAngle", header: "Graphic3d_AspectText3d.hxx".}
proc getTextFontAspect*(this: Graphic3dAspectText3d): FontFontAspect {.noSideEffect,
    cdecl, importcpp: "GetTextFontAspect", header: "Graphic3d_AspectText3d.hxx".}
proc dumpJson*(this: Graphic3dAspectText3d; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Graphic3d_AspectText3d.hxx".}



