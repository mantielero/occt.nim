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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Adaptor3d/Adaptor3d_CurvePtr,
  ../Adaptor3d/Adaptor3d_SurfacePtr, ../Standard/Standard_Boolean, ../gp/gp_Pnt2d,
  ../Standard/Standard_Integer, ../Standard/Standard_Real

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of gp_Pnt2d"
type
  ProjLib_PrjResolve* {.importcpp: "ProjLib_PrjResolve",
                       header: "ProjLib_PrjResolve.hxx", bycopy.} = object


proc constructProjLib_PrjResolve*(C: Adaptor3d_Curve; S: Adaptor3d_Surface;
                                 Fix: Standard_Integer): ProjLib_PrjResolve {.
    constructor, importcpp: "ProjLib_PrjResolve(@)",
    header: "ProjLib_PrjResolve.hxx".}
proc Perform*(this: var ProjLib_PrjResolve; t: Standard_Real; U: Standard_Real;
             V: Standard_Real; Tol: gp_Pnt2d; Inf: gp_Pnt2d; Sup: gp_Pnt2d;
             FTol: Standard_Real = -1;
             StrictInside: Standard_Boolean = Standard_False) {.
    importcpp: "Perform", header: "ProjLib_PrjResolve.hxx".}
proc IsDone*(this: ProjLib_PrjResolve): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "ProjLib_PrjResolve.hxx".}
proc Solution*(this: ProjLib_PrjResolve): gp_Pnt2d {.noSideEffect,
    importcpp: "Solution", header: "ProjLib_PrjResolve.hxx".}