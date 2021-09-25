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

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of IGESSolid_SolidOfRevolution"
discard "forward decl of IGESSolid_SolidOfRevolution"
type
  HandleIGESSolidSolidOfRevolution* = Handle[IGESSolidSolidOfRevolution]

## ! defines SolidOfRevolution, Type <162> Form Number <0,1>
## ! in package IGESSolid
## ! This entity is defined by revolving the area determined
## ! by a planar curve about a specified axis through a given
## ! fraction of full rotation.

type
  IGESSolidSolidOfRevolution* {.importcpp: "IGESSolid_SolidOfRevolution",
                               header: "IGESSolid_SolidOfRevolution.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESSolidSolidOfRevolution*(): IGESSolidSolidOfRevolution {.
    constructor, importcpp: "IGESSolid_SolidOfRevolution(@)",
    header: "IGESSolid_SolidOfRevolution.hxx".}
proc init*(this: var IGESSolidSolidOfRevolution; aCurve: Handle[IGESDataIGESEntity];
          aFract: float; aAxisPnt: Xyz; aDirection: Xyz) {.importcpp: "Init",
    header: "IGESSolid_SolidOfRevolution.hxx".}
proc setClosedToAxis*(this: var IGESSolidSolidOfRevolution; mode: bool) {.
    importcpp: "SetClosedToAxis", header: "IGESSolid_SolidOfRevolution.hxx".}
proc isClosedToAxis*(this: IGESSolidSolidOfRevolution): bool {.noSideEffect,
    importcpp: "IsClosedToAxis", header: "IGESSolid_SolidOfRevolution.hxx".}
proc curve*(this: IGESSolidSolidOfRevolution): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "Curve", header: "IGESSolid_SolidOfRevolution.hxx".}
proc fraction*(this: IGESSolidSolidOfRevolution): float {.noSideEffect,
    importcpp: "Fraction", header: "IGESSolid_SolidOfRevolution.hxx".}
proc axisPoint*(this: IGESSolidSolidOfRevolution): Pnt {.noSideEffect,
    importcpp: "AxisPoint", header: "IGESSolid_SolidOfRevolution.hxx".}
proc transformedAxisPoint*(this: IGESSolidSolidOfRevolution): Pnt {.noSideEffect,
    importcpp: "TransformedAxisPoint", header: "IGESSolid_SolidOfRevolution.hxx".}
proc axis*(this: IGESSolidSolidOfRevolution): Dir {.noSideEffect, importcpp: "Axis",
    header: "IGESSolid_SolidOfRevolution.hxx".}
proc transformedAxis*(this: IGESSolidSolidOfRevolution): Dir {.noSideEffect,
    importcpp: "TransformedAxis", header: "IGESSolid_SolidOfRevolution.hxx".}
type
  IGESSolidSolidOfRevolutionbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESSolid_SolidOfRevolution::get_type_name(@)",
                            header: "IGESSolid_SolidOfRevolution.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_SolidOfRevolution::get_type_descriptor(@)",
    header: "IGESSolid_SolidOfRevolution.hxx".}
proc dynamicType*(this: IGESSolidSolidOfRevolution): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSolid_SolidOfRevolution.hxx".}
