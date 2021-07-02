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

type
  Prs3dArrowAspect* {.importcpp: "Prs3d_ArrowAspect",
                     header: "Prs3d_ArrowAspect.hxx", bycopy.} = object of Prs3dBasicAspect ##
                                                                                     ## !
                                                                                     ## Constructs
                                                                                     ## an
                                                                                     ## empty
                                                                                     ## framework
                                                                                     ## for
                                                                                     ## displaying
                                                                                     ## arrows
                                                                                     ##
                                                                                     ## !
                                                                                     ## in
                                                                                     ## representations
                                                                                     ## of
                                                                                     ## lengths.
                                                                                     ## The
                                                                                     ## lengths
                                                                                     ## displayed
                                                                                     ##
                                                                                     ## !
                                                                                     ## are
                                                                                     ## either
                                                                                     ## on
                                                                                     ## their
                                                                                     ## own
                                                                                     ## or
                                                                                     ## in
                                                                                     ## chamfers,
                                                                                     ## fillets,
                                                                                     ##
                                                                                     ## !
                                                                                     ## diameters
                                                                                     ## and
                                                                                     ## radii.

  Prs3dArrowAspectbaseType* = Prs3dBasicAspect

proc getTypeName*(): cstring {.importcpp: "Prs3d_ArrowAspect::get_type_name(@)",
                            header: "Prs3d_ArrowAspect.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Prs3d_ArrowAspect::get_type_descriptor(@)",
    header: "Prs3d_ArrowAspect.hxx".}
proc dynamicType*(this: Prs3dArrowAspect): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Prs3d_ArrowAspect.hxx".}
proc constructPrs3dArrowAspect*(): Prs3dArrowAspect {.constructor,
    importcpp: "Prs3d_ArrowAspect(@)", header: "Prs3d_ArrowAspect.hxx".}
proc constructPrs3dArrowAspect*(anAngle: StandardReal; aLength: StandardReal): Prs3dArrowAspect {.
    constructor, importcpp: "Prs3d_ArrowAspect(@)", header: "Prs3d_ArrowAspect.hxx".}
proc constructPrs3dArrowAspect*(theAspect: Handle[Graphic3dAspectLine3d]): Prs3dArrowAspect {.
    constructor, importcpp: "Prs3d_ArrowAspect(@)", header: "Prs3d_ArrowAspect.hxx".}
proc setAngle*(this: var Prs3dArrowAspect; anAngle: StandardReal) {.
    importcpp: "SetAngle", header: "Prs3d_ArrowAspect.hxx".}
proc angle*(this: Prs3dArrowAspect): StandardReal {.noSideEffect, importcpp: "Angle",
    header: "Prs3d_ArrowAspect.hxx".}
proc setLength*(this: var Prs3dArrowAspect; theLength: StandardReal) {.
    importcpp: "SetLength", header: "Prs3d_ArrowAspect.hxx".}
proc length*(this: Prs3dArrowAspect): StandardReal {.noSideEffect,
    importcpp: "Length", header: "Prs3d_ArrowAspect.hxx".}
proc setColor*(this: var Prs3dArrowAspect; theColor: QuantityColor) {.
    importcpp: "SetColor", header: "Prs3d_ArrowAspect.hxx".}
proc aspect*(this: Prs3dArrowAspect): Handle[Graphic3dAspectLine3d] {.noSideEffect,
    importcpp: "Aspect", header: "Prs3d_ArrowAspect.hxx".}
proc setAspect*(this: var Prs3dArrowAspect; theAspect: Handle[Graphic3dAspectLine3d]) {.
    importcpp: "SetAspect", header: "Prs3d_ArrowAspect.hxx".}
proc dumpJson*(this: Prs3dArrowAspect; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Prs3d_ArrowAspect.hxx".}
discard "forward decl of Prs3d_ArrowAspect"
type
  HandlePrs3dArrowAspect* = Handle[Prs3dArrowAspect]


