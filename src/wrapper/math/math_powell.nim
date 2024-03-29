import math_types
import ../standard/standard_types
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
discard "forward decl of Standard_DimensionError"
discard "forward decl of math_MultipleVarFunction"
discard "forward decl of math_Matrix"


proc newMathPowell*(theFunction: MathMultipleVarFunction; theTolerance: cfloat;
                   theNbIterations: cint = 200; theZEPS: cfloat = 1.0e-12): MathPowell {.
    cdecl, constructor, importcpp: "math_Powell(@)", header: "math_Powell.hxx".}
proc destroyMathPowell*(this: var MathPowell) {.cdecl, importcpp: "#.~math_Powell()",
    header: "math_Powell.hxx".}
proc perform*(this: var MathPowell; theFunction: var MathMultipleVarFunction;
             theStartingPoint: MathVector; theStartingDirections: MathMatrix) {.
    cdecl, importcpp: "Perform", header: "math_Powell.hxx".}
proc isSolutionReached*(this: var MathPowell;
                       theFunction: var MathMultipleVarFunction): bool {.cdecl,
    importcpp: "IsSolutionReached", header: "math_Powell.hxx".}
proc isDone*(this: MathPowell): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                   header: "math_Powell.hxx".}
proc location*(this: MathPowell): MathVector {.noSideEffect, cdecl,
    importcpp: "Location", header: "math_Powell.hxx".}
proc location*(this: MathPowell; loc: var MathVector) {.noSideEffect, cdecl,
    importcpp: "Location", header: "math_Powell.hxx".}
proc minimum*(this: MathPowell): cfloat {.noSideEffect, cdecl, importcpp: "Minimum",
                                      header: "math_Powell.hxx".}
proc nbIterations*(this: MathPowell): cint {.noSideEffect, cdecl,
    importcpp: "NbIterations", header: "math_Powell.hxx".}
proc dump*(this: MathPowell; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", header: "math_Powell.hxx".}
