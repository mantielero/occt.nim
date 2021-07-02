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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESGraph_DrawingUnits"
discard "forward decl of IGESGraph_DrawingUnits"
type
  HandleIGESGraphDrawingUnits* = Handle[IGESGraphDrawingUnits]

## ! defines IGESDrawingUnits, Type <406> Form <17>
## ! in package IGESGraph
## !
## ! Specifies the drawing space units as outlined
## ! in the Drawing entity

type
  IGESGraphDrawingUnits* {.importcpp: "IGESGraph_DrawingUnits",
                          header: "IGESGraph_DrawingUnits.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGraphDrawingUnits*(): IGESGraphDrawingUnits {.constructor,
    importcpp: "IGESGraph_DrawingUnits(@)", header: "IGESGraph_DrawingUnits.hxx".}
proc init*(this: var IGESGraphDrawingUnits; nbProps: StandardInteger;
          aFlag: StandardInteger; aUnit: Handle[TCollectionHAsciiString]) {.
    importcpp: "Init", header: "IGESGraph_DrawingUnits.hxx".}
proc nbPropertyValues*(this: IGESGraphDrawingUnits): StandardInteger {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESGraph_DrawingUnits.hxx".}
proc flag*(this: IGESGraphDrawingUnits): StandardInteger {.noSideEffect,
    importcpp: "Flag", header: "IGESGraph_DrawingUnits.hxx".}
proc unit*(this: IGESGraphDrawingUnits): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Unit", header: "IGESGraph_DrawingUnits.hxx".}
proc unitValue*(this: IGESGraphDrawingUnits): StandardReal {.noSideEffect,
    importcpp: "UnitValue", header: "IGESGraph_DrawingUnits.hxx".}
type
  IGESGraphDrawingUnitsbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGraph_DrawingUnits::get_type_name(@)",
                            header: "IGESGraph_DrawingUnits.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGraph_DrawingUnits::get_type_descriptor(@)",
    header: "IGESGraph_DrawingUnits.hxx".}
proc dynamicType*(this: IGESGraphDrawingUnits): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGraph_DrawingUnits.hxx".}

