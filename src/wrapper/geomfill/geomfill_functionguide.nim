import ../math/math_types
import ../gp/gp_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import geomfill_types





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



proc newGeomFillFunctionGuide*(s: Handle[GeomFillSectionLaw];
                              guide: Handle[Adaptor3dHCurve];
                              paramOnLaw: cfloat = 0.0): GeomFillFunctionGuide {.
    cdecl, constructor, importcpp: "GeomFill_FunctionGuide(@)", header: "GeomFill_FunctionGuide.hxx".}
proc setParam*(this: var GeomFillFunctionGuide; param: cfloat; centre: gp_Pnt; dir: XyzObj;
              xDir: XyzObj) {.cdecl, importcpp: "SetParam", header: "GeomFill_FunctionGuide.hxx".}
proc nbVariables*(this: GeomFillFunctionGuide): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", header: "GeomFill_FunctionGuide.hxx".}
proc nbEquations*(this: GeomFillFunctionGuide): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "GeomFill_FunctionGuide.hxx".}
proc value*(this: var GeomFillFunctionGuide; x: MathVector; f: var MathVector): bool {.
    cdecl, importcpp: "Value", header: "GeomFill_FunctionGuide.hxx".}
proc derivatives*(this: var GeomFillFunctionGuide; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", header: "GeomFill_FunctionGuide.hxx".}
proc values*(this: var GeomFillFunctionGuide; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.cdecl, importcpp: "Values", header: "GeomFill_FunctionGuide.hxx".}
proc derivT*(this: var GeomFillFunctionGuide; x: MathVector; dCentre: XyzObj; dDir: XyzObj;
            dfdt: var MathVector): bool {.cdecl, importcpp: "DerivT",
                                      header: "GeomFill_FunctionGuide.hxx".}
proc deriv2T*(this: var GeomFillFunctionGuide; dCentre: XyzObj; dDir: XyzObj;
             dfdt: var MathVector; d2ft: var MathVector): bool {.cdecl,
    importcpp: "Deriv2T", header: "GeomFill_FunctionGuide.hxx".}


