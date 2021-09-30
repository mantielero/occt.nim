##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( TCD )
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

discard "forward decl of IGESGraph_DrawingSize"
discard "forward decl of IGESGraph_DrawingSize"
type
  HandleC1C1* = Handle[IGESGraphDrawingSize]

## ! defines IGESDrawingSize, Type <406> Form <16>
## ! in package IGESGraph
## !
## ! Specifies the drawing size in drawing units. The
## ! origin of the drawing is defined to be (0,0) in
## ! drawing space

type
  IGESGraphDrawingSize* {.importcpp: "IGESGraph_DrawingSize",
                         header: "IGESGraph_DrawingSize.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGraphDrawingSize*(): IGESGraphDrawingSize {.constructor,
    importcpp: "IGESGraph_DrawingSize(@)", header: "IGESGraph_DrawingSize.hxx".}
proc init*(this: var IGESGraphDrawingSize; nbProps: cint; aXSize: cfloat; aYSize: cfloat) {.
    importcpp: "Init", header: "IGESGraph_DrawingSize.hxx".}
proc nbPropertyValues*(this: IGESGraphDrawingSize): cint {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESGraph_DrawingSize.hxx".}
proc xSize*(this: IGESGraphDrawingSize): cfloat {.noSideEffect, importcpp: "XSize",
    header: "IGESGraph_DrawingSize.hxx".}
proc ySize*(this: IGESGraphDrawingSize): cfloat {.noSideEffect, importcpp: "YSize",
    header: "IGESGraph_DrawingSize.hxx".}
type
  IGESGraphDrawingSizebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGraph_DrawingSize::get_type_name(@)",
                            header: "IGESGraph_DrawingSize.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGraph_DrawingSize::get_type_descriptor(@)",
    header: "IGESGraph_DrawingSize.hxx".}
proc dynamicType*(this: IGESGraphDrawingSize): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGraph_DrawingSize.hxx".}

























