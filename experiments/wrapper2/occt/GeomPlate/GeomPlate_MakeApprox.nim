##  Created on: 1996-03-05
##  Created by: Joelle CHAUVET
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../GeomAbs/GeomAbs_Shape

discard "forward decl of GeomPlate_Surface"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of AdvApp2Var_Criterion"
type
  GeomPlate_MakeApprox* {.importcpp: "GeomPlate_MakeApprox",
                         header: "GeomPlate_MakeApprox.hxx", bycopy.} = object ## !
                                                                          ## Converts
                                                                          ## SurfPlate into a
                                                                          ## Geom_BSplineSurface with
                                                                          ## ! n Bezier pieces
                                                                          ## (n<=Nbmax) of degree <= dgmax
                                                                          ## ! and an
                                                                          ## approximation error < Tol3d if
                                                                          ## possible
                                                                          ## ! the
                                                                          ## criterion
                                                                          ## CritPlate is
                                                                          ## satisfied if
                                                                          ## possible


proc constructGeomPlate_MakeApprox*(SurfPlate: handle[GeomPlate_Surface];
                                   PlateCrit: AdvApp2Var_Criterion;
                                   Tol3d: Standard_Real; Nbmax: Standard_Integer;
                                   dgmax: Standard_Integer;
                                   Continuity: GeomAbs_Shape = GeomAbs_C1;
                                   EnlargeCoeff: Standard_Real = 1.1): GeomPlate_MakeApprox {.
    constructor, importcpp: "GeomPlate_MakeApprox(@)",
    header: "GeomPlate_MakeApprox.hxx".}
proc constructGeomPlate_MakeApprox*(SurfPlate: handle[GeomPlate_Surface];
                                   Tol3d: Standard_Real; Nbmax: Standard_Integer;
                                   dgmax: Standard_Integer; dmax: Standard_Real;
                                   CritOrder: Standard_Integer = 0;
                                   Continuity: GeomAbs_Shape = GeomAbs_C1;
                                   EnlargeCoeff: Standard_Real = 1.1): GeomPlate_MakeApprox {.
    constructor, importcpp: "GeomPlate_MakeApprox(@)",
    header: "GeomPlate_MakeApprox.hxx".}
proc Surface*(this: GeomPlate_MakeApprox): handle[Geom_BSplineSurface] {.
    noSideEffect, importcpp: "Surface", header: "GeomPlate_MakeApprox.hxx".}
proc ApproxError*(this: GeomPlate_MakeApprox): Standard_Real {.noSideEffect,
    importcpp: "ApproxError", header: "GeomPlate_MakeApprox.hxx".}
proc CriterionError*(this: GeomPlate_MakeApprox): Standard_Real {.noSideEffect,
    importcpp: "CriterionError", header: "GeomPlate_MakeApprox.hxx".}