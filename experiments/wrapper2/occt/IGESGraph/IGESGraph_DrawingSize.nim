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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../IGESData/IGESData_IGESEntity

discard "forward decl of IGESGraph_DrawingSize"
discard "forward decl of IGESGraph_DrawingSize"
type
  Handle_IGESGraph_DrawingSize* = handle[IGESGraph_DrawingSize]

## ! defines IGESDrawingSize, Type <406> Form <16>
## ! in package IGESGraph
## !
## ! Specifies the drawing size in drawing units. The
## ! origin of the drawing is defined to be (0,0) in
## ! drawing space

type
  IGESGraph_DrawingSize* {.importcpp: "IGESGraph_DrawingSize",
                          header: "IGESGraph_DrawingSize.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGraph_DrawingSize*(): IGESGraph_DrawingSize {.constructor,
    importcpp: "IGESGraph_DrawingSize(@)", header: "IGESGraph_DrawingSize.hxx".}
proc Init*(this: var IGESGraph_DrawingSize; nbProps: Standard_Integer;
          aXSize: Standard_Real; aYSize: Standard_Real) {.importcpp: "Init",
    header: "IGESGraph_DrawingSize.hxx".}
proc NbPropertyValues*(this: IGESGraph_DrawingSize): Standard_Integer {.
    noSideEffect, importcpp: "NbPropertyValues",
    header: "IGESGraph_DrawingSize.hxx".}
proc XSize*(this: IGESGraph_DrawingSize): Standard_Real {.noSideEffect,
    importcpp: "XSize", header: "IGESGraph_DrawingSize.hxx".}
proc YSize*(this: IGESGraph_DrawingSize): Standard_Real {.noSideEffect,
    importcpp: "YSize", header: "IGESGraph_DrawingSize.hxx".}
type
  IGESGraph_DrawingSizebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGraph_DrawingSize::get_type_name(@)",
                              header: "IGESGraph_DrawingSize.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGraph_DrawingSize::get_type_descriptor(@)",
    header: "IGESGraph_DrawingSize.hxx".}
proc DynamicType*(this: IGESGraph_DrawingSize): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESGraph_DrawingSize.hxx".}