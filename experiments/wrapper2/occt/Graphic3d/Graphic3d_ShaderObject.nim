##  Created on: 2013-09-20
##  Created by: Denis BOGOLEPOV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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
  ../OSD/OSD_Path, Graphic3d_TypeOfShaderObject

## ! Forward declaration
## ! This class is responsible for managing shader objects.

type
  Graphic3d_ShaderObject* {.importcpp: "Graphic3d_ShaderObject",
                           header: "Graphic3d_ShaderObject.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## new
                                                                                                  ## shader
                                                                                                  ## object
                                                                                                  ## of
                                                                                                  ## specified
                                                                                                  ## type.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Releases
                                                                                                  ## resources
                                                                                                  ## of
                                                                                                  ## shader
                                                                                                  ## object.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## The
                                                                                                  ## type
                                                                                                  ## of
                                                                                                  ## shader
                                                                                                  ## object.
    ## !< the ID of shader object
    ## !< the source code of shader object
    ## !< the path to shader source (may be empty)


proc destroyGraphic3d_ShaderObject*(this: var Graphic3d_ShaderObject) {.
    importcpp: "#.~Graphic3d_ShaderObject()", header: "Graphic3d_ShaderObject.hxx".}
proc IsDone*(this: Graphic3d_ShaderObject): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Graphic3d_ShaderObject.hxx".}
proc Path*(this: Graphic3d_ShaderObject): OSD_Path {.noSideEffect, importcpp: "Path",
    header: "Graphic3d_ShaderObject.hxx".}
proc Source*(this: Graphic3d_ShaderObject): TCollection_AsciiString {.noSideEffect,
    importcpp: "Source", header: "Graphic3d_ShaderObject.hxx".}
proc Type*(this: Graphic3d_ShaderObject): Graphic3d_TypeOfShaderObject {.
    noSideEffect, importcpp: "Type", header: "Graphic3d_ShaderObject.hxx".}
proc GetId*(this: Graphic3d_ShaderObject): TCollection_AsciiString {.noSideEffect,
    importcpp: "GetId", header: "Graphic3d_ShaderObject.hxx".}
proc CreateFromFile*(theType: Graphic3d_TypeOfShaderObject;
                    thePath: TCollection_AsciiString): handle[
    Graphic3d_ShaderObject] {.importcpp: "Graphic3d_ShaderObject::CreateFromFile(@)",
                             header: "Graphic3d_ShaderObject.hxx".}
proc CreateFromSource*(theType: Graphic3d_TypeOfShaderObject;
                      theSource: TCollection_AsciiString): handle[
    Graphic3d_ShaderObject] {.importcpp: "Graphic3d_ShaderObject::CreateFromSource(@)",
                             header: "Graphic3d_ShaderObject.hxx".}
type
  Graphic3d_ShaderObjectbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_ShaderObject::get_type_name(@)",
                              header: "Graphic3d_ShaderObject.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_ShaderObject::get_type_descriptor(@)",
    header: "Graphic3d_ShaderObject.hxx".}
proc DynamicType*(this: Graphic3d_ShaderObject): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_ShaderObject.hxx".}
discard "forward decl of Graphic3d_ShaderObject"
type
  Handle_Graphic3d_ShaderObject* = handle[Graphic3d_ShaderObject]
