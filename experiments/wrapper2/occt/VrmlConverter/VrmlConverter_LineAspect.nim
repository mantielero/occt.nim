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
discard "forward decl of VrmlConverter_LineAspect"
discard "forward decl of VrmlConverter_LineAspect"
type
  HandleC1C1* = Handle[VrmlConverterLineAspect]

## ! qualifies the aspect properties for
## ! the VRML conversation of a Curve and  a  DeflectionCurve .

type
  VrmlConverterLineAspect* {.importcpp: "VrmlConverter_LineAspect",
                            header: "VrmlConverter_LineAspect.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## create
                                                                                                    ## a
                                                                                                    ## default
                                                                                                    ## LineAspect.
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


proc constructVrmlConverterLineAspect*(): VrmlConverterLineAspect {.constructor,
    importcpp: "VrmlConverter_LineAspect(@)",
    header: "VrmlConverter_LineAspect.hxx".}
proc constructVrmlConverterLineAspect*(aMaterial: Handle[VrmlMaterial]; onOff: bool): VrmlConverterLineAspect {.
    constructor, importcpp: "VrmlConverter_LineAspect(@)",
    header: "VrmlConverter_LineAspect.hxx".}
proc setMaterial*(this: var VrmlConverterLineAspect; aMaterial: Handle[VrmlMaterial]) {.
    importcpp: "SetMaterial", header: "VrmlConverter_LineAspect.hxx".}
proc material*(this: VrmlConverterLineAspect): Handle[VrmlMaterial] {.noSideEffect,
    importcpp: "Material", header: "VrmlConverter_LineAspect.hxx".}
proc setHasMaterial*(this: var VrmlConverterLineAspect; onOff: bool) {.
    importcpp: "SetHasMaterial", header: "VrmlConverter_LineAspect.hxx".}
proc hasMaterial*(this: VrmlConverterLineAspect): bool {.noSideEffect,
    importcpp: "HasMaterial", header: "VrmlConverter_LineAspect.hxx".}
type
  VrmlConverterLineAspectbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "VrmlConverter_LineAspect::get_type_name(@)",
                            header: "VrmlConverter_LineAspect.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlConverter_LineAspect::get_type_descriptor(@)",
    header: "VrmlConverter_LineAspect.hxx".}
proc dynamicType*(this: VrmlConverterLineAspect): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "VrmlConverter_LineAspect.hxx".}

























