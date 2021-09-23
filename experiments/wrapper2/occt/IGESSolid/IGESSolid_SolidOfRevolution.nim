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
  ../gp/gp_XYZ, ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Boolean

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of IGESSolid_SolidOfRevolution"
discard "forward decl of IGESSolid_SolidOfRevolution"
type
  Handle_IGESSolid_SolidOfRevolution* = handle[IGESSolid_SolidOfRevolution]

## ! defines SolidOfRevolution, Type <162> Form Number <0,1>
## ! in package IGESSolid
## ! This entity is defined by revolving the area determined
## ! by a planar curve about a specified axis through a given
## ! fraction of full rotation.

type
  IGESSolid_SolidOfRevolution* {.importcpp: "IGESSolid_SolidOfRevolution",
                                header: "IGESSolid_SolidOfRevolution.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESSolid_SolidOfRevolution*(): IGESSolid_SolidOfRevolution {.
    constructor, importcpp: "IGESSolid_SolidOfRevolution(@)",
    header: "IGESSolid_SolidOfRevolution.hxx".}
proc Init*(this: var IGESSolid_SolidOfRevolution;
          aCurve: handle[IGESData_IGESEntity]; aFract: Standard_Real;
          aAxisPnt: gp_XYZ; aDirection: gp_XYZ) {.importcpp: "Init",
    header: "IGESSolid_SolidOfRevolution.hxx".}
proc SetClosedToAxis*(this: var IGESSolid_SolidOfRevolution; mode: Standard_Boolean) {.
    importcpp: "SetClosedToAxis", header: "IGESSolid_SolidOfRevolution.hxx".}
proc IsClosedToAxis*(this: IGESSolid_SolidOfRevolution): Standard_Boolean {.
    noSideEffect, importcpp: "IsClosedToAxis",
    header: "IGESSolid_SolidOfRevolution.hxx".}
proc Curve*(this: IGESSolid_SolidOfRevolution): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "Curve", header: "IGESSolid_SolidOfRevolution.hxx".}
proc Fraction*(this: IGESSolid_SolidOfRevolution): Standard_Real {.noSideEffect,
    importcpp: "Fraction", header: "IGESSolid_SolidOfRevolution.hxx".}
proc AxisPoint*(this: IGESSolid_SolidOfRevolution): gp_Pnt {.noSideEffect,
    importcpp: "AxisPoint", header: "IGESSolid_SolidOfRevolution.hxx".}
proc TransformedAxisPoint*(this: IGESSolid_SolidOfRevolution): gp_Pnt {.
    noSideEffect, importcpp: "TransformedAxisPoint",
    header: "IGESSolid_SolidOfRevolution.hxx".}
proc Axis*(this: IGESSolid_SolidOfRevolution): gp_Dir {.noSideEffect,
    importcpp: "Axis", header: "IGESSolid_SolidOfRevolution.hxx".}
proc TransformedAxis*(this: IGESSolid_SolidOfRevolution): gp_Dir {.noSideEffect,
    importcpp: "TransformedAxis", header: "IGESSolid_SolidOfRevolution.hxx".}
type
  IGESSolid_SolidOfRevolutionbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESSolid_SolidOfRevolution::get_type_name(@)",
                              header: "IGESSolid_SolidOfRevolution.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_SolidOfRevolution::get_type_descriptor(@)",
    header: "IGESSolid_SolidOfRevolution.hxx".}
proc DynamicType*(this: IGESSolid_SolidOfRevolution): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSolid_SolidOfRevolution.hxx".}