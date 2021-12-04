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

type
  Prs3dBndBox* {.importcpp: "Prs3d_BndBox", header: "Prs3d_BndBox.hxx", bycopy.} = object of Prs3dRoot ##
                                                                                             ## !
                                                                                             ## Computes
                                                                                             ## presentation
                                                                                             ## of
                                                                                             ## a
                                                                                             ## bounding
                                                                                             ## box.
                                                                                             ##
                                                                                             ## !
                                                                                             ## @param
                                                                                             ## thePresentation
                                                                                             ## [in]
                                                                                             ## the
                                                                                             ## presentation.
                                                                                             ##
                                                                                             ## !
                                                                                             ## @param
                                                                                             ## theBndBox
                                                                                             ## [in]
                                                                                             ## the
                                                                                             ## bounding
                                                                                             ## box.
                                                                                             ##
                                                                                             ## !
                                                                                             ## @param
                                                                                             ## theDrawer
                                                                                             ## [in]
                                                                                             ## the
                                                                                             ## drawer.
                                                                                             ##
                                                                                             ## !
                                                                                             ## Create
                                                                                             ## primitive
                                                                                             ## array
                                                                                             ## with
                                                                                             ## line
                                                                                             ## segments
                                                                                             ## for
                                                                                             ## displaying
                                                                                             ## a
                                                                                             ## box.
                                                                                             ##
                                                                                             ## !
                                                                                             ## @param
                                                                                             ## theBox
                                                                                             ## [in]
                                                                                             ## the
                                                                                             ## box
                                                                                             ## to
                                                                                             ## add
                                                                                             ##
                                                                                             ## !
                                                                                             ## Create
                                                                                             ## primitive
                                                                                             ## array
                                                                                             ## with
                                                                                             ## line
                                                                                             ## segments
                                                                                             ## for
                                                                                             ## displaying
                                                                                             ## a
                                                                                             ## box.
                                                                                             ##
                                                                                             ## !
                                                                                             ## @param
                                                                                             ## theSegments
                                                                                             ## [in]
                                                                                             ## [out]
                                                                                             ## primitive
                                                                                             ## array
                                                                                             ## to
                                                                                             ## be
                                                                                             ## filled;
                                                                                             ##
                                                                                             ## !
                                                                                             ## should
                                                                                             ## be
                                                                                             ## at
                                                                                             ## least
                                                                                             ## 8
                                                                                             ## nodes
                                                                                             ## and
                                                                                             ## 24
                                                                                             ## edges
                                                                                             ## in
                                                                                             ## size
                                                                                             ##
                                                                                             ## !
                                                                                             ## @param
                                                                                             ## theBox
                                                                                             ## [in]
                                                                                             ## the
                                                                                             ## box
                                                                                             ## to
                                                                                             ## add


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
proc fillSegments*(theSegments: Handle[Graphic3dArrayOfSegments]; theBox: ptr Pnt) {.
    cdecl, importcpp: "Prs3d_BndBox::fillSegments(@)", header: "Prs3d_BndBox.hxx".}