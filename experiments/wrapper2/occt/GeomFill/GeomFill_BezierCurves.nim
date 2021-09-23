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

discard "forward decl of Geom_BezierSurface"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Geom_BezierCurve"
type
  GeomFill_BezierCurves* {.importcpp: "GeomFill_BezierCurves",
                          header: "GeomFill_BezierCurves.hxx", bycopy.} = object ## !
                                                                            ## Constructs an
                                                                            ## empty
                                                                            ## framework for
                                                                            ## building a
                                                                            ## Bezier
                                                                            ## !
                                                                            ## surface from
                                                                            ## contiguous
                                                                            ## Bezier
                                                                            ## curves.
                                                                            ## ! You use the Init
                                                                            ## function to
                                                                            ## define the
                                                                            ## boundaries of the
                                                                            ## surface.


proc constructGeomFill_BezierCurves*(): GeomFill_BezierCurves {.constructor,
    importcpp: "GeomFill_BezierCurves(@)", header: "GeomFill_BezierCurves.hxx".}
proc constructGeomFill_BezierCurves*(C1: handle[Geom_BezierCurve];
                                    C2: handle[Geom_BezierCurve];
                                    C3: handle[Geom_BezierCurve];
                                    C4: handle[Geom_BezierCurve];
                                    Type: GeomFill_FillingStyle): GeomFill_BezierCurves {.
    constructor, importcpp: "GeomFill_BezierCurves(@)",
    header: "GeomFill_BezierCurves.hxx".}
proc constructGeomFill_BezierCurves*(C1: handle[Geom_BezierCurve];
                                    C2: handle[Geom_BezierCurve];
                                    C3: handle[Geom_BezierCurve];
                                    Type: GeomFill_FillingStyle): GeomFill_BezierCurves {.
    constructor, importcpp: "GeomFill_BezierCurves(@)",
    header: "GeomFill_BezierCurves.hxx".}
proc constructGeomFill_BezierCurves*(C1: handle[Geom_BezierCurve];
                                    C2: handle[Geom_BezierCurve];
                                    Type: GeomFill_FillingStyle): GeomFill_BezierCurves {.
    constructor, importcpp: "GeomFill_BezierCurves(@)",
    header: "GeomFill_BezierCurves.hxx".}
proc Init*(this: var GeomFill_BezierCurves; C1: handle[Geom_BezierCurve];
          C2: handle[Geom_BezierCurve]; C3: handle[Geom_BezierCurve];
          C4: handle[Geom_BezierCurve]; Type: GeomFill_FillingStyle) {.
    importcpp: "Init", header: "GeomFill_BezierCurves.hxx".}
proc Init*(this: var GeomFill_BezierCurves; C1: handle[Geom_BezierCurve];
          C2: handle[Geom_BezierCurve]; C3: handle[Geom_BezierCurve];
          Type: GeomFill_FillingStyle) {.importcpp: "Init",
                                       header: "GeomFill_BezierCurves.hxx".}
proc Init*(this: var GeomFill_BezierCurves; C1: handle[Geom_BezierCurve];
          C2: handle[Geom_BezierCurve]; Type: GeomFill_FillingStyle) {.
    importcpp: "Init", header: "GeomFill_BezierCurves.hxx".}
proc Surface*(this: GeomFill_BezierCurves): handle[Geom_BezierSurface] {.
    noSideEffect, importcpp: "Surface", header: "GeomFill_BezierCurves.hxx".}