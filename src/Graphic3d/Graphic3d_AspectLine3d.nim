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

## ! Creates and updates a group of attributes for 3d line primitives.
## ! This group contains the color, the type of line, and its thickness.

type
  Graphic3dAspectLine3d* {.importcpp: "Graphic3d_AspectLine3d",
                          header: "Graphic3d_AspectLine3d.hxx", bycopy.} = object of Graphic3dAspects ##
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

  Graphic3dAspectLine3dbaseType* = Graphic3dAspects

proc getTypeName*(): cstring {.importcpp: "Graphic3d_AspectLine3d::get_type_name(@)",
                            header: "Graphic3d_AspectLine3d.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_AspectLine3d::get_type_descriptor(@)",
    header: "Graphic3d_AspectLine3d.hxx".}
proc dynamicType*(this: Graphic3dAspectLine3d): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_AspectLine3d.hxx".}
proc constructGraphic3dAspectLine3d*(): Graphic3dAspectLine3d {.constructor,
    importcpp: "Graphic3d_AspectLine3d(@)", header: "Graphic3d_AspectLine3d.hxx".}
proc constructGraphic3dAspectLine3d*(theColor: QuantityColor;
                                    theType: AspectTypeOfLine; theWidth: cfloat): Graphic3dAspectLine3d {.
    constructor, importcpp: "Graphic3d_AspectLine3d(@)",
    header: "Graphic3d_AspectLine3d.hxx".}
proc `type`*(this: Graphic3dAspectLine3d): AspectTypeOfLine {.noSideEffect,
    importcpp: "Type", header: "Graphic3d_AspectLine3d.hxx".}
proc setType*(this: var Graphic3dAspectLine3d; theType: AspectTypeOfLine) {.
    importcpp: "SetType", header: "Graphic3d_AspectLine3d.hxx".}
proc width*(this: Graphic3dAspectLine3d): StandardShortReal {.noSideEffect,
    importcpp: "Width", header: "Graphic3d_AspectLine3d.hxx".}
proc setWidth*(this: var Graphic3dAspectLine3d; theWidth: cfloat) {.
    importcpp: "SetWidth", header: "Graphic3d_AspectLine3d.hxx".}
proc setWidth*(this: var Graphic3dAspectLine3d; theWidth: StandardShortReal) {.
    importcpp: "SetWidth", header: "Graphic3d_AspectLine3d.hxx".}
discard "forward decl of Graphic3d_AspectLine3d"
type
  HandleC1C1* = Handle[Graphic3dAspectLine3d]


























