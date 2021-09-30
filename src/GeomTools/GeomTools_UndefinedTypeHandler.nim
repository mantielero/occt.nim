##  Created on: 1999-10-29
##  Created by: Pavel DURANDIN
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of GeomTools_UndefinedTypeHandler"
discard "forward decl of GeomTools_UndefinedTypeHandler"
type
  HandleC1C1* = Handle[GeomToolsUndefinedTypeHandler]
  GeomToolsUndefinedTypeHandler* {.importcpp: "GeomTools_UndefinedTypeHandler",
                                  header: "GeomTools_UndefinedTypeHandler.hxx",
                                  bycopy.} = object of StandardTransient


proc constructGeomToolsUndefinedTypeHandler*(): GeomToolsUndefinedTypeHandler {.
    constructor, importcpp: "GeomTools_UndefinedTypeHandler(@)",
    header: "GeomTools_UndefinedTypeHandler.hxx".}
proc printCurve*(this: GeomToolsUndefinedTypeHandler; c: Handle[GeomCurve];
                os: var StandardOStream; compact: StandardBoolean = false) {.
    noSideEffect, importcpp: "PrintCurve",
    header: "GeomTools_UndefinedTypeHandler.hxx".}
proc readCurve*(this: GeomToolsUndefinedTypeHandler; ctype: int;
               `is`: var StandardIStream; c: var Handle[GeomCurve]): var StandardIStream {.
    noSideEffect, importcpp: "ReadCurve",
    header: "GeomTools_UndefinedTypeHandler.hxx".}
proc printCurve2d*(this: GeomToolsUndefinedTypeHandler; c: Handle[Geom2dCurve];
                  os: var StandardOStream; compact: StandardBoolean = false) {.
    noSideEffect, importcpp: "PrintCurve2d",
    header: "GeomTools_UndefinedTypeHandler.hxx".}
proc readCurve2d*(this: GeomToolsUndefinedTypeHandler; ctype: int;
                 `is`: var StandardIStream; c: var Handle[Geom2dCurve]): var StandardIStream {.
    noSideEffect, importcpp: "ReadCurve2d",
    header: "GeomTools_UndefinedTypeHandler.hxx".}
proc printSurface*(this: GeomToolsUndefinedTypeHandler; s: Handle[GeomSurface];
                  os: var StandardOStream; compact: StandardBoolean = false) {.
    noSideEffect, importcpp: "PrintSurface",
    header: "GeomTools_UndefinedTypeHandler.hxx".}
proc readSurface*(this: GeomToolsUndefinedTypeHandler; ctype: int;
                 `is`: var StandardIStream; s: var Handle[GeomSurface]): var StandardIStream {.
    noSideEffect, importcpp: "ReadSurface",
    header: "GeomTools_UndefinedTypeHandler.hxx".}
type
  GeomToolsUndefinedTypeHandlerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "GeomTools_UndefinedTypeHandler::get_type_name(@)",
                            header: "GeomTools_UndefinedTypeHandler.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomTools_UndefinedTypeHandler::get_type_descriptor(@)",
    header: "GeomTools_UndefinedTypeHandler.hxx".}
proc dynamicType*(this: GeomToolsUndefinedTypeHandler): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "GeomTools_UndefinedTypeHandler.hxx".}