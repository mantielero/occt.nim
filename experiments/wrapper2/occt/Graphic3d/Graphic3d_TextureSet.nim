##  Copyright (c) 2017 OPEN CASCADE SAS
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
  Graphic3d_TextureMap, ../NCollection/NCollection_Array1

## ! Class holding array of textures to be mapped as a set.
## ! Textures should be defined in ascending order of texture units within the set.

type
  Graphic3d_TextureSet* {.importcpp: "Graphic3d_TextureSet",
                         header: "Graphic3d_TextureSet.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## Class
                                                                                              ## for
                                                                                              ## iterating
                                                                                              ## texture
                                                                                              ## set.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Empty
                                                                                              ## constructor.

  Graphic3d_TextureSetbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_TextureSet::get_type_name(@)",
                              header: "Graphic3d_TextureSet.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_TextureSet::get_type_descriptor(@)",
    header: "Graphic3d_TextureSet.hxx".}
proc DynamicType*(this: Graphic3d_TextureSet): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_TextureSet.hxx".}
type
  Graphic3d_TextureSetIterator* {.importcpp: "Graphic3d_TextureSet::Iterator",
                                 header: "Graphic3d_TextureSet.hxx", bycopy.} = object of Graphic3d_TextureSetIterator[
      handle[Graphic3d_TextureMap]] ## ! Empty constructor.


proc constructGraphic3d_TextureSetIterator*(): Graphic3d_TextureSetIterator {.
    constructor, importcpp: "Graphic3d_TextureSet::Iterator(@)",
    header: "Graphic3d_TextureSet.hxx".}
proc constructGraphic3d_TextureSetIterator*(theSet: handle[Graphic3d_TextureSet]): Graphic3d_TextureSetIterator {.
    constructor, importcpp: "Graphic3d_TextureSet::Iterator(@)",
    header: "Graphic3d_TextureSet.hxx".}
proc constructGraphic3d_TextureSet*(): Graphic3d_TextureSet {.constructor,
    importcpp: "Graphic3d_TextureSet(@)", header: "Graphic3d_TextureSet.hxx".}
proc constructGraphic3d_TextureSet*(theNbTextures: Standard_Integer): Graphic3d_TextureSet {.
    constructor, importcpp: "Graphic3d_TextureSet(@)",
    header: "Graphic3d_TextureSet.hxx".}
proc constructGraphic3d_TextureSet*(theTexture: handle[Graphic3d_TextureMap]): Graphic3d_TextureSet {.
    constructor, importcpp: "Graphic3d_TextureSet(@)",
    header: "Graphic3d_TextureSet.hxx".}
proc IsEmpty*(this: Graphic3d_TextureSet): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "Graphic3d_TextureSet.hxx".}
proc Size*(this: Graphic3d_TextureSet): Standard_Integer {.noSideEffect,
    importcpp: "Size", header: "Graphic3d_TextureSet.hxx".}
proc Lower*(this: Graphic3d_TextureSet): Standard_Integer {.noSideEffect,
    importcpp: "Lower", header: "Graphic3d_TextureSet.hxx".}
proc Upper*(this: Graphic3d_TextureSet): Standard_Integer {.noSideEffect,
    importcpp: "Upper", header: "Graphic3d_TextureSet.hxx".}
proc First*(this: Graphic3d_TextureSet): handle[Graphic3d_TextureMap] {.
    noSideEffect, importcpp: "First", header: "Graphic3d_TextureSet.hxx".}
proc SetFirst*(this: var Graphic3d_TextureSet;
              theTexture: handle[Graphic3d_TextureMap]) {.importcpp: "SetFirst",
    header: "Graphic3d_TextureSet.hxx".}
proc Value*(this: Graphic3d_TextureSet; theIndex: Standard_Integer): handle[
    Graphic3d_TextureMap] {.noSideEffect, importcpp: "Value",
                           header: "Graphic3d_TextureSet.hxx".}
proc SetValue*(this: var Graphic3d_TextureSet; theIndex: Standard_Integer;
              theTexture: handle[Graphic3d_TextureMap]) {.importcpp: "SetValue",
    header: "Graphic3d_TextureSet.hxx".}