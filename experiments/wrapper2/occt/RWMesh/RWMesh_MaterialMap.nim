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

## ! Material manager.
## ! Provides an interface for collecting all materials within the document before writing it into file,
## ! and for copying associated image files (textures) into sub-folder near by exported model.

type
  RWMeshMaterialMap* {.importcpp: "RWMesh_MaterialMap",
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


proc constructRWMeshMaterialMap*(theFile: TCollectionAsciiString): RWMeshMaterialMap {.
    constructor, importcpp: "RWMesh_MaterialMap(@)",
    header: "RWMesh_MaterialMap.hxx".}
proc destroyRWMeshMaterialMap*(this: var RWMeshMaterialMap) {.
    importcpp: "#.~RWMesh_MaterialMap()", header: "RWMesh_MaterialMap.hxx".}
proc defaultStyle*(this: RWMeshMaterialMap): XCAFPrsStyle {.noSideEffect,
    importcpp: "DefaultStyle", header: "RWMesh_MaterialMap.hxx".}
proc setDefaultStyle*(this: var RWMeshMaterialMap; theStyle: XCAFPrsStyle) {.
    importcpp: "SetDefaultStyle", header: "RWMesh_MaterialMap.hxx".}
proc findMaterial*(this: RWMeshMaterialMap; theStyle: XCAFPrsStyle): TCollectionAsciiString {.
    noSideEffect, importcpp: "FindMaterial", header: "RWMesh_MaterialMap.hxx".}
proc addMaterial*(this: var RWMeshMaterialMap; theStyle: XCAFPrsStyle): TCollectionAsciiString {.
    importcpp: "AddMaterial", header: "RWMesh_MaterialMap.hxx".}
proc createTextureFolder*(this: var RWMeshMaterialMap): bool {.
    importcpp: "CreateTextureFolder", header: "RWMesh_MaterialMap.hxx".}
proc copyTexture*(this: var RWMeshMaterialMap;
                 theResTexture: var TCollectionAsciiString;
                 theTexture: Handle[ImageTexture]; theKey: TCollectionAsciiString): bool {.
    importcpp: "CopyTexture", header: "RWMesh_MaterialMap.hxx".}
proc defineMaterial*(this: var RWMeshMaterialMap; theStyle: XCAFPrsStyle;
                    theKey: TCollectionAsciiString;
                    theName: TCollectionAsciiString) {.
    importcpp: "DefineMaterial", header: "RWMesh_MaterialMap.hxx".}
proc isFailed*(this: RWMeshMaterialMap): bool {.noSideEffect, importcpp: "IsFailed",
    header: "RWMesh_MaterialMap.hxx".}
