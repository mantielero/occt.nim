##  Created on: 1992-03-05
##  Created by: Laurent BUCHARD
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

discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt2d"
type
  IntRes2dDomain* {.importcpp: "IntRes2d_Domain", header: "IntRes2d_Domain.hxx",
                   bycopy.} = object ## ! Creates an infinite Domain (HasFirstPoint = False
                                  ## ! and HasLastPoint = False).


proc constructIntRes2dDomain*(): IntRes2dDomain {.constructor,
    importcpp: "IntRes2d_Domain(@)", header: "IntRes2d_Domain.hxx".}
proc constructIntRes2dDomain*(pnt1: GpPnt2d; par1: StandardReal; tol1: StandardReal;
                             pnt2: GpPnt2d; par2: StandardReal; tol2: StandardReal): IntRes2dDomain {.
    constructor, importcpp: "IntRes2d_Domain(@)", header: "IntRes2d_Domain.hxx".}
proc constructIntRes2dDomain*(pnt: GpPnt2d; par: StandardReal; tol: StandardReal;
                             first: StandardBoolean): IntRes2dDomain {.constructor,
    importcpp: "IntRes2d_Domain(@)", header: "IntRes2d_Domain.hxx".}
proc setValues*(this: var IntRes2dDomain; pnt1: GpPnt2d; par1: StandardReal;
               tol1: StandardReal; pnt2: GpPnt2d; par2: StandardReal;
               tol2: StandardReal) {.importcpp: "SetValues",
                                   header: "IntRes2d_Domain.hxx".}
proc setValues*(this: var IntRes2dDomain) {.importcpp: "SetValues",
                                        header: "IntRes2d_Domain.hxx".}
proc setValues*(this: var IntRes2dDomain; pnt: GpPnt2d; par: StandardReal;
               tol: StandardReal; first: StandardBoolean) {.importcpp: "SetValues",
    header: "IntRes2d_Domain.hxx".}
proc setEquivalentParameters*(this: var IntRes2dDomain; zero: StandardReal;
                             period: StandardReal) {.
    importcpp: "SetEquivalentParameters", header: "IntRes2d_Domain.hxx".}
proc hasFirstPoint*(this: IntRes2dDomain): StandardBoolean {.noSideEffect,
    importcpp: "HasFirstPoint", header: "IntRes2d_Domain.hxx".}
proc firstParameter*(this: IntRes2dDomain): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "IntRes2d_Domain.hxx".}
proc firstPoint*(this: IntRes2dDomain): GpPnt2d {.noSideEffect,
    importcpp: "FirstPoint", header: "IntRes2d_Domain.hxx".}
proc firstTolerance*(this: IntRes2dDomain): StandardReal {.noSideEffect,
    importcpp: "FirstTolerance", header: "IntRes2d_Domain.hxx".}
proc hasLastPoint*(this: IntRes2dDomain): StandardBoolean {.noSideEffect,
    importcpp: "HasLastPoint", header: "IntRes2d_Domain.hxx".}
proc lastParameter*(this: IntRes2dDomain): StandardReal {.noSideEffect,
    importcpp: "LastParameter", header: "IntRes2d_Domain.hxx".}
proc lastPoint*(this: IntRes2dDomain): GpPnt2d {.noSideEffect,
    importcpp: "LastPoint", header: "IntRes2d_Domain.hxx".}
proc lastTolerance*(this: IntRes2dDomain): StandardReal {.noSideEffect,
    importcpp: "LastTolerance", header: "IntRes2d_Domain.hxx".}
proc isClosed*(this: IntRes2dDomain): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "IntRes2d_Domain.hxx".}
proc equivalentParameters*(this: IntRes2dDomain; zero: var StandardReal;
                          zeroplusperiod: var StandardReal) {.noSideEffect,
    importcpp: "EquivalentParameters", header: "IntRes2d_Domain.hxx".}

