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

## ! Defines a "shadow" of existing presentation object with custom aspects.

type
  Prs3dPresentationShadow* {.importcpp: "Prs3d_PresentationShadow",
                            header: "Prs3d_PresentationShadow.hxx", bycopy.} = object of Graphic3dStructure ##
                                                                                                     ## !
                                                                                                     ## Constructs
                                                                                                     ## a
                                                                                                     ## shadow
                                                                                                     ## of
                                                                                                     ## existing
                                                                                                     ## presentation
                                                                                                     ## object.

  Prs3dPresentationShadowbaseType* = Graphic3dStructure

proc getTypeName*(): cstring {.importcpp: "Prs3d_PresentationShadow::get_type_name(@)",
                            header: "Prs3d_PresentationShadow.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Prs3d_PresentationShadow::get_type_descriptor(@)",
    header: "Prs3d_PresentationShadow.hxx".}
proc dynamicType*(this: Prs3dPresentationShadow): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Prs3d_PresentationShadow.hxx".}
proc constructPrs3dPresentationShadow*(theViewer: Handle[Graphic3dStructureManager];
                                      thePrs: Handle[Graphic3dStructure]): Prs3dPresentationShadow {.
    constructor, importcpp: "Prs3d_PresentationShadow(@)",
    header: "Prs3d_PresentationShadow.hxx".}
proc parentId*(this: Prs3dPresentationShadow): int {.noSideEffect,
    importcpp: "ParentId", header: "Prs3d_PresentationShadow.hxx".}
proc parentAffinity*(this: Prs3dPresentationShadow): Handle[Graphic3dViewAffinity] {.
    noSideEffect, importcpp: "ParentAffinity",
    header: "Prs3d_PresentationShadow.hxx".}
proc calculateBoundBox*(this: var Prs3dPresentationShadow) {.
    importcpp: "CalculateBoundBox", header: "Prs3d_PresentationShadow.hxx".}
proc dumpJson*(this: Prs3dPresentationShadow; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Prs3d_PresentationShadow.hxx".}
discard "forward decl of Prs3d_PresentationShadow"
type
  HandlePrs3dPresentationShadow* = Handle[Prs3dPresentationShadow]

