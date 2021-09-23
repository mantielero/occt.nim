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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_OStream, ../Standard/Standard_Boolean,
  ../Standard/Standard_IStream, ../Standard/Standard_Integer

discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of GeomTools_UndefinedTypeHandler"
discard "forward decl of GeomTools_UndefinedTypeHandler"
type
  Handle_GeomTools_UndefinedTypeHandler* = handle[GeomTools_UndefinedTypeHandler]
  GeomTools_UndefinedTypeHandler* {.importcpp: "GeomTools_UndefinedTypeHandler", header: "GeomTools_UndefinedTypeHandler.hxx",
                                   bycopy.} = object of Standard_Transient


proc constructGeomTools_UndefinedTypeHandler*(): GeomTools_UndefinedTypeHandler {.
    constructor, importcpp: "GeomTools_UndefinedTypeHandler(@)",
    header: "GeomTools_UndefinedTypeHandler.hxx".}
proc PrintCurve*(this: GeomTools_UndefinedTypeHandler; C: handle[Geom_Curve];
                OS: var Standard_OStream;
                compact: Standard_Boolean = Standard_False) {.noSideEffect,
    importcpp: "PrintCurve", header: "GeomTools_UndefinedTypeHandler.hxx".}
proc ReadCurve*(this: GeomTools_UndefinedTypeHandler; ctype: Standard_Integer;
               IS: var Standard_IStream; C: var handle[Geom_Curve]): var Standard_IStream {.
    noSideEffect, importcpp: "ReadCurve",
    header: "GeomTools_UndefinedTypeHandler.hxx".}
proc PrintCurve2d*(this: GeomTools_UndefinedTypeHandler; C: handle[Geom2d_Curve];
                  OS: var Standard_OStream;
                  compact: Standard_Boolean = Standard_False) {.noSideEffect,
    importcpp: "PrintCurve2d", header: "GeomTools_UndefinedTypeHandler.hxx".}
proc ReadCurve2d*(this: GeomTools_UndefinedTypeHandler; ctype: Standard_Integer;
                 IS: var Standard_IStream; C: var handle[Geom2d_Curve]): var Standard_IStream {.
    noSideEffect, importcpp: "ReadCurve2d",
    header: "GeomTools_UndefinedTypeHandler.hxx".}
proc PrintSurface*(this: GeomTools_UndefinedTypeHandler; S: handle[Geom_Surface];
                  OS: var Standard_OStream;
                  compact: Standard_Boolean = Standard_False) {.noSideEffect,
    importcpp: "PrintSurface", header: "GeomTools_UndefinedTypeHandler.hxx".}
proc ReadSurface*(this: GeomTools_UndefinedTypeHandler; ctype: Standard_Integer;
                 IS: var Standard_IStream; S: var handle[Geom_Surface]): var Standard_IStream {.
    noSideEffect, importcpp: "ReadSurface",
    header: "GeomTools_UndefinedTypeHandler.hxx".}
type
  GeomTools_UndefinedTypeHandlerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "GeomTools_UndefinedTypeHandler::get_type_name(@)",
                              header: "GeomTools_UndefinedTypeHandler.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomTools_UndefinedTypeHandler::get_type_descriptor(@)",
    header: "GeomTools_UndefinedTypeHandler.hxx".}
proc DynamicType*(this: GeomTools_UndefinedTypeHandler): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "GeomTools_UndefinedTypeHandler.hxx".}