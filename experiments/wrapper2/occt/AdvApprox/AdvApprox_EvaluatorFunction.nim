##  Created on: 1995-05-29
##  Created by: Xavier BENVENISTE
##  Copyright (c) 1995-1999 Matra Datavision
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

##  abv 01.04.2009: the C function pointer converted to a virtual class
##  in order to get rid of usage of static functions and static data
## ! Interface for a class implementing a function to be approximated
## ! by AdvApprox_ApproxAFunction

type
  AdvApprox_EvaluatorFunction* {.importcpp: "AdvApprox_EvaluatorFunction",
                                header: "AdvApprox_EvaluatorFunction.hxx", bycopy.} = object ##
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


proc constructAdvApprox_EvaluatorFunction*(): AdvApprox_EvaluatorFunction {.
    constructor, importcpp: "AdvApprox_EvaluatorFunction(@)",
    header: "AdvApprox_EvaluatorFunction.hxx".}
proc destroyAdvApprox_EvaluatorFunction*(this: var AdvApprox_EvaluatorFunction) {.
    importcpp: "#.~AdvApprox_EvaluatorFunction()",
    header: "AdvApprox_EvaluatorFunction.hxx".}
proc Evaluate*(this: var AdvApprox_EvaluatorFunction;
              Dimension: ptr Standard_Integer; StartEnd: array[2, Standard_Real];
              Parameter: ptr Standard_Real;
              DerivativeRequest: ptr Standard_Integer; Result: ptr Standard_Real;
              ErrorCode: ptr Standard_Integer) {.importcpp: "Evaluate",
    header: "AdvApprox_EvaluatorFunction.hxx".}
  ##  [Dimension]
proc `()`*(this: var AdvApprox_EvaluatorFunction; Dimension: ptr Standard_Integer;
          StartEnd: array[2, Standard_Real]; Parameter: ptr Standard_Real;
          DerivativeRequest: ptr Standard_Integer; Result: ptr Standard_Real;
          ErrorCode: ptr Standard_Integer) {.importcpp: "#(@)",
    header: "AdvApprox_EvaluatorFunction.hxx".}
  ##  [Dimension]