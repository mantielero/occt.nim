##  Created by: NW,JPB,CAL
##  Copyright (c) 1991-1999 Matra Datavision
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
  Graphic3d_Aspects

## ! Creates and updates a group of attributes for 3d line primitives.
## ! This group contains the color, the type of line, and its thickness.

type
  Graphic3d_AspectLine3d* {.importcpp: "Graphic3d_AspectLine3d",
                           header: "Graphic3d_AspectLine3d.hxx", bycopy.} = object of Graphic3d_Aspects ##
                                                                                                 ## !
                                                                                                 ## Creates
                                                                                                 ## a
                                                                                                 ## context
                                                                                                 ## table
                                                                                                 ## for
                                                                                                 ## line
                                                                                                 ## primitives
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## defined
                                                                                                 ## with
                                                                                                 ## the
                                                                                                 ## following
                                                                                                 ## default
                                                                                                 ## values:
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Color
                                                                                                 ## =
                                                                                                 ## Quantity_NOC_YELLOW;
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Type
                                                                                                 ## =
                                                                                                 ## Aspect_TOL_SOLID;
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Width
                                                                                                 ## =
                                                                                                 ## 1.0;

  Graphic3d_AspectLine3dbase_type* = Graphic3d_Aspects

proc get_type_name*(): cstring {.importcpp: "Graphic3d_AspectLine3d::get_type_name(@)",
                              header: "Graphic3d_AspectLine3d.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_AspectLine3d::get_type_descriptor(@)",
    header: "Graphic3d_AspectLine3d.hxx".}
proc DynamicType*(this: Graphic3d_AspectLine3d): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_AspectLine3d.hxx".}
proc constructGraphic3d_AspectLine3d*(): Graphic3d_AspectLine3d {.constructor,
    importcpp: "Graphic3d_AspectLine3d(@)", header: "Graphic3d_AspectLine3d.hxx".}
proc constructGraphic3d_AspectLine3d*(theColor: Quantity_Color;
                                     theType: Aspect_TypeOfLine;
                                     theWidth: Standard_Real): Graphic3d_AspectLine3d {.
    constructor, importcpp: "Graphic3d_AspectLine3d(@)",
    header: "Graphic3d_AspectLine3d.hxx".}
proc Type*(this: Graphic3d_AspectLine3d): Aspect_TypeOfLine {.noSideEffect,
    importcpp: "Type", header: "Graphic3d_AspectLine3d.hxx".}
proc SetType*(this: var Graphic3d_AspectLine3d; theType: Aspect_TypeOfLine) {.
    importcpp: "SetType", header: "Graphic3d_AspectLine3d.hxx".}
proc Width*(this: Graphic3d_AspectLine3d): Standard_ShortReal {.noSideEffect,
    importcpp: "Width", header: "Graphic3d_AspectLine3d.hxx".}
proc SetWidth*(this: var Graphic3d_AspectLine3d; theWidth: Standard_Real) {.
    importcpp: "SetWidth", header: "Graphic3d_AspectLine3d.hxx".}
proc SetWidth*(this: var Graphic3d_AspectLine3d; theWidth: Standard_ShortReal) {.
    importcpp: "SetWidth", header: "Graphic3d_AspectLine3d.hxx".}
discard "forward decl of Graphic3d_AspectLine3d"
type
  Handle_Graphic3d_AspectLine3d* = handle[Graphic3d_AspectLine3d]
