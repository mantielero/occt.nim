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

discard "forward decl of Graphic3d_Aspects"
discard "forward decl of Graphic3d_MaterialAspect"
type
  XCAFDocVisMaterialCommon* {.importcpp: "XCAFDoc_VisMaterialCommon",
                             header: "XCAFDoc_VisMaterialCommon.hxx", bycopy.} = object
    diffuseTexture* {.importc: "DiffuseTexture".}: Handle[ImageTexture] ## !< image defining diffuse color
    ambientColor* {.importc: "AmbientColor".}: QuantityColor ## !< ambient  color
    diffuseColor* {.importc: "DiffuseColor".}: QuantityColor ## !< diffuse  color
    specularColor* {.importc: "SpecularColor".}: QuantityColor ## !< specular color
    emissiveColor* {.importc: "EmissiveColor".}: QuantityColor ## !< emission color
    shininess* {.importc: "Shininess".}: StandardShortReal ## !< shininess value
    transparency* {.importc: "Transparency".}: StandardShortReal ## !< transparency value within [0, 1] range with 0 meaning opaque
    isDefined* {.importc: "IsDefined".}: bool ## !< defined flag; FALSE by default
                                          ## ! Empty constructor.


proc constructXCAFDocVisMaterialCommon*(): XCAFDocVisMaterialCommon {.constructor,
    importcpp: "XCAFDoc_VisMaterialCommon(@)",
    header: "XCAFDoc_VisMaterialCommon.hxx".}
proc isEqual*(this: XCAFDocVisMaterialCommon; theOther: XCAFDocVisMaterialCommon): bool {.
    noSideEffect, importcpp: "IsEqual", header: "XCAFDoc_VisMaterialCommon.hxx".}
proc dumpJson*(this: XCAFDocVisMaterialCommon; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "XCAFDoc_VisMaterialCommon.hxx".}














































