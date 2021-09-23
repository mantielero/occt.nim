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
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Real

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESGraph_DrawingUnits"
discard "forward decl of IGESGraph_DrawingUnits"
type
  Handle_IGESGraph_DrawingUnits* = handle[IGESGraph_DrawingUnits]

## ! defines IGESDrawingUnits, Type <406> Form <17>
## ! in package IGESGraph
## !
## ! Specifies the drawing space units as outlined
## ! in the Drawing entity

type
  IGESGraph_DrawingUnits* {.importcpp: "IGESGraph_DrawingUnits",
                           header: "IGESGraph_DrawingUnits.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGraph_DrawingUnits*(): IGESGraph_DrawingUnits {.constructor,
    importcpp: "IGESGraph_DrawingUnits(@)", header: "IGESGraph_DrawingUnits.hxx".}
proc Init*(this: var IGESGraph_DrawingUnits; nbProps: Standard_Integer;
          aFlag: Standard_Integer; aUnit: handle[TCollection_HAsciiString]) {.
    importcpp: "Init", header: "IGESGraph_DrawingUnits.hxx".}
proc NbPropertyValues*(this: IGESGraph_DrawingUnits): Standard_Integer {.
    noSideEffect, importcpp: "NbPropertyValues",
    header: "IGESGraph_DrawingUnits.hxx".}
proc Flag*(this: IGESGraph_DrawingUnits): Standard_Integer {.noSideEffect,
    importcpp: "Flag", header: "IGESGraph_DrawingUnits.hxx".}
proc Unit*(this: IGESGraph_DrawingUnits): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Unit", header: "IGESGraph_DrawingUnits.hxx".}
proc UnitValue*(this: IGESGraph_DrawingUnits): Standard_Real {.noSideEffect,
    importcpp: "UnitValue", header: "IGESGraph_DrawingUnits.hxx".}
type
  IGESGraph_DrawingUnitsbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGraph_DrawingUnits::get_type_name(@)",
                              header: "IGESGraph_DrawingUnits.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGraph_DrawingUnits::get_type_descriptor(@)",
    header: "IGESGraph_DrawingUnits.hxx".}
proc DynamicType*(this: IGESGraph_DrawingUnits): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESGraph_DrawingUnits.hxx".}