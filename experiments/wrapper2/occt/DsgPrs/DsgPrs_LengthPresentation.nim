##  Created on: 1993-06-03
##  Created by: Jean-Louis FRENKEL
##  Copyright (c) 1993-1999 Matra Datavision
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
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pln"
discard "forward decl of Geom_Surface"
type
  DsgPrs_LengthPresentation* {.importcpp: "DsgPrs_LengthPresentation",
                              header: "DsgPrs_LengthPresentation.hxx", bycopy.} = object ##
                                                                                    ## !
                                                                                    ## Draws
                                                                                    ## a
                                                                                    ## line
                                                                                    ## segment
                                                                                    ## representing
                                                                                    ## a
                                                                                    ## length
                                                                                    ## in
                                                                                    ## the
                                                                                    ##
                                                                                    ## !
                                                                                    ## display
                                                                                    ## aPresentation.
                                                                                    ##
                                                                                    ## !
                                                                                    ## This
                                                                                    ## segment
                                                                                    ## joins
                                                                                    ## the
                                                                                    ## points
                                                                                    ## AttachmentPoint1
                                                                                    ## and
                                                                                    ##
                                                                                    ## !
                                                                                    ## AttachmentPoint2,
                                                                                    ## along
                                                                                    ## the
                                                                                    ## direction
                                                                                    ## aDirection.
                                                                                    ##
                                                                                    ## !
                                                                                    ## The
                                                                                    ## text
                                                                                    ## aText
                                                                                    ## will
                                                                                    ## be
                                                                                    ## displayed
                                                                                    ## at
                                                                                    ## the
                                                                                    ## offset
                                                                                    ## point
                                                                                    ## OffsetPoint.
                                                                                    ##
                                                                                    ## !
                                                                                    ## The
                                                                                    ## line
                                                                                    ## and
                                                                                    ## text
                                                                                    ## attributes
                                                                                    ## are
                                                                                    ## specified
                                                                                    ## by
                                                                                    ## the
                                                                                    ##
                                                                                    ## !
                                                                                    ## attribute
                                                                                    ## manager
                                                                                    ## aDrawer.


proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         aText: TCollection_ExtendedString; AttachmentPoint1: gp_Pnt;
         AttachmentPoint2: gp_Pnt; aDirection: gp_Dir; OffsetPoint: gp_Pnt) {.
    importcpp: "DsgPrs_LengthPresentation::Add(@)",
    header: "DsgPrs_LengthPresentation.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         aText: TCollection_ExtendedString; AttachmentPoint1: gp_Pnt;
         AttachmentPoint2: gp_Pnt; aDirection: gp_Dir; OffsetPoint: gp_Pnt;
         ArrowSide: DsgPrs_ArrowSide) {.importcpp: "DsgPrs_LengthPresentation::Add(@)",
                                      header: "DsgPrs_LengthPresentation.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         aText: TCollection_ExtendedString; AttachmentPoint1: gp_Pnt;
         AttachmentPoint2: gp_Pnt; PlaneOfFaces: gp_Pln; aDirection: gp_Dir;
         OffsetPoint: gp_Pnt; ArrowSide: DsgPrs_ArrowSide) {.
    importcpp: "DsgPrs_LengthPresentation::Add(@)",
    header: "DsgPrs_LengthPresentation.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         aText: TCollection_ExtendedString; SecondSurf: handle[Geom_Surface];
         AttachmentPoint1: gp_Pnt; AttachmentPoint2: gp_Pnt; aDirection: gp_Dir;
         OffsetPoint: gp_Pnt; ArrowSide: DsgPrs_ArrowSide) {.
    importcpp: "DsgPrs_LengthPresentation::Add(@)",
    header: "DsgPrs_LengthPresentation.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         Pt1: gp_Pnt; Pt2: gp_Pnt; ArrowSide: DsgPrs_ArrowSide) {.
    importcpp: "DsgPrs_LengthPresentation::Add(@)",
    header: "DsgPrs_LengthPresentation.hxx".}