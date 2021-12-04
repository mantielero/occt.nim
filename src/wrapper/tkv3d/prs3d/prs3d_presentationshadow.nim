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


proc newPrs3dPresentationShadow*(theViewer: Handle[Graphic3dStructureManager];
                                thePrs: Handle[Graphic3dStructure]): Prs3dPresentationShadow {.
    cdecl, constructor, importcpp: "Prs3d_PresentationShadow(@)", header: "Prs3d_PresentationShadow.hxx".}
proc parentId*(this: Prs3dPresentationShadow): cint {.noSideEffect, cdecl,
    importcpp: "ParentId", header: "Prs3d_PresentationShadow.hxx".}
proc parentAffinity*(this: Prs3dPresentationShadow): Handle[Graphic3dViewAffinity] {.
    noSideEffect, cdecl, importcpp: "ParentAffinity", header: "Prs3d_PresentationShadow.hxx".}
proc calculateBoundBox*(this: var Prs3dPresentationShadow) {.cdecl,
    importcpp: "CalculateBoundBox", header: "Prs3d_PresentationShadow.hxx".}
proc dumpJson*(this: Prs3dPresentationShadow; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Prs3d_PresentationShadow.hxx".}
type
  HandlePrs3dPresentationShadow* = Handle[Prs3dPresentationShadow]
