##  Created on: 2014-03-12
##  Created by: Kirill GAVRILOV
##  Copyright (c) 2014 OPEN CASCADE SAS
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
  Prs3d_Presentation

## ! Defines a "shadow" of existing presentation object with custom aspects.

type
  Prs3d_PresentationShadow* {.importcpp: "Prs3d_PresentationShadow",
                             header: "Prs3d_PresentationShadow.hxx", bycopy.} = object of Graphic3d_Structure ##
                                                                                                       ## !
                                                                                                       ## Constructs
                                                                                                       ## a
                                                                                                       ## shadow
                                                                                                       ## of
                                                                                                       ## existing
                                                                                                       ## presentation
                                                                                                       ## object.

  Prs3d_PresentationShadowbase_type* = Graphic3d_Structure

proc get_type_name*(): cstring {.importcpp: "Prs3d_PresentationShadow::get_type_name(@)",
                              header: "Prs3d_PresentationShadow.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Prs3d_PresentationShadow::get_type_descriptor(@)",
    header: "Prs3d_PresentationShadow.hxx".}
proc DynamicType*(this: Prs3d_PresentationShadow): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Prs3d_PresentationShadow.hxx".}
proc constructPrs3d_PresentationShadow*(theViewer: handle[
    Graphic3d_StructureManager]; thePrs: handle[Graphic3d_Structure]): Prs3d_PresentationShadow {.
    constructor, importcpp: "Prs3d_PresentationShadow(@)",
    header: "Prs3d_PresentationShadow.hxx".}
proc ParentId*(this: Prs3d_PresentationShadow): Standard_Integer {.noSideEffect,
    importcpp: "ParentId", header: "Prs3d_PresentationShadow.hxx".}
proc ParentAffinity*(this: Prs3d_PresentationShadow): handle[Graphic3d_ViewAffinity] {.
    noSideEffect, importcpp: "ParentAffinity",
    header: "Prs3d_PresentationShadow.hxx".}
proc CalculateBoundBox*(this: var Prs3d_PresentationShadow) {.
    importcpp: "CalculateBoundBox", header: "Prs3d_PresentationShadow.hxx".}
proc DumpJson*(this: Prs3d_PresentationShadow; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Prs3d_PresentationShadow.hxx".}
discard "forward decl of Prs3d_PresentationShadow"
type
  Handle_Prs3d_PresentationShadow* = handle[Prs3d_PresentationShadow]
