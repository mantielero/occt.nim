##  Created on: 1997-12-05
##  Created by: Robert COUBLANC
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Prs3d/Prs3d_Drawer, ../Prs3d/Prs3d_Presentation

discard "forward decl of gp_Pnt"
type
  DsgPrs_ShadedPlanePresentation* {.importcpp: "DsgPrs_ShadedPlanePresentation", header: "DsgPrs_ShadedPlanePresentation.hxx",
                                   bycopy.} = object ## ! Adds the points aPt1, aPt2 and aPt3 to the
                                                  ## ! presentation object, aPresentation.
                                                  ## ! The display attributes of the shaded plane are
                                                  ## ! defined by the attribute manager aDrawer.


proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         aPt1: gp_Pnt; aPt2: gp_Pnt; aPt3: gp_Pnt) {.
    importcpp: "DsgPrs_ShadedPlanePresentation::Add(@)",
    header: "DsgPrs_ShadedPlanePresentation.hxx".}