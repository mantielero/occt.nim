##  Created on: 1991-08-22
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
discard "forward decl of Standard_ConstructionError"
discard "forward decl of math_Matrix"
type
  MathUzawa* {.importcpp: "math_Uzawa", header: "math_Uzawa.hxx", bycopy.} = object ## !
                                                                            ## Given an
                                                                            ## input
                                                                            ## matrix
                                                                            ## Cont, two
                                                                            ## input
                                                                            ## vectors
                                                                            ## Secont
                                                                            ## ! and
                                                                            ## StartingPoint, it
                                                                            ## solves
                                                                            ## Cont*X =
                                                                            ## Secont
                                                                            ## (only
                                                                            ## ! =
                                                                            ## equations) with a
                                                                            ## minimization of
                                                                            ## Norme(X-X0).
                                                                            ## ! The
                                                                            ## maximun
                                                                            ## iterations
                                                                            ## number
                                                                            ## allowed is
                                                                            ## fixed to
                                                                            ## !
                                                                            ## NbIterations.
                                                                            ## ! The
                                                                            ## tolerance
                                                                            ## EpsLic is
                                                                            ## fixed for the dual
                                                                            ## variable
                                                                            ## !
                                                                            ## convergence. The
                                                                            ## tolerance
                                                                            ## EpsLix is used for the
                                                                            ## !
                                                                            ## convergence of X.
                                                                            ## !
                                                                            ## Exception
                                                                            ## ConstuctionError is
                                                                            ## raised if the line
                                                                            ## number
                                                                            ## ! of Cont is
                                                                            ## different from the
                                                                            ## length of
                                                                            ## Secont.
                                                                            ## ! Is used
                                                                            ## internally by the two
                                                                            ## constructors
                                                                            ## above.


proc newMathUzawa*(cont: MathMatrix; secont: MathVector; startingPoint: MathVector;
                  epsLix: cfloat = 1.0e-06; epsLic: cfloat = 1.0e-06;
                  nbIterations: cint = 500): MathUzawa {.cdecl, constructor,
    importcpp: "math_Uzawa(@)", dynlib: tkmath.}
proc newMathUzawa*(cont: MathMatrix; secont: MathVector; startingPoint: MathVector;
                  nci: cint; nce: cint; epsLix: cfloat = 1.0e-06;
                  epsLic: cfloat = 1.0e-06; nbIterations: cint = 500): MathUzawa {.cdecl,
    constructor, importcpp: "math_Uzawa(@)", dynlib: tkmath.}
proc isDone*(this: MathUzawa): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                  dynlib: tkmath.}
proc value*(this: MathUzawa): MathVector {.noSideEffect, cdecl, importcpp: "Value",
                                       dynlib: tkmath.}
proc initialError*(this: MathUzawa): MathVector {.noSideEffect, cdecl,
    importcpp: "InitialError", dynlib: tkmath.}
proc duale*(this: MathUzawa; v: var MathVector) {.noSideEffect, cdecl,
    importcpp: "Duale", dynlib: tkmath.}
proc error*(this: MathUzawa): MathVector {.noSideEffect, cdecl, importcpp: "Error",
                                       dynlib: tkmath.}
proc nbIterations*(this: MathUzawa): cint {.noSideEffect, cdecl,
                                        importcpp: "NbIterations", dynlib: tkmath.}
proc inverseCont*(this: MathUzawa): MathMatrix {.noSideEffect, cdecl,
    importcpp: "InverseCont", dynlib: tkmath.}
proc dump*(this: MathUzawa; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", dynlib: tkmath.}