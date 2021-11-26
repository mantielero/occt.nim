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

type
  Graphic3dShaderAttribute* {.importcpp: "Graphic3d_ShaderAttribute",
                             header: "Graphic3d_ShaderAttribute.hxx", bycopy.} = object of StandardTransient ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## new
                                                                                                      ## attribute.
    ## !< attribute name
    ## !< attribute location


proc constructGraphic3dShaderAttribute*(theName: TCollectionAsciiString;
                                       theLocation: cint): Graphic3dShaderAttribute {.
    constructor, importcpp: "Graphic3d_ShaderAttribute(@)",
    header: "Graphic3d_ShaderAttribute.hxx".}
proc destroyGraphic3dShaderAttribute*(this: var Graphic3dShaderAttribute) {.
    importcpp: "#.~Graphic3d_ShaderAttribute()",
    header: "Graphic3d_ShaderAttribute.hxx".}
proc name*(this: Graphic3dShaderAttribute): TCollectionAsciiString {.noSideEffect,
    importcpp: "Name", header: "Graphic3d_ShaderAttribute.hxx".}
proc location*(this: Graphic3dShaderAttribute): cint {.noSideEffect,
    importcpp: "Location", header: "Graphic3d_ShaderAttribute.hxx".}
type
  Graphic3dShaderAttributebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Graphic3d_ShaderAttribute::get_type_name(@)",
                            header: "Graphic3d_ShaderAttribute.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_ShaderAttribute::get_type_descriptor(@)",
    header: "Graphic3d_ShaderAttribute.hxx".}
proc dynamicType*(this: Graphic3dShaderAttribute): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_ShaderAttribute.hxx".}
discard "forward decl of Graphic3d_ShaderAttribute"
type
  HandleC1C1* = Handle[Graphic3dShaderAttribute]


























