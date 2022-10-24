import geomadaptor_types

##  Created on: 1992-10-08
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of GeomAdaptor_SurfaceOfLinearExtrusion"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of GeomAdaptor_HSurfaceOfLinearExtrusion"


proc newGeomAdaptorHSurfaceOfLinearExtrusion*(): GeomAdaptorHSurfaceOfLinearExtrusion {.
    cdecl, constructor, importcpp: "GeomAdaptor_HSurfaceOfLinearExtrusion(@)",
    header: "GeomAdaptor_HSurfaceOfLinearExtrusion.hxx".}
proc newGeomAdaptorHSurfaceOfLinearExtrusion*(
    s: GeomAdaptorSurfaceOfLinearExtrusion): GeomAdaptorHSurfaceOfLinearExtrusion {.
    cdecl, constructor, importcpp: "GeomAdaptor_HSurfaceOfLinearExtrusion(@)",
    header: "GeomAdaptor_HSurfaceOfLinearExtrusion.hxx".}
proc set*(this: var GeomAdaptorHSurfaceOfLinearExtrusion;
         s: GeomAdaptorSurfaceOfLinearExtrusion) {.cdecl, importcpp: "Set",
    header: "GeomAdaptor_HSurfaceOfLinearExtrusion.hxx".}
proc surface*(this: GeomAdaptorHSurfaceOfLinearExtrusion): Adaptor3dSurface {.
    noSideEffect, cdecl, importcpp: "Surface", header: "GeomAdaptor_HSurfaceOfLinearExtrusion.hxx".}
proc changeSurface*(this: var GeomAdaptorHSurfaceOfLinearExtrusion): var GeomAdaptorSurfaceOfLinearExtrusion {.
    cdecl, importcpp: "ChangeSurface", header: "GeomAdaptor_HSurfaceOfLinearExtrusion.hxx".}


