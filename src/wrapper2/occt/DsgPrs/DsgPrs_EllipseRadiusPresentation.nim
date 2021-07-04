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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Prs3d/Prs3d_Drawer, DsgPrs_ArrowSide,
  ../Prs3d/Prs3d_Presentation

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Elips"
discard "forward decl of Geom_OffsetCurve"
type
  DsgPrs_EllipseRadiusPresentation* {.importcpp: "DsgPrs_EllipseRadiusPresentation", header: "DsgPrs_EllipseRadiusPresentation.hxx",
                                     bycopy.} = object ## ! draws a  Radius  (Major  or  Minor)
                                                    ## ! representation for whole ellipse  case


proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         theval: Standard_Real; aText: TCollection_ExtendedString;
         AttachmentPoint: gp_Pnt; anEndOfArrow: gp_Pnt; aCenter: gp_Pnt;
         IsMaxRadius: Standard_Boolean; ArrowSide: DsgPrs_ArrowSide) {.
    importcpp: "DsgPrs_EllipseRadiusPresentation::Add(@)",
    header: "DsgPrs_EllipseRadiusPresentation.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         theval: Standard_Real; aText: TCollection_ExtendedString;
         anEllipse: gp_Elips; AttachmentPoint: gp_Pnt; anEndOfArrow: gp_Pnt;
         aCenter: gp_Pnt; uFirst: Standard_Real; IsInDomain: Standard_Boolean;
         IsMaxRadius: Standard_Boolean; ArrowSide: DsgPrs_ArrowSide) {.
    importcpp: "DsgPrs_EllipseRadiusPresentation::Add(@)",
    header: "DsgPrs_EllipseRadiusPresentation.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         theval: Standard_Real; aText: TCollection_ExtendedString;
         aCurve: handle[Geom_OffsetCurve]; AttachmentPoint: gp_Pnt;
         anEndOfArrow: gp_Pnt; aCenter: gp_Pnt; uFirst: Standard_Real;
         IsInDomain: Standard_Boolean; IsMaxRadius: Standard_Boolean;
         ArrowSide: DsgPrs_ArrowSide) {.importcpp: "DsgPrs_EllipseRadiusPresentation::Add(@)", header: "DsgPrs_EllipseRadiusPresentation.hxx".}