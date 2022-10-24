import prsmgr_types

##  Created on: 1995-01-25
##  Created by: Jean-Louis Frenkel
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of PrsMgr_PresentationManager"
discard "forward decl of PrsMgr_PresentableObject"
discard "forward decl of Quantity_Color"
discard "forward decl of Graphic3d_Camera"
discard "forward decl of Prs3d_Drawer"
discard "forward decl of Graphic3d_Structure"
discard "forward decl of Graphic3d_DataStructureManager"


proc destroyPrsMgrPresentation*(this: var PrsMgrPresentation) {.cdecl,
    importcpp: "#.~PrsMgr_Presentation()", header: "PrsMgr_Presentation.hxx".}
proc presentation*(this: var PrsMgrPresentation): ptr Prs3dPresentation {.cdecl,
    importcpp: "Presentation", header: "PrsMgr_Presentation.hxx".}
proc presentationManager*(this: PrsMgrPresentation): Handle[
    PrsMgrPresentationManager] {.noSideEffect, cdecl,
                                importcpp: "PresentationManager", header: "PrsMgr_Presentation.hxx".}
proc setUpdateStatus*(this: var PrsMgrPresentation; theUpdateStatus: bool) {.cdecl,
    importcpp: "SetUpdateStatus", header: "PrsMgr_Presentation.hxx".}
proc mustBeUpdated*(this: PrsMgrPresentation): bool {.noSideEffect, cdecl,
    importcpp: "MustBeUpdated", header: "PrsMgr_Presentation.hxx".}
proc mode*(this: PrsMgrPresentation): cint {.noSideEffect, cdecl, importcpp: "Mode",
    header: "PrsMgr_Presentation.hxx".}
proc display*(this: var PrsMgrPresentation) {.cdecl, importcpp: "Display",
    header: "PrsMgr_Presentation.hxx".}
proc erase*(this: var PrsMgrPresentation) {.cdecl, importcpp: "Erase", header: "PrsMgr_Presentation.hxx".}
proc highlight*(this: var PrsMgrPresentation; theStyle: Handle[Prs3dDrawer]) {.cdecl,
    importcpp: "Highlight", header: "PrsMgr_Presentation.hxx".}
proc unhighlight*(this: var PrsMgrPresentation) {.cdecl, importcpp: "Unhighlight",
    header: "PrsMgr_Presentation.hxx".}
proc isDisplayed*(this: PrsMgrPresentation): bool {.noSideEffect, cdecl,
    importcpp: "IsDisplayed", header: "PrsMgr_Presentation.hxx".}
proc clear*(this: var PrsMgrPresentation; theWithDestruction: bool = true) {.cdecl,
    importcpp: "Clear", header: "PrsMgr_Presentation.hxx".}
proc compute*(this: var PrsMgrPresentation) {.cdecl, importcpp: "Compute",
    header: "PrsMgr_Presentation.hxx".}
proc dumpJson*(this: PrsMgrPresentation; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "PrsMgr_Presentation.hxx".}
