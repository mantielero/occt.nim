import extrema_types
import ../math/math_types
import ../gp/gp_types
import ../adaptor3d/adaptor3d_types
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

discard "forward decl of Math_Vector"

proc newExtrema_FuncPSDist*(theS: Adaptor3d_Surface; theP: PntObj): Extrema_FuncPSDist {.
    cdecl, constructor, importcpp: "Extrema_FuncPSDist(@)",
    header: "Extrema_FuncPSDist.hxx".}
proc NbVariables*(this: Extrema_FuncPSDist): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", header: "Extrema_FuncPSDist.hxx".}
proc Value*(this: var Extrema_FuncPSDist; X: Math_Vector; F: var cfloat): bool {.cdecl,
    importcpp: "Value", header: "Extrema_FuncPSDist.hxx".}
proc Gradient*(this: var Extrema_FuncPSDist; X: Math_Vector; G: var Math_Vector): bool {.
    cdecl, importcpp: "Gradient", header: "Extrema_FuncPSDist.hxx".}
proc Values*(this: var Extrema_FuncPSDist; X: Math_Vector; F: var cfloat;
            G: var Math_Vector): bool {.cdecl, importcpp: "Values",
                                    header: "Extrema_FuncPSDist.hxx".}