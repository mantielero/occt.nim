##  Created on: 1995-02-03
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
  ../Standard/Standard, ../Standard/Standard_Type, Law_BSpFunc,
  ../TColgp/TColgp_Array1OfPnt2d, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

discard "forward decl of Law_Interpol"
discard "forward decl of Law_Interpol"
type
  Handle_Law_Interpol* = handle[Law_Interpol]

## ! Provides an evolution law that interpolates a set
## ! of parameter and value pairs (wi, radi)

type
  Law_Interpol* {.importcpp: "Law_Interpol", header: "Law_Interpol.hxx", bycopy.} = object of Law_BSpFunc ##
                                                                                                ## !
                                                                                                ## Constructs
                                                                                                ## an
                                                                                                ## empty
                                                                                                ## interpolative
                                                                                                ## evolution
                                                                                                ## law.
                                                                                                ##
                                                                                                ## !
                                                                                                ## The
                                                                                                ## function
                                                                                                ## Set
                                                                                                ## is
                                                                                                ## used
                                                                                                ## to
                                                                                                ## define
                                                                                                ## the
                                                                                                ## law.


proc constructLaw_Interpol*(): Law_Interpol {.constructor,
    importcpp: "Law_Interpol(@)", header: "Law_Interpol.hxx".}
proc Set*(this: var Law_Interpol; ParAndRad: TColgp_Array1OfPnt2d;
         Periodic: Standard_Boolean = Standard_False) {.importcpp: "Set",
    header: "Law_Interpol.hxx".}
proc SetInRelative*(this: var Law_Interpol; ParAndRad: TColgp_Array1OfPnt2d;
                   Ud: Standard_Real; Uf: Standard_Real;
                   Periodic: Standard_Boolean = Standard_False) {.
    importcpp: "SetInRelative", header: "Law_Interpol.hxx".}
proc Set*(this: var Law_Interpol; ParAndRad: TColgp_Array1OfPnt2d; Dd: Standard_Real;
         Df: Standard_Real; Periodic: Standard_Boolean = Standard_False) {.
    importcpp: "Set", header: "Law_Interpol.hxx".}
proc SetInRelative*(this: var Law_Interpol; ParAndRad: TColgp_Array1OfPnt2d;
                   Ud: Standard_Real; Uf: Standard_Real; Dd: Standard_Real;
                   Df: Standard_Real; Periodic: Standard_Boolean = Standard_False) {.
    importcpp: "SetInRelative", header: "Law_Interpol.hxx".}
type
  Law_Interpolbase_type* = Law_BSpFunc

proc get_type_name*(): cstring {.importcpp: "Law_Interpol::get_type_name(@)",
                              header: "Law_Interpol.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Law_Interpol::get_type_descriptor(@)", header: "Law_Interpol.hxx".}
proc DynamicType*(this: Law_Interpol): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Law_Interpol.hxx".}