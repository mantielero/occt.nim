##  Created on: 1993-06-03
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of StdFail_UndefinedDerivative"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Dir2d"
type
  ContapSurfFunction* {.importcpp: "Contap_SurfFunction",
                       header: "Contap_SurfFunction.hxx", bycopy.} = object of MathFunctionSetWithDerivatives


proc constructContapSurfFunction*(): ContapSurfFunction {.constructor,
    importcpp: "Contap_SurfFunction(@)", header: "Contap_SurfFunction.hxx".}
proc set*(this: var ContapSurfFunction; s: Handle[Adaptor3dHSurface]) {.
    importcpp: "Set", header: "Contap_SurfFunction.hxx".}
proc set*(this: var ContapSurfFunction; eye: Pnt) {.importcpp: "Set",
    header: "Contap_SurfFunction.hxx".}
proc set*(this: var ContapSurfFunction; dir: Dir) {.importcpp: "Set",
    header: "Contap_SurfFunction.hxx".}
proc set*(this: var ContapSurfFunction; dir: Dir; angle: cfloat) {.importcpp: "Set",
    header: "Contap_SurfFunction.hxx".}
proc set*(this: var ContapSurfFunction; eye: Pnt; angle: cfloat) {.importcpp: "Set",
    header: "Contap_SurfFunction.hxx".}
proc set*(this: var ContapSurfFunction; tolerance: cfloat) {.importcpp: "Set",
    header: "Contap_SurfFunction.hxx".}
proc nbVariables*(this: ContapSurfFunction): cint {.noSideEffect,
    importcpp: "NbVariables", header: "Contap_SurfFunction.hxx".}
proc nbEquations*(this: ContapSurfFunction): cint {.noSideEffect,
    importcpp: "NbEquations", header: "Contap_SurfFunction.hxx".}
proc value*(this: var ContapSurfFunction; x: MathVector; f: var MathVector): bool {.
    importcpp: "Value", header: "Contap_SurfFunction.hxx".}
proc derivatives*(this: var ContapSurfFunction; x: MathVector; d: var MathMatrix): bool {.
    importcpp: "Derivatives", header: "Contap_SurfFunction.hxx".}
proc values*(this: var ContapSurfFunction; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.importcpp: "Values",
                                   header: "Contap_SurfFunction.hxx".}
proc root*(this: ContapSurfFunction): cfloat {.noSideEffect, importcpp: "Root",
    header: "Contap_SurfFunction.hxx".}
proc tolerance*(this: ContapSurfFunction): cfloat {.noSideEffect,
    importcpp: "Tolerance", header: "Contap_SurfFunction.hxx".}
proc point*(this: ContapSurfFunction): Pnt {.noSideEffect, importcpp: "Point",
    header: "Contap_SurfFunction.hxx".}
proc isTangent*(this: var ContapSurfFunction): bool {.importcpp: "IsTangent",
    header: "Contap_SurfFunction.hxx".}
proc direction3d*(this: var ContapSurfFunction): Vec {.importcpp: "Direction3d",
    header: "Contap_SurfFunction.hxx".}
proc direction2d*(this: var ContapSurfFunction): Dir2d {.importcpp: "Direction2d",
    header: "Contap_SurfFunction.hxx".}
proc functionType*(this: ContapSurfFunction): ContapTFunction {.noSideEffect,
    importcpp: "FunctionType", header: "Contap_SurfFunction.hxx".}
proc eye*(this: ContapSurfFunction): Pnt {.noSideEffect, importcpp: "Eye",
                                       header: "Contap_SurfFunction.hxx".}
proc direction*(this: ContapSurfFunction): Dir {.noSideEffect,
    importcpp: "Direction", header: "Contap_SurfFunction.hxx".}
proc angle*(this: ContapSurfFunction): cfloat {.noSideEffect, importcpp: "Angle",
    header: "Contap_SurfFunction.hxx".}
proc surface*(this: ContapSurfFunction): Handle[Adaptor3dHSurface] {.noSideEffect,
    importcpp: "Surface", header: "Contap_SurfFunction.hxx".}
proc pSurface*(this: ContapSurfFunction): Handle[Adaptor3dHSurface] {.noSideEffect,
    importcpp: "PSurface", header: "Contap_SurfFunction.hxx".}

























