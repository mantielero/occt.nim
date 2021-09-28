##  Created on: 2006-05-26
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

discard "forward decl of gp_XY"
type
  VrmlDataTextureCoordinate* {.importcpp: "VrmlData_TextureCoordinate",
                              header: "VrmlData_TextureCoordinate.hxx", bycopy.} = object of VrmlDataNode ##  ---------- PUBLIC METHODS ----------
                                                                                                   ## *
                                                                                                   ##  Empty constructor
                                                                                                   ##
                                                                                                   ##  ---------- PRIVATE FIELDS ----------
                                                                                                   ##  Declaration of CASCADE RTTI


proc constructVrmlDataTextureCoordinate*(): VrmlDataTextureCoordinate {.
    constructor, importcpp: "VrmlData_TextureCoordinate(@)",
    header: "VrmlData_TextureCoordinate.hxx".}
proc constructVrmlDataTextureCoordinate*(theScene: VrmlDataScene; theName: cstring;
                                        nPoints: csize_t = 0;
                                        arrPoints: ptr Xy = 0'i64): VrmlDataTextureCoordinate {.
    constructor, importcpp: "VrmlData_TextureCoordinate(@)",
    header: "VrmlData_TextureCoordinate.hxx".}
proc allocateValues*(this: var VrmlDataTextureCoordinate; theLength: StandardSize): bool {.
    importcpp: "AllocateValues", header: "VrmlData_TextureCoordinate.hxx".}
proc length*(this: var VrmlDataTextureCoordinate): csize_t {.importcpp: "Length",
    header: "VrmlData_TextureCoordinate.hxx".}
proc points*(this: var VrmlDataTextureCoordinate): ptr Xy {.importcpp: "Points",
    header: "VrmlData_TextureCoordinate.hxx".}
proc setPoints*(this: var VrmlDataTextureCoordinate; nPoints: csize_t;
               arrPoints: ptr Xy) {.importcpp: "SetPoints",
                                 header: "VrmlData_TextureCoordinate.hxx".}
proc clone*(this: VrmlDataTextureCoordinate; theOther: Handle[VrmlDataNode]): Handle[
    VrmlDataNode] {.noSideEffect, importcpp: "Clone",
                   header: "VrmlData_TextureCoordinate.hxx".}
proc read*(this: var VrmlDataTextureCoordinate; theBuffer: var VrmlDataInBuffer): VrmlDataErrorStatus {.
    importcpp: "Read", header: "VrmlData_TextureCoordinate.hxx".}
type
  VrmlDataTextureCoordinatebaseType* = VrmlDataNode

proc getTypeName*(): cstring {.importcpp: "VrmlData_TextureCoordinate::get_type_name(@)",
                            header: "VrmlData_TextureCoordinate.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlData_TextureCoordinate::get_type_descriptor(@)",
    header: "VrmlData_TextureCoordinate.hxx".}
proc dynamicType*(this: VrmlDataTextureCoordinate): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "VrmlData_TextureCoordinate.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_TextureCoordinate"
type
  HandleVrmlDataTextureCoordinate* = Handle[VrmlDataTextureCoordinate]















































