##  Created on: 2000-08-11
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Graphic3d/Graphic3d_Texture2Dmanual, ../Graphic3d/Graphic3d_TextureUnit,
  ../Image/Image_Texture

## ! Texture holder.

type
  XCAFPrs_Texture* {.importcpp: "XCAFPrs_Texture", header: "XCAFPrs_Texture.hxx",
                    bycopy.} = object of Graphic3d_Texture2Dmanual ## ! Constructor.

  XCAFPrs_Texturebase_type* = Graphic3d_Texture2Dmanual

proc get_type_name*(): cstring {.importcpp: "XCAFPrs_Texture::get_type_name(@)",
                              header: "XCAFPrs_Texture.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XCAFPrs_Texture::get_type_descriptor(@)",
    header: "XCAFPrs_Texture.hxx".}
proc DynamicType*(this: XCAFPrs_Texture): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFPrs_Texture.hxx".}
proc constructXCAFPrs_Texture*(theImageSource: Image_Texture;
                              theUnit: Graphic3d_TextureUnit): XCAFPrs_Texture {.
    constructor, importcpp: "XCAFPrs_Texture(@)", header: "XCAFPrs_Texture.hxx".}
proc GetCompressedImage*(this: var XCAFPrs_Texture;
                        theSupported: handle[Image_SupportedFormats]): handle[
    Image_CompressedPixMap] {.importcpp: "GetCompressedImage",
                             header: "XCAFPrs_Texture.hxx".}
proc GetImage*(this: var XCAFPrs_Texture;
              theSupported: handle[Image_SupportedFormats]): handle[Image_PixMap] {.
    importcpp: "GetImage", header: "XCAFPrs_Texture.hxx".}
proc GetImageSource*(this: XCAFPrs_Texture): Image_Texture {.noSideEffect,
    importcpp: "GetImageSource", header: "XCAFPrs_Texture.hxx".}