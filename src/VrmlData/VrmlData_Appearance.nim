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

## *
##   Implementation of the Appearance node type
##

type
  VrmlDataAppearance* {.importcpp: "VrmlData_Appearance",
                       header: "VrmlData_Appearance.hxx", bycopy.} = object of VrmlDataNode ##  ---------- PUBLIC METHODS ----------
                                                                                     ## *
                                                                                     ##  Empty constructor
                                                                                     ##
                                                                                     ##  ---------- PROTECTED METHODS ----------
                                                                                     ##  ---------- PRIVATE FIELDS ----------
                                                                                     ##  Declaration of CASCADE RTTI


proc constructVrmlDataAppearance*(): VrmlDataAppearance {.constructor,
    importcpp: "VrmlData_Appearance(@)", header: "VrmlData_Appearance.hxx".}
proc constructVrmlDataAppearance*(theScene: VrmlDataScene; theName: cstring): VrmlDataAppearance {.
    constructor, importcpp: "VrmlData_Appearance(@)",
    header: "VrmlData_Appearance.hxx".}
proc material*(this: VrmlDataAppearance): Handle[VrmlDataMaterial] {.noSideEffect,
    importcpp: "Material", header: "VrmlData_Appearance.hxx".}
proc texture*(this: VrmlDataAppearance): Handle[VrmlDataTexture] {.noSideEffect,
    importcpp: "Texture", header: "VrmlData_Appearance.hxx".}
proc textureTransform*(this: VrmlDataAppearance): Handle[VrmlDataTextureTransform] {.
    noSideEffect, importcpp: "TextureTransform", header: "VrmlData_Appearance.hxx".}
proc setMaterial*(this: var VrmlDataAppearance; theMat: Handle[VrmlDataMaterial]) {.
    importcpp: "SetMaterial", header: "VrmlData_Appearance.hxx".}
proc setTexture*(this: var VrmlDataAppearance; theTexture: Handle[VrmlDataTexture]) {.
    importcpp: "SetTexture", header: "VrmlData_Appearance.hxx".}
proc setTextureTransform*(this: var VrmlDataAppearance;
                         theTT: Handle[VrmlDataTextureTransform]) {.
    importcpp: "SetTextureTransform", header: "VrmlData_Appearance.hxx".}
proc clone*(this: VrmlDataAppearance; a2: Handle[VrmlDataNode]): Handle[VrmlDataNode] {.
    noSideEffect, importcpp: "Clone", header: "VrmlData_Appearance.hxx".}
proc read*(this: var VrmlDataAppearance; theBuffer: var VrmlDataInBuffer): VrmlDataErrorStatus {.
    importcpp: "Read", header: "VrmlData_Appearance.hxx".}
proc write*(this: VrmlDataAppearance; thePrefix: cstring): VrmlDataErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_Appearance.hxx".}
proc isDefault*(this: VrmlDataAppearance): bool {.noSideEffect,
    importcpp: "IsDefault", header: "VrmlData_Appearance.hxx".}
type
  VrmlDataAppearancebaseType* = VrmlDataNode

proc getTypeName*(): cstring {.importcpp: "VrmlData_Appearance::get_type_name(@)",
                            header: "VrmlData_Appearance.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlData_Appearance::get_type_descriptor(@)",
    header: "VrmlData_Appearance.hxx".}
proc dynamicType*(this: VrmlDataAppearance): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Appearance.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Appearance"
type
  HandleVrmlDataAppearance* = Handle[VrmlDataAppearance]















































