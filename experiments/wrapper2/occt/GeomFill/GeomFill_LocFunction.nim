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

discard "forward decl of GeomFill_LocationLaw"
type
  GeomFillLocFunction* {.importcpp: "GeomFill_LocFunction",
                        header: "GeomFill_LocFunction.hxx", bycopy.} = object


proc constructGeomFillLocFunction*(law: Handle[GeomFillLocationLaw]): GeomFillLocFunction {.
    constructor, importcpp: "GeomFill_LocFunction(@)",
    header: "GeomFill_LocFunction.hxx".}
proc d0*(this: var GeomFillLocFunction; param: float; first: float; last: float): bool {.
    importcpp: "D0", header: "GeomFill_LocFunction.hxx".}
proc d1*(this: var GeomFillLocFunction; param: float; first: float; last: float): bool {.
    importcpp: "D1", header: "GeomFill_LocFunction.hxx".}
proc d2*(this: var GeomFillLocFunction; param: float; first: float; last: float): bool {.
    importcpp: "D2", header: "GeomFill_LocFunction.hxx".}
proc dn*(this: var GeomFillLocFunction; param: float; first: float; last: float;
        order: int; result: var float; ier: var int) {.importcpp: "DN",
    header: "GeomFill_LocFunction.hxx".}
