##  Created on: 1998-06-03
##  Created by: data exchange team
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

discard "forward decl of Geom_Surface"
type
  ShapeCustomSurface* {.importcpp: "ShapeCustom_Surface",
                       header: "ShapeCustom_Surface.hxx", bycopy.} = object


proc constructShapeCustomSurface*(): ShapeCustomSurface {.constructor,
    importcpp: "ShapeCustom_Surface(@)", header: "ShapeCustom_Surface.hxx".}
proc constructShapeCustomSurface*(s: Handle[GeomSurface]): ShapeCustomSurface {.
    constructor, importcpp: "ShapeCustom_Surface(@)",
    header: "ShapeCustom_Surface.hxx".}
proc init*(this: var ShapeCustomSurface; s: Handle[GeomSurface]) {.importcpp: "Init",
    header: "ShapeCustom_Surface.hxx".}
proc gap*(this: ShapeCustomSurface): cfloat {.noSideEffect, importcpp: "Gap",
    header: "ShapeCustom_Surface.hxx".}
proc convertToAnalytical*(this: var ShapeCustomSurface; tol: cfloat; substitute: bool): Handle[
    GeomSurface] {.importcpp: "ConvertToAnalytical",
                  header: "ShapeCustom_Surface.hxx".}
proc convertToPeriodic*(this: var ShapeCustomSurface; substitute: bool;
                       preci: cfloat = -1): Handle[GeomSurface] {.
    importcpp: "ConvertToPeriodic", header: "ShapeCustom_Surface.hxx".}

























