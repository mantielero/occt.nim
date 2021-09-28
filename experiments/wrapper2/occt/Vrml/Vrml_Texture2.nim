##  Created on: 1997-02-11
##  Created by: Alexander BRIVIN
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

discard "forward decl of Vrml_SFImage"
discard "forward decl of TCollection_AsciiString"
type
  VrmlTexture2* {.importcpp: "Vrml_Texture2", header: "Vrml_Texture2.hxx", bycopy.} = object


proc constructVrmlTexture2*(): VrmlTexture2 {.constructor,
    importcpp: "Vrml_Texture2(@)", header: "Vrml_Texture2.hxx".}
proc constructVrmlTexture2*(aFilename: TCollectionAsciiString;
                           aImage: Handle[VrmlSFImage]; aWrapS: VrmlTexture2Wrap;
                           aWrapT: VrmlTexture2Wrap): VrmlTexture2 {.constructor,
    importcpp: "Vrml_Texture2(@)", header: "Vrml_Texture2.hxx".}
proc setFilename*(this: var VrmlTexture2; aFilename: TCollectionAsciiString) {.
    importcpp: "SetFilename", header: "Vrml_Texture2.hxx".}
proc filename*(this: VrmlTexture2): TCollectionAsciiString {.noSideEffect,
    importcpp: "Filename", header: "Vrml_Texture2.hxx".}
proc setImage*(this: var VrmlTexture2; aImage: Handle[VrmlSFImage]) {.
    importcpp: "SetImage", header: "Vrml_Texture2.hxx".}
proc image*(this: VrmlTexture2): Handle[VrmlSFImage] {.noSideEffect,
    importcpp: "Image", header: "Vrml_Texture2.hxx".}
proc setWrapS*(this: var VrmlTexture2; aWrapS: VrmlTexture2Wrap) {.
    importcpp: "SetWrapS", header: "Vrml_Texture2.hxx".}
proc wrapS*(this: VrmlTexture2): VrmlTexture2Wrap {.noSideEffect, importcpp: "WrapS",
    header: "Vrml_Texture2.hxx".}
proc setWrapT*(this: var VrmlTexture2; aWrapT: VrmlTexture2Wrap) {.
    importcpp: "SetWrapT", header: "Vrml_Texture2.hxx".}
proc wrapT*(this: VrmlTexture2): VrmlTexture2Wrap {.noSideEffect, importcpp: "WrapT",
    header: "Vrml_Texture2.hxx".}
proc print*(this: VrmlTexture2; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_Texture2.hxx".}

























