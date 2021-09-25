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

discard "forward decl of Adaptor3d_Surface"
type
  StdPrsPlane* {.importcpp: "StdPrs_Plane", header: "StdPrs_Plane.hxx", bycopy.} = object of Prs3dRoot ##
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


proc add*(aPresentation: Handle[Prs3dPresentation]; aPlane: Adaptor3dSurface;
         aDrawer: Handle[Prs3dDrawer]) {.importcpp: "StdPrs_Plane::Add(@)",
                                       header: "StdPrs_Plane.hxx".}
proc match*(x: float; y: float; z: float; aDistance: float; aPlane: Adaptor3dSurface;
           aDrawer: Handle[Prs3dDrawer]): bool {.
    importcpp: "StdPrs_Plane::Match(@)", header: "StdPrs_Plane.hxx".}
