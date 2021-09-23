##  Created on: 1995-08-04
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

discard "forward decl of Adaptor3d_HSurface"
type
  StdPrs_WFSurface* {.importcpp: "StdPrs_WFSurface",
                     header: "StdPrs_WFSurface.hxx", bycopy.} = object of Prs3d_Root ## !
                                                                              ## Draws a
                                                                              ## surface by
                                                                              ## drawing
                                                                              ## the
                                                                              ## isoparametric
                                                                              ## curves
                                                                              ## with
                                                                              ## respect to
                                                                              ## ! a
                                                                              ## fixed
                                                                              ## number of
                                                                              ## points
                                                                              ## given by
                                                                              ## the
                                                                              ## Drawer.
                                                                              ## !
                                                                              ## The
                                                                              ## number of
                                                                              ## isoparametric
                                                                              ## curves to be
                                                                              ## drawn
                                                                              ## and
                                                                              ## their
                                                                              ## color
                                                                              ## are
                                                                              ## !
                                                                              ## controlled by
                                                                              ## the
                                                                              ## furnished
                                                                              ## Drawer.


proc Add*(aPresentation: handle[Prs3d_Presentation];
         aSurface: handle[Adaptor3d_HSurface]; aDrawer: handle[Prs3d_Drawer]) {.
    importcpp: "StdPrs_WFSurface::Add(@)", header: "StdPrs_WFSurface.hxx".}