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

type
  OpenGlMapOfHatchStylesAndIds* = NCollectionDataMap[Handle[Graphic3dHatchStyle],
      cuint]

discard "forward decl of OpenGl_Context"
discard "forward decl of OpenGl_LineAttributes"
type
  HandleOpenGlLineAttributes* = Handle[OpenGlLineAttributes]

## ! Utility class to manage OpenGL resources of polygon hatching styles.
## ! @note the implementation is not supported by Core Profile and by ES version.

type
  OpenGlLineAttributes* {.importcpp: "OpenGl_LineAttributes",
                         header: "OpenGl_LineAttributes.hxx", bycopy.} = object of OpenGlResource ##
                                                                                           ## !
                                                                                           ## Default
                                                                                           ## constructor.
    ## !< Hatch patterns

  OpenGlLineAttributesbaseType* = OpenGlResource

proc getTypeName*(): cstring {.importcpp: "OpenGl_LineAttributes::get_type_name(@)",
                            header: "OpenGl_LineAttributes.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "OpenGl_LineAttributes::get_type_descriptor(@)",
    header: "OpenGl_LineAttributes.hxx".}
proc dynamicType*(this: OpenGlLineAttributes): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_LineAttributes.hxx".}
proc constructOpenGlLineAttributes*(): OpenGlLineAttributes {.constructor,
    importcpp: "OpenGl_LineAttributes(@)", header: "OpenGl_LineAttributes.hxx".}
proc destroyOpenGlLineAttributes*(this: var OpenGlLineAttributes) {.
    importcpp: "#.~OpenGl_LineAttributes()", header: "OpenGl_LineAttributes.hxx".}
proc release*(this: var OpenGlLineAttributes; theGlCtx: ptr OpenGlContext) {.
    importcpp: "Release", header: "OpenGl_LineAttributes.hxx".}
proc estimatedDataSize*(this: OpenGlLineAttributes): StandardSize {.noSideEffect,
    importcpp: "EstimatedDataSize", header: "OpenGl_LineAttributes.hxx".}
proc setTypeOfHatch*(this: var OpenGlLineAttributes; theGlCtx: ptr OpenGlContext;
                    theStyle: Handle[Graphic3dHatchStyle]): bool {.
    importcpp: "SetTypeOfHatch", header: "OpenGl_LineAttributes.hxx".}

