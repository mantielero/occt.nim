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

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Dir"
discard "forward decl of IGESSolid_SolidOfLinearExtrusion"
discard "forward decl of IGESSolid_SolidOfLinearExtrusion"
type
  Handle_IGESSolid_SolidOfLinearExtrusion* = handle[
      IGESSolid_SolidOfLinearExtrusion]

## ! defines SolidOfLinearExtrusion, Type <164> Form Number <0>
## ! in package IGESSolid
## ! Solid of linear extrusion is defined by translatin an
## ! area determined by a planar curve

type
  IGESSolid_SolidOfLinearExtrusion* {.importcpp: "IGESSolid_SolidOfLinearExtrusion", header: "IGESSolid_SolidOfLinearExtrusion.hxx",
                                     bycopy.} = object of IGESData_IGESEntity


proc constructIGESSolid_SolidOfLinearExtrusion*(): IGESSolid_SolidOfLinearExtrusion {.
    constructor, importcpp: "IGESSolid_SolidOfLinearExtrusion(@)",
    header: "IGESSolid_SolidOfLinearExtrusion.hxx".}
proc Init*(this: var IGESSolid_SolidOfLinearExtrusion;
          aCurve: handle[IGESData_IGESEntity]; aLength: Standard_Real;
          aDirection: gp_XYZ) {.importcpp: "Init",
                              header: "IGESSolid_SolidOfLinearExtrusion.hxx".}
proc Curve*(this: IGESSolid_SolidOfLinearExtrusion): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "Curve",
    header: "IGESSolid_SolidOfLinearExtrusion.hxx".}
proc ExtrusionLength*(this: IGESSolid_SolidOfLinearExtrusion): Standard_Real {.
    noSideEffect, importcpp: "ExtrusionLength",
    header: "IGESSolid_SolidOfLinearExtrusion.hxx".}
proc ExtrusionDirection*(this: IGESSolid_SolidOfLinearExtrusion): gp_Dir {.
    noSideEffect, importcpp: "ExtrusionDirection",
    header: "IGESSolid_SolidOfLinearExtrusion.hxx".}
proc TransformedExtrusionDirection*(this: IGESSolid_SolidOfLinearExtrusion): gp_Dir {.
    noSideEffect, importcpp: "TransformedExtrusionDirection",
    header: "IGESSolid_SolidOfLinearExtrusion.hxx".}
type
  IGESSolid_SolidOfLinearExtrusionbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESSolid_SolidOfLinearExtrusion::get_type_name(@)",
                              header: "IGESSolid_SolidOfLinearExtrusion.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_SolidOfLinearExtrusion::get_type_descriptor(@)",
    header: "IGESSolid_SolidOfLinearExtrusion.hxx".}
proc DynamicType*(this: IGESSolid_SolidOfLinearExtrusion): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSolid_SolidOfLinearExtrusion.hxx".}