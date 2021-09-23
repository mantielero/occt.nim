##  Copyright (c) 2017-2019 OPEN CASCADE SAS
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
  ../NCollection/NCollection_DoubleMap, ../NCollection/NCollection_Map,
  ../XCAFPrs/XCAFPrs_Style

## ! Material manager.
## ! Provides an interface for collecting all materials within the document before writing it into file,
## ! and for copying associated image files (textures) into sub-folder near by exported model.

type
  RWMesh_MaterialMap* {.importcpp: "RWMesh_MaterialMap",
                       header: "RWMesh_MaterialMap.hxx", bycopy.} = object ## ! Main
                                                                      ## constructor.
                                                                      ## ! Copy file to another place.
    ## !< output folder for glTF file
    ## !< output folder for images (full  path)
    ## !< output folder for images (short path)
    ## !< output glTF file path
    ## !< output glTF file name without extension
    ## !< prefix for generated keys
    ## !< map of processed styles
    ## !< map of images failed to be copied
    ## !< default material definition to be used for nodes with only color defined
    ## !< number of registered materials
    ## !< flag indicating failure
    ## !< flag indicating usage of material name as key


proc constructRWMesh_MaterialMap*(theFile: TCollection_AsciiString): RWMesh_MaterialMap {.
    constructor, importcpp: "RWMesh_MaterialMap(@)",
    header: "RWMesh_MaterialMap.hxx".}
proc destroyRWMesh_MaterialMap*(this: var RWMesh_MaterialMap) {.
    importcpp: "#.~RWMesh_MaterialMap()", header: "RWMesh_MaterialMap.hxx".}
proc DefaultStyle*(this: RWMesh_MaterialMap): XCAFPrs_Style {.noSideEffect,
    importcpp: "DefaultStyle", header: "RWMesh_MaterialMap.hxx".}
proc SetDefaultStyle*(this: var RWMesh_MaterialMap; theStyle: XCAFPrs_Style) {.
    importcpp: "SetDefaultStyle", header: "RWMesh_MaterialMap.hxx".}
proc FindMaterial*(this: RWMesh_MaterialMap; theStyle: XCAFPrs_Style): TCollection_AsciiString {.
    noSideEffect, importcpp: "FindMaterial", header: "RWMesh_MaterialMap.hxx".}
proc AddMaterial*(this: var RWMesh_MaterialMap; theStyle: XCAFPrs_Style): TCollection_AsciiString {.
    importcpp: "AddMaterial", header: "RWMesh_MaterialMap.hxx".}
proc CreateTextureFolder*(this: var RWMesh_MaterialMap): bool {.
    importcpp: "CreateTextureFolder", header: "RWMesh_MaterialMap.hxx".}
proc CopyTexture*(this: var RWMesh_MaterialMap;
                 theResTexture: var TCollection_AsciiString;
                 theTexture: handle[Image_Texture];
                 theKey: TCollection_AsciiString): bool {.importcpp: "CopyTexture",
    header: "RWMesh_MaterialMap.hxx".}
proc DefineMaterial*(this: var RWMesh_MaterialMap; theStyle: XCAFPrs_Style;
                    theKey: TCollection_AsciiString;
                    theName: TCollection_AsciiString) {.
    importcpp: "DefineMaterial", header: "RWMesh_MaterialMap.hxx".}
proc IsFailed*(this: RWMesh_MaterialMap): bool {.noSideEffect, importcpp: "IsFailed",
    header: "RWMesh_MaterialMap.hxx".}