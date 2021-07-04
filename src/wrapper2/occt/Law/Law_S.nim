##  Created on: 1993-12-24
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Real

discard "forward decl of Law_S"
discard "forward decl of Law_S"
type
  Handle_Law_S* = handle[Law_S]

## ! Describes an "S" evolution law.

type
  Law_S* {.importcpp: "Law_S", header: "Law_S.hxx", bycopy.} = object of Law_BSpFunc ## !
                                                                           ## Constructs an empty "S"
                                                                           ## evolution law.


proc constructLaw_S*(): Law_S {.constructor, importcpp: "Law_S(@)",
                             header: "Law_S.hxx".}
proc Set*(this: var Law_S; Pdeb: Standard_Real; Valdeb: Standard_Real;
         Pfin: Standard_Real; Valfin: Standard_Real) {.importcpp: "Set",
    header: "Law_S.hxx".}
proc Set*(this: var Law_S; Pdeb: Standard_Real; Valdeb: Standard_Real;
         Ddeb: Standard_Real; Pfin: Standard_Real; Valfin: Standard_Real;
         Dfin: Standard_Real) {.importcpp: "Set", header: "Law_S.hxx".}
type
  Law_Sbase_type* = Law_BSpFunc

proc get_type_name*(): cstring {.importcpp: "Law_S::get_type_name(@)",
                              header: "Law_S.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Law_S::get_type_descriptor(@)", header: "Law_S.hxx".}
proc DynamicType*(this: Law_S): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Law_S.hxx".}