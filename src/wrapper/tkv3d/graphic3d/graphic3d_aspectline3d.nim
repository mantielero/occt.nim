import ../../tkservice/aspect/aspect_types
import ../../tkernel/standard/standard_types
import graphic3d_types
import ../../tkernel/quantity/quantity_types



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



proc newGraphic3dAspectLine3d*(): Graphic3dAspectLine3d {.cdecl, constructor,
    importcpp: "Graphic3d_AspectLine3d(@)", header: "Graphic3d_AspectLine3d.hxx".}
proc newGraphic3dAspectLine3d*(theColor: QuantityColor; theType: AspectTypeOfLine;
                              theWidth: cfloat): Graphic3dAspectLine3d {.cdecl,
    constructor, importcpp: "Graphic3d_AspectLine3d(@)", header: "Graphic3d_AspectLine3d.hxx".}
proc `type`*(this: Graphic3dAspectLine3d): AspectTypeOfLine {.noSideEffect, cdecl,
    importcpp: "Type", header: "Graphic3d_AspectLine3d.hxx".}
proc setType*(this: var Graphic3dAspectLine3d; theType: AspectTypeOfLine) {.cdecl,
    importcpp: "SetType", header: "Graphic3d_AspectLine3d.hxx".}
proc width*(this: Graphic3dAspectLine3d): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "Width", header: "Graphic3d_AspectLine3d.hxx".}
proc setWidth*(this: var Graphic3dAspectLine3d; theWidth: cfloat) {.cdecl,
    importcpp: "SetWidth", header: "Graphic3d_AspectLine3d.hxx".}
#proc setWidth*(this: var Graphic3dAspectLine3d; theWidth: StandardShortReal) {.cdecl,
#    importcpp: "SetWidth", header: "Graphic3d_AspectLine3d.hxx".}


