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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../math/math_MultipleVarFunctionWithGradient, ../gp/gp_Pnt,
  ../Adaptor3d/Adaptor3d_Surface, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of math_Vector"
type
  Extrema_FuncPSDist* {.importcpp: "Extrema_FuncPSDist",
                       header: "Extrema_FuncPSDist.hxx", bycopy.} = object of math_MultipleVarFunctionWithGradient ##
                                                                                                            ## !
                                                                                                            ## Constructor.
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## Check
                                                                                                            ## point
                                                                                                            ## is
                                                                                                            ## inside
                                                                                                            ## of
                                                                                                            ## the
                                                                                                            ## surface
                                                                                                            ## parameter
                                                                                                            ## space.
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## Returns
                                                                                                            ## true
                                                                                                            ## if
                                                                                                            ## inside
                                                                                                            ## and
                                                                                                            ## false
                                                                                                            ## otherwise.


proc constructExtrema_FuncPSDist*(theS: Adaptor3d_Surface; theP: gp_Pnt): Extrema_FuncPSDist {.
    constructor, importcpp: "Extrema_FuncPSDist(@)",
    header: "Extrema_FuncPSDist.hxx".}
proc NbVariables*(this: Extrema_FuncPSDist): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "Extrema_FuncPSDist.hxx".}
proc Value*(this: var Extrema_FuncPSDist; X: math_Vector; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "Extrema_FuncPSDist.hxx".}
proc Gradient*(this: var Extrema_FuncPSDist; X: math_Vector; G: var math_Vector): Standard_Boolean {.
    importcpp: "Gradient", header: "Extrema_FuncPSDist.hxx".}
proc Values*(this: var Extrema_FuncPSDist; X: math_Vector; F: var Standard_Real;
            G: var math_Vector): Standard_Boolean {.importcpp: "Values",
    header: "Extrema_FuncPSDist.hxx".}