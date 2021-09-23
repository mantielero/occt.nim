##  Created on: 1998-01-27
##  Created by: Julia GERASIMOVA
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Prs3d/Prs3d_Drawer, DsgPrs_ArrowSide,
  ../Prs3d/Prs3d_Presentation

discard "forward decl of gp_Pnt"
discard "forward decl of Geom_Plane"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Circ"
type
  DsgPrs_EqualDistancePresentation* {.importcpp: "DsgPrs_EqualDistancePresentation", header: "DsgPrs_EqualDistancePresentation.hxx",
                                     bycopy.} = object ## ! Adds the points Point1, Point2, Point3 Point4, and the
                                                    ## ! plane Plane to the presentation object aPresentation.
                                                    ## ! The display attributes of these elements is defined by the attribute manager aDrawer.
                                                    ## ! The distance is the length of a projection from the shape to the plane.
                                                    ## ! These distances are used to compare two shapes by this vector alone.


proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         Point1: gp_Pnt; Point2: gp_Pnt; Point3: gp_Pnt; Point4: gp_Pnt;
         Plane: handle[Geom_Plane]) {.importcpp: "DsgPrs_EqualDistancePresentation::Add(@)", header: "DsgPrs_EqualDistancePresentation.hxx".}
proc AddInterval*(aPresentation: handle[Prs3d_Presentation];
                 aDrawer: handle[Prs3d_Drawer]; aPoint1: gp_Pnt; aPoint2: gp_Pnt;
                 aDir: gp_Dir; aPosition: gp_Pnt; anArrowSide: DsgPrs_ArrowSide;
                 anExtremePnt1: var gp_Pnt; anExtremePnt2: var gp_Pnt) {.
    importcpp: "DsgPrs_EqualDistancePresentation::AddInterval(@)",
    header: "DsgPrs_EqualDistancePresentation.hxx".}
proc AddIntervalBetweenTwoArcs*(aPresentation: handle[Prs3d_Presentation];
                               aDrawer: handle[Prs3d_Drawer]; aCircle1: gp_Circ;
                               aCircle2: gp_Circ; aPoint1: gp_Pnt; aPoint2: gp_Pnt;
                               aPoint3: gp_Pnt; aPoint4: gp_Pnt;
                               anArrowSide: DsgPrs_ArrowSide) {.importcpp: "DsgPrs_EqualDistancePresentation::AddIntervalBetweenTwoArcs(@)",
    header: "DsgPrs_EqualDistancePresentation.hxx".}