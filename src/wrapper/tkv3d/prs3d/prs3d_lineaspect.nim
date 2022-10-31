import prs3d_types
import ../tkv3d/graphic3d/graphic3d_types
import ../../tkservice/aspect/aspect_types
import ../../tkernel/standard/standard_types
import ../../tkernel/quantity/quantity_types



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

## ! A framework for defining how a line will be displayed
## ! in a presentation. Aspects of line display include
## ! width, color and type of line.
## ! The definition set by this class is then passed to the
## ! attribute manager Prs3d_Drawer.
## ! Any object which requires a value for line aspect as
## ! an argument may then be given the attribute manager
## ! as a substitute argument in the form of a field such as myDrawer for example.



proc newPrs3dLineAspect*(theColor: QuantityColor; theType: AspectTypeOfLine;
                        theWidth: cfloat): Prs3dLineAspect {.cdecl, constructor,
    importcpp: "Prs3d_LineAspect(@)", header: "Prs3d_LineAspect.hxx".}
proc newPrs3dLineAspect*(theAspect: Handle[Graphic3dAspectLine3d]): Prs3dLineAspect {.
    cdecl, constructor, importcpp: "Prs3d_LineAspect(@)", header: "Prs3d_LineAspect.hxx".}
proc setColor*(this: var Prs3dLineAspect; theColor: QuantityColor) {.cdecl,
    importcpp: "SetColor", header: "Prs3d_LineAspect.hxx".}
proc setTypeOfLine*(this: var Prs3dLineAspect; theType: AspectTypeOfLine) {.cdecl,
    importcpp: "SetTypeOfLine", header: "Prs3d_LineAspect.hxx".}
proc setWidth*(this: var Prs3dLineAspect; theWidth: cfloat) {.cdecl,
    importcpp: "SetWidth", header: "Prs3d_LineAspect.hxx".}
proc aspect*(this: Prs3dLineAspect): Handle[Graphic3dAspectLine3d] {.noSideEffect,
    cdecl, importcpp: "Aspect", header: "Prs3d_LineAspect.hxx".}
proc setAspect*(this: var Prs3dLineAspect; theAspect: Handle[Graphic3dAspectLine3d]) {.
    cdecl, importcpp: "SetAspect", header: "Prs3d_LineAspect.hxx".}
proc dumpJson*(this: Prs3dLineAspect; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Prs3d_LineAspect.hxx".}


