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

discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Geom_BSplineCurve"
type
  GeomFillBSplineCurves* {.importcpp: "GeomFill_BSplineCurves",
                          header: "GeomFill_BSplineCurves.hxx", bycopy.} = object


proc `new`*(this: var GeomFillBSplineCurves; theSize: csize_t): pointer {.
    importcpp: "GeomFill_BSplineCurves::operator new",
    header: "GeomFill_BSplineCurves.hxx".}
proc `delete`*(this: var GeomFillBSplineCurves; theAddress: pointer) {.
    importcpp: "GeomFill_BSplineCurves::operator delete",
    header: "GeomFill_BSplineCurves.hxx".}
proc `new[]`*(this: var GeomFillBSplineCurves; theSize: csize_t): pointer {.
    importcpp: "GeomFill_BSplineCurves::operator new[]",
    header: "GeomFill_BSplineCurves.hxx".}
proc `delete[]`*(this: var GeomFillBSplineCurves; theAddress: pointer) {.
    importcpp: "GeomFill_BSplineCurves::operator delete[]",
    header: "GeomFill_BSplineCurves.hxx".}
proc `new`*(this: var GeomFillBSplineCurves; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomFill_BSplineCurves::operator new",
    header: "GeomFill_BSplineCurves.hxx".}
proc `delete`*(this: var GeomFillBSplineCurves; a2: pointer; a3: pointer) {.
    importcpp: "GeomFill_BSplineCurves::operator delete",
    header: "GeomFill_BSplineCurves.hxx".}
proc constructGeomFillBSplineCurves*(): GeomFillBSplineCurves {.constructor,
    importcpp: "GeomFill_BSplineCurves(@)", header: "GeomFill_BSplineCurves.hxx".}
proc constructGeomFillBSplineCurves*(c1: Handle[GeomBSplineCurve];
                                    c2: Handle[GeomBSplineCurve];
                                    c3: Handle[GeomBSplineCurve];
                                    c4: Handle[GeomBSplineCurve];
                                    `type`: GeomFillFillingStyle): GeomFillBSplineCurves {.
    constructor, importcpp: "GeomFill_BSplineCurves(@)",
    header: "GeomFill_BSplineCurves.hxx".}
proc constructGeomFillBSplineCurves*(c1: Handle[GeomBSplineCurve];
                                    c2: Handle[GeomBSplineCurve];
                                    c3: Handle[GeomBSplineCurve];
                                    `type`: GeomFillFillingStyle): GeomFillBSplineCurves {.
    constructor, importcpp: "GeomFill_BSplineCurves(@)",
    header: "GeomFill_BSplineCurves.hxx".}
proc constructGeomFillBSplineCurves*(c1: Handle[GeomBSplineCurve];
                                    c2: Handle[GeomBSplineCurve];
                                    `type`: GeomFillFillingStyle): GeomFillBSplineCurves {.
    constructor, importcpp: "GeomFill_BSplineCurves(@)",
    header: "GeomFill_BSplineCurves.hxx".}
proc init*(this: var GeomFillBSplineCurves; c1: Handle[GeomBSplineCurve];
          c2: Handle[GeomBSplineCurve]; c3: Handle[GeomBSplineCurve];
          c4: Handle[GeomBSplineCurve]; `type`: GeomFillFillingStyle) {.
    importcpp: "Init", header: "GeomFill_BSplineCurves.hxx".}
proc init*(this: var GeomFillBSplineCurves; c1: Handle[GeomBSplineCurve];
          c2: Handle[GeomBSplineCurve]; c3: Handle[GeomBSplineCurve];
          `type`: GeomFillFillingStyle) {.importcpp: "Init",
                                        header: "GeomFill_BSplineCurves.hxx".}
proc init*(this: var GeomFillBSplineCurves; c1: Handle[GeomBSplineCurve];
          c2: Handle[GeomBSplineCurve]; `type`: GeomFillFillingStyle) {.
    importcpp: "Init", header: "GeomFill_BSplineCurves.hxx".}
proc surface*(this: GeomFillBSplineCurves): Handle[GeomBSplineSurface] {.
    noSideEffect, importcpp: "Surface", header: "GeomFill_BSplineCurves.hxx".}