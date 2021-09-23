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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TCollection/TCollection_AsciiString,
  Vrml_Texture2Wrap, ../Standard/Standard_OStream

discard "forward decl of Vrml_SFImage"
discard "forward decl of TCollection_AsciiString"
type
  Vrml_Texture2* {.importcpp: "Vrml_Texture2", header: "Vrml_Texture2.hxx", bycopy.} = object


proc constructVrml_Texture2*(): Vrml_Texture2 {.constructor,
    importcpp: "Vrml_Texture2(@)", header: "Vrml_Texture2.hxx".}
proc constructVrml_Texture2*(aFilename: TCollection_AsciiString;
                            aImage: handle[Vrml_SFImage];
                            aWrapS: Vrml_Texture2Wrap; aWrapT: Vrml_Texture2Wrap): Vrml_Texture2 {.
    constructor, importcpp: "Vrml_Texture2(@)", header: "Vrml_Texture2.hxx".}
proc SetFilename*(this: var Vrml_Texture2; aFilename: TCollection_AsciiString) {.
    importcpp: "SetFilename", header: "Vrml_Texture2.hxx".}
proc Filename*(this: Vrml_Texture2): TCollection_AsciiString {.noSideEffect,
    importcpp: "Filename", header: "Vrml_Texture2.hxx".}
proc SetImage*(this: var Vrml_Texture2; aImage: handle[Vrml_SFImage]) {.
    importcpp: "SetImage", header: "Vrml_Texture2.hxx".}
proc Image*(this: Vrml_Texture2): handle[Vrml_SFImage] {.noSideEffect,
    importcpp: "Image", header: "Vrml_Texture2.hxx".}
proc SetWrapS*(this: var Vrml_Texture2; aWrapS: Vrml_Texture2Wrap) {.
    importcpp: "SetWrapS", header: "Vrml_Texture2.hxx".}
proc WrapS*(this: Vrml_Texture2): Vrml_Texture2Wrap {.noSideEffect,
    importcpp: "WrapS", header: "Vrml_Texture2.hxx".}
proc SetWrapT*(this: var Vrml_Texture2; aWrapT: Vrml_Texture2Wrap) {.
    importcpp: "SetWrapT", header: "Vrml_Texture2.hxx".}
proc WrapT*(this: Vrml_Texture2): Vrml_Texture2Wrap {.noSideEffect,
    importcpp: "WrapT", header: "Vrml_Texture2.hxx".}
proc Print*(this: Vrml_Texture2; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_Texture2.hxx".}