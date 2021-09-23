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

import
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../Standard/Standard_PrimitiveTypes

##  History - the C function pointer converted to a virtual class
##  in order to get rid of usage of static functions and static data

type
  AdvApp2Var_EvaluatorFunc2Var* {.importcpp: "AdvApp2Var_EvaluatorFunc2Var",
                                 header: "AdvApp2Var_EvaluatorFunc2Var.hxx",
                                 bycopy.} = object ## ! Empty constructor
                                                ## ! Copy constructor is declared private to forbid copying


proc constructAdvApp2Var_EvaluatorFunc2Var*(): AdvApp2Var_EvaluatorFunc2Var {.
    constructor, importcpp: "AdvApp2Var_EvaluatorFunc2Var(@)",
    header: "AdvApp2Var_EvaluatorFunc2Var.hxx".}
proc destroyAdvApp2Var_EvaluatorFunc2Var*(this: var AdvApp2Var_EvaluatorFunc2Var) {.
    importcpp: "#.~AdvApp2Var_EvaluatorFunc2Var()",
    header: "AdvApp2Var_EvaluatorFunc2Var.hxx".}
proc Evaluate*(this: AdvApp2Var_EvaluatorFunc2Var;
              theDimension: ptr Standard_Integer; theUStartEnd: ptr Standard_Real;
              theVStartEnd: ptr Standard_Real; theFavorIso: ptr Standard_Integer;
              theConstParam: ptr Standard_Real; theNbParams: ptr Standard_Integer;
              theParameters: ptr Standard_Real; theUOrder: ptr Standard_Integer;
              theVOrder: ptr Standard_Integer; theResult: ptr Standard_Real;
              theErrorCode: ptr Standard_Integer) {.noSideEffect,
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
proc `()`*(this: AdvApp2Var_EvaluatorFunc2Var; theDimension: ptr Standard_Integer;
          theUStartEnd: ptr Standard_Real; theVStartEnd: ptr Standard_Real;
          theFavorIso: ptr Standard_Integer; theConstParam: ptr Standard_Real;
          theNbParams: ptr Standard_Integer; theParameters: ptr Standard_Real;
          theUOrder: ptr Standard_Integer; theVOrder: ptr Standard_Integer;
          theResult: ptr Standard_Real; theErrorCode: ptr Standard_Integer) {.
    noSideEffect, importcpp: "#(@)", header: "AdvApp2Var_EvaluatorFunc2Var.hxx".}