##  Created on: 1998-01-26
##  Created by: Sergey ZARITCHNY
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

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Elips"
discard "forward decl of Geom_OffsetCurve"
type
  DsgPrsEllipseRadiusPresentation* {.importcpp: "DsgPrs_EllipseRadiusPresentation", header: "DsgPrs_EllipseRadiusPresentation.hxx",
                                    bycopy.} = object ## ! draws a  Radius  (Major  or  Minor)
                                                   ## ! representation for whole ellipse  case


proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         theval: cfloat; aText: TCollectionExtendedString; attachmentPoint: Pnt;
         anEndOfArrow: Pnt; aCenter: Pnt; isMaxRadius: bool;
         arrowSide: DsgPrsArrowSide) {.importcpp: "DsgPrs_EllipseRadiusPresentation::Add(@)", header: "DsgPrs_EllipseRadiusPresentation.hxx".}
proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         theval: cfloat; aText: TCollectionExtendedString; anEllipse: Elips;
         attachmentPoint: Pnt; anEndOfArrow: Pnt; aCenter: Pnt; uFirst: cfloat;
         isInDomain: bool; isMaxRadius: bool; arrowSide: DsgPrsArrowSide) {.
    importcpp: "DsgPrs_EllipseRadiusPresentation::Add(@)",
    header: "DsgPrs_EllipseRadiusPresentation.hxx".}
proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         theval: cfloat; aText: TCollectionExtendedString;
         aCurve: Handle[GeomOffsetCurve]; attachmentPoint: Pnt; anEndOfArrow: Pnt;
         aCenter: Pnt; uFirst: cfloat; isInDomain: bool; isMaxRadius: bool;
         arrowSide: DsgPrsArrowSide) {.importcpp: "DsgPrs_EllipseRadiusPresentation::Add(@)", header: "DsgPrs_EllipseRadiusPresentation.hxx".}

























