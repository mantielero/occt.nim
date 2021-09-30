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

discard "forward decl of Image_CompressedPixMap"
discard "forward decl of Image_SupportedFormats"
discard "forward decl of Graphic3d_TextureParams"
type
  Graphic3dTextureRoot* {.importcpp: "Graphic3d_TextureRoot",
                         header: "Graphic3d_TextureRoot.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## The
                                                                                              ## path
                                                                                              ## to
                                                                                              ## textures
                                                                                              ## determined
                                                                                              ## from
                                                                                              ## CSF_MDTVTexturesDirectory
                                                                                              ## or
                                                                                              ## CASROOT
                                                                                              ## environment
                                                                                              ## variables.
                                                                                              ##
                                                                                              ## !
                                                                                              ## @return
                                                                                              ## the
                                                                                              ## root
                                                                                              ## folder
                                                                                              ## with
                                                                                              ## default
                                                                                              ## textures.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Destructor.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## a
                                                                                              ## texture
                                                                                              ## from
                                                                                              ## a
                                                                                              ## file
                                                                                              ##
                                                                                              ## !
                                                                                              ## Warning:
                                                                                              ## Note
                                                                                              ## that
                                                                                              ## if
                                                                                              ## <FileName>
                                                                                              ## is
                                                                                              ## NULL
                                                                                              ## the
                                                                                              ## texture
                                                                                              ## must
                                                                                              ## be
                                                                                              ## realized
                                                                                              ##
                                                                                              ## !
                                                                                              ## using
                                                                                              ## LoadTexture(image)
                                                                                              ## method.
    ## !< associated texture parameters
    ## !< unique identifier of this resource (for sharing graphic resource); should never be modified outside constructor
    ## !< image pixmap - as one of the ways for defining the texture source
    ## !< image file path - as one of the ways for defining the texture source
    ## !< image revision - for signaling changes in the texture source (e.g. file update, pixmap update)
    ## !< texture type
    ## !< flag indicating color nature of values within the texture
    ## !< Stores rows's memory layout

  Graphic3dTextureRootbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Graphic3d_TextureRoot::get_type_name(@)",
                            header: "Graphic3d_TextureRoot.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_TextureRoot::get_type_descriptor(@)",
    header: "Graphic3d_TextureRoot.hxx".}
proc dynamicType*(this: Graphic3dTextureRoot): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_TextureRoot.hxx".}
proc texturesFolder*(): TCollectionAsciiString {.
    importcpp: "Graphic3d_TextureRoot::TexturesFolder(@)",
    header: "Graphic3d_TextureRoot.hxx".}
proc destroyGraphic3dTextureRoot*(this: var Graphic3dTextureRoot) {.
    importcpp: "#.~Graphic3d_TextureRoot()", header: "Graphic3d_TextureRoot.hxx".}
proc isDone*(this: Graphic3dTextureRoot): bool {.noSideEffect, importcpp: "IsDone",
    header: "Graphic3d_TextureRoot.hxx".}
proc path*(this: Graphic3dTextureRoot): OSD_Path {.noSideEffect, importcpp: "Path",
    header: "Graphic3d_TextureRoot.hxx".}
proc `type`*(this: Graphic3dTextureRoot): Graphic3dTypeOfTexture {.noSideEffect,
    importcpp: "Type", header: "Graphic3d_TextureRoot.hxx".}
proc getId*(this: Graphic3dTextureRoot): TCollectionAsciiString {.noSideEffect,
    importcpp: "GetId", header: "Graphic3d_TextureRoot.hxx".}
proc revision*(this: Graphic3dTextureRoot): StandardSize {.noSideEffect,
    importcpp: "Revision", header: "Graphic3d_TextureRoot.hxx".}
proc updateRevision*(this: var Graphic3dTextureRoot) {.importcpp: "UpdateRevision",
    header: "Graphic3d_TextureRoot.hxx".}
proc getCompressedImage*(this: var Graphic3dTextureRoot;
                        theSupported: Handle[ImageSupportedFormats]): Handle[
    ImageCompressedPixMap] {.importcpp: "GetCompressedImage",
                            header: "Graphic3d_TextureRoot.hxx".}
proc getImage*(this: var Graphic3dTextureRoot;
              theSupported: Handle[ImageSupportedFormats]): Handle[ImagePixMap] {.
    importcpp: "GetImage", header: "Graphic3d_TextureRoot.hxx".}
proc getParams*(this: Graphic3dTextureRoot): Handle[Graphic3dTextureParams] {.
    noSideEffect, importcpp: "GetParams", header: "Graphic3d_TextureRoot.hxx".}
proc isColorMap*(this: Graphic3dTextureRoot): bool {.noSideEffect,
    importcpp: "IsColorMap", header: "Graphic3d_TextureRoot.hxx".}
proc setColorMap*(this: var Graphic3dTextureRoot; theIsColor: bool) {.
    importcpp: "SetColorMap", header: "Graphic3d_TextureRoot.hxx".}
proc isTopDown*(this: Graphic3dTextureRoot): bool {.noSideEffect,
    importcpp: "IsTopDown", header: "Graphic3d_TextureRoot.hxx".}
discard "forward decl of Graphic3d_TextureRoot"
type
  HandleC1C1* = Handle[Graphic3dTextureRoot]


























