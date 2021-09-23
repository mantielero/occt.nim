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

import
  ../Bnd/Bnd_OBB, ../Graphic3d/Graphic3d_ArrayOfSegments,
  ../Graphic3d/Graphic3d_ArrayOfTriangles, Prs3d_Drawer, Prs3d_Presentation,
  Prs3d_Root

## ! Tool for computing bounding box presentation.

type
  Prs3d_BndBox* {.importcpp: "Prs3d_BndBox", header: "Prs3d_BndBox.hxx", bycopy.} = object of Prs3d_Root ##
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


proc Add*(thePresentation: handle[Prs3d_Presentation]; theBndBox: Bnd_Box;
         theDrawer: handle[Prs3d_Drawer]) {.importcpp: "Prs3d_BndBox::Add(@)",
    header: "Prs3d_BndBox.hxx".}
proc Add*(thePresentation: handle[Prs3d_Presentation]; theBndBox: Bnd_OBB;
         theDrawer: handle[Prs3d_Drawer]) {.importcpp: "Prs3d_BndBox::Add(@)",
    header: "Prs3d_BndBox.hxx".}
proc FillSegments*(theBox: Bnd_OBB): handle[Graphic3d_ArrayOfSegments] {.
    importcpp: "Prs3d_BndBox::FillSegments(@)", header: "Prs3d_BndBox.hxx".}
proc FillSegments*(theBox: Bnd_Box): handle[Graphic3d_ArrayOfSegments] {.
    importcpp: "Prs3d_BndBox::FillSegments(@)", header: "Prs3d_BndBox.hxx".}
proc FillSegments*(theSegments: handle[Graphic3d_ArrayOfSegments]; theBox: Bnd_OBB) {.
    importcpp: "Prs3d_BndBox::FillSegments(@)", header: "Prs3d_BndBox.hxx".}
proc FillSegments*(theSegments: handle[Graphic3d_ArrayOfSegments]; theBox: Bnd_Box) {.
    importcpp: "Prs3d_BndBox::FillSegments(@)", header: "Prs3d_BndBox.hxx".}
proc fillSegments*(theSegments: handle[Graphic3d_ArrayOfSegments];
                  theBox: ptr gp_Pnt) {.importcpp: "Prs3d_BndBox::fillSegments(@)",
                                     header: "Prs3d_BndBox.hxx".}