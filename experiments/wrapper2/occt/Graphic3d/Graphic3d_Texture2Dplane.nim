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

import
  ../Standard/Standard, ../Standard/Standard_Type, Graphic3d_NameOfTexturePlane,
  Graphic3d_Texture2D, Graphic3d_NameOfTexture2D, ../Standard/Standard_ShortReal

discard "forward decl of TCollection_AsciiString"
discard "forward decl of Graphic3d_Texture2Dplane"
discard "forward decl of Graphic3d_Texture2Dplane"
type
  Handle_Graphic3d_Texture2Dplane* = handle[Graphic3d_Texture2Dplane]

## ! This class allows the management of a 2D texture defined from a plane equation
## ! Use the SetXXX() methods for positioning the texture as you want.

type
  Graphic3d_Texture2Dplane* {.importcpp: "Graphic3d_Texture2Dplane",
                             header: "Graphic3d_Texture2Dplane.hxx", bycopy.} = object of Graphic3d_Texture2D ##
                                                                                                       ## !
                                                                                                       ## Creates
                                                                                                       ## a
                                                                                                       ## texture
                                                                                                       ## from
                                                                                                       ## a
                                                                                                       ## file


proc constructGraphic3d_Texture2Dplane*(theFileName: TCollection_AsciiString): Graphic3d_Texture2Dplane {.
    constructor, importcpp: "Graphic3d_Texture2Dplane(@)",
    header: "Graphic3d_Texture2Dplane.hxx".}
proc constructGraphic3d_Texture2Dplane*(theNOT: Graphic3d_NameOfTexture2D): Graphic3d_Texture2Dplane {.
    constructor, importcpp: "Graphic3d_Texture2Dplane(@)",
    header: "Graphic3d_Texture2Dplane.hxx".}
proc constructGraphic3d_Texture2Dplane*(thePixMap: handle[Image_PixMap]): Graphic3d_Texture2Dplane {.
    constructor, importcpp: "Graphic3d_Texture2Dplane(@)",
    header: "Graphic3d_Texture2Dplane.hxx".}
proc SetPlaneS*(this: var Graphic3d_Texture2Dplane; A: Standard_ShortReal;
               B: Standard_ShortReal; C: Standard_ShortReal; D: Standard_ShortReal) {.
    importcpp: "SetPlaneS", header: "Graphic3d_Texture2Dplane.hxx".}
proc SetPlaneT*(this: var Graphic3d_Texture2Dplane; A: Standard_ShortReal;
               B: Standard_ShortReal; C: Standard_ShortReal; D: Standard_ShortReal) {.
    importcpp: "SetPlaneT", header: "Graphic3d_Texture2Dplane.hxx".}
proc SetPlane*(this: var Graphic3d_Texture2Dplane;
              thePlane: Graphic3d_NameOfTexturePlane) {.importcpp: "SetPlane",
    header: "Graphic3d_Texture2Dplane.hxx".}
proc SetScaleS*(this: var Graphic3d_Texture2Dplane; theVal: Standard_ShortReal) {.
    importcpp: "SetScaleS", header: "Graphic3d_Texture2Dplane.hxx".}
proc SetScaleT*(this: var Graphic3d_Texture2Dplane; theVal: Standard_ShortReal) {.
    importcpp: "SetScaleT", header: "Graphic3d_Texture2Dplane.hxx".}
proc SetTranslateS*(this: var Graphic3d_Texture2Dplane; theVal: Standard_ShortReal) {.
    importcpp: "SetTranslateS", header: "Graphic3d_Texture2Dplane.hxx".}
proc SetTranslateT*(this: var Graphic3d_Texture2Dplane; theVal: Standard_ShortReal) {.
    importcpp: "SetTranslateT", header: "Graphic3d_Texture2Dplane.hxx".}
proc SetRotation*(this: var Graphic3d_Texture2Dplane; theVal: Standard_ShortReal) {.
    importcpp: "SetRotation", header: "Graphic3d_Texture2Dplane.hxx".}
proc Plane*(this: Graphic3d_Texture2Dplane): Graphic3d_NameOfTexturePlane {.
    noSideEffect, importcpp: "Plane", header: "Graphic3d_Texture2Dplane.hxx".}
proc PlaneS*(this: Graphic3d_Texture2Dplane; A: var Standard_ShortReal;
            B: var Standard_ShortReal; C: var Standard_ShortReal;
            D: var Standard_ShortReal) {.noSideEffect, importcpp: "PlaneS",
                                      header: "Graphic3d_Texture2Dplane.hxx".}
proc PlaneT*(this: Graphic3d_Texture2Dplane; A: var Standard_ShortReal;
            B: var Standard_ShortReal; C: var Standard_ShortReal;
            D: var Standard_ShortReal) {.noSideEffect, importcpp: "PlaneT",
                                      header: "Graphic3d_Texture2Dplane.hxx".}
proc TranslateS*(this: Graphic3d_Texture2Dplane; theVal: var Standard_ShortReal) {.
    noSideEffect, importcpp: "TranslateS", header: "Graphic3d_Texture2Dplane.hxx".}
proc TranslateT*(this: Graphic3d_Texture2Dplane; theVal: var Standard_ShortReal) {.
    noSideEffect, importcpp: "TranslateT", header: "Graphic3d_Texture2Dplane.hxx".}
proc ScaleS*(this: Graphic3d_Texture2Dplane; theVal: var Standard_ShortReal) {.
    noSideEffect, importcpp: "ScaleS", header: "Graphic3d_Texture2Dplane.hxx".}
proc ScaleT*(this: Graphic3d_Texture2Dplane; theVal: var Standard_ShortReal) {.
    noSideEffect, importcpp: "ScaleT", header: "Graphic3d_Texture2Dplane.hxx".}
proc Rotation*(this: Graphic3d_Texture2Dplane; theVal: var Standard_ShortReal) {.
    noSideEffect, importcpp: "Rotation", header: "Graphic3d_Texture2Dplane.hxx".}
type
  Graphic3d_Texture2Dplanebase_type* = Graphic3d_Texture2D

proc get_type_name*(): cstring {.importcpp: "Graphic3d_Texture2Dplane::get_type_name(@)",
                              header: "Graphic3d_Texture2Dplane.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_Texture2Dplane::get_type_descriptor(@)",
    header: "Graphic3d_Texture2Dplane.hxx".}
proc DynamicType*(this: Graphic3d_Texture2Dplane): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_Texture2Dplane.hxx".}