import graphic3d_types

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

## ! Forward declaration
## ! This class is responsible for managing shader objects.



proc destroyGraphic3dShaderObject*(this: var Graphic3dShaderObject) {.cdecl,
    importcpp: "#.~Graphic3d_ShaderObject()", header: "Graphic3d_ShaderObject.hxx".}
proc isDone*(this: Graphic3dShaderObject): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Graphic3d_ShaderObject.hxx".}
proc path*(this: Graphic3dShaderObject): OSD_Path {.noSideEffect, cdecl,
    importcpp: "Path", header: "Graphic3d_ShaderObject.hxx".}
proc source*(this: Graphic3dShaderObject): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "Source", header: "Graphic3d_ShaderObject.hxx".}
proc `type`*(this: Graphic3dShaderObject): Graphic3dTypeOfShaderObject {.
    noSideEffect, cdecl, importcpp: "Type", header: "Graphic3d_ShaderObject.hxx".}
proc getId*(this: Graphic3dShaderObject): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "GetId", header: "Graphic3d_ShaderObject.hxx".}
proc createFromFile*(theType: Graphic3dTypeOfShaderObject;
                    thePath: TCollectionAsciiString): Handle[Graphic3dShaderObject] {.
    cdecl, importcpp: "Graphic3d_ShaderObject::CreateFromFile(@)", header: "Graphic3d_ShaderObject.hxx".}
proc createFromSource*(theType: Graphic3dTypeOfShaderObject;
                      theSource: TCollectionAsciiString): Handle[
    Graphic3dShaderObject] {.cdecl, importcpp: "Graphic3d_ShaderObject::CreateFromSource(@)",
                            header: "Graphic3d_ShaderObject.hxx".}

