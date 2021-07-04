##  Created on: 1993-04-26
##  Created by: Jean-Louis Frenkel
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Aspect/Aspect_TypeOfLine, ../Graphic3d/Graphic3d_AspectLine3d,
  Prs3d_BasicAspect, ../Quantity/Quantity_Color

## ! A framework for defining how a line will be displayed
## ! in a presentation. Aspects of line display include
## ! width, color and type of line.
## ! The definition set by this class is then passed to the
## ! attribute manager Prs3d_Drawer.
## ! Any object which requires a value for line aspect as
## ! an argument may then be given the attribute manager
## ! as a substitute argument in the form of a field such as myDrawer for example.

type
  Prs3d_LineAspect* {.importcpp: "Prs3d_LineAspect",
                     header: "Prs3d_LineAspect.hxx", bycopy.} = object of Prs3d_BasicAspect ##
                                                                                     ## !
                                                                                     ## Constructs
                                                                                     ## a
                                                                                     ## framework
                                                                                     ## for
                                                                                     ## line
                                                                                     ## aspect
                                                                                     ## defined
                                                                                     ## by
                                                                                     ##
                                                                                     ## !
                                                                                     ## -
                                                                                     ## the
                                                                                     ## color
                                                                                     ## aColor
                                                                                     ##
                                                                                     ## !
                                                                                     ## -
                                                                                     ## the
                                                                                     ## type
                                                                                     ## of
                                                                                     ## line
                                                                                     ## aType
                                                                                     ## and
                                                                                     ##
                                                                                     ## !
                                                                                     ## -
                                                                                     ## the
                                                                                     ## line
                                                                                     ## thickness
                                                                                     ## aWidth.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Type
                                                                                     ## of
                                                                                     ## line
                                                                                     ## refers
                                                                                     ## to
                                                                                     ## whether
                                                                                     ## the
                                                                                     ## line
                                                                                     ## is
                                                                                     ## solid
                                                                                     ## or
                                                                                     ## dotted,
                                                                                     ## for
                                                                                     ## example.

  Prs3d_LineAspectbase_type* = Prs3d_BasicAspect

proc get_type_name*(): cstring {.importcpp: "Prs3d_LineAspect::get_type_name(@)",
                              header: "Prs3d_LineAspect.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Prs3d_LineAspect::get_type_descriptor(@)",
    header: "Prs3d_LineAspect.hxx".}
proc DynamicType*(this: Prs3d_LineAspect): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Prs3d_LineAspect.hxx".}
proc constructPrs3d_LineAspect*(theColor: Quantity_Color;
                               theType: Aspect_TypeOfLine; theWidth: Standard_Real): Prs3d_LineAspect {.
    constructor, importcpp: "Prs3d_LineAspect(@)", header: "Prs3d_LineAspect.hxx".}
proc constructPrs3d_LineAspect*(theAspect: handle[Graphic3d_AspectLine3d]): Prs3d_LineAspect {.
    constructor, importcpp: "Prs3d_LineAspect(@)", header: "Prs3d_LineAspect.hxx".}
proc SetColor*(this: var Prs3d_LineAspect; theColor: Quantity_Color) {.
    importcpp: "SetColor", header: "Prs3d_LineAspect.hxx".}
proc SetTypeOfLine*(this: var Prs3d_LineAspect; theType: Aspect_TypeOfLine) {.
    importcpp: "SetTypeOfLine", header: "Prs3d_LineAspect.hxx".}
proc SetWidth*(this: var Prs3d_LineAspect; theWidth: Standard_Real) {.
    importcpp: "SetWidth", header: "Prs3d_LineAspect.hxx".}
proc Aspect*(this: Prs3d_LineAspect): handle[Graphic3d_AspectLine3d] {.noSideEffect,
    importcpp: "Aspect", header: "Prs3d_LineAspect.hxx".}
proc SetAspect*(this: var Prs3d_LineAspect;
               theAspect: handle[Graphic3d_AspectLine3d]) {.
    importcpp: "SetAspect", header: "Prs3d_LineAspect.hxx".}
proc DumpJson*(this: Prs3d_LineAspect; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Prs3d_LineAspect.hxx".}
discard "forward decl of Prs3d_LineAspect"
type
  Handle_Prs3d_LineAspect* = handle[Prs3d_LineAspect]
