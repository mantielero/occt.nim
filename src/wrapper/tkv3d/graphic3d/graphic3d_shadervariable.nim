import ../../tkernel/tcollection/tcollection_types
import graphic3d_types





##  Created on: 2013-09-25
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

## ! Interface for generic variable value.



proc destroyGraphic3dValueInterface*(this: var Graphic3dValueInterface) {.cdecl,
    importcpp: "#.~Graphic3d_ValueInterface()", header: "Graphic3d_ShaderVariable.hxx".}
proc typeID*(this: Graphic3dValueInterface): csize_t {.noSideEffect, cdecl,
    importcpp: "TypeID", header: "Graphic3d_ShaderVariable.hxx".}
proc `as`*[T](this: var Graphic3dValueInterface): var T {.cdecl, importcpp: "As",
    header: "Graphic3d_ShaderVariable.hxx".}
proc `as`*[T](this: Graphic3dValueInterface): T {.noSideEffect, cdecl,
    importcpp: "As", header: "Graphic3d_ShaderVariable.hxx".}
## ! Generates unique type identifier for variable value.






proc newGraphic3dUniformValue*[T](theValue: T): Graphic3dUniformValue[T] {.cdecl,
    constructor, importcpp: "Graphic3d_UniformValue<\'*0>(@)", header: "Graphic3d_ShaderVariable.hxx".}
proc typeID*[T](this: Graphic3dUniformValue[T]): csize_t {.noSideEffect, cdecl,
    importcpp: "TypeID", header: "Graphic3d_ShaderVariable.hxx".}
## ! Integer uniform value.



















proc destroyGraphic3dShaderVariable*(this: var Graphic3dShaderVariable) {.cdecl,
    importcpp: "#.~Graphic3d_ShaderVariable()", header: "Graphic3d_ShaderVariable.hxx".}
proc name*(this: Graphic3dShaderVariable): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "Name", header: "Graphic3d_ShaderVariable.hxx".}
proc isDone*(this: Graphic3dShaderVariable): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Graphic3d_ShaderVariable.hxx".}
proc value*(this: var Graphic3dShaderVariable): ptr Graphic3dValueInterface {.cdecl,
    importcpp: "Value", header: "Graphic3d_ShaderVariable.hxx".}
proc create*[T](theName: TCollectionAsciiString; theValue: T): ptr Graphic3dShaderVariable {.
    cdecl, importcpp: "Graphic3d_ShaderVariable::Create(@)", header: "Graphic3d_ShaderVariable.hxx".}



