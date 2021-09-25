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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_NumericError"
discard "forward decl of Expr_NotEvaluable"
discard "forward decl of Expr_NamedUnknown"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_GeneralFunction"
discard "forward decl of Expr_GeneralFunction"
type
  HandleExprGeneralFunction* = Handle[ExprGeneralFunction]

## ! Defines the general purposes of any function.

type
  ExprGeneralFunction* {.importcpp: "Expr_GeneralFunction",
                        header: "Expr_GeneralFunction.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## the
                                                                                            ## number
                                                                                            ## of
                                                                                            ## variables
                                                                                            ## of
                                                                                            ## <me>.


proc nbOfVariables*(this: ExprGeneralFunction): int {.noSideEffect,
    importcpp: "NbOfVariables", header: "Expr_GeneralFunction.hxx".}
proc variable*(this: ExprGeneralFunction; index: int): Handle[ExprNamedUnknown] {.
    noSideEffect, importcpp: "Variable", header: "Expr_GeneralFunction.hxx".}
proc copy*(this: ExprGeneralFunction): Handle[ExprGeneralFunction] {.noSideEffect,
    importcpp: "Copy", header: "Expr_GeneralFunction.hxx".}
proc derivative*(this: ExprGeneralFunction; `var`: Handle[ExprNamedUnknown]): Handle[
    ExprGeneralFunction] {.noSideEffect, importcpp: "Derivative",
                          header: "Expr_GeneralFunction.hxx".}
proc derivative*(this: ExprGeneralFunction; `var`: Handle[ExprNamedUnknown]; deg: int): Handle[
    ExprGeneralFunction] {.noSideEffect, importcpp: "Derivative",
                          header: "Expr_GeneralFunction.hxx".}
proc evaluate*(this: ExprGeneralFunction; vars: ExprArray1OfNamedUnknown;
              vals: TColStdArray1OfReal): float {.noSideEffect,
    importcpp: "Evaluate", header: "Expr_GeneralFunction.hxx".}
proc isIdentical*(this: ExprGeneralFunction; `func`: Handle[ExprGeneralFunction]): bool {.
    noSideEffect, importcpp: "IsIdentical", header: "Expr_GeneralFunction.hxx".}
proc isLinearOnVariable*(this: ExprGeneralFunction; index: int): bool {.noSideEffect,
    importcpp: "IsLinearOnVariable", header: "Expr_GeneralFunction.hxx".}
proc getStringName*(this: ExprGeneralFunction): TCollectionAsciiString {.
    noSideEffect, importcpp: "GetStringName", header: "Expr_GeneralFunction.hxx".}
type
  ExprGeneralFunctionbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Expr_GeneralFunction::get_type_name(@)",
                            header: "Expr_GeneralFunction.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_GeneralFunction::get_type_descriptor(@)",
    header: "Expr_GeneralFunction.hxx".}
proc dynamicType*(this: ExprGeneralFunction): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_GeneralFunction.hxx".}
