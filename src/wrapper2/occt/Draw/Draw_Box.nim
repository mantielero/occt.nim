##  Created on: 1995-03-10
##  Created by: Remi LEQUETTE
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Box"
discard "forward decl of Draw_Box"
type
  HandleDrawBox* = Handle[DrawBox]

## ! a 3d box

type
  DrawBox* {.importcpp: "Draw_Box", header: "Draw_Box.hxx", bycopy.} = object of DrawDrawable3D ##
                                                                                      ## !
                                                                                      ## Constructor
                                                                                      ##
                                                                                      ## !
                                                                                      ## Converts
                                                                                      ## the
                                                                                      ## point
                                                                                      ## (theX,
                                                                                      ## theY,
                                                                                      ## theZ)
                                                                                      ## in
                                                                                      ## local
                                                                                      ## coordinate
                                                                                      ## system
                                                                                      ## to
                                                                                      ## WCS.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Oriented
                                                                                      ## bounding
                                                                                      ## box
    ## ! Color value


proc constructDrawBox*(theOBB: BndOBB; theColor: DrawColor): DrawBox {.constructor,
    importcpp: "Draw_Box(@)", header: "Draw_Box.hxx".}
proc drawOn*(this: DrawBox; theDis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "Draw_Box.hxx".}
type
  DrawBoxbaseType* = DrawDrawable3D

proc getTypeName*(): cstring {.importcpp: "Draw_Box::get_type_name(@)",
                            header: "Draw_Box.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Draw_Box::get_type_descriptor(@)", header: "Draw_Box.hxx".}
proc dynamicType*(this: DrawBox): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Box.hxx".}

