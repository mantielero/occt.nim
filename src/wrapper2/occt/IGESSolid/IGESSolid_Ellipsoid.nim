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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_XYZ,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Real

discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of IGESSolid_Ellipsoid"
discard "forward decl of IGESSolid_Ellipsoid"
type
  Handle_IGESSolid_Ellipsoid* = handle[IGESSolid_Ellipsoid]

## ! defines Ellipsoid, Type <168> Form Number <0>
## ! in package IGESSolid
## ! The ellipsoid is a solid bounded by the surface defined
## ! by:
## ! X^2       Y^2       Z^2
## ! -----  +  -----  +  -----  =  1
## ! LX^2      LY^2      LZ^2

type
  IGESSolid_Ellipsoid* {.importcpp: "IGESSolid_Ellipsoid",
                        header: "IGESSolid_Ellipsoid.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESSolid_Ellipsoid*(): IGESSolid_Ellipsoid {.constructor,
    importcpp: "IGESSolid_Ellipsoid(@)", header: "IGESSolid_Ellipsoid.hxx".}
proc Init*(this: var IGESSolid_Ellipsoid; aSize: gp_XYZ; aCenter: gp_XYZ;
          anXAxis: gp_XYZ; anZAxis: gp_XYZ) {.importcpp: "Init",
    header: "IGESSolid_Ellipsoid.hxx".}
proc Size*(this: IGESSolid_Ellipsoid): gp_XYZ {.noSideEffect, importcpp: "Size",
    header: "IGESSolid_Ellipsoid.hxx".}
proc XLength*(this: IGESSolid_Ellipsoid): Standard_Real {.noSideEffect,
    importcpp: "XLength", header: "IGESSolid_Ellipsoid.hxx".}
proc YLength*(this: IGESSolid_Ellipsoid): Standard_Real {.noSideEffect,
    importcpp: "YLength", header: "IGESSolid_Ellipsoid.hxx".}
proc ZLength*(this: IGESSolid_Ellipsoid): Standard_Real {.noSideEffect,
    importcpp: "ZLength", header: "IGESSolid_Ellipsoid.hxx".}
proc Center*(this: IGESSolid_Ellipsoid): gp_Pnt {.noSideEffect, importcpp: "Center",
    header: "IGESSolid_Ellipsoid.hxx".}
proc TransformedCenter*(this: IGESSolid_Ellipsoid): gp_Pnt {.noSideEffect,
    importcpp: "TransformedCenter", header: "IGESSolid_Ellipsoid.hxx".}
proc XAxis*(this: IGESSolid_Ellipsoid): gp_Dir {.noSideEffect, importcpp: "XAxis",
    header: "IGESSolid_Ellipsoid.hxx".}
proc TransformedXAxis*(this: IGESSolid_Ellipsoid): gp_Dir {.noSideEffect,
    importcpp: "TransformedXAxis", header: "IGESSolid_Ellipsoid.hxx".}
proc YAxis*(this: IGESSolid_Ellipsoid): gp_Dir {.noSideEffect, importcpp: "YAxis",
    header: "IGESSolid_Ellipsoid.hxx".}
proc TransformedYAxis*(this: IGESSolid_Ellipsoid): gp_Dir {.noSideEffect,
    importcpp: "TransformedYAxis", header: "IGESSolid_Ellipsoid.hxx".}
proc ZAxis*(this: IGESSolid_Ellipsoid): gp_Dir {.noSideEffect, importcpp: "ZAxis",
    header: "IGESSolid_Ellipsoid.hxx".}
proc TransformedZAxis*(this: IGESSolid_Ellipsoid): gp_Dir {.noSideEffect,
    importcpp: "TransformedZAxis", header: "IGESSolid_Ellipsoid.hxx".}
type
  IGESSolid_Ellipsoidbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESSolid_Ellipsoid::get_type_name(@)",
                              header: "IGESSolid_Ellipsoid.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_Ellipsoid::get_type_descriptor(@)",
    header: "IGESSolid_Ellipsoid.hxx".}
proc DynamicType*(this: IGESSolid_Ellipsoid): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSolid_Ellipsoid.hxx".}