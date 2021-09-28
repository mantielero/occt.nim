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
##   Implementation of the Texture node
##

type
  VrmlDataTexture* {.importcpp: "VrmlData_Texture", header: "VrmlData_Texture.hxx",
                    bycopy.} = object of VrmlDataNode ##  ---------- PUBLIC METHODS ----------
                                                 ## *
                                                 ##  Empty constructor
                                                 ##
                                                 ##  ---------- PROTECTED METHODS ----------
                                                 ##  ---------- PRIVATE FIELDS ----------
                                                 ##  Declaration of CASCADE RTTI


proc constructVrmlDataTexture*(): VrmlDataTexture {.constructor,
    importcpp: "VrmlData_Texture(@)", header: "VrmlData_Texture.hxx".}
proc constructVrmlDataTexture*(theScene: VrmlDataScene; theName: cstring;
                              theRepeatS: bool = false; theRepeatT: bool = false): VrmlDataTexture {.
    constructor, importcpp: "VrmlData_Texture(@)", header: "VrmlData_Texture.hxx".}
proc repeatS*(this: VrmlDataTexture): bool {.noSideEffect, importcpp: "RepeatS",
    header: "VrmlData_Texture.hxx".}
proc repeatT*(this: VrmlDataTexture): bool {.noSideEffect, importcpp: "RepeatT",
    header: "VrmlData_Texture.hxx".}
proc setRepeatS*(this: var VrmlDataTexture; theFlag: bool) {.importcpp: "SetRepeatS",
    header: "VrmlData_Texture.hxx".}
proc setRepeatT*(this: var VrmlDataTexture; theFlag: bool) {.importcpp: "SetRepeatT",
    header: "VrmlData_Texture.hxx".}
type
  VrmlDataTexturebaseType* = VrmlDataNode

proc getTypeName*(): cstring {.importcpp: "VrmlData_Texture::get_type_name(@)",
                            header: "VrmlData_Texture.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlData_Texture::get_type_descriptor(@)",
    header: "VrmlData_Texture.hxx".}
proc dynamicType*(this: VrmlDataTexture): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Texture.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Texture"
type
  HandleVrmlDataTexture* = Handle[VrmlDataTexture]















































