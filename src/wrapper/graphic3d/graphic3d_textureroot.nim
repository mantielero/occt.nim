import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import graphic3d_types
import ../selectmgr/selectmgr_types




##  Created on: 1997-07-28
##  Created by: Pierre CHALAMET
##  Copyright (c) 1997-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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



proc texturesFolder*(): TCollectionAsciiString {.cdecl,
    importcpp: "Graphic3d_TextureRoot::TexturesFolder(@)", header: "Graphic3d_TextureRoot.hxx".}
proc destroyGraphic3dTextureRoot*(this: var Graphic3dTextureRoot) {.cdecl,
    importcpp: "#.~Graphic3d_TextureRoot()", header: "Graphic3d_TextureRoot.hxx".}
proc isDone*(this: Graphic3dTextureRoot): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Graphic3d_TextureRoot.hxx".}
proc path*(this: Graphic3dTextureRoot): OSD_Path {.noSideEffect, cdecl,
    importcpp: "Path", header: "Graphic3d_TextureRoot.hxx".}
proc `type`*(this: Graphic3dTextureRoot): Graphic3dTypeOfTexture {.noSideEffect,
    cdecl, importcpp: "Type", header: "Graphic3d_TextureRoot.hxx".}
proc getId*(this: Graphic3dTextureRoot): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "GetId", header: "Graphic3d_TextureRoot.hxx".}
proc revision*(this: Graphic3dTextureRoot): csize_t {.noSideEffect, cdecl,
    importcpp: "Revision", header: "Graphic3d_TextureRoot.hxx".}
proc updateRevision*(this: var Graphic3dTextureRoot) {.cdecl,
    importcpp: "UpdateRevision", header: "Graphic3d_TextureRoot.hxx".}
proc getCompressedImage*(this: var Graphic3dTextureRoot;
                        theSupported: Handle[ImageSupportedFormats]): Handle[
    ImageCompressedPixMap] {.cdecl, importcpp: "GetCompressedImage", header: "Graphic3d_TextureRoot.hxx".}
proc getImage*(this: var Graphic3dTextureRoot;
              theSupported: Handle[ImageSupportedFormats]): Handle[ImagePixMap] {.
    cdecl, importcpp: "GetImage", header: "Graphic3d_TextureRoot.hxx".}
proc getParams*(this: Graphic3dTextureRoot): Handle[Graphic3dTextureParams] {.
    noSideEffect, cdecl, importcpp: "GetParams", header: "Graphic3d_TextureRoot.hxx".}
proc isColorMap*(this: Graphic3dTextureRoot): bool {.noSideEffect, cdecl,
    importcpp: "IsColorMap", header: "Graphic3d_TextureRoot.hxx".}
proc setColorMap*(this: var Graphic3dTextureRoot; theIsColor: bool) {.cdecl,
    importcpp: "SetColorMap", header: "Graphic3d_TextureRoot.hxx".}
proc isTopDown*(this: Graphic3dTextureRoot): bool {.noSideEffect, cdecl,
    importcpp: "IsTopDown", header: "Graphic3d_TextureRoot.hxx".}



