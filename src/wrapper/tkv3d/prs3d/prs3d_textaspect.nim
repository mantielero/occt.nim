import prs3d_types
import ../../tkernel/standard/standard_types
import ../graphic3d/graphic3d_types
import ../../tkernel/quantity/quantity_types





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



proc newPrs3dTextAspect*(): Prs3dTextAspect {.cdecl, constructor,
    importcpp: "Prs3d_TextAspect(@)", header: "Prs3d_TextAspect.hxx".}
proc newPrs3dTextAspect*(theAspect: Handle[Graphic3dAspectText3d]): Prs3dTextAspect {.
    cdecl, constructor, importcpp: "Prs3d_TextAspect(@)", header: "Prs3d_TextAspect.hxx".}
proc setColor*(this: var Prs3dTextAspect; theColor: QuantityColor) {.cdecl,
    importcpp: "SetColor", header: "Prs3d_TextAspect.hxx".}
proc setFont*(this: var Prs3dTextAspect; theFont: cstring) {.cdecl,
    importcpp: "SetFont", header: "Prs3d_TextAspect.hxx".}
proc setHeight*(this: var Prs3dTextAspect; theHeight: cfloat) {.cdecl,
    importcpp: "SetHeight", header: "Prs3d_TextAspect.hxx".}
proc setAngle*(this: var Prs3dTextAspect; theAngle: cfloat) {.cdecl,
    importcpp: "SetAngle", header: "Prs3d_TextAspect.hxx".}
proc height*(this: Prs3dTextAspect): cfloat {.noSideEffect, cdecl,
    importcpp: "Height", header: "Prs3d_TextAspect.hxx".}
proc angle*(this: Prs3dTextAspect): cfloat {.noSideEffect, cdecl, importcpp: "Angle",
    header: "Prs3d_TextAspect.hxx".}
proc setHorizontalJustification*(this: var Prs3dTextAspect; theJustification: Graphic3dHorizontalTextAlignment) {.
    cdecl, importcpp: "SetHorizontalJustification", header: "Prs3d_TextAspect.hxx".}
proc setVerticalJustification*(this: var Prs3dTextAspect;
                              theJustification: Graphic3dVerticalTextAlignment) {.
    cdecl, importcpp: "SetVerticalJustification", header: "Prs3d_TextAspect.hxx".}
proc setOrientation*(this: var Prs3dTextAspect; theOrientation: Graphic3dTextPath) {.
    cdecl, importcpp: "SetOrientation", header: "Prs3d_TextAspect.hxx".}
proc horizontalJustification*(this: Prs3dTextAspect): Graphic3dHorizontalTextAlignment {.
    noSideEffect, cdecl, importcpp: "HorizontalJustification", header: "Prs3d_TextAspect.hxx".}
proc verticalJustification*(this: Prs3dTextAspect): Graphic3dVerticalTextAlignment {.
    noSideEffect, cdecl, importcpp: "VerticalJustification", header: "Prs3d_TextAspect.hxx".}
proc orientation*(this: Prs3dTextAspect): Graphic3dTextPath {.noSideEffect, cdecl,
    importcpp: "Orientation", header: "Prs3d_TextAspect.hxx".}
proc aspect*(this: Prs3dTextAspect): Handle[Graphic3dAspectText3d] {.noSideEffect,
    cdecl, importcpp: "Aspect", header: "Prs3d_TextAspect.hxx".}
proc setAspect*(this: var Prs3dTextAspect; theAspect: Handle[Graphic3dAspectText3d]) {.
    cdecl, importcpp: "SetAspect", header: "Prs3d_TextAspect.hxx".}
proc dumpJson*(this: Prs3dTextAspect; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Prs3d_TextAspect.hxx".}



