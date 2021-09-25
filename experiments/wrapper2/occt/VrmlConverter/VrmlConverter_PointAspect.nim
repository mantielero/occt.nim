##  Created on: 1997-04-23
##  Created by: Alexander BRIVIN
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of Vrml_Material"
discard "forward decl of VrmlConverter_PointAspect"
discard "forward decl of VrmlConverter_PointAspect"
type
  HandleVrmlConverterPointAspect* = Handle[VrmlConverterPointAspect]

## ! qualifies the aspect properties for
## ! the VRML conversation of a Point Set.

type
  VrmlConverterPointAspect* {.importcpp: "VrmlConverter_PointAspect",
                             header: "VrmlConverter_PointAspect.hxx", bycopy.} = object of StandardTransient ##
                                                                                                      ## !
                                                                                                      ## create
                                                                                                      ## a
                                                                                                      ## default
                                                                                                      ## PointAspect.
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Default
                                                                                                      ## value:
                                                                                                      ## HasMaterial
                                                                                                      ## =
                                                                                                      ## False
                                                                                                      ## -
                                                                                                      ## a
                                                                                                      ## line
                                                                                                      ## hasn't
                                                                                                      ## own
                                                                                                      ## material
                                                                                                      ## (color)


proc constructVrmlConverterPointAspect*(): VrmlConverterPointAspect {.constructor,
    importcpp: "VrmlConverter_PointAspect(@)",
    header: "VrmlConverter_PointAspect.hxx".}
proc constructVrmlConverterPointAspect*(aMaterial: Handle[VrmlMaterial];
                                       onOff: bool): VrmlConverterPointAspect {.
    constructor, importcpp: "VrmlConverter_PointAspect(@)",
    header: "VrmlConverter_PointAspect.hxx".}
proc setMaterial*(this: var VrmlConverterPointAspect;
                 aMaterial: Handle[VrmlMaterial]) {.importcpp: "SetMaterial",
    header: "VrmlConverter_PointAspect.hxx".}
proc material*(this: VrmlConverterPointAspect): Handle[VrmlMaterial] {.noSideEffect,
    importcpp: "Material", header: "VrmlConverter_PointAspect.hxx".}
proc setHasMaterial*(this: var VrmlConverterPointAspect; onOff: bool) {.
    importcpp: "SetHasMaterial", header: "VrmlConverter_PointAspect.hxx".}
proc hasMaterial*(this: VrmlConverterPointAspect): bool {.noSideEffect,
    importcpp: "HasMaterial", header: "VrmlConverter_PointAspect.hxx".}
type
  VrmlConverterPointAspectbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "VrmlConverter_PointAspect::get_type_name(@)",
                            header: "VrmlConverter_PointAspect.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlConverter_PointAspect::get_type_descriptor(@)",
    header: "VrmlConverter_PointAspect.hxx".}
proc dynamicType*(this: VrmlConverterPointAspect): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "VrmlConverter_PointAspect.hxx".}
