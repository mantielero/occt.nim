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

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_Tensor"
type
  GeomFillFunctionDraft* {.importcpp: "GeomFill_FunctionDraft",
                          header: "GeomFill_FunctionDraft.hxx", bycopy.} = object of MathFunctionSetWithDerivatives


proc constructGeomFillFunctionDraft*(s: Handle[Adaptor3dHSurface];
                                    c: Handle[Adaptor3dHCurve]): GeomFillFunctionDraft {.
    constructor, importcpp: "GeomFill_FunctionDraft(@)",
    header: "GeomFill_FunctionDraft.hxx".}
proc nbVariables*(this: GeomFillFunctionDraft): StandardInteger {.noSideEffect,
    importcpp: "NbVariables", header: "GeomFill_FunctionDraft.hxx".}
proc nbEquations*(this: GeomFillFunctionDraft): StandardInteger {.noSideEffect,
    importcpp: "NbEquations", header: "GeomFill_FunctionDraft.hxx".}
proc value*(this: var GeomFillFunctionDraft; x: MathVector; f: var MathVector): StandardBoolean {.
    importcpp: "Value", header: "GeomFill_FunctionDraft.hxx".}
proc derivatives*(this: var GeomFillFunctionDraft; x: MathVector; d: var MathMatrix): StandardBoolean {.
    importcpp: "Derivatives", header: "GeomFill_FunctionDraft.hxx".}
proc values*(this: var GeomFillFunctionDraft; x: MathVector; f: var MathVector;
            d: var MathMatrix): StandardBoolean {.importcpp: "Values",
    header: "GeomFill_FunctionDraft.hxx".}
proc derivT*(this: var GeomFillFunctionDraft; c: Handle[Adaptor3dHCurve];
            param: StandardReal; w: StandardReal; dN: GpVec; teta: StandardReal;
            f: var MathVector): StandardBoolean {.importcpp: "DerivT",
    header: "GeomFill_FunctionDraft.hxx".}
proc deriv2T*(this: var GeomFillFunctionDraft; c: Handle[Adaptor3dHCurve];
             param: StandardReal; w: StandardReal; d2N: GpVec; teta: StandardReal;
             f: var MathVector): StandardBoolean {.importcpp: "Deriv2T",
    header: "GeomFill_FunctionDraft.hxx".}
proc derivTX*(this: var GeomFillFunctionDraft; dN: GpVec; teta: StandardReal;
             d: var MathMatrix): StandardBoolean {.importcpp: "DerivTX",
    header: "GeomFill_FunctionDraft.hxx".}
proc deriv2X*(this: var GeomFillFunctionDraft; x: MathVector; t: var GeomFillTensor): StandardBoolean {.
    importcpp: "Deriv2X", header: "GeomFill_FunctionDraft.hxx".}

