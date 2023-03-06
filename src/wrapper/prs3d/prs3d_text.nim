import prs3d_types
import ../gp/gp_types
import ../tcollection/tcollection_types
import ../standard/standard_types
import ../graphic3d/graphic3d_types





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



proc draw*(theGroup: Handle[Graphic3dGroup]; theAspect: Handle[Prs3dTextAspect];
          theText: TCollectionExtendedString; theAttachmentPoint: gp_Pnt): Handle[
    Graphic3dText] {.cdecl, importcpp: "Prs3d_Text::Draw(@)", header: "Prs3d_Text.hxx".}
proc draw*(theGroup: Handle[Graphic3dGroup]; theAspect: Handle[Prs3dTextAspect];
          theText: TCollectionExtendedString; theOrientation: gp_Ax2;
          theHasOwnAnchor: bool = true): Handle[Graphic3dText] {.cdecl,
    importcpp: "Prs3d_Text::Draw(@)", header: "Prs3d_Text.hxx".}
proc draw*(thePrs: Handle[Prs3dPresentation]; theDrawer: Handle[Prs3dDrawer];
          theText: TCollectionExtendedString; theAttachmentPoint: gp_Pnt) {.cdecl,
    importcpp: "Prs3d_Text::Draw(@)", header: "Prs3d_Text.hxx".}
proc draw*(thePrs: Handle[Prs3dPresentation]; theAspect: Handle[Prs3dTextAspect];
          theText: TCollectionExtendedString; theOrientation: gp_Ax2;
          theHasOwnAnchor: bool = true) {.cdecl, importcpp: "Prs3d_Text::Draw(@)",
                                      header: "Prs3d_Text.hxx".}
proc draw*(thePrs: Handle[Prs3dPresentation]; theAspect: Handle[Prs3dTextAspect];
          theText: TCollectionExtendedString; theAttachmentPoint: gp_Pnt) {.cdecl,
    importcpp: "Prs3d_Text::Draw(@)", header: "Prs3d_Text.hxx".}


