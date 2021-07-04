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

import
  ../Standard/Standard, ../Standard/Standard_Type, GeomAdaptor_GHSurface,
  ../Standard/Standard_Real

discard "forward decl of Standard_ConstructionError"
discard "forward decl of GeomAdaptor_Surface"
discard "forward decl of Geom_Surface"
discard "forward decl of GeomAdaptor_HSurface"
discard "forward decl of GeomAdaptor_HSurface"
type
  Handle_GeomAdaptor_HSurface* = handle[GeomAdaptor_HSurface]

## ! An interface between the services provided by any
## ! surface from the package Geom and those required
## ! of the surface by algorithms which use it.
## ! Provides a  surface handled by reference.

type
  GeomAdaptor_HSurface* {.importcpp: "GeomAdaptor_HSurface",
                         header: "GeomAdaptor_HSurface.hxx", bycopy.} = object of GeomAdaptor_GHSurface


proc constructGeomAdaptor_HSurface*(): GeomAdaptor_HSurface {.constructor,
    importcpp: "GeomAdaptor_HSurface(@)", header: "GeomAdaptor_HSurface.hxx".}
proc constructGeomAdaptor_HSurface*(AS: GeomAdaptor_Surface): GeomAdaptor_HSurface {.
    constructor, importcpp: "GeomAdaptor_HSurface(@)",
    header: "GeomAdaptor_HSurface.hxx".}
proc constructGeomAdaptor_HSurface*(S: handle[Geom_Surface]): GeomAdaptor_HSurface {.
    constructor, importcpp: "GeomAdaptor_HSurface(@)",
    header: "GeomAdaptor_HSurface.hxx".}
proc constructGeomAdaptor_HSurface*(S: handle[Geom_Surface]; UFirst: Standard_Real;
                                   ULast: Standard_Real; VFirst: Standard_Real;
                                   VLast: Standard_Real;
                                   TolU: Standard_Real = 0.0;
                                   TolV: Standard_Real = 0.0): GeomAdaptor_HSurface {.
    constructor, importcpp: "GeomAdaptor_HSurface(@)",
    header: "GeomAdaptor_HSurface.hxx".}
type
  GeomAdaptor_HSurfacebase_type* = GeomAdaptor_GHSurface

proc get_type_name*(): cstring {.importcpp: "GeomAdaptor_HSurface::get_type_name(@)",
                              header: "GeomAdaptor_HSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomAdaptor_HSurface::get_type_descriptor(@)",
    header: "GeomAdaptor_HSurface.hxx".}
proc DynamicType*(this: GeomAdaptor_HSurface): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomAdaptor_HSurface.hxx".}