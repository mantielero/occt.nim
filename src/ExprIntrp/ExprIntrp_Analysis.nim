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

discard "forward decl of ExprIntrp_Generator"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_GeneralRelation"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_GeneralFunction"
discard "forward decl of Expr_NamedFunction"
discard "forward decl of Expr_NamedExpression"
type
  ExprIntrpAnalysis* {.importcpp: "ExprIntrp_Analysis",
                      header: "ExprIntrp_Analysis.hxx", bycopy.} = object


proc constructExprIntrpAnalysis*(): ExprIntrpAnalysis {.constructor,
    importcpp: "ExprIntrp_Analysis(@)", header: "ExprIntrp_Analysis.hxx".}
proc setMaster*(this: var ExprIntrpAnalysis; agen: Handle[ExprIntrpGenerator]) {.
    importcpp: "SetMaster", header: "ExprIntrp_Analysis.hxx".}
proc push*(this: var ExprIntrpAnalysis; exp: Handle[ExprGeneralExpression]) {.
    importcpp: "Push", header: "ExprIntrp_Analysis.hxx".}
proc pushRelation*(this: var ExprIntrpAnalysis; rel: Handle[ExprGeneralRelation]) {.
    importcpp: "PushRelation", header: "ExprIntrp_Analysis.hxx".}
proc pushName*(this: var ExprIntrpAnalysis; name: TCollectionAsciiString) {.
    importcpp: "PushName", header: "ExprIntrp_Analysis.hxx".}
proc pushValue*(this: var ExprIntrpAnalysis; degree: cint) {.importcpp: "PushValue",
    header: "ExprIntrp_Analysis.hxx".}
proc pushFunction*(this: var ExprIntrpAnalysis; `func`: Handle[ExprGeneralFunction]) {.
    importcpp: "PushFunction", header: "ExprIntrp_Analysis.hxx".}
proc pop*(this: var ExprIntrpAnalysis): Handle[ExprGeneralExpression] {.
    importcpp: "Pop", header: "ExprIntrp_Analysis.hxx".}
proc popRelation*(this: var ExprIntrpAnalysis): Handle[ExprGeneralRelation] {.
    importcpp: "PopRelation", header: "ExprIntrp_Analysis.hxx".}
proc popName*(this: var ExprIntrpAnalysis): TCollectionAsciiString {.
    importcpp: "PopName", header: "ExprIntrp_Analysis.hxx".}
proc popValue*(this: var ExprIntrpAnalysis): cint {.importcpp: "PopValue",
    header: "ExprIntrp_Analysis.hxx".}
proc popFunction*(this: var ExprIntrpAnalysis): Handle[ExprGeneralFunction] {.
    importcpp: "PopFunction", header: "ExprIntrp_Analysis.hxx".}
proc isExpStackEmpty*(this: ExprIntrpAnalysis): bool {.noSideEffect,
    importcpp: "IsExpStackEmpty", header: "ExprIntrp_Analysis.hxx".}
proc isRelStackEmpty*(this: ExprIntrpAnalysis): bool {.noSideEffect,
    importcpp: "IsRelStackEmpty", header: "ExprIntrp_Analysis.hxx".}
proc resetAll*(this: var ExprIntrpAnalysis) {.importcpp: "ResetAll",
    header: "ExprIntrp_Analysis.hxx".}
proc use*(this: var ExprIntrpAnalysis; `func`: Handle[ExprNamedFunction]) {.
    importcpp: "Use", header: "ExprIntrp_Analysis.hxx".}
proc use*(this: var ExprIntrpAnalysis; named: Handle[ExprNamedExpression]) {.
    importcpp: "Use", header: "ExprIntrp_Analysis.hxx".}
proc getNamed*(this: var ExprIntrpAnalysis; name: TCollectionAsciiString): Handle[
    ExprNamedExpression] {.importcpp: "GetNamed", header: "ExprIntrp_Analysis.hxx".}
proc getFunction*(this: var ExprIntrpAnalysis; name: TCollectionAsciiString): Handle[
    ExprNamedFunction] {.importcpp: "GetFunction", header: "ExprIntrp_Analysis.hxx".}

























