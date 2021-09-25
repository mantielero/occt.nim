##  Created on: 1997-11-06
##  Created by: Roman BORISOV
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of gp_Pnt2d"
type
  ProjLibPrjResolve* {.importcpp: "ProjLib_PrjResolve",
                      header: "ProjLib_PrjResolve.hxx", bycopy.} = object


proc constructProjLibPrjResolve*(c: Adaptor3dCurve; s: Adaptor3dSurface; fix: int): ProjLibPrjResolve {.
    constructor, importcpp: "ProjLib_PrjResolve(@)",
    header: "ProjLib_PrjResolve.hxx".}
proc perform*(this: var ProjLibPrjResolve; t: float; u: float; v: float; tol: Pnt2d;
             inf: Pnt2d; sup: Pnt2d; fTol: float = -1; strictInside: bool = false) {.
    importcpp: "Perform", header: "ProjLib_PrjResolve.hxx".}
proc isDone*(this: ProjLibPrjResolve): bool {.noSideEffect, importcpp: "IsDone",
    header: "ProjLib_PrjResolve.hxx".}
proc solution*(this: ProjLibPrjResolve): Pnt2d {.noSideEffect, importcpp: "Solution",
    header: "ProjLib_PrjResolve.hxx".}
