##  Created on: 1995-01-12
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  Law_Function, ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Law_Function"
discard "forward decl of Law_Linear"
discard "forward decl of Law_Linear"
type
  Handle_Law_Linear* = handle[Law_Linear]

## ! Describes an linear evolution law.

type
  Law_Linear* {.importcpp: "Law_Linear", header: "Law_Linear.hxx", bycopy.} = object of Law_Function ##
                                                                                           ## !
                                                                                           ## Constructs
                                                                                           ## an
                                                                                           ## empty
                                                                                           ## linear
                                                                                           ## evolution
                                                                                           ## law.


proc constructLaw_Linear*(): Law_Linear {.constructor, importcpp: "Law_Linear(@)",
                                       header: "Law_Linear.hxx".}
proc Set*(this: var Law_Linear; Pdeb: Standard_Real; Valdeb: Standard_Real;
         Pfin: Standard_Real; Valfin: Standard_Real) {.importcpp: "Set",
    header: "Law_Linear.hxx".}
proc Continuity*(this: Law_Linear): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Law_Linear.hxx".}
proc NbIntervals*(this: Law_Linear; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "Law_Linear.hxx".}
proc Intervals*(this: Law_Linear; T: var TColStd_Array1OfReal; S: GeomAbs_Shape) {.
    noSideEffect, importcpp: "Intervals", header: "Law_Linear.hxx".}
proc Value*(this: var Law_Linear; X: Standard_Real): Standard_Real {.
    importcpp: "Value", header: "Law_Linear.hxx".}
proc D1*(this: var Law_Linear; X: Standard_Real; F: var Standard_Real;
        D: var Standard_Real) {.importcpp: "D1", header: "Law_Linear.hxx".}
proc D2*(this: var Law_Linear; X: Standard_Real; F: var Standard_Real;
        D: var Standard_Real; D2: var Standard_Real) {.importcpp: "D2",
    header: "Law_Linear.hxx".}
proc Trim*(this: Law_Linear; PFirst: Standard_Real; PLast: Standard_Real;
          Tol: Standard_Real): handle[Law_Function] {.noSideEffect,
    importcpp: "Trim", header: "Law_Linear.hxx".}
proc Bounds*(this: var Law_Linear; PFirst: var Standard_Real; PLast: var Standard_Real) {.
    importcpp: "Bounds", header: "Law_Linear.hxx".}
type
  Law_Linearbase_type* = Law_Function

proc get_type_name*(): cstring {.importcpp: "Law_Linear::get_type_name(@)",
                              header: "Law_Linear.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Law_Linear::get_type_descriptor(@)", header: "Law_Linear.hxx".}
proc DynamicType*(this: Law_Linear): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Law_Linear.hxx".}