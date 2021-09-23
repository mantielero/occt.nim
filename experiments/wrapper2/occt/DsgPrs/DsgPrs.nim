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

import
  DsgPrs_ArrowSide, ../gp/gp_Dir, ../gp/gp_Pnt, ../Prs3d/Prs3d_Presentation

discard "forward decl of Geom_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of Prs3d_DimensionAspect"
type
  DsgPrs* {.importcpp: "DsgPrs", header: "DsgPrs.hxx", bycopy.} = object ## ! draws symbols ((one or two) arrows,(one or two)points
                                                                 ## ! at thebeginning and at the end of the dimension


proc ComputeSymbol*(aPresentation: handle[Prs3d_Presentation];
                   anAspect: handle[Prs3d_DimensionAspect]; pt1: gp_Pnt;
                   pt2: gp_Pnt; dir1: gp_Dir; dir2: gp_Dir;
                   ArrowSide: DsgPrs_ArrowSide;
                   drawFromCenter: Standard_Boolean = Standard_True) {.
    importcpp: "DsgPrs::ComputeSymbol(@)", header: "DsgPrs.hxx".}
proc ComputePlanarFacesLengthPresentation*(FirstArrowLength: Standard_Real;
    SecondArrowLength: Standard_Real; AttachmentPoint1: gp_Pnt;
    AttachmentPoint2: gp_Pnt; DirAttach: gp_Dir; OffsetPoint: gp_Pnt;
    PlaneOfFaces: gp_Pln; EndOfArrow1: var gp_Pnt; EndOfArrow2: var gp_Pnt;
    DirOfArrow1: var gp_Dir) {.importcpp: "DsgPrs::ComputePlanarFacesLengthPresentation(@)",
                            header: "DsgPrs.hxx".}
proc ComputeCurvilinearFacesLengthPresentation*(FirstArrowLength: Standard_Real;
    SecondArrowLength: Standard_Real; SecondSurf: handle[Geom_Surface];
    AttachmentPoint1: gp_Pnt; AttachmentPoint2: gp_Pnt; DirAttach: gp_Dir;
    EndOfArrow2: var gp_Pnt; DirOfArrow1: var gp_Dir; VCurve: var handle[Geom_Curve];
    UCurve: var handle[Geom_Curve]; FirstU: var Standard_Real;
    deltaU: var Standard_Real; FirstV: var Standard_Real; deltaV: var Standard_Real) {.
    importcpp: "DsgPrs::ComputeCurvilinearFacesLengthPresentation(@)",
    header: "DsgPrs.hxx".}
proc ComputeFacesAnglePresentation*(ArrowLength: Standard_Real;
                                   Value: Standard_Real; CenterPoint: gp_Pnt;
                                   AttachmentPoint1: gp_Pnt;
                                   AttachmentPoint2: gp_Pnt; dir1: gp_Dir;
                                   dir2: gp_Dir; axisdir: gp_Dir;
                                   isPlane: Standard_Boolean; AxisOfSurf: gp_Ax1;
                                   OffsetPoint: gp_Pnt; AngleCirc: var gp_Circ;
                                   FirstParAngleCirc: var Standard_Real;
                                   LastParAngleCirc: var Standard_Real;
                                   EndOfArrow1: var gp_Pnt;
                                   EndOfArrow2: var gp_Pnt;
                                   DirOfArrow1: var gp_Dir;
                                   DirOfArrow2: var gp_Dir;
                                   ProjAttachPoint2: var gp_Pnt;
                                   AttachCirc: var gp_Circ;
                                   FirstParAttachCirc: var Standard_Real;
                                   LastParAttachCirc: var Standard_Real) {.
    importcpp: "DsgPrs::ComputeFacesAnglePresentation(@)", header: "DsgPrs.hxx".}
proc ComputeRadiusLine*(aCenter: gp_Pnt; anEndOfArrow: gp_Pnt; aPosition: gp_Pnt;
                       drawFromCenter: Standard_Boolean;
                       aRadLineOrign: var gp_Pnt; aRadLineEnd: var gp_Pnt) {.
    importcpp: "DsgPrs::ComputeRadiusLine(@)", header: "DsgPrs.hxx".}
proc ComputeFilletRadiusPresentation*(ArrowLength: Standard_Real;
                                     Value: Standard_Real; Position: gp_Pnt;
                                     NormalDir: gp_Dir; FirstPoint: gp_Pnt;
                                     SecondPoint: gp_Pnt; Center: gp_Pnt;
                                     BasePnt: gp_Pnt;
                                     drawRevers: Standard_Boolean;
                                     SpecCase: var Standard_Boolean;
                                     FilletCirc: var gp_Circ;
                                     FirstParCirc: var Standard_Real;
                                     LastParCirc: var Standard_Real;
                                     EndOfArrow: var gp_Pnt;
                                     DirOfArrow: var gp_Dir;
                                     DrawPosition: var gp_Pnt) {.
    importcpp: "DsgPrs::ComputeFilletRadiusPresentation(@)", header: "DsgPrs.hxx".}
proc DistanceFromApex*(elips: gp_Elips; Apex: gp_Pnt; par: Standard_Real): Standard_Real {.
    importcpp: "DsgPrs::DistanceFromApex(@)", header: "DsgPrs.hxx".}