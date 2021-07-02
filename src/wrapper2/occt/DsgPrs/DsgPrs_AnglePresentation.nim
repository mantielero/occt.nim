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

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax1"
type
  DsgPrsAnglePresentation* {.importcpp: "DsgPrs_AnglePresentation",
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


proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         aVal: StandardReal; aText: TCollectionExtendedString; aCircle: GpCirc;
         aPosition: GpPnt; apex: GpPnt; vminCircle: GpCirc; vmaxCircle: GpCirc;
         aArrowSize: StandardReal) {.importcpp: "DsgPrs_AnglePresentation::Add(@)",
                                   header: "DsgPrs_AnglePresentation.hxx".}
proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         theval: StandardReal; centerPoint: GpPnt; attachmentPoint1: GpPnt;
         attachmentPoint2: GpPnt; dir1: GpDir; dir2: GpDir; offsetPoint: GpPnt) {.
    importcpp: "DsgPrs_AnglePresentation::Add(@)",
    header: "DsgPrs_AnglePresentation.hxx".}
proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         theval: StandardReal; thevalstring: TCollectionExtendedString;
         centerPoint: GpPnt; attachmentPoint1: GpPnt; attachmentPoint2: GpPnt;
         dir1: GpDir; dir2: GpDir; offsetPoint: GpPnt) {.
    importcpp: "DsgPrs_AnglePresentation::Add(@)",
    header: "DsgPrs_AnglePresentation.hxx".}
proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         theval: StandardReal; thevalstring: TCollectionExtendedString;
         centerPoint: GpPnt; attachmentPoint1: GpPnt; attachmentPoint2: GpPnt;
         dir1: GpDir; dir2: GpDir; offsetPoint: GpPnt; arrowSide: DsgPrsArrowSide) {.
    importcpp: "DsgPrs_AnglePresentation::Add(@)",
    header: "DsgPrs_AnglePresentation.hxx".}
proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         theval: StandardReal; thevalstring: TCollectionExtendedString;
         centerPoint: GpPnt; attachmentPoint1: GpPnt; attachmentPoint2: GpPnt;
         dir1: GpDir; dir2: GpDir; axisdir: GpDir; offsetPoint: GpPnt) {.
    importcpp: "DsgPrs_AnglePresentation::Add(@)",
    header: "DsgPrs_AnglePresentation.hxx".}
proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         theval: StandardReal; thevalstring: TCollectionExtendedString;
         centerPoint: GpPnt; attachmentPoint1: GpPnt; attachmentPoint2: GpPnt;
         dir1: GpDir; dir2: GpDir; axisdir: GpDir; isPlane: StandardBoolean;
         axisOfSurf: GpAx1; offsetPoint: GpPnt; arrowSide: DsgPrsArrowSide) {.
    importcpp: "DsgPrs_AnglePresentation::Add(@)",
    header: "DsgPrs_AnglePresentation.hxx".}
proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         theval: StandardReal; theCenter: GpPnt; attachmentPoint1: GpPnt;
         theAxe: GpAx1; arrowSide: DsgPrsArrowSide) {.
    importcpp: "DsgPrs_AnglePresentation::Add(@)",
    header: "DsgPrs_AnglePresentation.hxx".}

