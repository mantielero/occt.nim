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


proc dump*(s: Handle[GeomSurface]; os: var StandardOStream) {.
    importcpp: "GeomTools::Dump(@)", header: "GeomTools.hxx".}
proc write*(s: Handle[GeomSurface]; os: var StandardOStream) {.
    importcpp: "GeomTools::Write(@)", header: "GeomTools.hxx".}
proc read*(s: var Handle[GeomSurface]; `is`: var StandardIStream) {.
    importcpp: "GeomTools::Read(@)", header: "GeomTools.hxx".}
proc dump*(c: Handle[GeomCurve]; os: var StandardOStream) {.
    importcpp: "GeomTools::Dump(@)", header: "GeomTools.hxx".}
proc write*(c: Handle[GeomCurve]; os: var StandardOStream) {.
    importcpp: "GeomTools::Write(@)", header: "GeomTools.hxx".}
proc read*(c: var Handle[GeomCurve]; `is`: var StandardIStream) {.
    importcpp: "GeomTools::Read(@)", header: "GeomTools.hxx".}
proc dump*(c: Handle[Geom2dCurve]; os: var StandardOStream) {.
    importcpp: "GeomTools::Dump(@)", header: "GeomTools.hxx".}
proc write*(c: Handle[Geom2dCurve]; os: var StandardOStream) {.
    importcpp: "GeomTools::Write(@)", header: "GeomTools.hxx".}
proc read*(c: var Handle[Geom2dCurve]; `is`: var StandardIStream) {.
    importcpp: "GeomTools::Read(@)", header: "GeomTools.hxx".}
proc setUndefinedTypeHandler*(aHandler: Handle[GeomToolsUndefinedTypeHandler]) {.
    importcpp: "GeomTools::SetUndefinedTypeHandler(@)", header: "GeomTools.hxx".}
proc getUndefinedTypeHandler*(): Handle[GeomToolsUndefinedTypeHandler] {.
    importcpp: "GeomTools::GetUndefinedTypeHandler(@)", header: "GeomTools.hxx".}
proc getReal*(`is`: var StandardIStream; theValue: var float) {.
    importcpp: "GeomTools::GetReal(@)", header: "GeomTools.hxx".}
