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
                   anAspect: Handle[Prs3dDimensionAspect]; pt1: GpPnt; pt2: GpPnt;
                   dir1: GpDir; dir2: GpDir; arrowSide: DsgPrsArrowSide;
                   drawFromCenter: StandardBoolean = standardTrue) {.
    importcpp: "DsgPrs::ComputeSymbol(@)", header: "DsgPrs.hxx".}
proc computePlanarFacesLengthPresentation*(firstArrowLength: StandardReal;
    secondArrowLength: StandardReal; attachmentPoint1: GpPnt;
    attachmentPoint2: GpPnt; dirAttach: GpDir; offsetPoint: GpPnt;
    planeOfFaces: GpPln; endOfArrow1: var GpPnt; endOfArrow2: var GpPnt;
    dirOfArrow1: var GpDir) {.importcpp: "DsgPrs::ComputePlanarFacesLengthPresentation(@)",
                           header: "DsgPrs.hxx".}
proc computeCurvilinearFacesLengthPresentation*(firstArrowLength: StandardReal;
    secondArrowLength: StandardReal; secondSurf: Handle[GeomSurface];
    attachmentPoint1: GpPnt; attachmentPoint2: GpPnt; dirAttach: GpDir;
    endOfArrow2: var GpPnt; dirOfArrow1: var GpDir; vCurve: var Handle[GeomCurve];
    uCurve: var Handle[GeomCurve]; firstU: var StandardReal; deltaU: var StandardReal;
    firstV: var StandardReal; deltaV: var StandardReal) {.
    importcpp: "DsgPrs::ComputeCurvilinearFacesLengthPresentation(@)",
    header: "DsgPrs.hxx".}
proc computeFacesAnglePresentation*(arrowLength: StandardReal; value: StandardReal;
                                   centerPoint: GpPnt; attachmentPoint1: GpPnt;
                                   attachmentPoint2: GpPnt; dir1: GpDir;
                                   dir2: GpDir; axisdir: GpDir;
                                   isPlane: StandardBoolean; axisOfSurf: GpAx1;
                                   offsetPoint: GpPnt; angleCirc: var GpCirc;
                                   firstParAngleCirc: var StandardReal;
                                   lastParAngleCirc: var StandardReal;
                                   endOfArrow1: var GpPnt; endOfArrow2: var GpPnt;
                                   dirOfArrow1: var GpDir; dirOfArrow2: var GpDir;
                                   projAttachPoint2: var GpPnt;
                                   attachCirc: var GpCirc;
                                   firstParAttachCirc: var StandardReal;
                                   lastParAttachCirc: var StandardReal) {.
    importcpp: "DsgPrs::ComputeFacesAnglePresentation(@)", header: "DsgPrs.hxx".}
proc computeRadiusLine*(aCenter: GpPnt; anEndOfArrow: GpPnt; aPosition: GpPnt;
                       drawFromCenter: StandardBoolean; aRadLineOrign: var GpPnt;
                       aRadLineEnd: var GpPnt) {.
    importcpp: "DsgPrs::ComputeRadiusLine(@)", header: "DsgPrs.hxx".}
proc computeFilletRadiusPresentation*(arrowLength: StandardReal;
                                     value: StandardReal; position: GpPnt;
                                     normalDir: GpDir; firstPoint: GpPnt;
                                     secondPoint: GpPnt; center: GpPnt;
                                     basePnt: GpPnt; drawRevers: StandardBoolean;
                                     specCase: var StandardBoolean;
                                     filletCirc: var GpCirc;
                                     firstParCirc: var StandardReal;
                                     lastParCirc: var StandardReal;
                                     endOfArrow: var GpPnt; dirOfArrow: var GpDir;
                                     drawPosition: var GpPnt) {.
    importcpp: "DsgPrs::ComputeFilletRadiusPresentation(@)", header: "DsgPrs.hxx".}
proc distanceFromApex*(elips: GpElips; apex: GpPnt; par: StandardReal): StandardReal {.
    importcpp: "DsgPrs::DistanceFromApex(@)", header: "DsgPrs.hxx".}

