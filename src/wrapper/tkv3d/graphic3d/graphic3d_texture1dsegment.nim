import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import graphic3d_types



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





proc newGraphic3dTexture1Dsegment*(theFileName: TCollectionAsciiString): Graphic3dTexture1Dsegment {.
    cdecl, constructor, importcpp: "Graphic3d_Texture1Dsegment(@)", header: "Graphic3d_Texture1Dsegment.hxx".}
proc newGraphic3dTexture1Dsegment*(theNOT: Graphic3dNameOfTexture1D): Graphic3dTexture1Dsegment {.
    cdecl, constructor, importcpp: "Graphic3d_Texture1Dsegment(@)", header: "Graphic3d_Texture1Dsegment.hxx".}
proc newGraphic3dTexture1Dsegment*(thePixMap: Handle[ImagePixMap]): Graphic3dTexture1Dsegment {.
    cdecl, constructor, importcpp: "Graphic3d_Texture1Dsegment(@)", header: "Graphic3d_Texture1Dsegment.hxx".}
proc setSegment*(this: var Graphic3dTexture1Dsegment; theX1: StandardShortReal;
                theY1: StandardShortReal; theZ1: StandardShortReal;
                theX2: StandardShortReal; theY2: StandardShortReal;
                theZ2: StandardShortReal) {.cdecl, importcpp: "SetSegment",
    header: "Graphic3d_Texture1Dsegment.hxx".}
proc segment*(this: Graphic3dTexture1Dsegment; theX1: var StandardShortReal;
             theY1: var StandardShortReal; theZ1: var StandardShortReal;
             theX2: var StandardShortReal; theY2: var StandardShortReal;
             theZ2: var StandardShortReal) {.noSideEffect, cdecl,
    importcpp: "Segment", header: "Graphic3d_Texture1Dsegment.hxx".}

