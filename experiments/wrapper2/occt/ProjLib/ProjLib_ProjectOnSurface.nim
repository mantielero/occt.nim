##  Created on: 1994-09-15
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Geom_BSplineCurve"
type
  ProjLibProjectOnSurface* {.importcpp: "ProjLib_ProjectOnSurface",
                            header: "ProjLib_ProjectOnSurface.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Create
                                                                                 ## an
                                                                                 ## empty
                                                                                 ## projector.


proc constructProjLibProjectOnSurface*(): ProjLibProjectOnSurface {.constructor,
    importcpp: "ProjLib_ProjectOnSurface(@)",
    header: "ProjLib_ProjectOnSurface.hxx".}
proc constructProjLibProjectOnSurface*(s: Handle[Adaptor3dHSurface]): ProjLibProjectOnSurface {.
    constructor, importcpp: "ProjLib_ProjectOnSurface(@)",
    header: "ProjLib_ProjectOnSurface.hxx".}
proc destroyProjLibProjectOnSurface*(this: var ProjLibProjectOnSurface) {.
    importcpp: "#.~ProjLib_ProjectOnSurface()",
    header: "ProjLib_ProjectOnSurface.hxx".}
proc load*(this: var ProjLibProjectOnSurface; s: Handle[Adaptor3dHSurface]) {.
    importcpp: "Load", header: "ProjLib_ProjectOnSurface.hxx".}
proc load*(this: var ProjLibProjectOnSurface; c: Handle[Adaptor3dHCurve];
          tolerance: cfloat) {.importcpp: "Load",
                             header: "ProjLib_ProjectOnSurface.hxx".}
proc isDone*(this: ProjLibProjectOnSurface): bool {.noSideEffect,
    importcpp: "IsDone", header: "ProjLib_ProjectOnSurface.hxx".}
proc bSpline*(this: ProjLibProjectOnSurface): Handle[GeomBSplineCurve] {.
    noSideEffect, importcpp: "BSpline", header: "ProjLib_ProjectOnSurface.hxx".}

























