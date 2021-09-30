##  Created on: 1998-07-22
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of Standard_Transient"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of TopoDS_Shape"
discard "forward decl of XSDRAW_Vars"
discard "forward decl of XSDRAW_Vars"
type
  HandleC1C1* = Handle[XSDRAW_Vars]

## ! Vars for DRAW session (i.e. DBRep and DrawTrSurf)

type
  XSDRAW_Vars* {.importcpp: "XSDRAW_Vars", header: "XSDRAW_Vars.hxx", bycopy.} = object of XSControlVars


proc constructXSDRAW_Vars*(): XSDRAW_Vars {.constructor,
    importcpp: "XSDRAW_Vars(@)", header: "XSDRAW_Vars.hxx".}
proc set*(this: var XSDRAW_Vars; name: StandardCString; val: Handle[StandardTransient]) {.
    importcpp: "Set", header: "XSDRAW_Vars.hxx".}
proc getGeom*(this: XSDRAW_Vars; name: var StandardCString): Handle[GeomGeometry] {.
    noSideEffect, importcpp: "GetGeom", header: "XSDRAW_Vars.hxx".}
proc getCurve2d*(this: XSDRAW_Vars; name: var StandardCString): Handle[Geom2dCurve] {.
    noSideEffect, importcpp: "GetCurve2d", header: "XSDRAW_Vars.hxx".}
proc getCurve*(this: XSDRAW_Vars; name: var StandardCString): Handle[GeomCurve] {.
    noSideEffect, importcpp: "GetCurve", header: "XSDRAW_Vars.hxx".}
proc getSurface*(this: XSDRAW_Vars; name: var StandardCString): Handle[GeomSurface] {.
    noSideEffect, importcpp: "GetSurface", header: "XSDRAW_Vars.hxx".}
proc setPoint*(this: var XSDRAW_Vars; name: StandardCString; val: Pnt) {.
    importcpp: "SetPoint", header: "XSDRAW_Vars.hxx".}
proc setPoint2d*(this: var XSDRAW_Vars; name: StandardCString; val: Pnt2d) {.
    importcpp: "SetPoint2d", header: "XSDRAW_Vars.hxx".}
proc getPoint*(this: XSDRAW_Vars; name: var StandardCString; pnt: var Pnt): bool {.
    noSideEffect, importcpp: "GetPoint", header: "XSDRAW_Vars.hxx".}
proc getPoint2d*(this: XSDRAW_Vars; name: var StandardCString; pnt: var Pnt2d): bool {.
    noSideEffect, importcpp: "GetPoint2d", header: "XSDRAW_Vars.hxx".}
proc setShape*(this: var XSDRAW_Vars; name: StandardCString; val: TopoDS_Shape) {.
    importcpp: "SetShape", header: "XSDRAW_Vars.hxx".}
proc getShape*(this: XSDRAW_Vars; name: var StandardCString): TopoDS_Shape {.
    noSideEffect, importcpp: "GetShape", header: "XSDRAW_Vars.hxx".}
type
  XSDRAW_VarsbaseType* = XSControlVars

proc getTypeName*(): cstring {.importcpp: "XSDRAW_Vars::get_type_name(@)",
                            header: "XSDRAW_Vars.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XSDRAW_Vars::get_type_descriptor(@)", header: "XSDRAW_Vars.hxx".}
proc dynamicType*(this: XSDRAW_Vars): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XSDRAW_Vars.hxx".}

























