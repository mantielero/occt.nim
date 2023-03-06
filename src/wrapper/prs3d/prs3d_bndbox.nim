import prs3d_types
import ../gp/gp_types
import ../standard/standard_types
import ../graphic3d/graphic3d_types
import ../bnd/bnd_types





##  Created on: 2014-10-14
##  Created by: Anton POLETAEV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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

## ! Tool for computing bounding box presentation.



proc add*(thePresentation: Handle[Prs3dPresentation]; theBndBox: BndBox;
         theDrawer: Handle[Prs3dDrawer]) {.cdecl,
    importcpp: "Prs3d_BndBox::Add(@)", header: "Prs3d_BndBox.hxx".}
proc add*(thePresentation: Handle[Prs3dPresentation]; theBndBox: BndOBB;
         theDrawer: Handle[Prs3dDrawer]) {.cdecl,
    importcpp: "Prs3d_BndBox::Add(@)", header: "Prs3d_BndBox.hxx".}
proc fillSegments*(theBox: BndOBB): Handle[Graphic3dArrayOfSegments] {.cdecl,
    importcpp: "Prs3d_BndBox::FillSegments(@)", header: "Prs3d_BndBox.hxx".}
proc fillSegments*(theBox: BndBox): Handle[Graphic3dArrayOfSegments] {.cdecl,
    importcpp: "Prs3d_BndBox::FillSegments(@)", header: "Prs3d_BndBox.hxx".}
proc fillSegments*(theSegments: Handle[Graphic3dArrayOfSegments]; theBox: BndOBB) {.
    cdecl, importcpp: "Prs3d_BndBox::FillSegments(@)", header: "Prs3d_BndBox.hxx".}
proc fillSegments*(theSegments: Handle[Graphic3dArrayOfSegments]; theBox: BndBox) {.
    cdecl, importcpp: "Prs3d_BndBox::FillSegments(@)", header: "Prs3d_BndBox.hxx".}
proc fillSegments*(theSegments: Handle[Graphic3dArrayOfSegments]; theBox: ptr PntObj) {.
    cdecl, importcpp: "Prs3d_BndBox::fillSegments(@)", header: "Prs3d_BndBox.hxx".}


