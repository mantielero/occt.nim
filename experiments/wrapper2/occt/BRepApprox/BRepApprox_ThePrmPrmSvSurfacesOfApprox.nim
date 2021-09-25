##  Created on: 1995-06-06
##  Created by: Jean Yves LEBEY
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

discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of BRepApprox_SurfaceTool"
discard "forward decl of BRepApprox_ApproxLine"
discard "forward decl of BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox"
discard "forward decl of BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
type
  BRepApproxThePrmPrmSvSurfacesOfApprox* {.
      importcpp: "BRepApprox_ThePrmPrmSvSurfacesOfApprox",
      header: "BRepApprox_ThePrmPrmSvSurfacesOfApprox.hxx", bycopy.} = object of ApproxIntSvSurfaces


proc constructBRepApproxThePrmPrmSvSurfacesOfApprox*(surf1: BRepAdaptorSurface;
    surf2: BRepAdaptorSurface): BRepApproxThePrmPrmSvSurfacesOfApprox {.
    constructor, importcpp: "BRepApprox_ThePrmPrmSvSurfacesOfApprox(@)",
    header: "BRepApprox_ThePrmPrmSvSurfacesOfApprox.hxx".}
proc compute*(this: var BRepApproxThePrmPrmSvSurfacesOfApprox; u1: var float;
             v1: var float; u2: var float; v2: var float; pt: var Pnt; tg: var Vec;
             tguv1: var Vec2d; tguv2: var Vec2d): bool {.importcpp: "Compute",
    header: "BRepApprox_ThePrmPrmSvSurfacesOfApprox.hxx".}
proc pnt*(this: var BRepApproxThePrmPrmSvSurfacesOfApprox; u1: float; v1: float;
         u2: float; v2: float; p: var Pnt) {.importcpp: "Pnt", header: "BRepApprox_ThePrmPrmSvSurfacesOfApprox.hxx".}
proc seekPoint*(this: var BRepApproxThePrmPrmSvSurfacesOfApprox; u1: float; v1: float;
               u2: float; v2: float; point: var IntSurfPntOn2S): bool {.
    importcpp: "SeekPoint", header: "BRepApprox_ThePrmPrmSvSurfacesOfApprox.hxx".}
proc tangency*(this: var BRepApproxThePrmPrmSvSurfacesOfApprox; u1: float; v1: float;
              u2: float; v2: float; tg: var Vec): bool {.importcpp: "Tangency",
    header: "BRepApprox_ThePrmPrmSvSurfacesOfApprox.hxx".}
proc tangencyOnSurf1*(this: var BRepApproxThePrmPrmSvSurfacesOfApprox; u1: float;
                     v1: float; u2: float; v2: float; tg: var Vec2d): bool {.
    importcpp: "TangencyOnSurf1",
    header: "BRepApprox_ThePrmPrmSvSurfacesOfApprox.hxx".}
proc tangencyOnSurf2*(this: var BRepApproxThePrmPrmSvSurfacesOfApprox; u1: float;
                     v1: float; u2: float; v2: float; tg: var Vec2d): bool {.
    importcpp: "TangencyOnSurf2",
    header: "BRepApprox_ThePrmPrmSvSurfacesOfApprox.hxx".}
