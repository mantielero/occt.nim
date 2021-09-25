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

discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
type
  DsgPrsMidPointPresentation* {.importcpp: "DsgPrs_MidPointPresentation",
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


proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         theAxe: Ax2; midPoint: Pnt; position: Pnt; attachPoint: Pnt; first: bool) {.
    importcpp: "DsgPrs_MidPointPresentation::Add(@)",
    header: "DsgPrs_MidPointPresentation.hxx".}
proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         theAxe: Ax2; midPoint: Pnt; position: Pnt; attachPoint: Pnt; point1: Pnt;
         point2: Pnt; first: bool) {.importcpp: "DsgPrs_MidPointPresentation::Add(@)",
                                 header: "DsgPrs_MidPointPresentation.hxx".}
proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         aCircle: Circ; midPoint: Pnt; position: Pnt; attachPoint: Pnt; point1: Pnt;
         point2: Pnt; first: bool) {.importcpp: "DsgPrs_MidPointPresentation::Add(@)",
                                 header: "DsgPrs_MidPointPresentation.hxx".}
proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         anElips: Elips; midPoint: Pnt; position: Pnt; attachPoint: Pnt; point1: Pnt;
         point2: Pnt; first: bool) {.importcpp: "DsgPrs_MidPointPresentation::Add(@)",
                                 header: "DsgPrs_MidPointPresentation.hxx".}
