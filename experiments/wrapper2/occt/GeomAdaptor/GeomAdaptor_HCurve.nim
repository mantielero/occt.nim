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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of GeomAdaptor_Curve"
discard "forward decl of Geom_Curve"
discard "forward decl of GeomAdaptor_HCurve"
discard "forward decl of GeomAdaptor_HCurve"
type
  HandleGeomAdaptorHCurve* = Handle[GeomAdaptorHCurve]

## ! An interface between the services provided by any
## ! curve from the package Geom and those required of
## ! the curve by algorithms which use it.

type
  GeomAdaptorHCurve* {.importcpp: "GeomAdaptor_HCurve",
                      header: "GeomAdaptor_HCurve.hxx", bycopy.} = object of GeomAdaptorGHCurve


proc constructGeomAdaptorHCurve*(): GeomAdaptorHCurve {.constructor,
    importcpp: "GeomAdaptor_HCurve(@)", header: "GeomAdaptor_HCurve.hxx".}
proc constructGeomAdaptorHCurve*(`as`: GeomAdaptorCurve): GeomAdaptorHCurve {.
    constructor, importcpp: "GeomAdaptor_HCurve(@)",
    header: "GeomAdaptor_HCurve.hxx".}
proc constructGeomAdaptorHCurve*(s: Handle[GeomCurve]): GeomAdaptorHCurve {.
    constructor, importcpp: "GeomAdaptor_HCurve(@)",
    header: "GeomAdaptor_HCurve.hxx".}
proc constructGeomAdaptorHCurve*(s: Handle[GeomCurve]; uFirst: float; uLast: float): GeomAdaptorHCurve {.
    constructor, importcpp: "GeomAdaptor_HCurve(@)",
    header: "GeomAdaptor_HCurve.hxx".}
type
  GeomAdaptorHCurvebaseType* = GeomAdaptorGHCurve

proc getTypeName*(): cstring {.importcpp: "GeomAdaptor_HCurve::get_type_name(@)",
                            header: "GeomAdaptor_HCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomAdaptor_HCurve::get_type_descriptor(@)",
    header: "GeomAdaptor_HCurve.hxx".}
proc dynamicType*(this: GeomAdaptorHCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomAdaptor_HCurve.hxx".}
