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

import
  ../Graphic3d/Graphic3d_AspectLine3d, Prs3d_BasicAspect

## ! A framework for displaying arrows in representations of dimensions and relations.

type
  Prs3d_ArrowAspect* {.importcpp: "Prs3d_ArrowAspect",
                      header: "Prs3d_ArrowAspect.hxx", bycopy.} = object of Prs3d_BasicAspect ##
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

  Prs3d_ArrowAspectbase_type* = Prs3d_BasicAspect

proc get_type_name*(): cstring {.importcpp: "Prs3d_ArrowAspect::get_type_name(@)",
                              header: "Prs3d_ArrowAspect.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Prs3d_ArrowAspect::get_type_descriptor(@)",
    header: "Prs3d_ArrowAspect.hxx".}
proc DynamicType*(this: Prs3d_ArrowAspect): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Prs3d_ArrowAspect.hxx".}
proc constructPrs3d_ArrowAspect*(): Prs3d_ArrowAspect {.constructor,
    importcpp: "Prs3d_ArrowAspect(@)", header: "Prs3d_ArrowAspect.hxx".}
proc constructPrs3d_ArrowAspect*(anAngle: Standard_Real; aLength: Standard_Real): Prs3d_ArrowAspect {.
    constructor, importcpp: "Prs3d_ArrowAspect(@)", header: "Prs3d_ArrowAspect.hxx".}
proc constructPrs3d_ArrowAspect*(theAspect: handle[Graphic3d_AspectLine3d]): Prs3d_ArrowAspect {.
    constructor, importcpp: "Prs3d_ArrowAspect(@)", header: "Prs3d_ArrowAspect.hxx".}
proc SetAngle*(this: var Prs3d_ArrowAspect; anAngle: Standard_Real) {.
    importcpp: "SetAngle", header: "Prs3d_ArrowAspect.hxx".}
proc Angle*(this: Prs3d_ArrowAspect): Standard_Real {.noSideEffect,
    importcpp: "Angle", header: "Prs3d_ArrowAspect.hxx".}
proc SetLength*(this: var Prs3d_ArrowAspect; theLength: Standard_Real) {.
    importcpp: "SetLength", header: "Prs3d_ArrowAspect.hxx".}
proc Length*(this: Prs3d_ArrowAspect): Standard_Real {.noSideEffect,
    importcpp: "Length", header: "Prs3d_ArrowAspect.hxx".}
proc SetColor*(this: var Prs3d_ArrowAspect; theColor: Quantity_Color) {.
    importcpp: "SetColor", header: "Prs3d_ArrowAspect.hxx".}
proc Aspect*(this: Prs3d_ArrowAspect): handle[Graphic3d_AspectLine3d] {.
    noSideEffect, importcpp: "Aspect", header: "Prs3d_ArrowAspect.hxx".}
proc SetAspect*(this: var Prs3d_ArrowAspect;
               theAspect: handle[Graphic3d_AspectLine3d]) {.
    importcpp: "SetAspect", header: "Prs3d_ArrowAspect.hxx".}
proc DumpJson*(this: Prs3d_ArrowAspect; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Prs3d_ArrowAspect.hxx".}
discard "forward decl of Prs3d_ArrowAspect"
type
  Handle_Prs3d_ArrowAspect* = handle[Prs3d_ArrowAspect]
