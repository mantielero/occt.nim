##  Created on: 1998-02-02
##  Created by: Philippe MANGIN
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColgp/TColgp_Array1OfVec, ../gp/gp_Mat,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../Standard/Standard_Integer

discard "forward decl of GeomFill_LocationLaw"
type
  GeomFill_LocFunction* {.importcpp: "GeomFill_LocFunction",
                         header: "GeomFill_LocFunction.hxx", bycopy.} = object


proc constructGeomFill_LocFunction*(Law: handle[GeomFill_LocationLaw]): GeomFill_LocFunction {.
    constructor, importcpp: "GeomFill_LocFunction(@)",
    header: "GeomFill_LocFunction.hxx".}
proc D0*(this: var GeomFill_LocFunction; Param: Standard_Real; First: Standard_Real;
        Last: Standard_Real): Standard_Boolean {.importcpp: "D0",
    header: "GeomFill_LocFunction.hxx".}
proc D1*(this: var GeomFill_LocFunction; Param: Standard_Real; First: Standard_Real;
        Last: Standard_Real): Standard_Boolean {.importcpp: "D1",
    header: "GeomFill_LocFunction.hxx".}
proc D2*(this: var GeomFill_LocFunction; Param: Standard_Real; First: Standard_Real;
        Last: Standard_Real): Standard_Boolean {.importcpp: "D2",
    header: "GeomFill_LocFunction.hxx".}
proc DN*(this: var GeomFill_LocFunction; Param: Standard_Real; First: Standard_Real;
        Last: Standard_Real; Order: Standard_Integer; Result: var Standard_Real;
        Ier: var Standard_Integer) {.importcpp: "DN",
                                  header: "GeomFill_LocFunction.hxx".}