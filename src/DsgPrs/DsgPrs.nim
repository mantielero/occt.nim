##  Created on: 1994-10-03
##  Created by: Arnaud BOUZY
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Geom_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of Prs3d_DimensionAspect"
type
  DsgPrs* {.importcpp: "DsgPrs", header: "DsgPrs.hxx", bycopy.} = object ## ! draws symbols ((one or two) arrows,(one or two)points
                                                                 ## ! at thebeginning and at the end of the dimension


proc computeSymbol*(aPresentation: Handle[Prs3dPresentation];
                   anAspect: Handle[Prs3dDimensionAspect]; pt1: Pnt; pt2: Pnt;
                   dir1: Dir; dir2: Dir; arrowSide: DsgPrsArrowSide;
                   drawFromCenter: bool = true) {.
    importcpp: "DsgPrs::ComputeSymbol(@)", header: "DsgPrs.hxx".}
proc computePlanarFacesLengthPresentation*(firstArrowLength: cfloat;
    secondArrowLength: cfloat; attachmentPoint1: Pnt; attachmentPoint2: Pnt;
    dirAttach: Dir; offsetPoint: Pnt; planeOfFaces: Pln; endOfArrow1: var Pnt;
    endOfArrow2: var Pnt; dirOfArrow1: var Dir) {.
    importcpp: "DsgPrs::ComputePlanarFacesLengthPresentation(@)",
    header: "DsgPrs.hxx".}
proc computeCurvilinearFacesLengthPresentation*(firstArrowLength: cfloat;
    secondArrowLength: cfloat; secondSurf: Handle[GeomSurface];
    attachmentPoint1: Pnt; attachmentPoint2: Pnt; dirAttach: Dir;
    endOfArrow2: var Pnt; dirOfArrow1: var Dir; vCurve: var Handle[GeomCurve];
    uCurve: var Handle[GeomCurve]; firstU: var cfloat; deltaU: var cfloat;
    firstV: var cfloat; deltaV: var cfloat) {.importcpp: "DsgPrs::ComputeCurvilinearFacesLengthPresentation(@)",
                                        header: "DsgPrs.hxx".}
proc computeFacesAnglePresentation*(arrowLength: cfloat; value: cfloat;
                                   centerPoint: Pnt; attachmentPoint1: Pnt;
                                   attachmentPoint2: Pnt; dir1: Dir; dir2: Dir;
                                   axisdir: Dir; isPlane: bool; axisOfSurf: Ax1;
                                   offsetPoint: Pnt; angleCirc: var Circ;
                                   firstParAngleCirc: var cfloat;
                                   lastParAngleCirc: var cfloat;
                                   endOfArrow1: var Pnt; endOfArrow2: var Pnt;
                                   dirOfArrow1: var Dir; dirOfArrow2: var Dir;
                                   projAttachPoint2: var Pnt; attachCirc: var Circ;
                                   firstParAttachCirc: var cfloat;
                                   lastParAttachCirc: var cfloat) {.
    importcpp: "DsgPrs::ComputeFacesAnglePresentation(@)", header: "DsgPrs.hxx".}
proc computeRadiusLine*(aCenter: Pnt; anEndOfArrow: Pnt; aPosition: Pnt;
                       drawFromCenter: bool; aRadLineOrign: var Pnt;
                       aRadLineEnd: var Pnt) {.
    importcpp: "DsgPrs::ComputeRadiusLine(@)", header: "DsgPrs.hxx".}
proc computeFilletRadiusPresentation*(arrowLength: cfloat; value: cfloat;
                                     position: Pnt; normalDir: Dir; firstPoint: Pnt;
                                     secondPoint: Pnt; center: Pnt; basePnt: Pnt;
                                     drawRevers: bool; specCase: var bool;
                                     filletCirc: var Circ;
                                     firstParCirc: var cfloat;
                                     lastParCirc: var cfloat; endOfArrow: var Pnt;
                                     dirOfArrow: var Dir; drawPosition: var Pnt) {.
    importcpp: "DsgPrs::ComputeFilletRadiusPresentation(@)", header: "DsgPrs.hxx".}
proc distanceFromApex*(elips: Elips; apex: Pnt; par: cfloat): cfloat {.
    importcpp: "DsgPrs::DistanceFromApex(@)", header: "DsgPrs.hxx".}

























