##  Created on: 1998-05-05
##  Created by: Stepan MISHIN
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
  Geom_HSequenceOfBSplineSurface, ../TColStd/TColStd_HSequenceOfInteger,
  ../TColStd/TColStd_Array1OfBoolean, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../GeomAbs/GeomAbs_IsoType,
  Geom_SequenceOfBSplineSurface

discard "forward decl of Geom_Surface"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Geom_OsculatingSurface"
discard "forward decl of Geom_OsculatingSurface"
type
  Handle_Geom_OsculatingSurface* = handle[Geom_OsculatingSurface]
  Geom_OsculatingSurface* {.importcpp: "Geom_OsculatingSurface",
                           header: "Geom_OsculatingSurface.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                  ## !
                                                                                                  ## returns
                                                                                                  ## False
                                                                                                  ## if
                                                                                                  ## the
                                                                                                  ## osculating
                                                                                                  ## surface
                                                                                                  ## can't
                                                                                                  ## be
                                                                                                  ## built


proc constructGeom_OsculatingSurface*(): Geom_OsculatingSurface {.constructor,
    importcpp: "Geom_OsculatingSurface(@)", header: "Geom_OsculatingSurface.hxx".}
proc constructGeom_OsculatingSurface*(BS: handle[Geom_Surface]; Tol: Standard_Real): Geom_OsculatingSurface {.
    constructor, importcpp: "Geom_OsculatingSurface(@)",
    header: "Geom_OsculatingSurface.hxx".}
proc Init*(this: var Geom_OsculatingSurface; BS: handle[Geom_Surface];
          Tol: Standard_Real) {.importcpp: "Init",
                              header: "Geom_OsculatingSurface.hxx".}
proc BasisSurface*(this: Geom_OsculatingSurface): handle[Geom_Surface] {.
    noSideEffect, importcpp: "BasisSurface", header: "Geom_OsculatingSurface.hxx".}
proc Tolerance*(this: Geom_OsculatingSurface): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "Geom_OsculatingSurface.hxx".}
proc UOscSurf*(this: Geom_OsculatingSurface; U: Standard_Real; V: Standard_Real;
              t: var Standard_Boolean; L: var handle[Geom_BSplineSurface]): Standard_Boolean {.
    noSideEffect, importcpp: "UOscSurf", header: "Geom_OsculatingSurface.hxx".}
proc VOscSurf*(this: Geom_OsculatingSurface; U: Standard_Real; V: Standard_Real;
              t: var Standard_Boolean; L: var handle[Geom_BSplineSurface]): Standard_Boolean {.
    noSideEffect, importcpp: "VOscSurf", header: "Geom_OsculatingSurface.hxx".}
proc DumpJson*(this: Geom_OsculatingSurface; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_OsculatingSurface.hxx".}
type
  Geom_OsculatingSurfacebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Geom_OsculatingSurface::get_type_name(@)",
                              header: "Geom_OsculatingSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_OsculatingSurface::get_type_descriptor(@)",
    header: "Geom_OsculatingSurface.hxx".}
proc DynamicType*(this: Geom_OsculatingSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Geom_OsculatingSurface.hxx".}