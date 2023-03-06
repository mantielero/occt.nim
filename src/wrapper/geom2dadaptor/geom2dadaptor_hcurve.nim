import ../standard/standard_types
import ../geom2d/geom2d_types
import geom2dadaptor_types





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





proc newGeom2dAdaptorHCurve*(): Geom2dAdaptorHCurve {.cdecl, constructor,
    importcpp: "Geom2dAdaptor_HCurve(@)", header: "Geom2dAdaptor_HCurve.hxx".}
proc newGeom2dAdaptorHCurve*(`as`: Geom2dAdaptorCurve): Geom2dAdaptorHCurve {.cdecl,
    constructor, importcpp: "Geom2dAdaptor_HCurve(@)", header: "Geom2dAdaptor_HCurve.hxx".}
proc newGeom2dAdaptorHCurve*(s: Handle[Geom2dCurve]): Geom2dAdaptorHCurve {.cdecl,
    constructor, importcpp: "Geom2dAdaptor_HCurve(@)", header: "Geom2dAdaptor_HCurve.hxx".}
proc newGeom2dAdaptorHCurve*(s: Handle[Geom2dCurve]; uFirst: cfloat; uLast: cfloat): Geom2dAdaptorHCurve {.
    cdecl, constructor, importcpp: "Geom2dAdaptor_HCurve(@)", header: "Geom2dAdaptor_HCurve.hxx".}


