##  Created on: 1992-02-21
##  Created by: Arnaud BOUZY
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ExprIntrp_StackOfGeneralExpression,
  ExprIntrp_StackOfGeneralRelation, ExprIntrp_StackOfGeneralFunction,
  ../TColStd/TColStd_ListOfAsciiString, ../TColStd/TColStd_ListOfInteger,
  ExprIntrp_SequenceOfNamedFunction, ExprIntrp_SequenceOfNamedExpression,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of ExprIntrp_Generator"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_GeneralRelation"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_GeneralFunction"
discard "forward decl of Expr_NamedFunction"
discard "forward decl of Expr_NamedExpression"
type
  ExprIntrp_Analysis* {.importcpp: "ExprIntrp_Analysis",
                       header: "ExprIntrp_Analysis.hxx", bycopy.} = object


proc constructExprIntrp_Analysis*(): ExprIntrp_Analysis {.constructor,
    importcpp: "ExprIntrp_Analysis(@)", header: "ExprIntrp_Analysis.hxx".}
proc SetMaster*(this: var ExprIntrp_Analysis; agen: handle[ExprIntrp_Generator]) {.
    importcpp: "SetMaster", header: "ExprIntrp_Analysis.hxx".}
proc Push*(this: var ExprIntrp_Analysis; exp: handle[Expr_GeneralExpression]) {.
    importcpp: "Push", header: "ExprIntrp_Analysis.hxx".}
proc PushRelation*(this: var ExprIntrp_Analysis; rel: handle[Expr_GeneralRelation]) {.
    importcpp: "PushRelation", header: "ExprIntrp_Analysis.hxx".}
proc PushName*(this: var ExprIntrp_Analysis; name: TCollection_AsciiString) {.
    importcpp: "PushName", header: "ExprIntrp_Analysis.hxx".}
proc PushValue*(this: var ExprIntrp_Analysis; degree: Standard_Integer) {.
    importcpp: "PushValue", header: "ExprIntrp_Analysis.hxx".}
proc PushFunction*(this: var ExprIntrp_Analysis;
                  `func`: handle[Expr_GeneralFunction]) {.
    importcpp: "PushFunction", header: "ExprIntrp_Analysis.hxx".}
proc Pop*(this: var ExprIntrp_Analysis): handle[Expr_GeneralExpression] {.
    importcpp: "Pop", header: "ExprIntrp_Analysis.hxx".}
proc PopRelation*(this: var ExprIntrp_Analysis): handle[Expr_GeneralRelation] {.
    importcpp: "PopRelation", header: "ExprIntrp_Analysis.hxx".}
proc PopName*(this: var ExprIntrp_Analysis): TCollection_AsciiString {.
    importcpp: "PopName", header: "ExprIntrp_Analysis.hxx".}
proc PopValue*(this: var ExprIntrp_Analysis): Standard_Integer {.
    importcpp: "PopValue", header: "ExprIntrp_Analysis.hxx".}
proc PopFunction*(this: var ExprIntrp_Analysis): handle[Expr_GeneralFunction] {.
    importcpp: "PopFunction", header: "ExprIntrp_Analysis.hxx".}
proc IsExpStackEmpty*(this: ExprIntrp_Analysis): Standard_Boolean {.noSideEffect,
    importcpp: "IsExpStackEmpty", header: "ExprIntrp_Analysis.hxx".}
proc IsRelStackEmpty*(this: ExprIntrp_Analysis): Standard_Boolean {.noSideEffect,
    importcpp: "IsRelStackEmpty", header: "ExprIntrp_Analysis.hxx".}
proc ResetAll*(this: var ExprIntrp_Analysis) {.importcpp: "ResetAll",
    header: "ExprIntrp_Analysis.hxx".}
proc Use*(this: var ExprIntrp_Analysis; `func`: handle[Expr_NamedFunction]) {.
    importcpp: "Use", header: "ExprIntrp_Analysis.hxx".}
proc Use*(this: var ExprIntrp_Analysis; named: handle[Expr_NamedExpression]) {.
    importcpp: "Use", header: "ExprIntrp_Analysis.hxx".}
proc GetNamed*(this: var ExprIntrp_Analysis; name: TCollection_AsciiString): handle[
    Expr_NamedExpression] {.importcpp: "GetNamed", header: "ExprIntrp_Analysis.hxx".}
proc GetFunction*(this: var ExprIntrp_Analysis; name: TCollection_AsciiString): handle[
    Expr_NamedFunction] {.importcpp: "GetFunction",
                         header: "ExprIntrp_Analysis.hxx".}