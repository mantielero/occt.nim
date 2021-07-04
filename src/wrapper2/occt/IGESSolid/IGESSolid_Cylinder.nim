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
discard "forward decl of gp_Dir"
discard "forward decl of IGESSolid_Cylinder"
discard "forward decl of IGESSolid_Cylinder"
type
  Handle_IGESSolid_Cylinder* = handle[IGESSolid_Cylinder]

## ! defines Cylinder, Type <154> Form Number <0>
## ! in package IGESSolid
## ! This defines a solid cylinder

type
  IGESSolid_Cylinder* {.importcpp: "IGESSolid_Cylinder",
                       header: "IGESSolid_Cylinder.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESSolid_Cylinder*(): IGESSolid_Cylinder {.constructor,
    importcpp: "IGESSolid_Cylinder(@)", header: "IGESSolid_Cylinder.hxx".}
proc Init*(this: var IGESSolid_Cylinder; aHeight: Standard_Real;
          aRadius: Standard_Real; aCenter: gp_XYZ; anAxis: gp_XYZ) {.
    importcpp: "Init", header: "IGESSolid_Cylinder.hxx".}
proc Height*(this: IGESSolid_Cylinder): Standard_Real {.noSideEffect,
    importcpp: "Height", header: "IGESSolid_Cylinder.hxx".}
proc Radius*(this: IGESSolid_Cylinder): Standard_Real {.noSideEffect,
    importcpp: "Radius", header: "IGESSolid_Cylinder.hxx".}
proc FaceCenter*(this: IGESSolid_Cylinder): gp_Pnt {.noSideEffect,
    importcpp: "FaceCenter", header: "IGESSolid_Cylinder.hxx".}
proc TransformedFaceCenter*(this: IGESSolid_Cylinder): gp_Pnt {.noSideEffect,
    importcpp: "TransformedFaceCenter", header: "IGESSolid_Cylinder.hxx".}
proc Axis*(this: IGESSolid_Cylinder): gp_Dir {.noSideEffect, importcpp: "Axis",
    header: "IGESSolid_Cylinder.hxx".}
proc TransformedAxis*(this: IGESSolid_Cylinder): gp_Dir {.noSideEffect,
    importcpp: "TransformedAxis", header: "IGESSolid_Cylinder.hxx".}
type
  IGESSolid_Cylinderbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESSolid_Cylinder::get_type_name(@)",
                              header: "IGESSolid_Cylinder.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_Cylinder::get_type_descriptor(@)",
    header: "IGESSolid_Cylinder.hxx".}
proc DynamicType*(this: IGESSolid_Cylinder): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSolid_Cylinder.hxx".}