##  Created on: 1991-05-13
##  Created by: Laurent Painnot
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

## ! Describes the virtual functions associated with a multiple variable function.

type
  MathMultipleVarFunction* {.importcpp: "math_MultipleVarFunction",
                            header: "math_MultipleVarFunction.hxx", bycopy.} = object of RootObj ##
                                                                                 ## !
                                                                                 ## Returns
                                                                                 ## the
                                                                                 ## number
                                                                                 ## of
                                                                                 ## variables
                                                                                 ## of
                                                                                 ## the
                                                                                 ## function


proc nbVariables*(this: MathMultipleVarFunction): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", header: "math_MultipleVarFunction.hxx".}
proc value*(this: var MathMultipleVarFunction; x: MathVector; f: var cfloat): bool {.
    cdecl, importcpp: "Value", header: "math_MultipleVarFunction.hxx".}
proc getStateNumber*(this: var MathMultipleVarFunction): cint {.cdecl,
    importcpp: "GetStateNumber", header: "math_MultipleVarFunction.hxx".}
proc destroyMathMultipleVarFunction*(this: var MathMultipleVarFunction) {.cdecl,
    importcpp: "#.~math_MultipleVarFunction()", header: "math_MultipleVarFunction.hxx".}