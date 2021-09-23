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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Pnt,
  ../Standard/Standard_Real, GeomFill_Boundary, ../Standard/Standard_Boolean

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_DegeneratedBound"
discard "forward decl of GeomFill_DegeneratedBound"
type
  Handle_GeomFill_DegeneratedBound* = handle[GeomFill_DegeneratedBound]

## ! Description of a degenerated boundary (a point).
## ! Class defining  a degenerated  boundary   for   a
## ! constrained filling   with  a   point  and  no   other
## ! constraint. Only used to  simulate an  ordinary bound,
## ! may not be usefull and desapear soon.

type
  GeomFill_DegeneratedBound* {.importcpp: "GeomFill_DegeneratedBound",
                              header: "GeomFill_DegeneratedBound.hxx", bycopy.} = object of GeomFill_Boundary


proc constructGeomFill_DegeneratedBound*(Point: gp_Pnt; First: Standard_Real;
                                        Last: Standard_Real; Tol3d: Standard_Real;
                                        Tolang: Standard_Real): GeomFill_DegeneratedBound {.
    constructor, importcpp: "GeomFill_DegeneratedBound(@)",
    header: "GeomFill_DegeneratedBound.hxx".}
proc Value*(this: GeomFill_DegeneratedBound; U: Standard_Real): gp_Pnt {.noSideEffect,
    importcpp: "Value", header: "GeomFill_DegeneratedBound.hxx".}
proc D1*(this: GeomFill_DegeneratedBound; U: Standard_Real; P: var gp_Pnt; V: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "GeomFill_DegeneratedBound.hxx".}
proc Reparametrize*(this: var GeomFill_DegeneratedBound; First: Standard_Real;
                   Last: Standard_Real; HasDF: Standard_Boolean;
                   HasDL: Standard_Boolean; DF: Standard_Real; DL: Standard_Real;
                   Rev: Standard_Boolean) {.importcpp: "Reparametrize",
    header: "GeomFill_DegeneratedBound.hxx".}
proc Bounds*(this: GeomFill_DegeneratedBound; First: var Standard_Real;
            Last: var Standard_Real) {.noSideEffect, importcpp: "Bounds",
                                    header: "GeomFill_DegeneratedBound.hxx".}
proc IsDegenerated*(this: GeomFill_DegeneratedBound): Standard_Boolean {.
    noSideEffect, importcpp: "IsDegenerated",
    header: "GeomFill_DegeneratedBound.hxx".}
type
  GeomFill_DegeneratedBoundbase_type* = GeomFill_Boundary

proc get_type_name*(): cstring {.importcpp: "GeomFill_DegeneratedBound::get_type_name(@)",
                              header: "GeomFill_DegeneratedBound.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomFill_DegeneratedBound::get_type_descriptor(@)",
    header: "GeomFill_DegeneratedBound.hxx".}
proc DynamicType*(this: GeomFill_DegeneratedBound): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomFill_DegeneratedBound.hxx".}