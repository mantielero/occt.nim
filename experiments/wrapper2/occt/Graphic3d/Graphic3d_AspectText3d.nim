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

import
  Graphic3d_Aspects

## ! Creates and updates a group of attributes for text primitives.

type
  Graphic3d_AspectText3d* {.importcpp: "Graphic3d_AspectText3d",
                           header: "Graphic3d_AspectText3d.hxx", bycopy.} = object of Graphic3d_Aspects ##
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

  Graphic3d_AspectText3dbase_type* = Graphic3d_Aspects

proc get_type_name*(): cstring {.importcpp: "Graphic3d_AspectText3d::get_type_name(@)",
                              header: "Graphic3d_AspectText3d.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_AspectText3d::get_type_descriptor(@)",
    header: "Graphic3d_AspectText3d.hxx".}
proc DynamicType*(this: Graphic3d_AspectText3d): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_AspectText3d.hxx".}
proc constructGraphic3d_AspectText3d*(): Graphic3d_AspectText3d {.constructor,
    importcpp: "Graphic3d_AspectText3d(@)", header: "Graphic3d_AspectText3d.hxx".}
proc constructGraphic3d_AspectText3d*(theColor: Quantity_Color;
                                     theFont: Standard_CString;
                                     theExpansionFactor: Standard_Real;
                                     theSpace: Standard_Real; theStyle: Aspect_TypeOfStyleText = Aspect_TOST_NORMAL;
    theDisplayType: Aspect_TypeOfDisplayText = Aspect_TODT_NORMAL): Graphic3d_AspectText3d {.
    constructor, importcpp: "Graphic3d_AspectText3d(@)",
    header: "Graphic3d_AspectText3d.hxx".}
proc Color*(this: Graphic3d_AspectText3d): Quantity_Color {.noSideEffect,
    importcpp: "Color", header: "Graphic3d_AspectText3d.hxx".}
proc ColorRGBA*(this: Graphic3d_AspectText3d): Quantity_ColorRGBA {.noSideEffect,
    importcpp: "ColorRGBA", header: "Graphic3d_AspectText3d.hxx".}
proc SetColor*(this: var Graphic3d_AspectText3d; theColor: Quantity_Color) {.
    importcpp: "SetColor", header: "Graphic3d_AspectText3d.hxx".}
proc SetColor*(this: var Graphic3d_AspectText3d; theColor: Quantity_ColorRGBA) {.
    importcpp: "SetColor", header: "Graphic3d_AspectText3d.hxx".}
proc Font*(this: Graphic3d_AspectText3d): TCollection_AsciiString {.noSideEffect,
    importcpp: "Font", header: "Graphic3d_AspectText3d.hxx".}
proc SetFont*(this: var Graphic3d_AspectText3d; theFont: TCollection_AsciiString) {.
    importcpp: "SetFont", header: "Graphic3d_AspectText3d.hxx".}
proc SetFont*(this: var Graphic3d_AspectText3d; theFont: Standard_CString) {.
    importcpp: "SetFont", header: "Graphic3d_AspectText3d.hxx".}
proc Style*(this: Graphic3d_AspectText3d): Aspect_TypeOfStyleText {.noSideEffect,
    importcpp: "Style", header: "Graphic3d_AspectText3d.hxx".}
proc SetStyle*(this: var Graphic3d_AspectText3d; theStyle: Aspect_TypeOfStyleText) {.
    importcpp: "SetStyle", header: "Graphic3d_AspectText3d.hxx".}
proc DisplayType*(this: Graphic3d_AspectText3d): Aspect_TypeOfDisplayText {.
    noSideEffect, importcpp: "DisplayType", header: "Graphic3d_AspectText3d.hxx".}
proc SetDisplayType*(this: var Graphic3d_AspectText3d;
                    theDisplayType: Aspect_TypeOfDisplayText) {.
    importcpp: "SetDisplayType", header: "Graphic3d_AspectText3d.hxx".}
proc GetTextZoomable*(this: Graphic3d_AspectText3d): bool {.noSideEffect,
    importcpp: "GetTextZoomable", header: "Graphic3d_AspectText3d.hxx".}
proc GetTextAngle*(this: Graphic3d_AspectText3d): Standard_ShortReal {.noSideEffect,
    importcpp: "GetTextAngle", header: "Graphic3d_AspectText3d.hxx".}
proc SetTextAngle*(this: var Graphic3d_AspectText3d; theAngle: Standard_Real) {.
    importcpp: "SetTextAngle", header: "Graphic3d_AspectText3d.hxx".}
proc GetTextFontAspect*(this: Graphic3d_AspectText3d): Font_FontAspect {.
    noSideEffect, importcpp: "GetTextFontAspect",
    header: "Graphic3d_AspectText3d.hxx".}
proc DumpJson*(this: Graphic3d_AspectText3d; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_AspectText3d.hxx".}
discard "forward decl of Graphic3d_AspectText3d"
type
  Handle_Graphic3d_AspectText3d* = handle[Graphic3d_AspectText3d]
