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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real, ../gp/gp_Vec,
  ../gp/gp_Pnt, GProp_GProps, ../Standard/Standard_Boolean

discard "forward decl of GProp_UndefinedAxis"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
type
  GProp_PrincipalProps* {.importcpp: "GProp_PrincipalProps",
                         header: "GProp_PrincipalProps.hxx", bycopy.} = object ## !
                                                                          ## creates an
                                                                          ## undefined
                                                                          ## PrincipalProps.


proc constructGProp_PrincipalProps*(): GProp_PrincipalProps {.constructor,
    importcpp: "GProp_PrincipalProps(@)", header: "GProp_PrincipalProps.hxx".}
proc HasSymmetryAxis*(this: GProp_PrincipalProps): Standard_Boolean {.noSideEffect,
    importcpp: "HasSymmetryAxis", header: "GProp_PrincipalProps.hxx".}
proc HasSymmetryAxis*(this: GProp_PrincipalProps; aTol: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "HasSymmetryAxis", header: "GProp_PrincipalProps.hxx".}
proc HasSymmetryPoint*(this: GProp_PrincipalProps): Standard_Boolean {.noSideEffect,
    importcpp: "HasSymmetryPoint", header: "GProp_PrincipalProps.hxx".}
proc HasSymmetryPoint*(this: GProp_PrincipalProps; aTol: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "HasSymmetryPoint", header: "GProp_PrincipalProps.hxx".}
proc Moments*(this: GProp_PrincipalProps; Ixx: var Standard_Real;
             Iyy: var Standard_Real; Izz: var Standard_Real) {.noSideEffect,
    importcpp: "Moments", header: "GProp_PrincipalProps.hxx".}
proc FirstAxisOfInertia*(this: GProp_PrincipalProps): gp_Vec {.noSideEffect,
    importcpp: "FirstAxisOfInertia", header: "GProp_PrincipalProps.hxx".}
proc SecondAxisOfInertia*(this: GProp_PrincipalProps): gp_Vec {.noSideEffect,
    importcpp: "SecondAxisOfInertia", header: "GProp_PrincipalProps.hxx".}
proc ThirdAxisOfInertia*(this: GProp_PrincipalProps): gp_Vec {.noSideEffect,
    importcpp: "ThirdAxisOfInertia", header: "GProp_PrincipalProps.hxx".}
proc RadiusOfGyration*(this: GProp_PrincipalProps; Rxx: var Standard_Real;
                      Ryy: var Standard_Real; Rzz: var Standard_Real) {.noSideEffect,
    importcpp: "RadiusOfGyration", header: "GProp_PrincipalProps.hxx".}