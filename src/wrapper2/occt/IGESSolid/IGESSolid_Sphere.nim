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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../gp/gp_XYZ, ../IGESData/IGESData_IGESEntity

discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESSolid_Sphere"
discard "forward decl of IGESSolid_Sphere"
type
  Handle_IGESSolid_Sphere* = handle[IGESSolid_Sphere]

## ! defines Sphere, Type <158> Form Number <0>
## ! in package IGESSolid
## ! This defines a sphere with a center and radius

type
  IGESSolid_Sphere* {.importcpp: "IGESSolid_Sphere",
                     header: "IGESSolid_Sphere.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESSolid_Sphere*(): IGESSolid_Sphere {.constructor,
    importcpp: "IGESSolid_Sphere(@)", header: "IGESSolid_Sphere.hxx".}
proc Init*(this: var IGESSolid_Sphere; aRadius: Standard_Real; aCenter: gp_XYZ) {.
    importcpp: "Init", header: "IGESSolid_Sphere.hxx".}
proc Radius*(this: IGESSolid_Sphere): Standard_Real {.noSideEffect,
    importcpp: "Radius", header: "IGESSolid_Sphere.hxx".}
proc Center*(this: IGESSolid_Sphere): gp_Pnt {.noSideEffect, importcpp: "Center",
    header: "IGESSolid_Sphere.hxx".}
proc TransformedCenter*(this: IGESSolid_Sphere): gp_Pnt {.noSideEffect,
    importcpp: "TransformedCenter", header: "IGESSolid_Sphere.hxx".}
type
  IGESSolid_Spherebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESSolid_Sphere::get_type_name(@)",
                              header: "IGESSolid_Sphere.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_Sphere::get_type_descriptor(@)",
    header: "IGESSolid_Sphere.hxx".}
proc DynamicType*(this: IGESSolid_Sphere): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSolid_Sphere.hxx".}