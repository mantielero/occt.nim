##  Created on: 2000-10-20
##  Created by: Julia DOROVSKIKH
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
type
  DsgPrs_MidPointPresentation* {.importcpp: "DsgPrs_MidPointPresentation",
                                header: "DsgPrs_MidPointPresentation.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## draws
                                                                                        ## the
                                                                                        ## representation
                                                                                        ## of
                                                                                        ## a
                                                                                        ## MidPoint
                                                                                        ## between
                                                                                        ##
                                                                                        ## !
                                                                                        ## two
                                                                                        ## vertices.


proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         theAxe: gp_Ax2; MidPoint: gp_Pnt; Position: gp_Pnt; AttachPoint: gp_Pnt;
         first: Standard_Boolean) {.importcpp: "DsgPrs_MidPointPresentation::Add(@)",
                                  header: "DsgPrs_MidPointPresentation.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         theAxe: gp_Ax2; MidPoint: gp_Pnt; Position: gp_Pnt; AttachPoint: gp_Pnt;
         Point1: gp_Pnt; Point2: gp_Pnt; first: Standard_Boolean) {.
    importcpp: "DsgPrs_MidPointPresentation::Add(@)",
    header: "DsgPrs_MidPointPresentation.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         aCircle: gp_Circ; MidPoint: gp_Pnt; Position: gp_Pnt; AttachPoint: gp_Pnt;
         Point1: gp_Pnt; Point2: gp_Pnt; first: Standard_Boolean) {.
    importcpp: "DsgPrs_MidPointPresentation::Add(@)",
    header: "DsgPrs_MidPointPresentation.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         anElips: gp_Elips; MidPoint: gp_Pnt; Position: gp_Pnt; AttachPoint: gp_Pnt;
         Point1: gp_Pnt; Point2: gp_Pnt; first: Standard_Boolean) {.
    importcpp: "DsgPrs_MidPointPresentation::Add(@)",
    header: "DsgPrs_MidPointPresentation.hxx".}