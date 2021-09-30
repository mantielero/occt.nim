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

discard "forward decl of gp_Pnt"
discard "forward decl of Geom_Plane"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Circ"
type
  DsgPrsEqualDistancePresentation* {.importcpp: "DsgPrs_EqualDistancePresentation", header: "DsgPrs_EqualDistancePresentation.hxx",
                                    bycopy.} = object ## ! Adds the points Point1, Point2, Point3 Point4, and the
                                                   ## ! plane Plane to the presentation object aPresentation.
                                                   ## ! The display attributes of these elements is defined by the attribute manager aDrawer.
                                                   ## ! The distance is the length of a projection from the shape to the plane.
                                                   ## ! These distances are used to compare two shapes by this vector alone.


proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         point1: Pnt; point2: Pnt; point3: Pnt; point4: Pnt; plane: Handle[GeomPlane]) {.
    importcpp: "DsgPrs_EqualDistancePresentation::Add(@)",
    header: "DsgPrs_EqualDistancePresentation.hxx".}
proc addInterval*(aPresentation: Handle[Prs3dPresentation];
                 aDrawer: Handle[Prs3dDrawer]; aPoint1: Pnt; aPoint2: Pnt; aDir: Dir;
                 aPosition: Pnt; anArrowSide: DsgPrsArrowSide;
                 anExtremePnt1: var Pnt; anExtremePnt2: var Pnt) {.
    importcpp: "DsgPrs_EqualDistancePresentation::AddInterval(@)",
    header: "DsgPrs_EqualDistancePresentation.hxx".}
proc addIntervalBetweenTwoArcs*(aPresentation: Handle[Prs3dPresentation];
                               aDrawer: Handle[Prs3dDrawer]; aCircle1: Circ;
                               aCircle2: Circ; aPoint1: Pnt; aPoint2: Pnt;
                               aPoint3: Pnt; aPoint4: Pnt;
                               anArrowSide: DsgPrsArrowSide) {.importcpp: "DsgPrs_EqualDistancePresentation::AddIntervalBetweenTwoArcs(@)",
    header: "DsgPrs_EqualDistancePresentation.hxx".}

























