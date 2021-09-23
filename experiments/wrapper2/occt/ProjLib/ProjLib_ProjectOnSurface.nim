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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Geom_BSplineCurve"
type
  ProjLib_ProjectOnSurface* {.importcpp: "ProjLib_ProjectOnSurface",
                             header: "ProjLib_ProjectOnSurface.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Create
                                                                                  ## an
                                                                                  ## empty
                                                                                  ## projector.


proc constructProjLib_ProjectOnSurface*(): ProjLib_ProjectOnSurface {.constructor,
    importcpp: "ProjLib_ProjectOnSurface(@)",
    header: "ProjLib_ProjectOnSurface.hxx".}
proc constructProjLib_ProjectOnSurface*(S: handle[Adaptor3d_HSurface]): ProjLib_ProjectOnSurface {.
    constructor, importcpp: "ProjLib_ProjectOnSurface(@)",
    header: "ProjLib_ProjectOnSurface.hxx".}
proc destroyProjLib_ProjectOnSurface*(this: var ProjLib_ProjectOnSurface) {.
    importcpp: "#.~ProjLib_ProjectOnSurface()",
    header: "ProjLib_ProjectOnSurface.hxx".}
proc Load*(this: var ProjLib_ProjectOnSurface; S: handle[Adaptor3d_HSurface]) {.
    importcpp: "Load", header: "ProjLib_ProjectOnSurface.hxx".}
proc Load*(this: var ProjLib_ProjectOnSurface; C: handle[Adaptor3d_HCurve];
          Tolerance: Standard_Real) {.importcpp: "Load",
                                    header: "ProjLib_ProjectOnSurface.hxx".}
proc IsDone*(this: ProjLib_ProjectOnSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "ProjLib_ProjectOnSurface.hxx".}
proc BSpline*(this: ProjLib_ProjectOnSurface): handle[Geom_BSplineCurve] {.
    noSideEffect, importcpp: "BSpline", header: "ProjLib_ProjectOnSurface.hxx".}