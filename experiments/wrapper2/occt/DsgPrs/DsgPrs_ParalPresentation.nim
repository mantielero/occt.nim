##  Created on: 1995-11-28
##  Created by: Jean-Pierre COMBE
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
  ../Prs3d/Prs3d_Drawer, DsgPrs_ArrowSide, ../Prs3d/Prs3d_Presentation

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
type
  DsgPrs_ParalPresentation* {.importcpp: "DsgPrs_ParalPresentation",
                             header: "DsgPrs_ParalPresentation.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Defines
                                                                                  ## the
                                                                                  ## display
                                                                                  ## of
                                                                                  ## elements
                                                                                  ## showing
                                                                                  ## relations
                                                                                  ## of
                                                                                  ##
                                                                                  ## !
                                                                                  ## parallelism
                                                                                  ## between
                                                                                  ## shapes.
                                                                                  ##
                                                                                  ## !
                                                                                  ## These
                                                                                  ## include
                                                                                  ## the
                                                                                  ## two
                                                                                  ## points
                                                                                  ## of
                                                                                  ## attachment
                                                                                  ##
                                                                                  ## !
                                                                                  ## AttachmentPoint1
                                                                                  ## and
                                                                                  ## AttachmentPoint1,
                                                                                  ## the
                                                                                  ##
                                                                                  ## !
                                                                                  ## direction
                                                                                  ## aDirection,
                                                                                  ## and
                                                                                  ## the
                                                                                  ## offset
                                                                                  ## point
                                                                                  ## OffsetPoint.
                                                                                  ##
                                                                                  ## !
                                                                                  ## These
                                                                                  ## arguments
                                                                                  ## are
                                                                                  ## added
                                                                                  ## to
                                                                                  ## the
                                                                                  ## presentation
                                                                                  ##
                                                                                  ## !
                                                                                  ## object
                                                                                  ## aPresentation.
                                                                                  ## Their
                                                                                  ## display
                                                                                  ## attributes
                                                                                  ## are
                                                                                  ##
                                                                                  ## !
                                                                                  ## defined
                                                                                  ## by
                                                                                  ## the
                                                                                  ## attribute
                                                                                  ## manager
                                                                                  ## aDrawer.


proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         aText: TCollection_ExtendedString; AttachmentPoint1: gp_Pnt;
         AttachmentPoint2: gp_Pnt; aDirection: gp_Dir; OffsetPoint: gp_Pnt) {.
    importcpp: "DsgPrs_ParalPresentation::Add(@)",
    header: "DsgPrs_ParalPresentation.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         aText: TCollection_ExtendedString; AttachmentPoint1: gp_Pnt;
         AttachmentPoint2: gp_Pnt; aDirection: gp_Dir; OffsetPoint: gp_Pnt;
         ArrowSide: DsgPrs_ArrowSide) {.importcpp: "DsgPrs_ParalPresentation::Add(@)",
                                      header: "DsgPrs_ParalPresentation.hxx".}