##  Created on: 1997-01-21
##  Created by: Prestataire Christiane ARMAND
##  Copyright (c) 1997-1999 Matra Datavision
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
  AIS_InteractiveObject, AIS_KindOfInteractive

discard "forward decl of Geom_Line"
discard "forward decl of Geom_Point"
type
  AIS_Line* {.importcpp: "AIS_Line", header: "AIS_Line.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                              ## !
                                                                                              ## Initializes
                                                                                              ## the
                                                                                              ## line
                                                                                              ## aLine.

  AIS_Linebase_type* = AIS_InteractiveObject

proc get_type_name*(): cstring {.importcpp: "AIS_Line::get_type_name(@)",
                              header: "AIS_Line.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_Line::get_type_descriptor(@)", header: "AIS_Line.hxx".}
proc DynamicType*(this: AIS_Line): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_Line.hxx".}
proc constructAIS_Line*(aLine: handle[Geom_Line]): AIS_Line {.constructor,
    importcpp: "AIS_Line(@)", header: "AIS_Line.hxx".}
proc constructAIS_Line*(aStartPoint: handle[Geom_Point];
                       aEndPoint: handle[Geom_Point]): AIS_Line {.constructor,
    importcpp: "AIS_Line(@)", header: "AIS_Line.hxx".}
proc Signature*(this: AIS_Line): Standard_Integer {.noSideEffect,
    importcpp: "Signature", header: "AIS_Line.hxx".}
proc Type*(this: AIS_Line): AIS_KindOfInteractive {.noSideEffect, importcpp: "Type",
    header: "AIS_Line.hxx".}
proc Line*(this: AIS_Line): handle[Geom_Line] {.noSideEffect, importcpp: "Line",
    header: "AIS_Line.hxx".}
proc Points*(this: AIS_Line; thePStart: var handle[Geom_Point];
            thePEnd: var handle[Geom_Point]) {.noSideEffect, importcpp: "Points",
    header: "AIS_Line.hxx".}
proc SetLine*(this: var AIS_Line; theLine: handle[Geom_Line]) {.importcpp: "SetLine",
    header: "AIS_Line.hxx".}
proc SetPoints*(this: var AIS_Line; thePStart: handle[Geom_Point];
               thePEnd: handle[Geom_Point]) {.importcpp: "SetPoints",
    header: "AIS_Line.hxx".}
proc SetColor*(this: var AIS_Line; aColor: Quantity_Color) {.importcpp: "SetColor",
    header: "AIS_Line.hxx".}
proc SetWidth*(this: var AIS_Line; aValue: Standard_Real) {.importcpp: "SetWidth",
    header: "AIS_Line.hxx".}
proc UnsetColor*(this: var AIS_Line) {.importcpp: "UnsetColor", header: "AIS_Line.hxx".}
proc UnsetWidth*(this: var AIS_Line) {.importcpp: "UnsetWidth", header: "AIS_Line.hxx".}
discard "forward decl of AIS_Line"
type
  Handle_AIS_Line* = handle[AIS_Line]
