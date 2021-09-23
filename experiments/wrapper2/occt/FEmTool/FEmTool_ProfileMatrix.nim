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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_Array2OfInteger, ../TColStd/TColStd_HArray1OfReal,
  ../TColStd/TColStd_HArray1OfInteger, ../Standard/Standard_Boolean,
  FEmTool_SparseMatrix, ../TColStd/TColStd_Array1OfInteger,
  ../Standard/Standard_Real, ../Standard/Standard_Integer, ../math/math_Vector

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of FEmTool_ProfileMatrix"
discard "forward decl of FEmTool_ProfileMatrix"
type
  Handle_FEmTool_ProfileMatrix* = handle[FEmTool_ProfileMatrix]

## ! Symmetric Sparse ProfileMatrix useful  for 1D Finite
## ! Element methods

type
  FEmTool_ProfileMatrix* {.importcpp: "FEmTool_ProfileMatrix",
                          header: "FEmTool_ProfileMatrix.hxx", bycopy.} = object of FEmTool_SparseMatrix


proc constructFEmTool_ProfileMatrix*(FirstIndexes: TColStd_Array1OfInteger): FEmTool_ProfileMatrix {.
    constructor, importcpp: "FEmTool_ProfileMatrix(@)",
    header: "FEmTool_ProfileMatrix.hxx".}
proc Init*(this: var FEmTool_ProfileMatrix; Value: Standard_Real) {.importcpp: "Init",
    header: "FEmTool_ProfileMatrix.hxx".}
proc ChangeValue*(this: var FEmTool_ProfileMatrix; I: Standard_Integer;
                 J: Standard_Integer): var Standard_Real {.importcpp: "ChangeValue",
    header: "FEmTool_ProfileMatrix.hxx".}
proc Decompose*(this: var FEmTool_ProfileMatrix): Standard_Boolean {.
    importcpp: "Decompose", header: "FEmTool_ProfileMatrix.hxx".}
proc Solve*(this: FEmTool_ProfileMatrix; B: math_Vector; X: var math_Vector) {.
    noSideEffect, importcpp: "Solve", header: "FEmTool_ProfileMatrix.hxx".}
proc Prepare*(this: var FEmTool_ProfileMatrix): Standard_Boolean {.
    importcpp: "Prepare", header: "FEmTool_ProfileMatrix.hxx".}
proc Solve*(this: FEmTool_ProfileMatrix; B: math_Vector; Init: math_Vector;
           X: var math_Vector; Residual: var math_Vector;
           Tolerance: Standard_Real = 1.0e-8; NbIterations: Standard_Integer = 50) {.
    noSideEffect, importcpp: "Solve", header: "FEmTool_ProfileMatrix.hxx".}
proc Multiplied*(this: FEmTool_ProfileMatrix; X: math_Vector; MX: var math_Vector) {.
    noSideEffect, importcpp: "Multiplied", header: "FEmTool_ProfileMatrix.hxx".}
proc RowNumber*(this: FEmTool_ProfileMatrix): Standard_Integer {.noSideEffect,
    importcpp: "RowNumber", header: "FEmTool_ProfileMatrix.hxx".}
proc ColNumber*(this: FEmTool_ProfileMatrix): Standard_Integer {.noSideEffect,
    importcpp: "ColNumber", header: "FEmTool_ProfileMatrix.hxx".}
proc IsInProfile*(this: FEmTool_ProfileMatrix; i: Standard_Integer;
                 j: Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "IsInProfile", header: "FEmTool_ProfileMatrix.hxx".}
proc OutM*(this: FEmTool_ProfileMatrix) {.noSideEffect, importcpp: "OutM",
                                       header: "FEmTool_ProfileMatrix.hxx".}
proc OutS*(this: FEmTool_ProfileMatrix) {.noSideEffect, importcpp: "OutS",
                                       header: "FEmTool_ProfileMatrix.hxx".}
type
  FEmTool_ProfileMatrixbase_type* = FEmTool_SparseMatrix

proc get_type_name*(): cstring {.importcpp: "FEmTool_ProfileMatrix::get_type_name(@)",
                              header: "FEmTool_ProfileMatrix.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "FEmTool_ProfileMatrix::get_type_descriptor(@)",
    header: "FEmTool_ProfileMatrix.hxx".}
proc DynamicType*(this: FEmTool_ProfileMatrix): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "FEmTool_ProfileMatrix.hxx".}