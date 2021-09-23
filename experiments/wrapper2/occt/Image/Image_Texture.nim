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

import
  ../NCollection/NCollection_Buffer, ../TCollection/TCollection_AsciiString

discard "forward decl of Image_CompressedPixMap"
discard "forward decl of Image_SupportedFormats"
discard "forward decl of Image_PixMap"
type
  Image_Texture* {.importcpp: "Image_Texture", header: "Image_Texture.hxx", bycopy.} = object of Standard_Transient ##
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

  Image_Texturebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Image_Texture::get_type_name(@)",
                              header: "Image_Texture.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Image_Texture::get_type_descriptor(@)",
    header: "Image_Texture.hxx".}
proc DynamicType*(this: Image_Texture): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Image_Texture.hxx".}
proc constructImage_Texture*(theFileName: TCollection_AsciiString): Image_Texture {.
    constructor, importcpp: "Image_Texture(@)", header: "Image_Texture.hxx".}
proc constructImage_Texture*(theFileName: TCollection_AsciiString;
                            theOffset: int64_t; theLength: int64_t): Image_Texture {.
    constructor, importcpp: "Image_Texture(@)", header: "Image_Texture.hxx".}
proc constructImage_Texture*(theBuffer: handle[NCollection_Buffer];
                            theId: TCollection_AsciiString): Image_Texture {.
    constructor, importcpp: "Image_Texture(@)", header: "Image_Texture.hxx".}
proc TextureId*(this: Image_Texture): TCollection_AsciiString {.noSideEffect,
    importcpp: "TextureId", header: "Image_Texture.hxx".}
proc FilePath*(this: Image_Texture): TCollection_AsciiString {.noSideEffect,
    importcpp: "FilePath", header: "Image_Texture.hxx".}
proc FileOffset*(this: Image_Texture): int64_t {.noSideEffect,
    importcpp: "FileOffset", header: "Image_Texture.hxx".}
proc FileLength*(this: Image_Texture): int64_t {.noSideEffect,
    importcpp: "FileLength", header: "Image_Texture.hxx".}
proc DataBuffer*(this: Image_Texture): handle[NCollection_Buffer] {.noSideEffect,
    importcpp: "DataBuffer", header: "Image_Texture.hxx".}
proc ProbeImageFileFormat*(this: Image_Texture): TCollection_AsciiString {.
    noSideEffect, importcpp: "ProbeImageFileFormat", header: "Image_Texture.hxx".}
proc ReadCompressedImage*(this: Image_Texture;
                         theSupported: handle[Image_SupportedFormats]): handle[
    Image_CompressedPixMap] {.noSideEffect, importcpp: "ReadCompressedImage",
                             header: "Image_Texture.hxx".}
proc ReadImage*(this: Image_Texture; theSupported: handle[Image_SupportedFormats]): handle[
    Image_PixMap] {.noSideEffect, importcpp: "ReadImage",
                   header: "Image_Texture.hxx".}
proc WriteImage*(this: var Image_Texture; theFile: TCollection_AsciiString): Standard_Boolean {.
    importcpp: "WriteImage", header: "Image_Texture.hxx".}
proc HashCode*(theTexture: handle[Image_Texture]; theUpper: cint): cint {.
    importcpp: "Image_Texture::HashCode(@)", header: "Image_Texture.hxx".}
proc IsEqual*(theTex1: handle[Image_Texture]; theTex2: handle[Image_Texture]): Standard_Boolean {.
    importcpp: "Image_Texture::IsEqual(@)", header: "Image_Texture.hxx".}
proc DumpJson*(this: Image_Texture; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Image_Texture.hxx".}