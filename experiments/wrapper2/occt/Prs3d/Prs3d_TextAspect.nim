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

## ! Defines the attributes when displaying a text.

type
  Prs3dTextAspect* {.importcpp: "Prs3d_TextAspect", header: "Prs3d_TextAspect.hxx",
                    bycopy.} = object of Prs3dBasicAspect ## ! Constructs an empty framework for defining display attributes of text.

  Prs3dTextAspectbaseType* = Prs3dBasicAspect

proc getTypeName*(): cstring {.importcpp: "Prs3d_TextAspect::get_type_name(@)",
                            header: "Prs3d_TextAspect.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Prs3d_TextAspect::get_type_descriptor(@)",
    header: "Prs3d_TextAspect.hxx".}
proc dynamicType*(this: Prs3dTextAspect): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Prs3d_TextAspect.hxx".}
proc constructPrs3dTextAspect*(): Prs3dTextAspect {.constructor,
    importcpp: "Prs3d_TextAspect(@)", header: "Prs3d_TextAspect.hxx".}
proc constructPrs3dTextAspect*(theAspect: Handle[Graphic3dAspectText3d]): Prs3dTextAspect {.
    constructor, importcpp: "Prs3d_TextAspect(@)", header: "Prs3d_TextAspect.hxx".}
proc setColor*(this: var Prs3dTextAspect; theColor: QuantityColor) {.
    importcpp: "SetColor", header: "Prs3d_TextAspect.hxx".}
proc setFont*(this: var Prs3dTextAspect; theFont: StandardCString) {.
    importcpp: "SetFont", header: "Prs3d_TextAspect.hxx".}
proc setHeight*(this: var Prs3dTextAspect; theHeight: float) {.importcpp: "SetHeight",
    header: "Prs3d_TextAspect.hxx".}
proc setAngle*(this: var Prs3dTextAspect; theAngle: float) {.importcpp: "SetAngle",
    header: "Prs3d_TextAspect.hxx".}
proc height*(this: Prs3dTextAspect): float {.noSideEffect, importcpp: "Height",
    header: "Prs3d_TextAspect.hxx".}
proc angle*(this: Prs3dTextAspect): float {.noSideEffect, importcpp: "Angle",
                                        header: "Prs3d_TextAspect.hxx".}
proc setHorizontalJustification*(this: var Prs3dTextAspect; theJustification: Graphic3dHorizontalTextAlignment) {.
    importcpp: "SetHorizontalJustification", header: "Prs3d_TextAspect.hxx".}
proc setVerticalJustification*(this: var Prs3dTextAspect;
                              theJustification: Graphic3dVerticalTextAlignment) {.
    importcpp: "SetVerticalJustification", header: "Prs3d_TextAspect.hxx".}
proc setOrientation*(this: var Prs3dTextAspect; theOrientation: Graphic3dTextPath) {.
    importcpp: "SetOrientation", header: "Prs3d_TextAspect.hxx".}
proc horizontalJustification*(this: Prs3dTextAspect): Graphic3dHorizontalTextAlignment {.
    noSideEffect, importcpp: "HorizontalJustification",
    header: "Prs3d_TextAspect.hxx".}
proc verticalJustification*(this: Prs3dTextAspect): Graphic3dVerticalTextAlignment {.
    noSideEffect, importcpp: "VerticalJustification",
    header: "Prs3d_TextAspect.hxx".}
proc orientation*(this: Prs3dTextAspect): Graphic3dTextPath {.noSideEffect,
    importcpp: "Orientation", header: "Prs3d_TextAspect.hxx".}
proc aspect*(this: Prs3dTextAspect): Handle[Graphic3dAspectText3d] {.noSideEffect,
    importcpp: "Aspect", header: "Prs3d_TextAspect.hxx".}
proc setAspect*(this: var Prs3dTextAspect; theAspect: Handle[Graphic3dAspectText3d]) {.
    importcpp: "SetAspect", header: "Prs3d_TextAspect.hxx".}
proc dumpJson*(this: Prs3dTextAspect; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Prs3d_TextAspect.hxx".}
discard "forward decl of Prs3d_TextAspect"
type
  HandlePrs3dTextAspect* = Handle[Prs3dTextAspect]

