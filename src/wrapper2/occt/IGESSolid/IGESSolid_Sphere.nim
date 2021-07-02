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

discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESSolid_Sphere"
discard "forward decl of IGESSolid_Sphere"
type
  HandleIGESSolidSphere* = Handle[IGESSolidSphere]

## ! defines Sphere, Type <158> Form Number <0>
## ! in package IGESSolid
## ! This defines a sphere with a center and radius

type
  IGESSolidSphere* {.importcpp: "IGESSolid_Sphere", header: "IGESSolid_Sphere.hxx",
                    bycopy.} = object of IGESDataIGESEntity


proc constructIGESSolidSphere*(): IGESSolidSphere {.constructor,
    importcpp: "IGESSolid_Sphere(@)", header: "IGESSolid_Sphere.hxx".}
proc init*(this: var IGESSolidSphere; aRadius: StandardReal; aCenter: GpXYZ) {.
    importcpp: "Init", header: "IGESSolid_Sphere.hxx".}
proc radius*(this: IGESSolidSphere): StandardReal {.noSideEffect,
    importcpp: "Radius", header: "IGESSolid_Sphere.hxx".}
proc center*(this: IGESSolidSphere): GpPnt {.noSideEffect, importcpp: "Center",
    header: "IGESSolid_Sphere.hxx".}
proc transformedCenter*(this: IGESSolidSphere): GpPnt {.noSideEffect,
    importcpp: "TransformedCenter", header: "IGESSolid_Sphere.hxx".}
type
  IGESSolidSpherebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESSolid_Sphere::get_type_name(@)",
                            header: "IGESSolid_Sphere.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_Sphere::get_type_descriptor(@)",
    header: "IGESSolid_Sphere.hxx".}
proc dynamicType*(this: IGESSolidSphere): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSolid_Sphere.hxx".}

