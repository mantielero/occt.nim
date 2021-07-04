##  Copyright (c) 2019 OPEN CASCADE SAS
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
  ../Graphic3d/Graphic3d_AlphaMode, ../Graphic3d/Graphic3d_Vec,
  ../Image/Image_Texture, ../Quantity/Quantity_ColorRGBA,
  ../Standard/Standard_Dump

discard "forward decl of Graphic3d_Aspects"
discard "forward decl of Graphic3d_MaterialAspect"
type
  XCAFDoc_VisMaterialCommon* {.importcpp: "XCAFDoc_VisMaterialCommon",
                              header: "XCAFDoc_VisMaterialCommon.hxx", bycopy.} = object
    DiffuseTexture* {.importc: "DiffuseTexture".}: handle[Image_Texture] ## !< image defining diffuse color
    AmbientColor* {.importc: "AmbientColor".}: Quantity_Color ## !< ambient  color
    DiffuseColor* {.importc: "DiffuseColor".}: Quantity_Color ## !< diffuse  color
    SpecularColor* {.importc: "SpecularColor".}: Quantity_Color ## !< specular color
    EmissiveColor* {.importc: "EmissiveColor".}: Quantity_Color ## !< emission color
    Shininess* {.importc: "Shininess".}: Standard_ShortReal ## !< shininess value
    Transparency* {.importc: "Transparency".}: Standard_ShortReal ## !< transparency value within [0, 1] range with 0 meaning opaque
    IsDefined* {.importc: "IsDefined".}: Standard_Boolean ## !< defined flag; FALSE by default
                                                      ## ! Empty constructor.


proc constructXCAFDoc_VisMaterialCommon*(): XCAFDoc_VisMaterialCommon {.
    constructor, importcpp: "XCAFDoc_VisMaterialCommon(@)",
    header: "XCAFDoc_VisMaterialCommon.hxx".}
proc IsEqual*(this: XCAFDoc_VisMaterialCommon; theOther: XCAFDoc_VisMaterialCommon): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "XCAFDoc_VisMaterialCommon.hxx".}
proc DumpJson*(this: XCAFDoc_VisMaterialCommon; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "XCAFDoc_VisMaterialCommon.hxx".}