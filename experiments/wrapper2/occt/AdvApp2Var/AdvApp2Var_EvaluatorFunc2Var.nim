{.experimental: "callOperator".}
##  Created on: 1996-04-18
##  Created by: Joelle CHAUVET
##  Copyright (c) 1996-1999 Matra Datavision
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

##  History - the C function pointer converted to a virtual class
##  in order to get rid of usage of static functions and static data

type
  AdvApp2VarEvaluatorFunc2Var* {.importcpp: "AdvApp2Var_EvaluatorFunc2Var",
                                header: "AdvApp2Var_EvaluatorFunc2Var.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor
                                                                                         ##
                                                                                         ## !
                                                                                         ## Copy
                                                                                         ## constructor
                                                                                         ## is
                                                                                         ## declared
                                                                                         ## private
                                                                                         ## to
                                                                                         ## forbid
                                                                                         ## copying


proc constructAdvApp2VarEvaluatorFunc2Var*(): AdvApp2VarEvaluatorFunc2Var {.
    constructor, importcpp: "AdvApp2Var_EvaluatorFunc2Var(@)",
    header: "AdvApp2Var_EvaluatorFunc2Var.hxx".}
proc destroyAdvApp2VarEvaluatorFunc2Var*(this: var AdvApp2VarEvaluatorFunc2Var) {.
    importcpp: "#.~AdvApp2Var_EvaluatorFunc2Var()",
    header: "AdvApp2Var_EvaluatorFunc2Var.hxx".}
proc evaluate*(this: AdvApp2VarEvaluatorFunc2Var; theDimension: ptr int;
              theUStartEnd: ptr float; theVStartEnd: ptr float; theFavorIso: ptr int;
              theConstParam: ptr float; theNbParams: ptr int;
              theParameters: ptr float; theUOrder: ptr int; theVOrder: ptr int;
              theResult: ptr float; theErrorCode: ptr int) {.noSideEffect,
    importcpp: "Evaluate", header: "AdvApp2Var_EvaluatorFunc2Var.hxx".}
  ## !< First and last parameters in U
  ## !< First and last parameters in V
  ## !< Choice of constante, 1 for U, 2 for V
  ## !< Value of constant parameter
  ## !< Number of parameters N
  ## !< Values of parameters,
  ## !< Derivative Request in U
  ## !< Derivative Request in V
  ## !< Result[Dimension,N]
proc `()`*(this: AdvApp2VarEvaluatorFunc2Var; theDimension: ptr int;
          theUStartEnd: ptr float; theVStartEnd: ptr float; theFavorIso: ptr int;
          theConstParam: ptr float; theNbParams: ptr int; theParameters: ptr float;
          theUOrder: ptr int; theVOrder: ptr int; theResult: ptr float;
          theErrorCode: ptr int) {.noSideEffect, importcpp: "#(@)",
                                header: "AdvApp2Var_EvaluatorFunc2Var.hxx".}

