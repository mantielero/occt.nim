##  Created on: 1996-03-19
##  Created by: Flore Lantheaume
##  Copyright (c) 1996-1999 Matra Datavision
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
discard "forward decl of TCollection_ExtendedString"
type
  DsgPrsChamf2dPresentation* {.importcpp: "DsgPrs_Chamf2dPresentation",
                              header: "DsgPrs_Chamf2dPresentation.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Defines
                                                                                     ## the
                                                                                     ## display
                                                                                     ## of
                                                                                     ## elements
                                                                                     ## showing
                                                                                     ## 2D
                                                                                     ## chamfers
                                                                                     ## on
                                                                                     ## shapes.
                                                                                     ##
                                                                                     ## !
                                                                                     ## These
                                                                                     ## include
                                                                                     ## the
                                                                                     ## text
                                                                                     ## aText,
                                                                                     ## the
                                                                                     ## point
                                                                                     ## of
                                                                                     ## attachment,
                                                                                     ##
                                                                                     ## !
                                                                                     ## aPntAttach
                                                                                     ## and
                                                                                     ## the
                                                                                     ## end
                                                                                     ## point
                                                                                     ## aPntEnd.
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
         aPntAttach: Pnt; aPntEnd: Pnt; aText: TCollectionExtendedString) {.
    importcpp: "DsgPrs_Chamf2dPresentation::Add(@)",
    header: "DsgPrs_Chamf2dPresentation.hxx".}
proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         aPntAttach: Pnt; aPntEnd: Pnt; aText: TCollectionExtendedString;
         arrowSide: DsgPrsArrowSide) {.importcpp: "DsgPrs_Chamf2dPresentation::Add(@)",
                                     header: "DsgPrs_Chamf2dPresentation.hxx".}

























