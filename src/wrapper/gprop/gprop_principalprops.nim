import gprop_types
import ../gp/gp_types

##  Created on: 1992-02-17
##  Created by: Jean Claude VAUTHIER
##  Copyright (c) 1992-1999 Matra Datavision
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

## ! A framework to present the principal properties of
## ! inertia of a system of which global properties are
## ! computed by a GProp_GProps object.
## ! There is always a set of axes for which the
## ! products of inertia of a geometric system are equal
## ! to 0; i.e. the matrix of inertia of the system is
## ! diagonal. These axes are the principal axes of
## ! inertia. Their origin is coincident with the center of
## ! mass of the system. The associated moments are
## ! called the principal moments of inertia.
## ! This sort of presentation object is created, filled and
## ! returned by the function PrincipalProperties for
## ! any GProp_GProps object, and can be queried to access the result.
## ! Note: The system whose principal properties of
## ! inertia are returned by this framework is referred to
## ! as the current system. The current system,
## ! however, is retained neither by this presentation
## ! framework nor by the GProp_GProps object which activates it.

{.push header:"GProp_PrincipalProps.hxx".}
proc newGProp_PrincipalProps*(): GProp_PrincipalProps {.cdecl, constructor,
    importcpp: "GProp_PrincipalProps(@)".}
proc HasSymmetryAxis*(this: GProp_PrincipalProps): bool {.noSideEffect, cdecl,
    importcpp: "HasSymmetryAxis".}
proc HasSymmetryAxis*(this: GProp_PrincipalProps; aTol: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "HasSymmetryAxis".}
proc HasSymmetryPoint*(this: GProp_PrincipalProps): bool {.noSideEffect, cdecl,
    importcpp: "HasSymmetryPoint".}
proc HasSymmetryPoint*(this: GProp_PrincipalProps; aTol: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "HasSymmetryPoint".}
proc Moments*(this: GProp_PrincipalProps; Ixx: var cfloat; Iyy: var cfloat;
             Izz: var cfloat) {.noSideEffect, cdecl, importcpp: "Moments",
                             .}
proc FirstAxisOfInertia*(this: GProp_PrincipalProps): gp_Vec {.noSideEffect, cdecl,
    importcpp: "FirstAxisOfInertia".}
proc SecondAxisOfInertia*(this: GProp_PrincipalProps): gp_Vec {.noSideEffect, cdecl,
    importcpp: "SecondAxisOfInertia".}
proc ThirdAxisOfInertia*(this: GProp_PrincipalProps): gp_Vec {.noSideEffect, cdecl,
    importcpp: "ThirdAxisOfInertia".}
proc RadiusOfGyration*(this: GProp_PrincipalProps; Rxx: var cfloat; Ryy: var cfloat;
                      Rzz: var cfloat) {.noSideEffect, cdecl,
                                      importcpp: "RadiusOfGyration",
                                      .}
{.pop.}