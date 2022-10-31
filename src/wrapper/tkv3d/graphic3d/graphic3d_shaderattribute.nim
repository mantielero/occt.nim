import ../../tkernel/tcollection/tcollection_types
import graphic3d_types





##  Created on: 2016-02-19
##  Created by: Kirill Gavrilov
##  Copyright (c) 2016 OPEN CASCADE SAS
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

## ! Describes custom vertex shader attribute.



proc newGraphic3dShaderAttribute*(theName: TCollectionAsciiString;
                                 theLocation: cint): Graphic3dShaderAttribute {.
    cdecl, constructor, importcpp: "Graphic3d_ShaderAttribute(@)", header: "Graphic3d_ShaderAttribute.hxx".}
proc destroyGraphic3dShaderAttribute*(this: var Graphic3dShaderAttribute) {.cdecl,
    importcpp: "#.~Graphic3d_ShaderAttribute()", header: "Graphic3d_ShaderAttribute.hxx".}
proc name*(this: Graphic3dShaderAttribute): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "Name", header: "Graphic3d_ShaderAttribute.hxx".}
proc location*(this: Graphic3dShaderAttribute): cint {.noSideEffect, cdecl,
    importcpp: "Location", header: "Graphic3d_ShaderAttribute.hxx".}



