##  Created on: 1993-10-06
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, GeomFill_FillingStyle

discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Geom_BSplineCurve"
type
  GeomFill_BSplineCurves* {.importcpp: "GeomFill_BSplineCurves",
                           header: "GeomFill_BSplineCurves.hxx", bycopy.} = object ## !
                                                                              ## Constructs a
                                                                              ## default
                                                                              ## BSpline
                                                                              ## surface
                                                                              ## framework.


proc constructGeomFill_BSplineCurves*(): GeomFill_BSplineCurves {.constructor,
    importcpp: "GeomFill_BSplineCurves(@)", header: "GeomFill_BSplineCurves.hxx".}
proc constructGeomFill_BSplineCurves*(C1: handle[Geom_BSplineCurve];
                                     C2: handle[Geom_BSplineCurve];
                                     C3: handle[Geom_BSplineCurve];
                                     C4: handle[Geom_BSplineCurve];
                                     Type: GeomFill_FillingStyle): GeomFill_BSplineCurves {.
    constructor, importcpp: "GeomFill_BSplineCurves(@)",
    header: "GeomFill_BSplineCurves.hxx".}
proc constructGeomFill_BSplineCurves*(C1: handle[Geom_BSplineCurve];
                                     C2: handle[Geom_BSplineCurve];
                                     C3: handle[Geom_BSplineCurve];
                                     Type: GeomFill_FillingStyle): GeomFill_BSplineCurves {.
    constructor, importcpp: "GeomFill_BSplineCurves(@)",
    header: "GeomFill_BSplineCurves.hxx".}
proc constructGeomFill_BSplineCurves*(C1: handle[Geom_BSplineCurve];
                                     C2: handle[Geom_BSplineCurve];
                                     Type: GeomFill_FillingStyle): GeomFill_BSplineCurves {.
    constructor, importcpp: "GeomFill_BSplineCurves(@)",
    header: "GeomFill_BSplineCurves.hxx".}
proc Init*(this: var GeomFill_BSplineCurves; C1: handle[Geom_BSplineCurve];
          C2: handle[Geom_BSplineCurve]; C3: handle[Geom_BSplineCurve];
          C4: handle[Geom_BSplineCurve]; Type: GeomFill_FillingStyle) {.
    importcpp: "Init", header: "GeomFill_BSplineCurves.hxx".}
proc Init*(this: var GeomFill_BSplineCurves; C1: handle[Geom_BSplineCurve];
          C2: handle[Geom_BSplineCurve]; C3: handle[Geom_BSplineCurve];
          Type: GeomFill_FillingStyle) {.importcpp: "Init",
                                       header: "GeomFill_BSplineCurves.hxx".}
proc Init*(this: var GeomFill_BSplineCurves; C1: handle[Geom_BSplineCurve];
          C2: handle[Geom_BSplineCurve]; Type: GeomFill_FillingStyle) {.
    importcpp: "Init", header: "GeomFill_BSplineCurves.hxx".}
proc Surface*(this: GeomFill_BSplineCurves): handle[Geom_BSplineSurface] {.
    noSideEffect, importcpp: "Surface", header: "GeomFill_BSplineCurves.hxx".}