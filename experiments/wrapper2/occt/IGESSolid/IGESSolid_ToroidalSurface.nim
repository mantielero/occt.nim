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
discard "forward decl of IGESSolid_ToroidalSurface"
discard "forward decl of IGESSolid_ToroidalSurface"
type
  HandleC1C1* = Handle[IGESSolidToroidalSurface]

## ! defines ToroidalSurface, Type <198> Form Number <0,1>
## ! in package IGESSolid
## ! This entity is defined by the center point, the axis
## ! direction and the major and minor radii. In case of
## ! parametrised surface a reference direction is provided.

type
  IGESSolidToroidalSurface* {.importcpp: "IGESSolid_ToroidalSurface",
                             header: "IGESSolid_ToroidalSurface.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESSolidToroidalSurface*(): IGESSolidToroidalSurface {.constructor,
    importcpp: "IGESSolid_ToroidalSurface(@)",
    header: "IGESSolid_ToroidalSurface.hxx".}
proc init*(this: var IGESSolidToroidalSurface; aCenter: Handle[IGESGeomPoint];
          anAxis: Handle[IGESGeomDirection]; majRadius: cfloat; minRadius: cfloat;
          refdir: Handle[IGESGeomDirection]) {.importcpp: "Init",
    header: "IGESSolid_ToroidalSurface.hxx".}
proc center*(this: IGESSolidToroidalSurface): Handle[IGESGeomPoint] {.noSideEffect,
    importcpp: "Center", header: "IGESSolid_ToroidalSurface.hxx".}
proc transformedCenter*(this: IGESSolidToroidalSurface): Pnt {.noSideEffect,
    importcpp: "TransformedCenter", header: "IGESSolid_ToroidalSurface.hxx".}
proc axis*(this: IGESSolidToroidalSurface): Handle[IGESGeomDirection] {.
    noSideEffect, importcpp: "Axis", header: "IGESSolid_ToroidalSurface.hxx".}
proc majorRadius*(this: IGESSolidToroidalSurface): cfloat {.noSideEffect,
    importcpp: "MajorRadius", header: "IGESSolid_ToroidalSurface.hxx".}
proc minorRadius*(this: IGESSolidToroidalSurface): cfloat {.noSideEffect,
    importcpp: "MinorRadius", header: "IGESSolid_ToroidalSurface.hxx".}
proc referenceDir*(this: IGESSolidToroidalSurface): Handle[IGESGeomDirection] {.
    noSideEffect, importcpp: "ReferenceDir",
    header: "IGESSolid_ToroidalSurface.hxx".}
proc isParametrised*(this: IGESSolidToroidalSurface): bool {.noSideEffect,
    importcpp: "IsParametrised", header: "IGESSolid_ToroidalSurface.hxx".}
type
  IGESSolidToroidalSurfacebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESSolid_ToroidalSurface::get_type_name(@)",
                            header: "IGESSolid_ToroidalSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_ToroidalSurface::get_type_descriptor(@)",
    header: "IGESSolid_ToroidalSurface.hxx".}
proc dynamicType*(this: IGESSolidToroidalSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSolid_ToroidalSurface.hxx".}

























