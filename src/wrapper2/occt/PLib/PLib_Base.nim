##  Created on: 1997-10-22
##  Created by: Philippe MANGIN / Sergey SOKOLOV
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of PLib_Base"
discard "forward decl of PLib_Base"
type
  HandlePLibBase* = Handle[PLibBase]

## ! To work with different polynomial's Bases

type
  PLibBase* {.importcpp: "PLib_Base", header: "PLib_Base.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Convert
                                                                                            ## the
                                                                                            ## polynomial
                                                                                            ## P(t)
                                                                                            ## in
                                                                                            ## the
                                                                                            ## canonical
                                                                                            ## base.


proc toCoefficients*(this: PLibBase; dimension: StandardInteger;
                    degree: StandardInteger; coeffinBase: TColStdArray1OfReal;
                    coefficients: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "ToCoefficients", header: "PLib_Base.hxx".}
proc d0*(this: var PLibBase; u: StandardReal; basisValue: var TColStdArray1OfReal) {.
    importcpp: "D0", header: "PLib_Base.hxx".}
proc d1*(this: var PLibBase; u: StandardReal; basisValue: var TColStdArray1OfReal;
        basisD1: var TColStdArray1OfReal) {.importcpp: "D1", header: "PLib_Base.hxx".}
proc d2*(this: var PLibBase; u: StandardReal; basisValue: var TColStdArray1OfReal;
        basisD1: var TColStdArray1OfReal; basisD2: var TColStdArray1OfReal) {.
    importcpp: "D2", header: "PLib_Base.hxx".}
proc d3*(this: var PLibBase; u: StandardReal; basisValue: var TColStdArray1OfReal;
        basisD1: var TColStdArray1OfReal; basisD2: var TColStdArray1OfReal;
        basisD3: var TColStdArray1OfReal) {.importcpp: "D3", header: "PLib_Base.hxx".}
proc workDegree*(this: PLibBase): StandardInteger {.noSideEffect,
    importcpp: "WorkDegree", header: "PLib_Base.hxx".}
proc reduceDegree*(this: PLibBase; dimension: StandardInteger;
                  maxDegree: StandardInteger; tol: StandardReal;
                  baseCoeff: var StandardReal; newDegree: var StandardInteger;
                  maxError: var StandardReal) {.noSideEffect,
    importcpp: "ReduceDegree", header: "PLib_Base.hxx".}
type
  PLibBasebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "PLib_Base::get_type_name(@)",
                            header: "PLib_Base.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "PLib_Base::get_type_descriptor(@)", header: "PLib_Base.hxx".}
proc dynamicType*(this: PLibBase): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "PLib_Base.hxx".}

