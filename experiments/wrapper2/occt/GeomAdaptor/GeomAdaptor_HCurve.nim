##  Created on: 1995-08-25
##  Created by: Remi LEQUETTE
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
  ../Standard/Standard, ../Standard/Standard_Type, GeomAdaptor_GHCurve,
  ../Standard/Standard_Real

discard "forward decl of Standard_ConstructionError"
discard "forward decl of GeomAdaptor_Curve"
discard "forward decl of Geom_Curve"
discard "forward decl of GeomAdaptor_HCurve"
discard "forward decl of GeomAdaptor_HCurve"
type
  Handle_GeomAdaptor_HCurve* = handle[GeomAdaptor_HCurve]

## ! An interface between the services provided by any
## ! curve from the package Geom and those required of
## ! the curve by algorithms which use it.

type
  GeomAdaptor_HCurve* {.importcpp: "GeomAdaptor_HCurve",
                       header: "GeomAdaptor_HCurve.hxx", bycopy.} = object of GeomAdaptor_GHCurve


proc constructGeomAdaptor_HCurve*(): GeomAdaptor_HCurve {.constructor,
    importcpp: "GeomAdaptor_HCurve(@)", header: "GeomAdaptor_HCurve.hxx".}
proc constructGeomAdaptor_HCurve*(AS: GeomAdaptor_Curve): GeomAdaptor_HCurve {.
    constructor, importcpp: "GeomAdaptor_HCurve(@)",
    header: "GeomAdaptor_HCurve.hxx".}
proc constructGeomAdaptor_HCurve*(S: handle[Geom_Curve]): GeomAdaptor_HCurve {.
    constructor, importcpp: "GeomAdaptor_HCurve(@)",
    header: "GeomAdaptor_HCurve.hxx".}
proc constructGeomAdaptor_HCurve*(S: handle[Geom_Curve]; UFirst: Standard_Real;
                                 ULast: Standard_Real): GeomAdaptor_HCurve {.
    constructor, importcpp: "GeomAdaptor_HCurve(@)",
    header: "GeomAdaptor_HCurve.hxx".}
type
  GeomAdaptor_HCurvebase_type* = GeomAdaptor_GHCurve

proc get_type_name*(): cstring {.importcpp: "GeomAdaptor_HCurve::get_type_name(@)",
                              header: "GeomAdaptor_HCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomAdaptor_HCurve::get_type_descriptor(@)",
    header: "GeomAdaptor_HCurve.hxx".}
proc DynamicType*(this: GeomAdaptor_HCurve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomAdaptor_HCurve.hxx".}