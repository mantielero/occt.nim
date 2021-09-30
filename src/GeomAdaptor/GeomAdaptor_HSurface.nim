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
discard "forward decl of GeomAdaptor_Surface"
discard "forward decl of Geom_Surface"
discard "forward decl of GeomAdaptor_HSurface"
discard "forward decl of GeomAdaptor_HSurface"
type
  HandleC1C1* = Handle[GeomAdaptorHSurface]

## ! An interface between the services provided by any
## ! surface from the package Geom and those required
## ! of the surface by algorithms which use it.
## ! Provides a  surface handled by reference.

type
  GeomAdaptorHSurface* {.importcpp: "GeomAdaptor_HSurface",
                        header: "GeomAdaptor_HSurface.hxx", bycopy.} = object of GeomAdaptorGHSurface


proc constructGeomAdaptorHSurface*(): GeomAdaptorHSurface {.constructor,
    importcpp: "GeomAdaptor_HSurface(@)", header: "GeomAdaptor_HSurface.hxx".}
proc constructGeomAdaptorHSurface*(`as`: GeomAdaptorSurface): GeomAdaptorHSurface {.
    constructor, importcpp: "GeomAdaptor_HSurface(@)",
    header: "GeomAdaptor_HSurface.hxx".}
proc constructGeomAdaptorHSurface*(s: Handle[GeomSurface]): GeomAdaptorHSurface {.
    constructor, importcpp: "GeomAdaptor_HSurface(@)",
    header: "GeomAdaptor_HSurface.hxx".}
proc constructGeomAdaptorHSurface*(s: Handle[GeomSurface]; uFirst: StandardReal;
                                  uLast: StandardReal; vFirst: StandardReal;
                                  vLast: StandardReal; tolU: StandardReal = 0.0;
                                  tolV: StandardReal = 0.0): GeomAdaptorHSurface {.
    constructor, importcpp: "GeomAdaptor_HSurface(@)",
    header: "GeomAdaptor_HSurface.hxx".}
type
  GeomAdaptorHSurfacebaseType* = GeomAdaptorGHSurface

proc getTypeName*(): cstring {.importcpp: "GeomAdaptor_HSurface::get_type_name(@)",
                            header: "GeomAdaptor_HSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomAdaptor_HSurface::get_type_descriptor(@)",
    header: "GeomAdaptor_HSurface.hxx".}
proc dynamicType*(this: GeomAdaptorHSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomAdaptor_HSurface.hxx".}