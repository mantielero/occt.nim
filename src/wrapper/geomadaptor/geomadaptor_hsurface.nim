import geomadaptor_types
import ../standard/standard_types
import ../geom/geom_types





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





proc newGeomAdaptorHSurface*(): GeomAdaptorHSurface {.cdecl, constructor,
    importcpp: "GeomAdaptor_HSurface(@)", header: "GeomAdaptor_HSurface.hxx".}
proc newGeomAdaptorHSurface*(`as`: GeomAdaptorSurface): GeomAdaptorHSurface {.cdecl,
    constructor, importcpp: "GeomAdaptor_HSurface(@)", header: "GeomAdaptor_HSurface.hxx".}
proc newGeomAdaptorHSurface*(s: Handle[GeomSurface]): GeomAdaptorHSurface {.cdecl,
    constructor, importcpp: "GeomAdaptor_HSurface(@)", header: "GeomAdaptor_HSurface.hxx".}
proc newGeomAdaptorHSurface*(s: Handle[GeomSurface]; uFirst: cfloat; uLast: cfloat;
                            vFirst: cfloat; vLast: cfloat; tolU: cfloat = 0.0;
                            tolV: cfloat = 0.0): GeomAdaptorHSurface {.cdecl,
    constructor, importcpp: "GeomAdaptor_HSurface(@)", header: "GeomAdaptor_HSurface.hxx".}


