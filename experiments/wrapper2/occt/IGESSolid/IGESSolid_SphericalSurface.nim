##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( SIVA )
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

discard "forward decl of IGESGeom_Point"
discard "forward decl of IGESGeom_Direction"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESSolid_SphericalSurface"
discard "forward decl of IGESSolid_SphericalSurface"
type
  HandleC1C1* = Handle[IGESSolidSphericalSurface]

## ! defines SphericalSurface, Type <196> Form Number <0,1>
## ! in package IGESSolid
## ! Spherical surface is defined by a center and radius.
## ! In case of parametrised surface an axis and a
## ! reference direction is provided.

type
  IGESSolidSphericalSurface* {.importcpp: "IGESSolid_SphericalSurface",
                              header: "IGESSolid_SphericalSurface.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESSolidSphericalSurface*(): IGESSolidSphericalSurface {.
    constructor, importcpp: "IGESSolid_SphericalSurface(@)",
    header: "IGESSolid_SphericalSurface.hxx".}
proc init*(this: var IGESSolidSphericalSurface; aCenter: Handle[IGESGeomPoint];
          aRadius: cfloat; anAxis: Handle[IGESGeomDirection];
          aRefdir: Handle[IGESGeomDirection]) {.importcpp: "Init",
    header: "IGESSolid_SphericalSurface.hxx".}
proc center*(this: IGESSolidSphericalSurface): Handle[IGESGeomPoint] {.noSideEffect,
    importcpp: "Center", header: "IGESSolid_SphericalSurface.hxx".}
proc transformedCenter*(this: IGESSolidSphericalSurface): Pnt {.noSideEffect,
    importcpp: "TransformedCenter", header: "IGESSolid_SphericalSurface.hxx".}
proc radius*(this: IGESSolidSphericalSurface): cfloat {.noSideEffect,
    importcpp: "Radius", header: "IGESSolid_SphericalSurface.hxx".}
proc axis*(this: IGESSolidSphericalSurface): Handle[IGESGeomDirection] {.
    noSideEffect, importcpp: "Axis", header: "IGESSolid_SphericalSurface.hxx".}
proc referenceDir*(this: IGESSolidSphericalSurface): Handle[IGESGeomDirection] {.
    noSideEffect, importcpp: "ReferenceDir",
    header: "IGESSolid_SphericalSurface.hxx".}
proc isParametrised*(this: IGESSolidSphericalSurface): bool {.noSideEffect,
    importcpp: "IsParametrised", header: "IGESSolid_SphericalSurface.hxx".}
type
  IGESSolidSphericalSurfacebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESSolid_SphericalSurface::get_type_name(@)",
                            header: "IGESSolid_SphericalSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_SphericalSurface::get_type_descriptor(@)",
    header: "IGESSolid_SphericalSurface.hxx".}
proc dynamicType*(this: IGESSolidSphericalSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSolid_SphericalSurface.hxx".}

























