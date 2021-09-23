##  Created on: 1991-07-17
##  Created by: Isabelle GRIGNON
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../TColStd/TColStd_SequenceOfReal, ../TColStd/TColStd_SequenceOfInteger,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../Standard/Standard_OStream

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_NumericError"
discard "forward decl of math_FunctionWithDerivative"
discard "forward decl of math_FunctionSample"
type
  math_FunctionAllRoots* {.importcpp: "math_FunctionAllRoots",
                          header: "math_FunctionAllRoots.hxx", bycopy.} = object ## ! The
                                                                            ## algorithm uses the
                                                                            ## sample to find
                                                                            ## intervals on
                                                                            ## which
                                                                            ## ! the
                                                                            ## function is
                                                                            ## null. An
                                                                            ## interval is
                                                                            ## found if, for at
                                                                            ## least
                                                                            ## ! two
                                                                            ## consecutive
                                                                            ## points of the
                                                                            ## sample, Ui and
                                                                            ## Ui+1, we get
                                                                            ## !
                                                                            ## |F(Ui)|<=EpsNul and
                                                                            ## |F(Ui+1)|<=EpsNul. The real
                                                                            ## bounds of
                                                                            ## ! an
                                                                            ## interval are
                                                                            ## computed with the
                                                                            ## FunctionRoots.
                                                                            ## !
                                                                            ## algorithm.
                                                                            ## !
                                                                            ## Between two
                                                                            ## intervals, the
                                                                            ## roots of the
                                                                            ## function F are
                                                                            ## !
                                                                            ## calculated
                                                                            ## using the
                                                                            ## FunctionRoots
                                                                            ## algorithm.


proc constructmath_FunctionAllRoots*(F: var math_FunctionWithDerivative;
                                    S: math_FunctionSample; EpsX: Standard_Real;
                                    EpsF: Standard_Real; EpsNul: Standard_Real): math_FunctionAllRoots {.
    constructor, importcpp: "math_FunctionAllRoots(@)",
    header: "math_FunctionAllRoots.hxx".}
proc IsDone*(this: math_FunctionAllRoots): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "math_FunctionAllRoots.hxx".}
proc NbIntervals*(this: math_FunctionAllRoots): Standard_Integer {.noSideEffect,
    importcpp: "NbIntervals", header: "math_FunctionAllRoots.hxx".}
proc GetInterval*(this: math_FunctionAllRoots; Index: Standard_Integer;
                 A: var Standard_Real; B: var Standard_Real) {.noSideEffect,
    importcpp: "GetInterval", header: "math_FunctionAllRoots.hxx".}
proc GetIntervalState*(this: math_FunctionAllRoots; Index: Standard_Integer;
                      IFirst: var Standard_Integer; ILast: var Standard_Integer) {.
    noSideEffect, importcpp: "GetIntervalState",
    header: "math_FunctionAllRoots.hxx".}
proc NbPoints*(this: math_FunctionAllRoots): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "math_FunctionAllRoots.hxx".}
proc GetPoint*(this: math_FunctionAllRoots; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "GetPoint", header: "math_FunctionAllRoots.hxx".}
proc GetPointState*(this: math_FunctionAllRoots; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "GetPointState", header: "math_FunctionAllRoots.hxx".}
proc Dump*(this: math_FunctionAllRoots; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "math_FunctionAllRoots.hxx".}