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
##   Implementation of the ImageTexture node
##

type
  VrmlDataImageTexture* {.importcpp: "VrmlData_ImageTexture",
                         header: "VrmlData_ImageTexture.hxx", bycopy.} = object of VrmlDataTexture ##  ---------- PUBLIC METHODS ----------
                                                                                            ## *
                                                                                            ##  Empty constructor
                                                                                            ##
                                                                                            ##  ---------- PROTECTED METHODS ----------
                                                                                            ##  ---------- PRIVATE FIELDS ----------
                                                                                            ##  Declaration of CASCADE RTTI


proc constructVrmlDataImageTexture*(): VrmlDataImageTexture {.constructor,
    importcpp: "VrmlData_ImageTexture(@)", header: "VrmlData_ImageTexture.hxx".}
proc constructVrmlDataImageTexture*(theScene: VrmlDataScene; theName: cstring;
                                   theURL: cstring = 0'i64; theRepS: bool = false;
                                   theRepT: bool = false): VrmlDataImageTexture {.
    constructor, importcpp: "VrmlData_ImageTexture(@)",
    header: "VrmlData_ImageTexture.hxx".}
proc url*(this: VrmlDataImageTexture): NCollectionList[TCollectionAsciiString] {.
    noSideEffect, importcpp: "URL", header: "VrmlData_ImageTexture.hxx".}
proc clone*(this: VrmlDataImageTexture; theOther: Handle[VrmlDataNode]): Handle[
    VrmlDataNode] {.noSideEffect, importcpp: "Clone",
                   header: "VrmlData_ImageTexture.hxx".}
proc read*(this: var VrmlDataImageTexture; theBuffer: var VrmlDataInBuffer): VrmlDataErrorStatus {.
    importcpp: "Read", header: "VrmlData_ImageTexture.hxx".}
proc write*(this: VrmlDataImageTexture; thePrefix: cstring): VrmlDataErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_ImageTexture.hxx".}
type
  VrmlDataImageTexturebaseType* = VrmlDataTexture

proc getTypeName*(): cstring {.importcpp: "VrmlData_ImageTexture::get_type_name(@)",
                            header: "VrmlData_ImageTexture.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlData_ImageTexture::get_type_descriptor(@)",
    header: "VrmlData_ImageTexture.hxx".}
proc dynamicType*(this: VrmlDataImageTexture): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_ImageTexture.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_ImageTexture"
type
  HandleVrmlDataImageTexture* = Handle[VrmlDataImageTexture]

