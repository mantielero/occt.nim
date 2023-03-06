import prs3d_types
import ../standard/standard_types
import ../graphic3d/graphic3d_types
import ../quantity/quantity_types





##  Created on: 1993-06-11
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

## ! A framework for displaying arrows in representations of dimensions and relations.



proc newPrs3dArrowAspect*(): Prs3dArrowAspect {.cdecl, constructor,
    importcpp: "Prs3d_ArrowAspect(@)", header: "Prs3d_ArrowAspect.hxx".}
proc newPrs3dArrowAspect*(anAngle: cfloat; aLength: cfloat): Prs3dArrowAspect {.cdecl,
    constructor, importcpp: "Prs3d_ArrowAspect(@)", header: "Prs3d_ArrowAspect.hxx".}
proc newPrs3dArrowAspect*(theAspect: Handle[Graphic3dAspectLine3d]): Prs3dArrowAspect {.
    cdecl, constructor, importcpp: "Prs3d_ArrowAspect(@)", header: "Prs3d_ArrowAspect.hxx".}
proc setAngle*(this: var Prs3dArrowAspect; anAngle: cfloat) {.cdecl,
    importcpp: "SetAngle", header: "Prs3d_ArrowAspect.hxx".}
proc angle*(this: Prs3dArrowAspect): cfloat {.noSideEffect, cdecl, importcpp: "Angle",
    header: "Prs3d_ArrowAspect.hxx".}
proc setLength*(this: var Prs3dArrowAspect; theLength: cfloat) {.cdecl,
    importcpp: "SetLength", header: "Prs3d_ArrowAspect.hxx".}
proc length*(this: Prs3dArrowAspect): cfloat {.noSideEffect, cdecl,
    importcpp: "Length", header: "Prs3d_ArrowAspect.hxx".}
proc setColor*(this: var Prs3dArrowAspect; theColor: QuantityColor) {.cdecl,
    importcpp: "SetColor", header: "Prs3d_ArrowAspect.hxx".}
proc aspect*(this: Prs3dArrowAspect): Handle[Graphic3dAspectLine3d] {.noSideEffect,
    cdecl, importcpp: "Aspect", header: "Prs3d_ArrowAspect.hxx".}
proc setAspect*(this: var Prs3dArrowAspect; theAspect: Handle[Graphic3dAspectLine3d]) {.
    cdecl, importcpp: "SetAspect", header: "Prs3d_ArrowAspect.hxx".}
proc dumpJson*(this: Prs3dArrowAspect; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Prs3d_ArrowAspect.hxx".}



