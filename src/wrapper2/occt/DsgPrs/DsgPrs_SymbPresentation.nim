##  Created on: 1995-12-08
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Prs3d/Prs3d_Drawer, ../Prs3d/Prs3d_Presentation

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of gp_Pnt"
type
  DsgPrs_SymbPresentation* {.importcpp: "DsgPrs_SymbPresentation",
                            header: "DsgPrs_SymbPresentation.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Adds
                                                                                ## the
                                                                                ## text
                                                                                ## aText
                                                                                ## and
                                                                                ## the
                                                                                ## point
                                                                                ## OffsetPoint
                                                                                ## to
                                                                                ## the
                                                                                ##
                                                                                ## !
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
                                                                                ## shaded
                                                                                ## plane
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
         aText: TCollection_ExtendedString; OffsetPoint: gp_Pnt) {.
    importcpp: "DsgPrs_SymbPresentation::Add(@)",
    header: "DsgPrs_SymbPresentation.hxx".}