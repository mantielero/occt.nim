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
  ../Standard/Standard, ../Standard/Standard_Type, Geom2dAdaptor_GHCurve,
  ../Standard/Standard_Real

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom2dAdaptor_HCurve"
discard "forward decl of Geom2dAdaptor_HCurve"
type
  Handle_Geom2dAdaptor_HCurve* = handle[Geom2dAdaptor_HCurve]

## ! Provides an interface between the services provided by any
## ! curve from the package Geom2d and those required
## ! of the curve by algorithms, which use it.

type
  Geom2dAdaptor_HCurve* {.importcpp: "Geom2dAdaptor_HCurve",
                         header: "Geom2dAdaptor_HCurve.hxx", bycopy.} = object of Geom2dAdaptor_GHCurve


proc constructGeom2dAdaptor_HCurve*(): Geom2dAdaptor_HCurve {.constructor,
    importcpp: "Geom2dAdaptor_HCurve(@)", header: "Geom2dAdaptor_HCurve.hxx".}
proc constructGeom2dAdaptor_HCurve*(AS: Geom2dAdaptor_Curve): Geom2dAdaptor_HCurve {.
    constructor, importcpp: "Geom2dAdaptor_HCurve(@)",
    header: "Geom2dAdaptor_HCurve.hxx".}
proc constructGeom2dAdaptor_HCurve*(S: handle[Geom2d_Curve]): Geom2dAdaptor_HCurve {.
    constructor, importcpp: "Geom2dAdaptor_HCurve(@)",
    header: "Geom2dAdaptor_HCurve.hxx".}
proc constructGeom2dAdaptor_HCurve*(S: handle[Geom2d_Curve]; UFirst: Standard_Real;
                                   ULast: Standard_Real): Geom2dAdaptor_HCurve {.
    constructor, importcpp: "Geom2dAdaptor_HCurve(@)",
    header: "Geom2dAdaptor_HCurve.hxx".}
type
  Geom2dAdaptor_HCurvebase_type* = Geom2dAdaptor_GHCurve

proc get_type_name*(): cstring {.importcpp: "Geom2dAdaptor_HCurve::get_type_name(@)",
                              header: "Geom2dAdaptor_HCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom2dAdaptor_HCurve::get_type_descriptor(@)",
    header: "Geom2dAdaptor_HCurve.hxx".}
proc DynamicType*(this: Geom2dAdaptor_HCurve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2dAdaptor_HCurve.hxx".}