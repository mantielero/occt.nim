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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  VrmlConverter_LineAspect, ../Standard/Standard_Boolean

discard "forward decl of Vrml_Material"
discard "forward decl of VrmlConverter_IsoAspect"
discard "forward decl of VrmlConverter_IsoAspect"
type
  Handle_VrmlConverter_IsoAspect* = handle[VrmlConverter_IsoAspect]

## ! qualifies the aspect properties for
## ! the VRML conversation of iso curves .

type
  VrmlConverter_IsoAspect* {.importcpp: "VrmlConverter_IsoAspect",
                            header: "VrmlConverter_IsoAspect.hxx", bycopy.} = object of VrmlConverter_LineAspect ##
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


proc constructVrmlConverter_IsoAspect*(): VrmlConverter_IsoAspect {.constructor,
    importcpp: "VrmlConverter_IsoAspect(@)", header: "VrmlConverter_IsoAspect.hxx".}
proc constructVrmlConverter_IsoAspect*(aMaterial: handle[Vrml_Material];
                                      OnOff: Standard_Boolean;
                                      aNumber: Standard_Integer): VrmlConverter_IsoAspect {.
    constructor, importcpp: "VrmlConverter_IsoAspect(@)",
    header: "VrmlConverter_IsoAspect.hxx".}
proc SetNumber*(this: var VrmlConverter_IsoAspect; aNumber: Standard_Integer) {.
    importcpp: "SetNumber", header: "VrmlConverter_IsoAspect.hxx".}
proc Number*(this: VrmlConverter_IsoAspect): Standard_Integer {.noSideEffect,
    importcpp: "Number", header: "VrmlConverter_IsoAspect.hxx".}
type
  VrmlConverter_IsoAspectbase_type* = VrmlConverter_LineAspect

proc get_type_name*(): cstring {.importcpp: "VrmlConverter_IsoAspect::get_type_name(@)",
                              header: "VrmlConverter_IsoAspect.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlConverter_IsoAspect::get_type_descriptor(@)",
    header: "VrmlConverter_IsoAspect.hxx".}
proc DynamicType*(this: VrmlConverter_IsoAspect): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "VrmlConverter_IsoAspect.hxx".}