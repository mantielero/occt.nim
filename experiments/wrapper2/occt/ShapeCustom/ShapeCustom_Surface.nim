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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean

discard "forward decl of Geom_Surface"
type
  ShapeCustom_Surface* {.importcpp: "ShapeCustom_Surface",
                        header: "ShapeCustom_Surface.hxx", bycopy.} = object


proc constructShapeCustom_Surface*(): ShapeCustom_Surface {.constructor,
    importcpp: "ShapeCustom_Surface(@)", header: "ShapeCustom_Surface.hxx".}
proc constructShapeCustom_Surface*(S: handle[Geom_Surface]): ShapeCustom_Surface {.
    constructor, importcpp: "ShapeCustom_Surface(@)",
    header: "ShapeCustom_Surface.hxx".}
proc Init*(this: var ShapeCustom_Surface; S: handle[Geom_Surface]) {.
    importcpp: "Init", header: "ShapeCustom_Surface.hxx".}
proc Gap*(this: ShapeCustom_Surface): Standard_Real {.noSideEffect, importcpp: "Gap",
    header: "ShapeCustom_Surface.hxx".}
proc ConvertToAnalytical*(this: var ShapeCustom_Surface; tol: Standard_Real;
                         substitute: Standard_Boolean): handle[Geom_Surface] {.
    importcpp: "ConvertToAnalytical", header: "ShapeCustom_Surface.hxx".}
proc ConvertToPeriodic*(this: var ShapeCustom_Surface; substitute: Standard_Boolean;
                       preci: Standard_Real = -1): handle[Geom_Surface] {.
    importcpp: "ConvertToPeriodic", header: "ShapeCustom_Surface.hxx".}