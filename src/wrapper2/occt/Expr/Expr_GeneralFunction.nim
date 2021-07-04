##  Created on: 1991-01-14
##  Created by: Arnaud BOUZY
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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  Expr_Array1OfNamedUnknown, ../TColStd/TColStd_Array1OfReal,
  ../Standard/Standard_Boolean

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_NumericError"
discard "forward decl of Expr_NotEvaluable"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_GeneralFunction"
discard "forward decl of Expr_GeneralFunction"
type
  Handle_Expr_GeneralFunction* = handle[Expr_GeneralFunction]

## ! Defines the general purposes of any function.

type
  Expr_GeneralFunction* {.importcpp: "Expr_GeneralFunction",
                         header: "Expr_GeneralFunction.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## the
                                                                                              ## number
                                                                                              ## of
                                                                                              ## variables
                                                                                              ## of
                                                                                              ## <me>.


proc NbOfVariables*(this: Expr_GeneralFunction): Standard_Integer {.noSideEffect,
    importcpp: "NbOfVariables", header: "Expr_GeneralFunction.hxx".}
proc Variable*(this: Expr_GeneralFunction; index: Standard_Integer): handle[
    Expr_NamedUnknown] {.noSideEffect, importcpp: "Variable",
                        header: "Expr_GeneralFunction.hxx".}
proc Copy*(this: Expr_GeneralFunction): handle[Expr_GeneralFunction] {.noSideEffect,
    importcpp: "Copy", header: "Expr_GeneralFunction.hxx".}
proc Derivative*(this: Expr_GeneralFunction; `var`: handle[Expr_NamedUnknown]): handle[
    Expr_GeneralFunction] {.noSideEffect, importcpp: "Derivative",
                           header: "Expr_GeneralFunction.hxx".}
proc Derivative*(this: Expr_GeneralFunction; `var`: handle[Expr_NamedUnknown];
                deg: Standard_Integer): handle[Expr_GeneralFunction] {.
    noSideEffect, importcpp: "Derivative", header: "Expr_GeneralFunction.hxx".}
proc Evaluate*(this: Expr_GeneralFunction; vars: Expr_Array1OfNamedUnknown;
              vals: TColStd_Array1OfReal): Standard_Real {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_GeneralFunction.hxx".}
proc IsIdentical*(this: Expr_GeneralFunction; `func`: handle[Expr_GeneralFunction]): Standard_Boolean {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_GeneralFunction.hxx".}
proc IsLinearOnVariable*(this: Expr_GeneralFunction; index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsLinearOnVariable",
    header: "Expr_GeneralFunction.hxx".}
proc GetStringName*(this: Expr_GeneralFunction): TCollection_AsciiString {.
    noSideEffect, importcpp: "GetStringName", header: "Expr_GeneralFunction.hxx".}
type
  Expr_GeneralFunctionbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Expr_GeneralFunction::get_type_name(@)",
                              header: "Expr_GeneralFunction.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Expr_GeneralFunction::get_type_descriptor(@)",
    header: "Expr_GeneralFunction.hxx".}
proc DynamicType*(this: Expr_GeneralFunction): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_GeneralFunction.hxx".}