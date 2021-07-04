##  Created on: 1995-07-27
##  Created by: Modelistation
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
  ../Prs3d/Prs3d_Root, ../Prs3d/Prs3d_Drawer

discard "forward decl of Adaptor3d_Surface"
type
  StdPrs_ShadedSurface* {.importcpp: "StdPrs_ShadedSurface",
                         header: "StdPrs_ShadedSurface.hxx", bycopy.} = object of Prs3d_Root ##
                                                                                      ## !
                                                                                      ## Adds
                                                                                      ## the
                                                                                      ## surface
                                                                                      ## aSurface
                                                                                      ## to
                                                                                      ## the
                                                                                      ## presentation
                                                                                      ## object
                                                                                      ## aPresentation.
                                                                                      ##
                                                                                      ## !
                                                                                      ## The
                                                                                      ## surface's
                                                                                      ## display
                                                                                      ## attributes
                                                                                      ## are
                                                                                      ## set
                                                                                      ## in
                                                                                      ## the
                                                                                      ## attribute
                                                                                      ## manager
                                                                                      ## aDrawer.
                                                                                      ##
                                                                                      ## !
                                                                                      ## The
                                                                                      ## surface
                                                                                      ## object
                                                                                      ## from
                                                                                      ## Adaptor3d
                                                                                      ## provides
                                                                                      ## data
                                                                                      ##
                                                                                      ## !
                                                                                      ## from
                                                                                      ## a
                                                                                      ## Geom
                                                                                      ## surface
                                                                                      ## in
                                                                                      ## order
                                                                                      ## to
                                                                                      ## use
                                                                                      ## the
                                                                                      ## surface
                                                                                      ## in
                                                                                      ## an
                                                                                      ## algorithm.


proc Add*(aPresentation: handle[Prs3d_Presentation]; aSurface: Adaptor3d_Surface;
         aDrawer: handle[Prs3d_Drawer]) {.importcpp: "StdPrs_ShadedSurface::Add(@)",
                                        header: "StdPrs_ShadedSurface.hxx".}