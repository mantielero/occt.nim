##  Created on: 1997-05-13
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
discard "forward decl of VrmlConverter_IsoAspect"
discard "forward decl of VrmlConverter_IsoAspect"
type
  HandleVrmlConverterIsoAspect* = Handle[VrmlConverterIsoAspect]

## ! qualifies the aspect properties for
## ! the VRML conversation of iso curves .

type
  VrmlConverterIsoAspect* {.importcpp: "VrmlConverter_IsoAspect",
                           header: "VrmlConverter_IsoAspect.hxx", bycopy.} = object of VrmlConverterLineAspect ##
                                                                                                        ## !
                                                                                                        ## create
                                                                                                        ## a
                                                                                                        ## default
                                                                                                        ## IsoAspect.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Default
                                                                                                        ## value:
                                                                                                        ## myNumber
                                                                                                        ## -
                                                                                                        ## 10.


proc constructVrmlConverterIsoAspect*(): VrmlConverterIsoAspect {.constructor,
    importcpp: "VrmlConverter_IsoAspect(@)", header: "VrmlConverter_IsoAspect.hxx".}
proc constructVrmlConverterIsoAspect*(aMaterial: Handle[VrmlMaterial]; onOff: bool;
                                     aNumber: int): VrmlConverterIsoAspect {.
    constructor, importcpp: "VrmlConverter_IsoAspect(@)",
    header: "VrmlConverter_IsoAspect.hxx".}
proc setNumber*(this: var VrmlConverterIsoAspect; aNumber: int) {.
    importcpp: "SetNumber", header: "VrmlConverter_IsoAspect.hxx".}
proc number*(this: VrmlConverterIsoAspect): int {.noSideEffect, importcpp: "Number",
    header: "VrmlConverter_IsoAspect.hxx".}
type
  VrmlConverterIsoAspectbaseType* = VrmlConverterLineAspect

proc getTypeName*(): cstring {.importcpp: "VrmlConverter_IsoAspect::get_type_name(@)",
                            header: "VrmlConverter_IsoAspect.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlConverter_IsoAspect::get_type_descriptor(@)",
    header: "VrmlConverter_IsoAspect.hxx".}
proc dynamicType*(this: VrmlConverterIsoAspect): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "VrmlConverter_IsoAspect.hxx".}
