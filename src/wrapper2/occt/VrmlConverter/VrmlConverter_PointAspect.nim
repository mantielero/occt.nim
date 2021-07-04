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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient

discard "forward decl of Vrml_Material"
discard "forward decl of VrmlConverter_PointAspect"
discard "forward decl of VrmlConverter_PointAspect"
type
  Handle_VrmlConverter_PointAspect* = handle[VrmlConverter_PointAspect]

## ! qualifies the aspect properties for
## ! the VRML conversation of a Point Set.

type
  VrmlConverter_PointAspect* {.importcpp: "VrmlConverter_PointAspect",
                              header: "VrmlConverter_PointAspect.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructVrmlConverter_PointAspect*(): VrmlConverter_PointAspect {.
    constructor, importcpp: "VrmlConverter_PointAspect(@)",
    header: "VrmlConverter_PointAspect.hxx".}
proc constructVrmlConverter_PointAspect*(aMaterial: handle[Vrml_Material];
                                        OnOff: Standard_Boolean): VrmlConverter_PointAspect {.
    constructor, importcpp: "VrmlConverter_PointAspect(@)",
    header: "VrmlConverter_PointAspect.hxx".}
proc SetMaterial*(this: var VrmlConverter_PointAspect;
                 aMaterial: handle[Vrml_Material]) {.importcpp: "SetMaterial",
    header: "VrmlConverter_PointAspect.hxx".}
proc Material*(this: VrmlConverter_PointAspect): handle[Vrml_Material] {.
    noSideEffect, importcpp: "Material", header: "VrmlConverter_PointAspect.hxx".}
proc SetHasMaterial*(this: var VrmlConverter_PointAspect; OnOff: Standard_Boolean) {.
    importcpp: "SetHasMaterial", header: "VrmlConverter_PointAspect.hxx".}
proc HasMaterial*(this: VrmlConverter_PointAspect): Standard_Boolean {.noSideEffect,
    importcpp: "HasMaterial", header: "VrmlConverter_PointAspect.hxx".}
type
  VrmlConverter_PointAspectbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "VrmlConverter_PointAspect::get_type_name(@)",
                              header: "VrmlConverter_PointAspect.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlConverter_PointAspect::get_type_descriptor(@)",
    header: "VrmlConverter_PointAspect.hxx".}
proc DynamicType*(this: VrmlConverter_PointAspect): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "VrmlConverter_PointAspect.hxx".}