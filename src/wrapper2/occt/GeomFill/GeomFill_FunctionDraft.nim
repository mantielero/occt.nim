##  Created on: 1998-04-27
##  Created by: Stephanie HUMEAU
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../math/math_FunctionSetWithDerivatives,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean, ../math/math_Vector,
  ../Standard/Standard_Real

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_Tensor"
type
  GeomFill_FunctionDraft* {.importcpp: "GeomFill_FunctionDraft",
                           header: "GeomFill_FunctionDraft.hxx", bycopy.} = object of math_FunctionSetWithDerivatives


proc constructGeomFill_FunctionDraft*(S: handle[Adaptor3d_HSurface];
                                     C: handle[Adaptor3d_HCurve]): GeomFill_FunctionDraft {.
    constructor, importcpp: "GeomFill_FunctionDraft(@)",
    header: "GeomFill_FunctionDraft.hxx".}
proc NbVariables*(this: GeomFill_FunctionDraft): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "GeomFill_FunctionDraft.hxx".}
proc NbEquations*(this: GeomFill_FunctionDraft): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "GeomFill_FunctionDraft.hxx".}
proc Value*(this: var GeomFill_FunctionDraft; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "GeomFill_FunctionDraft.hxx".}
proc Derivatives*(this: var GeomFill_FunctionDraft; X: math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives", header: "GeomFill_FunctionDraft.hxx".}
proc Values*(this: var GeomFill_FunctionDraft; X: math_Vector; F: var math_Vector;
            D: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "GeomFill_FunctionDraft.hxx".}
proc DerivT*(this: var GeomFill_FunctionDraft; C: handle[Adaptor3d_HCurve];
            Param: Standard_Real; W: Standard_Real; dN: gp_Vec; teta: Standard_Real;
            F: var math_Vector): Standard_Boolean {.importcpp: "DerivT",
    header: "GeomFill_FunctionDraft.hxx".}
proc Deriv2T*(this: var GeomFill_FunctionDraft; C: handle[Adaptor3d_HCurve];
             Param: Standard_Real; W: Standard_Real; d2N: gp_Vec; teta: Standard_Real;
             F: var math_Vector): Standard_Boolean {.importcpp: "Deriv2T",
    header: "GeomFill_FunctionDraft.hxx".}
proc DerivTX*(this: var GeomFill_FunctionDraft; dN: gp_Vec; teta: Standard_Real;
             D: var math_Matrix): Standard_Boolean {.importcpp: "DerivTX",
    header: "GeomFill_FunctionDraft.hxx".}
proc Deriv2X*(this: var GeomFill_FunctionDraft; X: math_Vector; T: var GeomFill_Tensor): Standard_Boolean {.
    importcpp: "Deriv2X", header: "GeomFill_FunctionDraft.hxx".}