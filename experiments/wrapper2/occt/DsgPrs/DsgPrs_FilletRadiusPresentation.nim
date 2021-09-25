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

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of Geom_TrimmedCurve"
type
  DsgPrsFilletRadiusPresentation* {.importcpp: "DsgPrs_FilletRadiusPresentation", header: "DsgPrs_FilletRadiusPresentation.hxx",
                                   bycopy.} = object ## ! Adds a display of the radius of a fillet to the
                                                  ## ! presentation aPresentation. The display ttributes
                                                  ## ! defined by the attribute manager aDrawer. the value
                                                  ## ! specifies the length of the radius.


proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         thevalue: float; aText: TCollectionExtendedString; aPosition: Pnt;
         aNormalDir: Dir; aBasePnt: Pnt; aFirstPoint: Pnt; aSecondPoint: Pnt;
         aCenter: Pnt; arrowPrs: DsgPrsArrowSide; drawRevers: bool;
         drawPosition: var Pnt; endOfArrow: var Pnt;
         trimCurve: var Handle[GeomTrimmedCurve]; hasCircle: var bool) {.
    importcpp: "DsgPrs_FilletRadiusPresentation::Add(@)",
    header: "DsgPrs_FilletRadiusPresentation.hxx".}
