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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../gp/gp_Pnt2d, ../Standard/Standard_Boolean

discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt2d"
type
  IntRes2d_Domain* {.importcpp: "IntRes2d_Domain", header: "IntRes2d_Domain.hxx",
                    bycopy.} = object ## ! Creates an infinite Domain (HasFirstPoint = False
                                   ## ! and HasLastPoint = False).


proc constructIntRes2d_Domain*(): IntRes2d_Domain {.constructor,
    importcpp: "IntRes2d_Domain(@)", header: "IntRes2d_Domain.hxx".}
proc constructIntRes2d_Domain*(Pnt1: gp_Pnt2d; Par1: Standard_Real;
                              Tol1: Standard_Real; Pnt2: gp_Pnt2d;
                              Par2: Standard_Real; Tol2: Standard_Real): IntRes2d_Domain {.
    constructor, importcpp: "IntRes2d_Domain(@)", header: "IntRes2d_Domain.hxx".}
proc constructIntRes2d_Domain*(Pnt: gp_Pnt2d; Par: Standard_Real; Tol: Standard_Real;
                              First: Standard_Boolean): IntRes2d_Domain {.
    constructor, importcpp: "IntRes2d_Domain(@)", header: "IntRes2d_Domain.hxx".}
proc SetValues*(this: var IntRes2d_Domain; Pnt1: gp_Pnt2d; Par1: Standard_Real;
               Tol1: Standard_Real; Pnt2: gp_Pnt2d; Par2: Standard_Real;
               Tol2: Standard_Real) {.importcpp: "SetValues",
                                    header: "IntRes2d_Domain.hxx".}
proc SetValues*(this: var IntRes2d_Domain) {.importcpp: "SetValues",
    header: "IntRes2d_Domain.hxx".}
proc SetValues*(this: var IntRes2d_Domain; Pnt: gp_Pnt2d; Par: Standard_Real;
               Tol: Standard_Real; First: Standard_Boolean) {.
    importcpp: "SetValues", header: "IntRes2d_Domain.hxx".}
proc SetEquivalentParameters*(this: var IntRes2d_Domain; zero: Standard_Real;
                             period: Standard_Real) {.
    importcpp: "SetEquivalentParameters", header: "IntRes2d_Domain.hxx".}
proc HasFirstPoint*(this: IntRes2d_Domain): Standard_Boolean {.noSideEffect,
    importcpp: "HasFirstPoint", header: "IntRes2d_Domain.hxx".}
proc FirstParameter*(this: IntRes2d_Domain): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "IntRes2d_Domain.hxx".}
proc FirstPoint*(this: IntRes2d_Domain): gp_Pnt2d {.noSideEffect,
    importcpp: "FirstPoint", header: "IntRes2d_Domain.hxx".}
proc FirstTolerance*(this: IntRes2d_Domain): Standard_Real {.noSideEffect,
    importcpp: "FirstTolerance", header: "IntRes2d_Domain.hxx".}
proc HasLastPoint*(this: IntRes2d_Domain): Standard_Boolean {.noSideEffect,
    importcpp: "HasLastPoint", header: "IntRes2d_Domain.hxx".}
proc LastParameter*(this: IntRes2d_Domain): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "IntRes2d_Domain.hxx".}
proc LastPoint*(this: IntRes2d_Domain): gp_Pnt2d {.noSideEffect,
    importcpp: "LastPoint", header: "IntRes2d_Domain.hxx".}
proc LastTolerance*(this: IntRes2d_Domain): Standard_Real {.noSideEffect,
    importcpp: "LastTolerance", header: "IntRes2d_Domain.hxx".}
proc IsClosed*(this: IntRes2d_Domain): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "IntRes2d_Domain.hxx".}
proc EquivalentParameters*(this: IntRes2d_Domain; zero: var Standard_Real;
                          zeroplusperiod: var Standard_Real) {.noSideEffect,
    importcpp: "EquivalentParameters", header: "IntRes2d_Domain.hxx".}