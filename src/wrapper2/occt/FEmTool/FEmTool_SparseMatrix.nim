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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../math/math_Vector

discard "forward decl of StdFail_NotDone"
discard "forward decl of FEmTool_SparseMatrix"
discard "forward decl of FEmTool_SparseMatrix"
type
  Handle_FEmTool_SparseMatrix* = handle[FEmTool_SparseMatrix]

## ! Sparse Matrix definition

type
  FEmTool_SparseMatrix* {.importcpp: "FEmTool_SparseMatrix",
                         header: "FEmTool_SparseMatrix.hxx", bycopy.} = object of Standard_Transient


proc Init*(this: var FEmTool_SparseMatrix; Value: Standard_Real) {.importcpp: "Init",
    header: "FEmTool_SparseMatrix.hxx".}
proc ChangeValue*(this: var FEmTool_SparseMatrix; I: Standard_Integer;
                 J: Standard_Integer): var Standard_Real {.importcpp: "ChangeValue",
    header: "FEmTool_SparseMatrix.hxx".}
proc Decompose*(this: var FEmTool_SparseMatrix): Standard_Boolean {.
    importcpp: "Decompose", header: "FEmTool_SparseMatrix.hxx".}
proc Solve*(this: FEmTool_SparseMatrix; B: math_Vector; X: var math_Vector) {.
    noSideEffect, importcpp: "Solve", header: "FEmTool_SparseMatrix.hxx".}
proc Prepare*(this: var FEmTool_SparseMatrix): Standard_Boolean {.
    importcpp: "Prepare", header: "FEmTool_SparseMatrix.hxx".}
proc Solve*(this: FEmTool_SparseMatrix; B: math_Vector; Init: math_Vector;
           X: var math_Vector; Residual: var math_Vector;
           Tolerance: Standard_Real = 1.0e-8; NbIterations: Standard_Integer = 50) {.
    noSideEffect, importcpp: "Solve", header: "FEmTool_SparseMatrix.hxx".}
proc Multiplied*(this: FEmTool_SparseMatrix; X: math_Vector; MX: var math_Vector) {.
    noSideEffect, importcpp: "Multiplied", header: "FEmTool_SparseMatrix.hxx".}
proc RowNumber*(this: FEmTool_SparseMatrix): Standard_Integer {.noSideEffect,
    importcpp: "RowNumber", header: "FEmTool_SparseMatrix.hxx".}
proc ColNumber*(this: FEmTool_SparseMatrix): Standard_Integer {.noSideEffect,
    importcpp: "ColNumber", header: "FEmTool_SparseMatrix.hxx".}
type
  FEmTool_SparseMatrixbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "FEmTool_SparseMatrix::get_type_name(@)",
                              header: "FEmTool_SparseMatrix.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "FEmTool_SparseMatrix::get_type_descriptor(@)",
    header: "FEmTool_SparseMatrix.hxx".}
proc DynamicType*(this: FEmTool_SparseMatrix): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "FEmTool_SparseMatrix.hxx".}