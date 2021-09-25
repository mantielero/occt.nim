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
discard "forward decl of gp_Dir"
discard "forward decl of IGESSolid_SolidOfLinearExtrusion"
discard "forward decl of IGESSolid_SolidOfLinearExtrusion"
type
  HandleIGESSolidSolidOfLinearExtrusion* = Handle[IGESSolidSolidOfLinearExtrusion]

## ! defines SolidOfLinearExtrusion, Type <164> Form Number <0>
## ! in package IGESSolid
## ! Solid of linear extrusion is defined by translatin an
## ! area determined by a planar curve

type
  IGESSolidSolidOfLinearExtrusion* {.importcpp: "IGESSolid_SolidOfLinearExtrusion", header: "IGESSolid_SolidOfLinearExtrusion.hxx",
                                    bycopy.} = object of IGESDataIGESEntity


proc constructIGESSolidSolidOfLinearExtrusion*(): IGESSolidSolidOfLinearExtrusion {.
    constructor, importcpp: "IGESSolid_SolidOfLinearExtrusion(@)",
    header: "IGESSolid_SolidOfLinearExtrusion.hxx".}
proc init*(this: var IGESSolidSolidOfLinearExtrusion;
          aCurve: Handle[IGESDataIGESEntity]; aLength: float; aDirection: Xyz) {.
    importcpp: "Init", header: "IGESSolid_SolidOfLinearExtrusion.hxx".}
proc curve*(this: IGESSolidSolidOfLinearExtrusion): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "Curve",
    header: "IGESSolid_SolidOfLinearExtrusion.hxx".}
proc extrusionLength*(this: IGESSolidSolidOfLinearExtrusion): float {.noSideEffect,
    importcpp: "ExtrusionLength", header: "IGESSolid_SolidOfLinearExtrusion.hxx".}
proc extrusionDirection*(this: IGESSolidSolidOfLinearExtrusion): Dir {.noSideEffect,
    importcpp: "ExtrusionDirection",
    header: "IGESSolid_SolidOfLinearExtrusion.hxx".}
proc transformedExtrusionDirection*(this: IGESSolidSolidOfLinearExtrusion): Dir {.
    noSideEffect, importcpp: "TransformedExtrusionDirection",
    header: "IGESSolid_SolidOfLinearExtrusion.hxx".}
type
  IGESSolidSolidOfLinearExtrusionbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESSolid_SolidOfLinearExtrusion::get_type_name(@)",
                            header: "IGESSolid_SolidOfLinearExtrusion.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_SolidOfLinearExtrusion::get_type_descriptor(@)",
    header: "IGESSolid_SolidOfLinearExtrusion.hxx".}
proc dynamicType*(this: IGESSolidSolidOfLinearExtrusion): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSolid_SolidOfLinearExtrusion.hxx".}
