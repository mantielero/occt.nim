##  Created on: 1995-03-01
##  Created by: Arnaud BOUZY
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

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Circ"
type
  DsgPrsRadiusPresentation* {.importcpp: "DsgPrs_RadiusPresentation",
                             header: "DsgPrs_RadiusPresentation.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Adds
                                                                                   ## the
                                                                                   ## point
                                                                                   ## AttachmentPoint,
                                                                                   ## the
                                                                                   ## circle
                                                                                   ## aCircle,
                                                                                   ##
                                                                                   ## !
                                                                                   ## the
                                                                                   ## text
                                                                                   ## aText,
                                                                                   ## and
                                                                                   ## the
                                                                                   ## parameters
                                                                                   ## firstparam
                                                                                   ## and
                                                                                   ##
                                                                                   ## !
                                                                                   ## lastparam
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
                                                                                   ## these
                                                                                   ## elements
                                                                                   ## is
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
                                                                                   ## If
                                                                                   ## the
                                                                                   ## Boolean
                                                                                   ## drawFromCenter
                                                                                   ## is
                                                                                   ## false,
                                                                                   ## the
                                                                                   ##
                                                                                   ## !
                                                                                   ## arrowhead
                                                                                   ## will
                                                                                   ## point
                                                                                   ## towards
                                                                                   ## the
                                                                                   ## center
                                                                                   ## of
                                                                                   ## aCircle.
                                                                                   ##
                                                                                   ## !
                                                                                   ## If
                                                                                   ## the
                                                                                   ## Boolean
                                                                                   ## reverseArrow
                                                                                   ## is
                                                                                   ## true,
                                                                                   ## the
                                                                                   ## arrowhead
                                                                                   ##
                                                                                   ## !
                                                                                   ## will
                                                                                   ## point
                                                                                   ## away
                                                                                   ## from
                                                                                   ## the
                                                                                   ## attachment
                                                                                   ## point.


proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         aText: TCollectionExtendedString; attachmentPoint: Pnt; aCircle: Circ;
         firstparam: cfloat; lastparam: cfloat; drawFromCenter: bool = true;
         reverseArrow: bool = false) {.importcpp: "DsgPrs_RadiusPresentation::Add(@)",
                                   header: "DsgPrs_RadiusPresentation.hxx".}
proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         aText: TCollectionExtendedString; attachmentPoint: Pnt; aCircle: Circ;
         firstparam: cfloat; lastparam: cfloat; arrowSide: DsgPrsArrowSide;
         drawFromCenter: bool = true; reverseArrow: bool = false) {.
    importcpp: "DsgPrs_RadiusPresentation::Add(@)",
    header: "DsgPrs_RadiusPresentation.hxx".}
proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         aText: TCollectionExtendedString; attachmentPoint: Pnt; center: Pnt;
         endOfArrow: Pnt; arrowSide: DsgPrsArrowSide; drawFromCenter: bool = true;
         reverseArrow: bool = false) {.importcpp: "DsgPrs_RadiusPresentation::Add(@)",
                                   header: "DsgPrs_RadiusPresentation.hxx".}

























