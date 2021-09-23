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

import
  ../Standard/Standard_Transient, ../TCollection/TCollection_AsciiString

## ! Describes custom vertex shader attribute.

type
  Graphic3d_ShaderAttribute* {.importcpp: "Graphic3d_ShaderAttribute",
                              header: "Graphic3d_ShaderAttribute.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## new
                                                                                                        ## attribute.
    ## !< attribute name
    ## !< attribute location


proc constructGraphic3d_ShaderAttribute*(theName: TCollection_AsciiString;
                                        theLocation: cint): Graphic3d_ShaderAttribute {.
    constructor, importcpp: "Graphic3d_ShaderAttribute(@)",
    header: "Graphic3d_ShaderAttribute.hxx".}
proc destroyGraphic3d_ShaderAttribute*(this: var Graphic3d_ShaderAttribute) {.
    importcpp: "#.~Graphic3d_ShaderAttribute()",
    header: "Graphic3d_ShaderAttribute.hxx".}
proc Name*(this: Graphic3d_ShaderAttribute): TCollection_AsciiString {.noSideEffect,
    importcpp: "Name", header: "Graphic3d_ShaderAttribute.hxx".}
proc Location*(this: Graphic3d_ShaderAttribute): cint {.noSideEffect,
    importcpp: "Location", header: "Graphic3d_ShaderAttribute.hxx".}
type
  Graphic3d_ShaderAttributebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_ShaderAttribute::get_type_name(@)",
                              header: "Graphic3d_ShaderAttribute.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_ShaderAttribute::get_type_descriptor(@)",
    header: "Graphic3d_ShaderAttribute.hxx".}
proc DynamicType*(this: Graphic3d_ShaderAttribute): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_ShaderAttribute.hxx".}
discard "forward decl of Graphic3d_ShaderAttribute"
type
  Handle_Graphic3d_ShaderAttribute* = handle[Graphic3d_ShaderAttribute]
