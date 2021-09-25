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

discard "forward decl of GProp_UndefinedAxis"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
type
  GPropPrincipalProps* {.importcpp: "GProp_PrincipalProps",
                        header: "GProp_PrincipalProps.hxx", bycopy.} = object ## ! creates an
                                                                         ## undefined
                                                                         ## PrincipalProps.


proc constructGPropPrincipalProps*(): GPropPrincipalProps {.constructor,
    importcpp: "GProp_PrincipalProps(@)", header: "GProp_PrincipalProps.hxx".}
proc hasSymmetryAxis*(this: GPropPrincipalProps): bool {.noSideEffect,
    importcpp: "HasSymmetryAxis", header: "GProp_PrincipalProps.hxx".}
proc hasSymmetryAxis*(this: GPropPrincipalProps; aTol: float): bool {.noSideEffect,
    importcpp: "HasSymmetryAxis", header: "GProp_PrincipalProps.hxx".}
proc hasSymmetryPoint*(this: GPropPrincipalProps): bool {.noSideEffect,
    importcpp: "HasSymmetryPoint", header: "GProp_PrincipalProps.hxx".}
proc hasSymmetryPoint*(this: GPropPrincipalProps; aTol: float): bool {.noSideEffect,
    importcpp: "HasSymmetryPoint", header: "GProp_PrincipalProps.hxx".}
proc moments*(this: GPropPrincipalProps; ixx: var float; iyy: var float; izz: var float) {.
    noSideEffect, importcpp: "Moments", header: "GProp_PrincipalProps.hxx".}
proc firstAxisOfInertia*(this: GPropPrincipalProps): Vec {.noSideEffect,
    importcpp: "FirstAxisOfInertia", header: "GProp_PrincipalProps.hxx".}
proc secondAxisOfInertia*(this: GPropPrincipalProps): Vec {.noSideEffect,
    importcpp: "SecondAxisOfInertia", header: "GProp_PrincipalProps.hxx".}
proc thirdAxisOfInertia*(this: GPropPrincipalProps): Vec {.noSideEffect,
    importcpp: "ThirdAxisOfInertia", header: "GProp_PrincipalProps.hxx".}
proc radiusOfGyration*(this: GPropPrincipalProps; rxx: var float; ryy: var float;
                      rzz: var float) {.noSideEffect, importcpp: "RadiusOfGyration",
                                     header: "GProp_PrincipalProps.hxx".}
