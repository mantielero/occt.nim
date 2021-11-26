##  Created on: 1997-10-29
##  Created by: Roman BORISOV
##  Copyright (c) 1997-1999 Matra Datavision
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
discard "forward decl of Standard_NotImplemented"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of FEmTool_ProfileMatrix"
discard "forward decl of FEmTool_ProfileMatrix"
type
  HandleC1C1* = Handle[FEmToolProfileMatrix]

## ! Symmetric Sparse ProfileMatrix useful  for 1D Finite
## ! Element methods

type
  FEmToolProfileMatrix* {.importcpp: "FEmTool_ProfileMatrix",
                         header: "FEmTool_ProfileMatrix.hxx", bycopy.} = object of FEmToolSparseMatrix


proc constructFEmToolProfileMatrix*(firstIndexes: TColStdArray1OfInteger): FEmToolProfileMatrix {.
    constructor, importcpp: "FEmTool_ProfileMatrix(@)",
    header: "FEmTool_ProfileMatrix.hxx".}
proc init*(this: var FEmToolProfileMatrix; value: cfloat) {.importcpp: "Init",
    header: "FEmTool_ProfileMatrix.hxx".}
proc changeValue*(this: var FEmToolProfileMatrix; i: cint; j: cint): var cfloat {.
    importcpp: "ChangeValue", header: "FEmTool_ProfileMatrix.hxx".}
proc decompose*(this: var FEmToolProfileMatrix): bool {.importcpp: "Decompose",
    header: "FEmTool_ProfileMatrix.hxx".}
proc solve*(this: FEmToolProfileMatrix; b: MathVector; x: var MathVector) {.
    noSideEffect, importcpp: "Solve", header: "FEmTool_ProfileMatrix.hxx".}
proc prepare*(this: var FEmToolProfileMatrix): bool {.importcpp: "Prepare",
    header: "FEmTool_ProfileMatrix.hxx".}
proc solve*(this: FEmToolProfileMatrix; b: MathVector; init: MathVector;
           x: var MathVector; residual: var MathVector; tolerance: cfloat = 1.0e-8;
           nbIterations: cint = 50) {.noSideEffect, importcpp: "Solve",
                                  header: "FEmTool_ProfileMatrix.hxx".}
proc multiplied*(this: FEmToolProfileMatrix; x: MathVector; mx: var MathVector) {.
    noSideEffect, importcpp: "Multiplied", header: "FEmTool_ProfileMatrix.hxx".}
proc rowNumber*(this: FEmToolProfileMatrix): cint {.noSideEffect,
    importcpp: "RowNumber", header: "FEmTool_ProfileMatrix.hxx".}
proc colNumber*(this: FEmToolProfileMatrix): cint {.noSideEffect,
    importcpp: "ColNumber", header: "FEmTool_ProfileMatrix.hxx".}
proc isInProfile*(this: FEmToolProfileMatrix; i: cint; j: cint): bool {.noSideEffect,
    importcpp: "IsInProfile", header: "FEmTool_ProfileMatrix.hxx".}
proc outM*(this: FEmToolProfileMatrix) {.noSideEffect, importcpp: "OutM",
                                      header: "FEmTool_ProfileMatrix.hxx".}
proc outS*(this: FEmToolProfileMatrix) {.noSideEffect, importcpp: "OutS",
                                      header: "FEmTool_ProfileMatrix.hxx".}
type
  FEmToolProfileMatrixbaseType* = FEmToolSparseMatrix

proc getTypeName*(): cstring {.importcpp: "FEmTool_ProfileMatrix::get_type_name(@)",
                            header: "FEmTool_ProfileMatrix.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "FEmTool_ProfileMatrix::get_type_descriptor(@)",
    header: "FEmTool_ProfileMatrix.hxx".}
proc dynamicType*(this: FEmToolProfileMatrix): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "FEmTool_ProfileMatrix.hxx".}

























