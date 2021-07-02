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

discard "forward decl of FEmTool_ProfileMatrix"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of math_Matrix"
type
  FEmToolAssembly* {.importcpp: "FEmTool_Assembly", header: "FEmTool_Assembly.hxx",
                    bycopy.} = object


proc constructFEmToolAssembly*(dependence: TColStdArray2OfInteger;
                              table: Handle[FEmToolHAssemblyTable]): FEmToolAssembly {.
    constructor, importcpp: "FEmTool_Assembly(@)", header: "FEmTool_Assembly.hxx".}
proc nullifyMatrix*(this: var FEmToolAssembly) {.importcpp: "NullifyMatrix",
    header: "FEmTool_Assembly.hxx".}
proc addMatrix*(this: var FEmToolAssembly; element: StandardInteger;
               dimension1: StandardInteger; dimension2: StandardInteger;
               mat: MathMatrix) {.importcpp: "AddMatrix",
                                header: "FEmTool_Assembly.hxx".}
proc nullifyVector*(this: var FEmToolAssembly) {.importcpp: "NullifyVector",
    header: "FEmTool_Assembly.hxx".}
proc addVector*(this: var FEmToolAssembly; element: StandardInteger;
               dimension: StandardInteger; vec: MathVector) {.
    importcpp: "AddVector", header: "FEmTool_Assembly.hxx".}
proc resetConstraint*(this: var FEmToolAssembly) {.importcpp: "ResetConstraint",
    header: "FEmTool_Assembly.hxx".}
proc nullifyConstraint*(this: var FEmToolAssembly) {.importcpp: "NullifyConstraint",
    header: "FEmTool_Assembly.hxx".}
proc addConstraint*(this: var FEmToolAssembly; indexofConstraint: StandardInteger;
                   element: StandardInteger; dimension: StandardInteger;
                   linearForm: MathVector; value: StandardReal) {.
    importcpp: "AddConstraint", header: "FEmTool_Assembly.hxx".}
proc solve*(this: var FEmToolAssembly): StandardBoolean {.importcpp: "Solve",
    header: "FEmTool_Assembly.hxx".}
proc solution*(this: FEmToolAssembly; solution: var MathVector) {.noSideEffect,
    importcpp: "Solution", header: "FEmTool_Assembly.hxx".}
proc nbGlobVar*(this: FEmToolAssembly): StandardInteger {.noSideEffect,
    importcpp: "NbGlobVar", header: "FEmTool_Assembly.hxx".}
proc getAssemblyTable*(this: FEmToolAssembly;
                      assTable: var Handle[FEmToolHAssemblyTable]) {.noSideEffect,
    importcpp: "GetAssemblyTable", header: "FEmTool_Assembly.hxx".}

