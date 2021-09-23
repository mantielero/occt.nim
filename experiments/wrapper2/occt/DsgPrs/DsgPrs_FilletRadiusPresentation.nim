##  Created on: 1997-12-08
##  Created by: Serguei ZARITCHNY
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
  ../Standard/Standard_Handle, ../Prs3d/Prs3d_Drawer, DsgPrs_ArrowSide,
  ../Prs3d/Prs3d_Presentation

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of Geom_TrimmedCurve"
type
  DsgPrs_FilletRadiusPresentation* {.importcpp: "DsgPrs_FilletRadiusPresentation", header: "DsgPrs_FilletRadiusPresentation.hxx",
                                    bycopy.} = object ## ! Adds a display of the radius of a fillet to the
                                                   ## ! presentation aPresentation. The display ttributes
                                                   ## ! defined by the attribute manager aDrawer. the value
                                                   ## ! specifies the length of the radius.


proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         thevalue: Standard_Real; aText: TCollection_ExtendedString;
         aPosition: gp_Pnt; aNormalDir: gp_Dir; aBasePnt: gp_Pnt; aFirstPoint: gp_Pnt;
         aSecondPoint: gp_Pnt; aCenter: gp_Pnt; ArrowPrs: DsgPrs_ArrowSide;
         drawRevers: Standard_Boolean; DrawPosition: var gp_Pnt;
         EndOfArrow: var gp_Pnt; TrimCurve: var handle[Geom_TrimmedCurve];
         HasCircle: var Standard_Boolean) {.
    importcpp: "DsgPrs_FilletRadiusPresentation::Add(@)",
    header: "DsgPrs_FilletRadiusPresentation.hxx".}