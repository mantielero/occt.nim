##  Created on: 1996-08-21
##  Created by: Jacques MINOT
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

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Circ"
type
  DsgPrsDiameterPresentation* {.importcpp: "DsgPrs_DiameterPresentation",
                               header: "DsgPrs_DiameterPresentation.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Draws
                                                                                       ## the
                                                                                       ## diameter
                                                                                       ## of
                                                                                       ## the
                                                                                       ## circle
                                                                                       ## aCircle
                                                                                       ## displayed
                                                                                       ## in
                                                                                       ##
                                                                                       ## !
                                                                                       ## the
                                                                                       ## presentation
                                                                                       ## aPresentation
                                                                                       ## and
                                                                                       ## with
                                                                                       ## attributes
                                                                                       ##
                                                                                       ## !
                                                                                       ## defined
                                                                                       ## by
                                                                                       ## the
                                                                                       ## attribute
                                                                                       ## manager
                                                                                       ## aDrawer.
                                                                                       ## The
                                                                                       ## point
                                                                                       ##
                                                                                       ## !
                                                                                       ## AttachmentPoint
                                                                                       ## defines
                                                                                       ## the
                                                                                       ## point
                                                                                       ## of
                                                                                       ## contact
                                                                                       ##
                                                                                       ## !
                                                                                       ## between
                                                                                       ## the
                                                                                       ## circle
                                                                                       ## and
                                                                                       ## the
                                                                                       ## diameter
                                                                                       ## presentation.
                                                                                       ##
                                                                                       ## !
                                                                                       ## The
                                                                                       ## value
                                                                                       ## of
                                                                                       ## the
                                                                                       ## enumeration
                                                                                       ## ArrowSide
                                                                                       ## controls
                                                                                       ##
                                                                                       ## !
                                                                                       ## whether
                                                                                       ## arrows
                                                                                       ## will
                                                                                       ## be
                                                                                       ## displayed
                                                                                       ## at
                                                                                       ## either
                                                                                       ## or
                                                                                       ## both
                                                                                       ##
                                                                                       ## !
                                                                                       ## ends
                                                                                       ## of
                                                                                       ## the
                                                                                       ## length.
                                                                                       ## The
                                                                                       ## text
                                                                                       ## aText
                                                                                       ## labels
                                                                                       ## the
                                                                                       ## diameter.


proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         aText: TCollectionExtendedString; attachmentPoint: GpPnt; aCircle: GpCirc;
         arrowSide: DsgPrsArrowSide; isDiamSymbol: StandardBoolean) {.
    importcpp: "DsgPrs_DiameterPresentation::Add(@)",
    header: "DsgPrs_DiameterPresentation.hxx".}
proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         aText: TCollectionExtendedString; attachmentPoint: GpPnt; aCircle: GpCirc;
         uFirst: StandardReal; uLast: StandardReal; arrowSide: DsgPrsArrowSide;
         isDiamSymbol: StandardBoolean) {.importcpp: "DsgPrs_DiameterPresentation::Add(@)", header: "DsgPrs_DiameterPresentation.hxx".}

