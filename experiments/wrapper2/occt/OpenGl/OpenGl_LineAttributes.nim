##  Created on: 2011-09-20
##  Created by: Sergey ZERCHANINOV
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
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
  OpenGl_Resource, ../Graphic3d/Graphic3d_HatchStyle,
  ../NCollection/NCollection_DataMap

type
  OpenGl_MapOfHatchStylesAndIds* = NCollection_DataMap[
      handle[Graphic3d_HatchStyle], cuint]

discard "forward decl of OpenGl_Context"
discard "forward decl of OpenGl_LineAttributes"
type
  Handle_OpenGl_LineAttributes* = handle[OpenGl_LineAttributes]

## ! Utility class to manage OpenGL resources of polygon hatching styles.
## ! @note the implementation is not supported by Core Profile and by ES version.

type
  OpenGl_LineAttributes* {.importcpp: "OpenGl_LineAttributes",
                          header: "OpenGl_LineAttributes.hxx", bycopy.} = object of OpenGl_Resource ##
                                                                                             ## !
                                                                                             ## Default
                                                                                             ## constructor.
    ## !< Hatch patterns

  OpenGl_LineAttributesbase_type* = OpenGl_Resource

proc get_type_name*(): cstring {.importcpp: "OpenGl_LineAttributes::get_type_name(@)",
                              header: "OpenGl_LineAttributes.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_LineAttributes::get_type_descriptor(@)",
    header: "OpenGl_LineAttributes.hxx".}
proc DynamicType*(this: OpenGl_LineAttributes): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "OpenGl_LineAttributes.hxx".}
proc constructOpenGl_LineAttributes*(): OpenGl_LineAttributes {.constructor,
    importcpp: "OpenGl_LineAttributes(@)", header: "OpenGl_LineAttributes.hxx".}
proc destroyOpenGl_LineAttributes*(this: var OpenGl_LineAttributes) {.
    importcpp: "#.~OpenGl_LineAttributes()", header: "OpenGl_LineAttributes.hxx".}
proc Release*(this: var OpenGl_LineAttributes; theGlCtx: ptr OpenGl_Context) {.
    importcpp: "Release", header: "OpenGl_LineAttributes.hxx".}
proc EstimatedDataSize*(this: OpenGl_LineAttributes): Standard_Size {.noSideEffect,
    importcpp: "EstimatedDataSize", header: "OpenGl_LineAttributes.hxx".}
proc SetTypeOfHatch*(this: var OpenGl_LineAttributes; theGlCtx: ptr OpenGl_Context;
                    theStyle: handle[Graphic3d_HatchStyle]): bool {.
    importcpp: "SetTypeOfHatch", header: "OpenGl_LineAttributes.hxx".}