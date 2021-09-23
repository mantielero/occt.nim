##  Created on: 1993-09-14
##  Created by: Jean-Louis FRENKEL
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
  ../Graphic3d/Graphic3d_AspectText3d, ../Graphic3d/Graphic3d_TextPath,
  ../Graphic3d/Graphic3d_HorizontalTextAlignment,
  ../Graphic3d/Graphic3d_VerticalTextAlignment, Prs3d_BasicAspect

## ! Defines the attributes when displaying a text.

type
  Prs3d_TextAspect* {.importcpp: "Prs3d_TextAspect",
                     header: "Prs3d_TextAspect.hxx", bycopy.} = object of Prs3d_BasicAspect ##
                                                                                     ## !
                                                                                     ## Constructs
                                                                                     ## an
                                                                                     ## empty
                                                                                     ## framework
                                                                                     ## for
                                                                                     ## defining
                                                                                     ## display
                                                                                     ## attributes
                                                                                     ## of
                                                                                     ## text.

  Prs3d_TextAspectbase_type* = Prs3d_BasicAspect

proc get_type_name*(): cstring {.importcpp: "Prs3d_TextAspect::get_type_name(@)",
                              header: "Prs3d_TextAspect.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Prs3d_TextAspect::get_type_descriptor(@)",
    header: "Prs3d_TextAspect.hxx".}
proc DynamicType*(this: Prs3d_TextAspect): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Prs3d_TextAspect.hxx".}
proc constructPrs3d_TextAspect*(): Prs3d_TextAspect {.constructor,
    importcpp: "Prs3d_TextAspect(@)", header: "Prs3d_TextAspect.hxx".}
proc constructPrs3d_TextAspect*(theAspect: handle[Graphic3d_AspectText3d]): Prs3d_TextAspect {.
    constructor, importcpp: "Prs3d_TextAspect(@)", header: "Prs3d_TextAspect.hxx".}
proc SetColor*(this: var Prs3d_TextAspect; theColor: Quantity_Color) {.
    importcpp: "SetColor", header: "Prs3d_TextAspect.hxx".}
proc SetFont*(this: var Prs3d_TextAspect; theFont: Standard_CString) {.
    importcpp: "SetFont", header: "Prs3d_TextAspect.hxx".}
proc SetHeight*(this: var Prs3d_TextAspect; theHeight: Standard_Real) {.
    importcpp: "SetHeight", header: "Prs3d_TextAspect.hxx".}
proc SetAngle*(this: var Prs3d_TextAspect; theAngle: Standard_Real) {.
    importcpp: "SetAngle", header: "Prs3d_TextAspect.hxx".}
proc Height*(this: Prs3d_TextAspect): Standard_Real {.noSideEffect,
    importcpp: "Height", header: "Prs3d_TextAspect.hxx".}
proc Angle*(this: Prs3d_TextAspect): Standard_Real {.noSideEffect,
    importcpp: "Angle", header: "Prs3d_TextAspect.hxx".}
proc SetHorizontalJustification*(this: var Prs3d_TextAspect; theJustification: Graphic3d_HorizontalTextAlignment) {.
    importcpp: "SetHorizontalJustification", header: "Prs3d_TextAspect.hxx".}
proc SetVerticalJustification*(this: var Prs3d_TextAspect;
                              theJustification: Graphic3d_VerticalTextAlignment) {.
    importcpp: "SetVerticalJustification", header: "Prs3d_TextAspect.hxx".}
proc SetOrientation*(this: var Prs3d_TextAspect; theOrientation: Graphic3d_TextPath) {.
    importcpp: "SetOrientation", header: "Prs3d_TextAspect.hxx".}
proc HorizontalJustification*(this: Prs3d_TextAspect): Graphic3d_HorizontalTextAlignment {.
    noSideEffect, importcpp: "HorizontalJustification",
    header: "Prs3d_TextAspect.hxx".}
proc VerticalJustification*(this: Prs3d_TextAspect): Graphic3d_VerticalTextAlignment {.
    noSideEffect, importcpp: "VerticalJustification",
    header: "Prs3d_TextAspect.hxx".}
proc Orientation*(this: Prs3d_TextAspect): Graphic3d_TextPath {.noSideEffect,
    importcpp: "Orientation", header: "Prs3d_TextAspect.hxx".}
proc Aspect*(this: Prs3d_TextAspect): handle[Graphic3d_AspectText3d] {.noSideEffect,
    importcpp: "Aspect", header: "Prs3d_TextAspect.hxx".}
proc SetAspect*(this: var Prs3d_TextAspect;
               theAspect: handle[Graphic3d_AspectText3d]) {.
    importcpp: "SetAspect", header: "Prs3d_TextAspect.hxx".}
proc DumpJson*(this: Prs3d_TextAspect; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Prs3d_TextAspect.hxx".}
discard "forward decl of Prs3d_TextAspect"
type
  Handle_Prs3d_TextAspect* = handle[Prs3d_TextAspect]
