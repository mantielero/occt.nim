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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColStd/TColStd_Array2OfInteger,
  FEmTool_HAssemblyTable, ../Standard/Standard_Boolean, ../math/math_Vector,
  FEmTool_SeqOfLinConstr, ../TColStd/TColStd_SequenceOfReal,
  ../Standard/Standard_Integer, ../Standard/Standard_Real

discard "forward decl of FEmTool_ProfileMatrix"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of math_Matrix"
type
  FEmTool_Assembly* {.importcpp: "FEmTool_Assembly",
                     header: "FEmTool_Assembly.hxx", bycopy.} = object


proc constructFEmTool_Assembly*(Dependence: TColStd_Array2OfInteger;
                               Table: handle[FEmTool_HAssemblyTable]): FEmTool_Assembly {.
    constructor, importcpp: "FEmTool_Assembly(@)", header: "FEmTool_Assembly.hxx".}
proc NullifyMatrix*(this: var FEmTool_Assembly) {.importcpp: "NullifyMatrix",
    header: "FEmTool_Assembly.hxx".}
proc AddMatrix*(this: var FEmTool_Assembly; Element: Standard_Integer;
               Dimension1: Standard_Integer; Dimension2: Standard_Integer;
               Mat: math_Matrix) {.importcpp: "AddMatrix",
                                 header: "FEmTool_Assembly.hxx".}
proc NullifyVector*(this: var FEmTool_Assembly) {.importcpp: "NullifyVector",
    header: "FEmTool_Assembly.hxx".}
proc AddVector*(this: var FEmTool_Assembly; Element: Standard_Integer;
               Dimension: Standard_Integer; Vec: math_Vector) {.
    importcpp: "AddVector", header: "FEmTool_Assembly.hxx".}
proc ResetConstraint*(this: var FEmTool_Assembly) {.importcpp: "ResetConstraint",
    header: "FEmTool_Assembly.hxx".}
proc NullifyConstraint*(this: var FEmTool_Assembly) {.
    importcpp: "NullifyConstraint", header: "FEmTool_Assembly.hxx".}
proc AddConstraint*(this: var FEmTool_Assembly; IndexofConstraint: Standard_Integer;
                   Element: Standard_Integer; Dimension: Standard_Integer;
                   LinearForm: math_Vector; Value: Standard_Real) {.
    importcpp: "AddConstraint", header: "FEmTool_Assembly.hxx".}
proc Solve*(this: var FEmTool_Assembly): Standard_Boolean {.importcpp: "Solve",
    header: "FEmTool_Assembly.hxx".}
proc Solution*(this: FEmTool_Assembly; Solution: var math_Vector) {.noSideEffect,
    importcpp: "Solution", header: "FEmTool_Assembly.hxx".}
proc NbGlobVar*(this: FEmTool_Assembly): Standard_Integer {.noSideEffect,
    importcpp: "NbGlobVar", header: "FEmTool_Assembly.hxx".}
proc GetAssemblyTable*(this: FEmTool_Assembly;
                      AssTable: var handle[FEmTool_HAssemblyTable]) {.noSideEffect,
    importcpp: "GetAssemblyTable", header: "FEmTool_Assembly.hxx".}