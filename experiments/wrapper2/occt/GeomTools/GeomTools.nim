##  Created on: 1992-08-28
##  Created by: Remi LEQUETTE
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_OStream,
  ../Standard/Standard_IStream, ../Standard/Standard_Real

discard "forward decl of Geom_Surface"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of GeomTools_UndefinedTypeHandler"
discard "forward decl of GeomTools_UndefinedTypeHandler"
discard "forward decl of GeomTools_SurfaceSet"
discard "forward decl of GeomTools_CurveSet"
discard "forward decl of GeomTools_Curve2dSet"
type
  GeomTools* {.importcpp: "GeomTools", header: "GeomTools.hxx", bycopy.} = object ## ! A set of Curves from
                                                                          ## Geom2d.
                                                                          ## ! Dumps the
                                                                          ## surface on the
                                                                          ## stream.


proc Dump*(S: handle[Geom_Surface]; OS: var Standard_OStream) {.
    importcpp: "GeomTools::Dump(@)", header: "GeomTools.hxx".}
proc Write*(S: handle[Geom_Surface]; OS: var Standard_OStream) {.
    importcpp: "GeomTools::Write(@)", header: "GeomTools.hxx".}
proc Read*(S: var handle[Geom_Surface]; IS: var Standard_IStream) {.
    importcpp: "GeomTools::Read(@)", header: "GeomTools.hxx".}
proc Dump*(C: handle[Geom_Curve]; OS: var Standard_OStream) {.
    importcpp: "GeomTools::Dump(@)", header: "GeomTools.hxx".}
proc Write*(C: handle[Geom_Curve]; OS: var Standard_OStream) {.
    importcpp: "GeomTools::Write(@)", header: "GeomTools.hxx".}
proc Read*(C: var handle[Geom_Curve]; IS: var Standard_IStream) {.
    importcpp: "GeomTools::Read(@)", header: "GeomTools.hxx".}
proc Dump*(C: handle[Geom2d_Curve]; OS: var Standard_OStream) {.
    importcpp: "GeomTools::Dump(@)", header: "GeomTools.hxx".}
proc Write*(C: handle[Geom2d_Curve]; OS: var Standard_OStream) {.
    importcpp: "GeomTools::Write(@)", header: "GeomTools.hxx".}
proc Read*(C: var handle[Geom2d_Curve]; IS: var Standard_IStream) {.
    importcpp: "GeomTools::Read(@)", header: "GeomTools.hxx".}
proc SetUndefinedTypeHandler*(aHandler: handle[GeomTools_UndefinedTypeHandler]) {.
    importcpp: "GeomTools::SetUndefinedTypeHandler(@)", header: "GeomTools.hxx".}
proc GetUndefinedTypeHandler*(): handle[GeomTools_UndefinedTypeHandler] {.
    importcpp: "GeomTools::GetUndefinedTypeHandler(@)", header: "GeomTools.hxx".}
proc GetReal*(IS: var Standard_IStream; theValue: var Standard_Real) {.
    importcpp: "GeomTools::GetReal(@)", header: "GeomTools.hxx".}