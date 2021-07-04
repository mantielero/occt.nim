##  Created on: 1995-07-24
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
  StdPrs_Plane* {.importcpp: "StdPrs_Plane", header: "StdPrs_Plane.hxx", bycopy.} = object of Prs3d_Root ##
                                                                                               ## !
                                                                                               ## Defines
                                                                                               ## display
                                                                                               ## of
                                                                                               ## infinite
                                                                                               ## planes.
                                                                                               ##
                                                                                               ## !
                                                                                               ## The
                                                                                               ## infinite
                                                                                               ## plane
                                                                                               ## aPlane
                                                                                               ## is
                                                                                               ## added
                                                                                               ## to
                                                                                               ## the
                                                                                               ## display
                                                                                               ##
                                                                                               ## !
                                                                                               ## aPresentation,
                                                                                               ## and
                                                                                               ## the
                                                                                               ## attributes
                                                                                               ## of
                                                                                               ## the
                                                                                               ## display
                                                                                               ## are
                                                                                               ##
                                                                                               ## !
                                                                                               ## defined
                                                                                               ## by
                                                                                               ## the
                                                                                               ## attribute
                                                                                               ## manager
                                                                                               ## aDrawer.


proc Add*(aPresentation: handle[Prs3d_Presentation]; aPlane: Adaptor3d_Surface;
         aDrawer: handle[Prs3d_Drawer]) {.importcpp: "StdPrs_Plane::Add(@)",
                                        header: "StdPrs_Plane.hxx".}
proc Match*(X: Standard_Real; Y: Standard_Real; Z: Standard_Real;
           aDistance: Standard_Real; aPlane: Adaptor3d_Surface;
           aDrawer: handle[Prs3d_Drawer]): Standard_Boolean {.
    importcpp: "StdPrs_Plane::Match(@)", header: "StdPrs_Plane.hxx".}