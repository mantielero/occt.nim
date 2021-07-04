##  Created on: 1998-07-09
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../gp/gp_XYZ,
  ../math/math_FunctionSetWithDerivatives, ../Standard/Standard_Integer,
  ../math/math_Vector

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of GeomFill_SectionLaw"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_XYZ"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Vec"
type
  GeomFill_FunctionGuide* {.importcpp: "GeomFill_FunctionGuide",
                           header: "GeomFill_FunctionGuide.hxx", bycopy.} = object of math_FunctionSetWithDerivatives


proc constructGeomFill_FunctionGuide*(S: handle[GeomFill_SectionLaw];
                                     Guide: handle[Adaptor3d_HCurve];
                                     ParamOnLaw: Standard_Real = 0.0): GeomFill_FunctionGuide {.
    constructor, importcpp: "GeomFill_FunctionGuide(@)",
    header: "GeomFill_FunctionGuide.hxx".}
proc SetParam*(this: var GeomFill_FunctionGuide; Param: Standard_Real; Centre: gp_Pnt;
              Dir: gp_XYZ; XDir: gp_XYZ) {.importcpp: "SetParam",
                                       header: "GeomFill_FunctionGuide.hxx".}
proc NbVariables*(this: GeomFill_FunctionGuide): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "GeomFill_FunctionGuide.hxx".}
proc NbEquations*(this: GeomFill_FunctionGuide): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "GeomFill_FunctionGuide.hxx".}
proc Value*(this: var GeomFill_FunctionGuide; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "GeomFill_FunctionGuide.hxx".}
proc Derivatives*(this: var GeomFill_FunctionGuide; X: math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives", header: "GeomFill_FunctionGuide.hxx".}
proc Values*(this: var GeomFill_FunctionGuide; X: math_Vector; F: var math_Vector;
            D: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "GeomFill_FunctionGuide.hxx".}
proc DerivT*(this: var GeomFill_FunctionGuide; X: math_Vector; DCentre: gp_XYZ;
            DDir: gp_XYZ; DFDT: var math_Vector): Standard_Boolean {.
    importcpp: "DerivT", header: "GeomFill_FunctionGuide.hxx".}
proc Deriv2T*(this: var GeomFill_FunctionGuide; DCentre: gp_XYZ; DDir: gp_XYZ;
             DFDT: var math_Vector; D2FT: var math_Vector): Standard_Boolean {.
    importcpp: "Deriv2T", header: "GeomFill_FunctionGuide.hxx".}