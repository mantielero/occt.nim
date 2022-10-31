import ../../tkmath/math/math_types
import ../../tkmath/gp/gp_types
import ../../tkg3d/adaptor3d/adaptor3d_types
import extrema_types



##  Created on: 2016-05-10
##  Created by: Alexander MALYSHEV
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2016 OPEN CASCADE SAS
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



proc newExtremaFuncPSDist*(theS: Adaptor3dSurface; theP: PntObj): ExtremaFuncPSDist {.
    cdecl, constructor, importcpp: "Extrema_FuncPSDist(@)", header: "Extrema_FuncPSDist.hxx".}
proc nbVariables*(this: ExtremaFuncPSDist): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", header: "Extrema_FuncPSDist.hxx".}
proc value*(this: var ExtremaFuncPSDist; x: MathVector; f: var cfloat): bool {.cdecl,
    importcpp: "Value", header: "Extrema_FuncPSDist.hxx".}
proc gradient*(this: var ExtremaFuncPSDist; x: MathVector; g: var MathVector): bool {.
    cdecl, importcpp: "Gradient", header: "Extrema_FuncPSDist.hxx".}
proc values*(this: var ExtremaFuncPSDist; x: MathVector; f: var cfloat; g: var MathVector): bool {.
    cdecl, importcpp: "Values", header: "Extrema_FuncPSDist.hxx".}

