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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_ShortReal,
  Graphic3d_Texture1D, Graphic3d_NameOfTexture1D

discard "forward decl of TCollection_AsciiString"
discard "forward decl of Graphic3d_Texture1Dsegment"
discard "forward decl of Graphic3d_Texture1Dsegment"
type
  Handle_Graphic3d_Texture1Dsegment* = handle[Graphic3d_Texture1Dsegment]

## ! This class provides the implementation
## ! of a 1D texture applyable along a segment.
## ! You might use the SetSegment() method
## ! to set the way the texture is "streched" on facets.

type
  Graphic3d_Texture1Dsegment* {.importcpp: "Graphic3d_Texture1Dsegment",
                               header: "Graphic3d_Texture1Dsegment.hxx", bycopy.} = object of Graphic3d_Texture1D ##
                                                                                                           ## !
                                                                                                           ## Creates
                                                                                                           ## a
                                                                                                           ## texture
                                                                                                           ## from
                                                                                                           ## a
                                                                                                           ## file


proc constructGraphic3d_Texture1Dsegment*(theFileName: TCollection_AsciiString): Graphic3d_Texture1Dsegment {.
    constructor, importcpp: "Graphic3d_Texture1Dsegment(@)",
    header: "Graphic3d_Texture1Dsegment.hxx".}
proc constructGraphic3d_Texture1Dsegment*(theNOT: Graphic3d_NameOfTexture1D): Graphic3d_Texture1Dsegment {.
    constructor, importcpp: "Graphic3d_Texture1Dsegment(@)",
    header: "Graphic3d_Texture1Dsegment.hxx".}
proc constructGraphic3d_Texture1Dsegment*(thePixMap: handle[Image_PixMap]): Graphic3d_Texture1Dsegment {.
    constructor, importcpp: "Graphic3d_Texture1Dsegment(@)",
    header: "Graphic3d_Texture1Dsegment.hxx".}
proc SetSegment*(this: var Graphic3d_Texture1Dsegment; theX1: Standard_ShortReal;
                theY1: Standard_ShortReal; theZ1: Standard_ShortReal;
                theX2: Standard_ShortReal; theY2: Standard_ShortReal;
                theZ2: Standard_ShortReal) {.importcpp: "SetSegment",
    header: "Graphic3d_Texture1Dsegment.hxx".}
proc Segment*(this: Graphic3d_Texture1Dsegment; theX1: var Standard_ShortReal;
             theY1: var Standard_ShortReal; theZ1: var Standard_ShortReal;
             theX2: var Standard_ShortReal; theY2: var Standard_ShortReal;
             theZ2: var Standard_ShortReal) {.noSideEffect, importcpp: "Segment",
    header: "Graphic3d_Texture1Dsegment.hxx".}
type
  Graphic3d_Texture1Dsegmentbase_type* = Graphic3d_Texture1D

proc get_type_name*(): cstring {.importcpp: "Graphic3d_Texture1Dsegment::get_type_name(@)",
                              header: "Graphic3d_Texture1Dsegment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_Texture1Dsegment::get_type_descriptor(@)",
    header: "Graphic3d_Texture1Dsegment.hxx".}
proc DynamicType*(this: Graphic3d_Texture1Dsegment): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Graphic3d_Texture1Dsegment.hxx".}