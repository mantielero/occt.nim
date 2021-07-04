##  Created on: 1995-02-07
##  Created by: Arnaud BOUZY
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Prs3d/Prs3d_Drawer, ../Standard/Standard_Real,
  DsgPrs_ArrowSide, ../Standard/Standard_Boolean, ../Prs3d/Prs3d_Presentation

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax1"
type
  DsgPrs_AnglePresentation* {.importcpp: "DsgPrs_AnglePresentation",
                             header: "DsgPrs_AnglePresentation.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Draws
                                                                                  ## the
                                                                                  ## presenation
                                                                                  ## of
                                                                                  ## the
                                                                                  ## full
                                                                                  ## angle
                                                                                  ## of
                                                                                  ## a
                                                                                  ## cone.
                                                                                  ##
                                                                                  ## !
                                                                                  ## VminCircle
                                                                                  ## -
                                                                                  ## a
                                                                                  ## circle
                                                                                  ## at
                                                                                  ## V
                                                                                  ## parameter
                                                                                  ## =
                                                                                  ## Vmin
                                                                                  ##
                                                                                  ## !
                                                                                  ## VmaxCircle
                                                                                  ## -
                                                                                  ## a
                                                                                  ## circle
                                                                                  ## at
                                                                                  ## V
                                                                                  ## parameter
                                                                                  ## =
                                                                                  ## Vmax
                                                                                  ##
                                                                                  ## !
                                                                                  ## aCircle
                                                                                  ## -
                                                                                  ## a
                                                                                  ## circle
                                                                                  ## at
                                                                                  ## V
                                                                                  ## parameter
                                                                                  ## from
                                                                                  ## projection
                                                                                  ## of
                                                                                  ## aPosition
                                                                                  ## to
                                                                                  ## axis
                                                                                  ## of
                                                                                  ## the
                                                                                  ## cone


proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         aVal: Standard_Real; aText: TCollection_ExtendedString; aCircle: gp_Circ;
         aPosition: gp_Pnt; Apex: gp_Pnt; VminCircle: gp_Circ; VmaxCircle: gp_Circ;
         aArrowSize: Standard_Real) {.importcpp: "DsgPrs_AnglePresentation::Add(@)",
                                    header: "DsgPrs_AnglePresentation.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         theval: Standard_Real; CenterPoint: gp_Pnt; AttachmentPoint1: gp_Pnt;
         AttachmentPoint2: gp_Pnt; dir1: gp_Dir; dir2: gp_Dir; OffsetPoint: gp_Pnt) {.
    importcpp: "DsgPrs_AnglePresentation::Add(@)",
    header: "DsgPrs_AnglePresentation.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         theval: Standard_Real; thevalstring: TCollection_ExtendedString;
         CenterPoint: gp_Pnt; AttachmentPoint1: gp_Pnt; AttachmentPoint2: gp_Pnt;
         dir1: gp_Dir; dir2: gp_Dir; OffsetPoint: gp_Pnt) {.
    importcpp: "DsgPrs_AnglePresentation::Add(@)",
    header: "DsgPrs_AnglePresentation.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         theval: Standard_Real; thevalstring: TCollection_ExtendedString;
         CenterPoint: gp_Pnt; AttachmentPoint1: gp_Pnt; AttachmentPoint2: gp_Pnt;
         dir1: gp_Dir; dir2: gp_Dir; OffsetPoint: gp_Pnt; ArrowSide: DsgPrs_ArrowSide) {.
    importcpp: "DsgPrs_AnglePresentation::Add(@)",
    header: "DsgPrs_AnglePresentation.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         theval: Standard_Real; thevalstring: TCollection_ExtendedString;
         CenterPoint: gp_Pnt; AttachmentPoint1: gp_Pnt; AttachmentPoint2: gp_Pnt;
         dir1: gp_Dir; dir2: gp_Dir; axisdir: gp_Dir; OffsetPoint: gp_Pnt) {.
    importcpp: "DsgPrs_AnglePresentation::Add(@)",
    header: "DsgPrs_AnglePresentation.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         theval: Standard_Real; thevalstring: TCollection_ExtendedString;
         CenterPoint: gp_Pnt; AttachmentPoint1: gp_Pnt; AttachmentPoint2: gp_Pnt;
         dir1: gp_Dir; dir2: gp_Dir; axisdir: gp_Dir; isPlane: Standard_Boolean;
         AxisOfSurf: gp_Ax1; OffsetPoint: gp_Pnt; ArrowSide: DsgPrs_ArrowSide) {.
    importcpp: "DsgPrs_AnglePresentation::Add(@)",
    header: "DsgPrs_AnglePresentation.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         theval: Standard_Real; theCenter: gp_Pnt; AttachmentPoint1: gp_Pnt;
         theAxe: gp_Ax1; ArrowSide: DsgPrs_ArrowSide) {.
    importcpp: "DsgPrs_AnglePresentation::Add(@)",
    header: "DsgPrs_AnglePresentation.hxx".}