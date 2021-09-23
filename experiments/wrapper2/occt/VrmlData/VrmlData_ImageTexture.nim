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
  VrmlData_Texture

## *
##   Implementation of the ImageTexture node
##

type
  VrmlData_ImageTexture* {.importcpp: "VrmlData_ImageTexture",
                          header: "VrmlData_ImageTexture.hxx", bycopy.} = object of VrmlData_Texture ##  ---------- PUBLIC METHODS ----------
                                                                                              ## *
                                                                                              ##  Empty constructor
                                                                                              ##
                                                                                              ##  ---------- PROTECTED METHODS ----------
                                                                                              ##  ---------- PRIVATE FIELDS ----------
                                                                                              ##  Declaration of CASCADE RTTI


proc constructVrmlData_ImageTexture*(): VrmlData_ImageTexture {.constructor,
    importcpp: "VrmlData_ImageTexture(@)", header: "VrmlData_ImageTexture.hxx".}
proc constructVrmlData_ImageTexture*(theScene: VrmlData_Scene; theName: cstring;
                                    theURL: cstring = 0L'i64;
                                    theRepS: Standard_Boolean = Standard_False;
                                    theRepT: Standard_Boolean = Standard_False): VrmlData_ImageTexture {.
    constructor, importcpp: "VrmlData_ImageTexture(@)",
    header: "VrmlData_ImageTexture.hxx".}
proc URL*(this: VrmlData_ImageTexture): NCollection_List[TCollection_AsciiString] {.
    noSideEffect, importcpp: "URL", header: "VrmlData_ImageTexture.hxx".}
proc Clone*(this: VrmlData_ImageTexture; theOther: handle[VrmlData_Node]): handle[
    VrmlData_Node] {.noSideEffect, importcpp: "Clone",
                    header: "VrmlData_ImageTexture.hxx".}
proc Read*(this: var VrmlData_ImageTexture; theBuffer: var VrmlData_InBuffer): VrmlData_ErrorStatus {.
    importcpp: "Read", header: "VrmlData_ImageTexture.hxx".}
proc Write*(this: VrmlData_ImageTexture; thePrefix: cstring): VrmlData_ErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_ImageTexture.hxx".}
type
  VrmlData_ImageTexturebase_type* = VrmlData_Texture

proc get_type_name*(): cstring {.importcpp: "VrmlData_ImageTexture::get_type_name(@)",
                              header: "VrmlData_ImageTexture.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlData_ImageTexture::get_type_descriptor(@)",
    header: "VrmlData_ImageTexture.hxx".}
proc DynamicType*(this: VrmlData_ImageTexture): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "VrmlData_ImageTexture.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_ImageTexture"
type
  Handle_VrmlData_ImageTexture* = handle[VrmlData_ImageTexture]
