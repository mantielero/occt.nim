##  Created on: 1995-06-02
##  Created by: Xavier BENVENISTE
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Adaptor3d/Adaptor3d_CurveOnSurface,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real

discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Surface"
type
  Approx_SameParameter* {.importcpp: "Approx_SameParameter",
                         header: "Approx_SameParameter.hxx", bycopy.} = object ## !
                                                                          ## Warning: the C3D and C2D must have the same
                                                                          ## parametric
                                                                          ## domain.
                                                                          ## !
                                                                          ## Internal data
                                                                          ## structure to unify access to the most
                                                                          ## actively used data.
                                                                          ## ! This
                                                                          ## structure is not
                                                                          ## intended to be class field since
                                                                          ## ! a lot of memory is used in
                                                                          ## intermediate
                                                                          ## computations.
    ##  Initialization is allowed only for integral types.


proc constructApprox_SameParameter*(C3D: handle[Geom_Curve];
                                   C2D: handle[Geom2d_Curve];
                                   S: handle[Geom_Surface]; Tol: Standard_Real): Approx_SameParameter {.
    constructor, importcpp: "Approx_SameParameter(@)",
    header: "Approx_SameParameter.hxx".}
proc constructApprox_SameParameter*(C3D: handle[Adaptor3d_HCurve];
                                   C2D: handle[Geom2d_Curve];
                                   S: handle[Adaptor3d_HSurface];
                                   Tol: Standard_Real): Approx_SameParameter {.
    constructor, importcpp: "Approx_SameParameter(@)",
    header: "Approx_SameParameter.hxx".}
proc constructApprox_SameParameter*(C3D: handle[Adaptor3d_HCurve];
                                   C2D: handle[Adaptor2d_HCurve2d];
                                   S: handle[Adaptor3d_HSurface];
                                   Tol: Standard_Real): Approx_SameParameter {.
    constructor, importcpp: "Approx_SameParameter(@)",
    header: "Approx_SameParameter.hxx".}
proc IsDone*(this: Approx_SameParameter): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Approx_SameParameter.hxx".}
proc TolReached*(this: Approx_SameParameter): Standard_Real {.noSideEffect,
    importcpp: "TolReached", header: "Approx_SameParameter.hxx".}
proc IsSameParameter*(this: Approx_SameParameter): Standard_Boolean {.noSideEffect,
    importcpp: "IsSameParameter", header: "Approx_SameParameter.hxx".}
proc Curve2d*(this: Approx_SameParameter): handle[Geom2d_Curve] {.noSideEffect,
    importcpp: "Curve2d", header: "Approx_SameParameter.hxx".}