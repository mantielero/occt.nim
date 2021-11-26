##  Created on: 1991-05-14
##  Created by: Laurent PAINNOT
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of math_Function"
type
  MathGaussSingleIntegration* {.importcpp: "math_GaussSingleIntegration",
                               header: "math_GaussSingleIntegration.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## perfoms
                                                                                       ## actual
                                                                                       ## computation


proc newMathGaussSingleIntegration*(): MathGaussSingleIntegration {.cdecl,
    constructor, importcpp: "math_GaussSingleIntegration(@)", dynlib: tkmath.}
proc newMathGaussSingleIntegration*(f: var MathFunction; lower: cfloat; upper: cfloat;
                                   order: cint): MathGaussSingleIntegration {.
    cdecl, constructor, importcpp: "math_GaussSingleIntegration(@)", dynlib: tkmath.}
proc newMathGaussSingleIntegration*(f: var MathFunction; lower: cfloat; upper: cfloat;
                                   order: cint; tol: cfloat): MathGaussSingleIntegration {.
    cdecl, constructor, importcpp: "math_GaussSingleIntegration(@)", dynlib: tkmath.}
proc isDone*(this: MathGaussSingleIntegration): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", dynlib: tkmath.}
proc value*(this: MathGaussSingleIntegration): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkmath.}
proc dump*(this: MathGaussSingleIntegration; o: var StandardOStream) {.noSideEffect,
    cdecl, importcpp: "Dump", dynlib: tkmath.}