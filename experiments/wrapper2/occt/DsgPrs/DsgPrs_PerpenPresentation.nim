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

discard "forward decl of gp_Pnt"
type
  DsgPrsPerpenPresentation* {.importcpp: "DsgPrs_PerpenPresentation",
                             header: "DsgPrs_PerpenPresentation.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Defines
                                                                                   ## the
                                                                                   ## display
                                                                                   ## of
                                                                                   ## elements
                                                                                   ## showing
                                                                                   ##
                                                                                   ## !
                                                                                   ## perpendicular
                                                                                   ## constraints
                                                                                   ## between
                                                                                   ## shapes.
                                                                                   ##
                                                                                   ## !
                                                                                   ## These
                                                                                   ## include
                                                                                   ## the
                                                                                   ## two
                                                                                   ## axis
                                                                                   ## points
                                                                                   ## pAx1
                                                                                   ## and
                                                                                   ## pAx2,
                                                                                   ##
                                                                                   ## !
                                                                                   ## the
                                                                                   ## two
                                                                                   ## points
                                                                                   ## pnt1
                                                                                   ## and
                                                                                   ## pnt2,
                                                                                   ## the
                                                                                   ## offset
                                                                                   ## point
                                                                                   ##
                                                                                   ## !
                                                                                   ## OffsetPoint
                                                                                   ## and
                                                                                   ## the
                                                                                   ## two
                                                                                   ## Booleans
                                                                                   ## intOut1}
                                                                                   ## and
                                                                                   ## intOut2{.
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


proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         pAx1: Pnt; pAx2: Pnt; pnt1: Pnt; pnt2: Pnt; offsetPoint: Pnt; intOut1: bool;
         intOut2: bool) {.importcpp: "DsgPrs_PerpenPresentation::Add(@)",
                        header: "DsgPrs_PerpenPresentation.hxx".}
