##  Created on: 2006-05-25
##  Created by: Alexander GRIGORIEV
##  Copyright (c) 2006-2014 OPEN CASCADE SAS
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

## /  Implementation of the TextureTransform node

type
  VrmlDataTextureTransform* {.importcpp: "VrmlData_TextureTransform",
                             header: "VrmlData_TextureTransform.hxx", bycopy.} = object of VrmlDataNode ##  ---------- PUBLIC METHODS ----------
                                                                                                 ## *
                                                                                                 ##  Empty constructor
                                                                                                 ##
                                                                                                 ##  ---------- PROTECTED METHODS ----------
                                                                                                 ##  ---------- PRIVATE FIELDS ----------
                                                                                                 ##  Declaration of CASCADE RTTI


proc constructVrmlDataTextureTransform*(): VrmlDataTextureTransform {.constructor,
    importcpp: "VrmlData_TextureTransform(@)",
    header: "VrmlData_TextureTransform.hxx".}
proc constructVrmlDataTextureTransform*(theScene: VrmlDataScene; theName: cstring): VrmlDataTextureTransform {.
    constructor, importcpp: "VrmlData_TextureTransform(@)",
    header: "VrmlData_TextureTransform.hxx".}
proc center*(this: VrmlDataTextureTransform): Xy {.noSideEffect, importcpp: "Center",
    header: "VrmlData_TextureTransform.hxx".}
proc rotation*(this: VrmlDataTextureTransform): float {.noSideEffect,
    importcpp: "Rotation", header: "VrmlData_TextureTransform.hxx".}
proc scale*(this: VrmlDataTextureTransform): Xy {.noSideEffect, importcpp: "Scale",
    header: "VrmlData_TextureTransform.hxx".}
proc translation*(this: VrmlDataTextureTransform): Xy {.noSideEffect,
    importcpp: "Translation", header: "VrmlData_TextureTransform.hxx".}
proc setCenter*(this: var VrmlDataTextureTransform; v: Xy) {.importcpp: "SetCenter",
    header: "VrmlData_TextureTransform.hxx".}
proc setRotation*(this: var VrmlDataTextureTransform; v: float) {.
    importcpp: "SetRotation", header: "VrmlData_TextureTransform.hxx".}
proc setScale*(this: var VrmlDataTextureTransform; v: Xy) {.importcpp: "SetScale",
    header: "VrmlData_TextureTransform.hxx".}
proc setTranslation*(this: var VrmlDataTextureTransform; v: Xy) {.
    importcpp: "SetTranslation", header: "VrmlData_TextureTransform.hxx".}
type
  VrmlDataTextureTransformbaseType* = VrmlDataNode

proc getTypeName*(): cstring {.importcpp: "VrmlData_TextureTransform::get_type_name(@)",
                            header: "VrmlData_TextureTransform.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlData_TextureTransform::get_type_descriptor(@)",
    header: "VrmlData_TextureTransform.hxx".}
proc dynamicType*(this: VrmlDataTextureTransform): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "VrmlData_TextureTransform.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_TextureTransform"
type
  HandleVrmlDataTextureTransform* = Handle[VrmlDataTextureTransform]

