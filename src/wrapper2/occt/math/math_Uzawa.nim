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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, math_Vector, math_Matrix,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../Standard/Standard_OStream

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of math_Matrix"
type
  math_Uzawa* {.importcpp: "math_Uzawa", header: "math_Uzawa.hxx", bycopy.} = object ## !
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
                                                                             ## equations)
                                                                             ## with a
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
                                                                             ## fixed for the
                                                                             ## dual
                                                                             ## variable
                                                                             ## !
                                                                             ## convergence. The
                                                                             ## tolerance
                                                                             ## EpsLix is
                                                                             ## used for the
                                                                             ## !
                                                                             ## convergence of X.
                                                                             ## !
                                                                             ## Exception
                                                                             ## ConstuctionError is
                                                                             ## raised if the
                                                                             ## line
                                                                             ## number
                                                                             ## ! of
                                                                             ## Cont is
                                                                             ## different
                                                                             ## from the
                                                                             ## length of
                                                                             ## Secont.
                                                                             ## ! Is
                                                                             ## used
                                                                             ## internally by the two
                                                                             ## constructors
                                                                             ## above.


proc constructmath_Uzawa*(Cont: math_Matrix; Secont: math_Vector;
                         StartingPoint: math_Vector;
                         EpsLix: Standard_Real = 1.0e-06;
                         EpsLic: Standard_Real = 1.0e-06;
                         NbIterations: Standard_Integer = 500): math_Uzawa {.
    constructor, importcpp: "math_Uzawa(@)", header: "math_Uzawa.hxx".}
proc constructmath_Uzawa*(Cont: math_Matrix; Secont: math_Vector;
                         StartingPoint: math_Vector; Nci: Standard_Integer;
                         Nce: Standard_Integer; EpsLix: Standard_Real = 1.0e-06;
                         EpsLic: Standard_Real = 1.0e-06;
                         NbIterations: Standard_Integer = 500): math_Uzawa {.
    constructor, importcpp: "math_Uzawa(@)", header: "math_Uzawa.hxx".}
proc IsDone*(this: math_Uzawa): Standard_Boolean {.noSideEffect, importcpp: "IsDone",
    header: "math_Uzawa.hxx".}
proc Value*(this: math_Uzawa): math_Vector {.noSideEffect, importcpp: "Value",
    header: "math_Uzawa.hxx".}
proc InitialError*(this: math_Uzawa): math_Vector {.noSideEffect,
    importcpp: "InitialError", header: "math_Uzawa.hxx".}
proc Duale*(this: math_Uzawa; V: var math_Vector) {.noSideEffect, importcpp: "Duale",
    header: "math_Uzawa.hxx".}
proc Error*(this: math_Uzawa): math_Vector {.noSideEffect, importcpp: "Error",
    header: "math_Uzawa.hxx".}
proc NbIterations*(this: math_Uzawa): Standard_Integer {.noSideEffect,
    importcpp: "NbIterations", header: "math_Uzawa.hxx".}
proc InverseCont*(this: math_Uzawa): math_Matrix {.noSideEffect,
    importcpp: "InverseCont", header: "math_Uzawa.hxx".}
proc Dump*(this: math_Uzawa; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "math_Uzawa.hxx".}