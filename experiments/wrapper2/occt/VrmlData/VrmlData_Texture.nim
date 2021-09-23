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

import
  VrmlData_Node

## *
##   Implementation of the Texture node
##

type
  VrmlData_Texture* {.importcpp: "VrmlData_Texture",
                     header: "VrmlData_Texture.hxx", bycopy.} = object of VrmlData_Node ##  ---------- PUBLIC METHODS ----------
                                                                                 ## *
                                                                                 ##  Empty constructor
                                                                                 ##
                                                                                 ##  ---------- PROTECTED METHODS ----------
                                                                                 ##  ---------- PRIVATE FIELDS ----------
                                                                                 ##  Declaration of CASCADE RTTI


proc constructVrmlData_Texture*(): VrmlData_Texture {.constructor,
    importcpp: "VrmlData_Texture(@)", header: "VrmlData_Texture.hxx".}
proc constructVrmlData_Texture*(theScene: VrmlData_Scene; theName: cstring;
                               theRepeatS: Standard_Boolean = Standard_False;
                               theRepeatT: Standard_Boolean = Standard_False): VrmlData_Texture {.
    constructor, importcpp: "VrmlData_Texture(@)", header: "VrmlData_Texture.hxx".}
proc RepeatS*(this: VrmlData_Texture): Standard_Boolean {.noSideEffect,
    importcpp: "RepeatS", header: "VrmlData_Texture.hxx".}
proc RepeatT*(this: VrmlData_Texture): Standard_Boolean {.noSideEffect,
    importcpp: "RepeatT", header: "VrmlData_Texture.hxx".}
proc SetRepeatS*(this: var VrmlData_Texture; theFlag: Standard_Boolean) {.
    importcpp: "SetRepeatS", header: "VrmlData_Texture.hxx".}
proc SetRepeatT*(this: var VrmlData_Texture; theFlag: Standard_Boolean) {.
    importcpp: "SetRepeatT", header: "VrmlData_Texture.hxx".}
type
  VrmlData_Texturebase_type* = VrmlData_Node

proc get_type_name*(): cstring {.importcpp: "VrmlData_Texture::get_type_name(@)",
                              header: "VrmlData_Texture.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlData_Texture::get_type_descriptor(@)",
    header: "VrmlData_Texture.hxx".}
proc DynamicType*(this: VrmlData_Texture): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Texture.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Texture"
type
  Handle_VrmlData_Texture* = handle[VrmlData_Texture]
