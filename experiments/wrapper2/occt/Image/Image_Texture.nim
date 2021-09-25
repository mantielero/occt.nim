##  Author: Kirill Gavrilov
##  Copyright (c) 2015-2019 OPEN CASCADE SAS
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
discard "forward decl of Image_PixMap"
type
  ImageTexture* {.importcpp: "Image_Texture", header: "Image_Texture.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Constructor
                                                                                                        ## pointing
                                                                                                        ## to
                                                                                                        ## file
                                                                                                        ## location.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## @name
                                                                                                        ## hasher
                                                                                                        ## interface
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Hash
                                                                                                        ## value,
                                                                                                        ## for
                                                                                                        ## Map
                                                                                                        ## interface.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Read
                                                                                                        ## image
                                                                                                        ## from
                                                                                                        ## normal
                                                                                                        ## image
                                                                                                        ## file.
    ## !< generated texture id
    ## !< image file path
    ## !< image buffer
    ## !< offset within file
    ## !< length within file

  ImageTexturebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Image_Texture::get_type_name(@)",
                            header: "Image_Texture.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Image_Texture::get_type_descriptor(@)",
    header: "Image_Texture.hxx".}
proc dynamicType*(this: ImageTexture): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Image_Texture.hxx".}
proc constructImageTexture*(theFileName: TCollectionAsciiString): ImageTexture {.
    constructor, importcpp: "Image_Texture(@)", header: "Image_Texture.hxx".}
proc constructImageTexture*(theFileName: TCollectionAsciiString; theOffset: int64T;
                           theLength: int64T): ImageTexture {.constructor,
    importcpp: "Image_Texture(@)", header: "Image_Texture.hxx".}
proc constructImageTexture*(theBuffer: Handle[NCollectionBuffer];
                           theId: TCollectionAsciiString): ImageTexture {.
    constructor, importcpp: "Image_Texture(@)", header: "Image_Texture.hxx".}
proc textureId*(this: ImageTexture): TCollectionAsciiString {.noSideEffect,
    importcpp: "TextureId", header: "Image_Texture.hxx".}
proc filePath*(this: ImageTexture): TCollectionAsciiString {.noSideEffect,
    importcpp: "FilePath", header: "Image_Texture.hxx".}
proc fileOffset*(this: ImageTexture): int64T {.noSideEffect, importcpp: "FileOffset",
    header: "Image_Texture.hxx".}
proc fileLength*(this: ImageTexture): int64T {.noSideEffect, importcpp: "FileLength",
    header: "Image_Texture.hxx".}
proc dataBuffer*(this: ImageTexture): Handle[NCollectionBuffer] {.noSideEffect,
    importcpp: "DataBuffer", header: "Image_Texture.hxx".}
proc probeImageFileFormat*(this: ImageTexture): TCollectionAsciiString {.
    noSideEffect, importcpp: "ProbeImageFileFormat", header: "Image_Texture.hxx".}
proc readCompressedImage*(this: ImageTexture;
                         theSupported: Handle[ImageSupportedFormats]): Handle[
    ImageCompressedPixMap] {.noSideEffect, importcpp: "ReadCompressedImage",
                            header: "Image_Texture.hxx".}
proc readImage*(this: ImageTexture; theSupported: Handle[ImageSupportedFormats]): Handle[
    ImagePixMap] {.noSideEffect, importcpp: "ReadImage", header: "Image_Texture.hxx".}
proc writeImage*(this: var ImageTexture; theFile: TCollectionAsciiString): bool {.
    importcpp: "WriteImage", header: "Image_Texture.hxx".}
proc hashCode*(theTexture: Handle[ImageTexture]; theUpper: cint): cint {.
    importcpp: "Image_Texture::HashCode(@)", header: "Image_Texture.hxx".}
proc isEqual*(theTex1: Handle[ImageTexture]; theTex2: Handle[ImageTexture]): bool {.
    importcpp: "Image_Texture::IsEqual(@)", header: "Image_Texture.hxx".}
proc dumpJson*(this: ImageTexture; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Image_Texture.hxx".}
