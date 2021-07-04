##  Created on: 1992-10-14
##  Created by: Christophe MARION
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  HLRBRep_TheCSFunctionOfInterCSurf, ../Standard/Standard_Real,
  ../Standard/Standard_Address

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DomainError"
discard "forward decl of HLRBRep_SurfaceTool"
discard "forward decl of gp_Lin"
discard "forward decl of HLRBRep_LineTool"
discard "forward decl of HLRBRep_TheCSFunctionOfInterCSurf"
discard "forward decl of math_FunctionSetRoot"
discard "forward decl of gp_Pnt"
type
  HLRBRep_TheExactInterCSurf* {.importcpp: "HLRBRep_TheExactInterCSurf",
                               header: "HLRBRep_TheExactInterCSurf.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## compute
                                                                                      ## the
                                                                                      ## solution
                                                                                      ## point
                                                                                      ## with
                                                                                      ## the
                                                                                      ## close
                                                                                      ## point
                                                                                      ##
                                                                                      ## !
                                                                                      ## MarginCoef
                                                                                      ## is
                                                                                      ## the
                                                                                      ## coefficient
                                                                                      ## for
                                                                                      ## extension
                                                                                      ## of
                                                                                      ## UV
                                                                                      ## bounds.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Ex.,
                                                                                      ## UFirst
                                                                                      ## -=
                                                                                      ## MarginCoef*(ULast-UFirst)


proc constructHLRBRep_TheExactInterCSurf*(U: Standard_Real; V: Standard_Real;
    W: Standard_Real; F: HLRBRep_TheCSFunctionOfInterCSurf;
    TolTangency: Standard_Real; MarginCoef: Standard_Real = 0.0): HLRBRep_TheExactInterCSurf {.
    constructor, importcpp: "HLRBRep_TheExactInterCSurf(@)",
    header: "HLRBRep_TheExactInterCSurf.hxx".}
proc constructHLRBRep_TheExactInterCSurf*(F: HLRBRep_TheCSFunctionOfInterCSurf;
    TolTangency: Standard_Real): HLRBRep_TheExactInterCSurf {.constructor,
    importcpp: "HLRBRep_TheExactInterCSurf(@)",
    header: "HLRBRep_TheExactInterCSurf.hxx".}
proc Perform*(this: var HLRBRep_TheExactInterCSurf; U: Standard_Real;
             V: Standard_Real; W: Standard_Real; Rsnld: var math_FunctionSetRoot;
             u0: Standard_Real; v0: Standard_Real; u1: Standard_Real;
             v1: Standard_Real; w0: Standard_Real; w1: Standard_Real) {.
    importcpp: "Perform", header: "HLRBRep_TheExactInterCSurf.hxx".}
proc IsDone*(this: HLRBRep_TheExactInterCSurf): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "HLRBRep_TheExactInterCSurf.hxx".}
proc IsEmpty*(this: HLRBRep_TheExactInterCSurf): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "HLRBRep_TheExactInterCSurf.hxx".}
proc Point*(this: HLRBRep_TheExactInterCSurf): gp_Pnt {.noSideEffect,
    importcpp: "Point", header: "HLRBRep_TheExactInterCSurf.hxx".}
proc ParameterOnCurve*(this: HLRBRep_TheExactInterCSurf): Standard_Real {.
    noSideEffect, importcpp: "ParameterOnCurve",
    header: "HLRBRep_TheExactInterCSurf.hxx".}
proc ParameterOnSurface*(this: HLRBRep_TheExactInterCSurf; U: var Standard_Real;
                        V: var Standard_Real) {.noSideEffect,
    importcpp: "ParameterOnSurface", header: "HLRBRep_TheExactInterCSurf.hxx".}
proc Function*(this: var HLRBRep_TheExactInterCSurf): var HLRBRep_TheCSFunctionOfInterCSurf {.
    importcpp: "Function", header: "HLRBRep_TheExactInterCSurf.hxx".}