##  Created on: 1997-01-22
##  Created by: Prestataire Michael ALEONARD
##  Copyright (c) 1997-1999 Matra Datavision
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
discard "forward decl of gp_Dir"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
type
  DsgPrsSymmetricPresentation* {.importcpp: "DsgPrs_SymmetricPresentation",
                                header: "DsgPrs_SymmetricPresentation.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Adds
                                                                                         ## the
                                                                                         ## points
                                                                                         ## OffsetPoint,
                                                                                         ## AttachmentPoint1,
                                                                                         ##
                                                                                         ## !
                                                                                         ## AttachmentPoint2,
                                                                                         ## the
                                                                                         ## direction
                                                                                         ## aDirection1
                                                                                         ## and
                                                                                         ## the
                                                                                         ##
                                                                                         ## !
                                                                                         ## axis
                                                                                         ## anAxis
                                                                                         ## to
                                                                                         ## the
                                                                                         ## presentation
                                                                                         ## object
                                                                                         ## aPresentation.
                                                                                         ##
                                                                                         ## !
                                                                                         ## The
                                                                                         ## display
                                                                                         ## attributes
                                                                                         ## of
                                                                                         ## the
                                                                                         ## symmetry
                                                                                         ## are
                                                                                         ## defined
                                                                                         ## by
                                                                                         ##
                                                                                         ## !
                                                                                         ## the
                                                                                         ## attribute
                                                                                         ## manager
                                                                                         ## aDrawer.
                                                                                         ##
                                                                                         ## !
                                                                                         ## This
                                                                                         ## syntax
                                                                                         ## is
                                                                                         ## used
                                                                                         ## for
                                                                                         ## display
                                                                                         ## of
                                                                                         ## symmetries
                                                                                         ## between
                                                                                         ## two
                                                                                         ## segments.


proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         attachmentPoint1: Pnt; attachmentPoint2: Pnt; aDirection1: Dir; aAxis: Lin;
         offsetPoint: Pnt) {.importcpp: "DsgPrs_SymmetricPresentation::Add(@)",
                           header: "DsgPrs_SymmetricPresentation.hxx".}
proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         attachmentPoint1: Pnt; attachmentPoint2: Pnt; aCircle1: Circ; aAxis: Lin;
         offsetPoint: Pnt) {.importcpp: "DsgPrs_SymmetricPresentation::Add(@)",
                           header: "DsgPrs_SymmetricPresentation.hxx".}
proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         attachmentPoint1: Pnt; attachmentPoint2: Pnt; aAxis: Lin; offsetPoint: Pnt) {.
    importcpp: "DsgPrs_SymmetricPresentation::Add(@)",
    header: "DsgPrs_SymmetricPresentation.hxx".}

























