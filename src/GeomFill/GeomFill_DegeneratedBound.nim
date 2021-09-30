##  Created on: 1995-12-05
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

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_DegeneratedBound"
discard "forward decl of GeomFill_DegeneratedBound"
type
  HandleC1C1* = Handle[GeomFillDegeneratedBound]

## ! Description of a degenerated boundary (a point).
## ! Class defining  a degenerated  boundary   for   a
## ! constrained filling   with  a   point  and  no   other
## ! constraint. Only used to  simulate an  ordinary bound,
## ! may not be usefull and desapear soon.

type
  GeomFillDegeneratedBound* {.importcpp: "GeomFill_DegeneratedBound",
                             header: "GeomFill_DegeneratedBound.hxx", bycopy.} = object of GeomFillBoundary


proc constructGeomFillDegeneratedBound*(point: Pnt; first: StandardReal;
                                       last: StandardReal; tol3d: StandardReal;
                                       tolang: StandardReal): GeomFillDegeneratedBound {.
    constructor, importcpp: "GeomFill_DegeneratedBound(@)",
    header: "GeomFill_DegeneratedBound.hxx".}
proc value*(this: GeomFillDegeneratedBound; u: StandardReal): Pnt {.noSideEffect,
    importcpp: "Value", header: "GeomFill_DegeneratedBound.hxx".}
proc d1*(this: GeomFillDegeneratedBound; u: StandardReal; p: var Pnt; v: var Vec) {.
    noSideEffect, importcpp: "D1", header: "GeomFill_DegeneratedBound.hxx".}
proc reparametrize*(this: var GeomFillDegeneratedBound; first: StandardReal;
                   last: StandardReal; hasDF: StandardBoolean;
                   hasDL: StandardBoolean; df: StandardReal; dl: StandardReal;
                   rev: StandardBoolean) {.importcpp: "Reparametrize",
    header: "GeomFill_DegeneratedBound.hxx".}
proc bounds*(this: GeomFillDegeneratedBound; first: var StandardReal;
            last: var StandardReal) {.noSideEffect, importcpp: "Bounds",
                                   header: "GeomFill_DegeneratedBound.hxx".}
proc isDegenerated*(this: GeomFillDegeneratedBound): StandardBoolean {.noSideEffect,
    importcpp: "IsDegenerated", header: "GeomFill_DegeneratedBound.hxx".}
type
  GeomFillDegeneratedBoundbaseType* = GeomFillBoundary

proc getTypeName*(): cstring {.importcpp: "GeomFill_DegeneratedBound::get_type_name(@)",
                            header: "GeomFill_DegeneratedBound.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomFill_DegeneratedBound::get_type_descriptor(@)",
    header: "GeomFill_DegeneratedBound.hxx".}
proc dynamicType*(this: GeomFillDegeneratedBound): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomFill_DegeneratedBound.hxx".}