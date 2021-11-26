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
discard "forward decl of FEmTool_SparseMatrix"
discard "forward decl of FEmTool_SparseMatrix"
type
  HandleC1C1* = Handle[FEmToolSparseMatrix]

## ! Sparse Matrix definition

type
  FEmToolSparseMatrix* {.importcpp: "FEmTool_SparseMatrix",
                        header: "FEmTool_SparseMatrix.hxx", bycopy.} = object of StandardTransient


proc init*(this: var FEmToolSparseMatrix; value: cfloat) {.importcpp: "Init",
    header: "FEmTool_SparseMatrix.hxx".}
proc changeValue*(this: var FEmToolSparseMatrix; i: cint; j: cint): var cfloat {.
    importcpp: "ChangeValue", header: "FEmTool_SparseMatrix.hxx".}
proc decompose*(this: var FEmToolSparseMatrix): bool {.importcpp: "Decompose",
    header: "FEmTool_SparseMatrix.hxx".}
proc solve*(this: FEmToolSparseMatrix; b: MathVector; x: var MathVector) {.noSideEffect,
    importcpp: "Solve", header: "FEmTool_SparseMatrix.hxx".}
proc prepare*(this: var FEmToolSparseMatrix): bool {.importcpp: "Prepare",
    header: "FEmTool_SparseMatrix.hxx".}
proc solve*(this: FEmToolSparseMatrix; b: MathVector; init: MathVector;
           x: var MathVector; residual: var MathVector; tolerance: cfloat = 1.0e-8;
           nbIterations: cint = 50) {.noSideEffect, importcpp: "Solve",
                                  header: "FEmTool_SparseMatrix.hxx".}
proc multiplied*(this: FEmToolSparseMatrix; x: MathVector; mx: var MathVector) {.
    noSideEffect, importcpp: "Multiplied", header: "FEmTool_SparseMatrix.hxx".}
proc rowNumber*(this: FEmToolSparseMatrix): cint {.noSideEffect,
    importcpp: "RowNumber", header: "FEmTool_SparseMatrix.hxx".}
proc colNumber*(this: FEmToolSparseMatrix): cint {.noSideEffect,
    importcpp: "ColNumber", header: "FEmTool_SparseMatrix.hxx".}
type
  FEmToolSparseMatrixbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "FEmTool_SparseMatrix::get_type_name(@)",
                            header: "FEmTool_SparseMatrix.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "FEmTool_SparseMatrix::get_type_descriptor(@)",
    header: "FEmTool_SparseMatrix.hxx".}
proc dynamicType*(this: FEmToolSparseMatrix): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "FEmTool_SparseMatrix.hxx".}

























