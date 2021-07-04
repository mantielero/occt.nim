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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../XSControl/XSControl_Vars,
  ../Standard/Standard_CString, ../Standard/Standard_Boolean

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
  Handle_XSDRAW_Vars* = handle[XSDRAW_Vars]

## ! Vars for DRAW session (i.e. DBRep and DrawTrSurf)

type
  XSDRAW_Vars* {.importcpp: "XSDRAW_Vars", header: "XSDRAW_Vars.hxx", bycopy.} = object of XSControl_Vars


proc constructXSDRAW_Vars*(): XSDRAW_Vars {.constructor,
    importcpp: "XSDRAW_Vars(@)", header: "XSDRAW_Vars.hxx".}
proc Set*(this: var XSDRAW_Vars; name: Standard_CString;
         val: handle[Standard_Transient]) {.importcpp: "Set",
    header: "XSDRAW_Vars.hxx".}
proc GetGeom*(this: XSDRAW_Vars; name: var Standard_CString): handle[Geom_Geometry] {.
    noSideEffect, importcpp: "GetGeom", header: "XSDRAW_Vars.hxx".}
proc GetCurve2d*(this: XSDRAW_Vars; name: var Standard_CString): handle[Geom2d_Curve] {.
    noSideEffect, importcpp: "GetCurve2d", header: "XSDRAW_Vars.hxx".}
proc GetCurve*(this: XSDRAW_Vars; name: var Standard_CString): handle[Geom_Curve] {.
    noSideEffect, importcpp: "GetCurve", header: "XSDRAW_Vars.hxx".}
proc GetSurface*(this: XSDRAW_Vars; name: var Standard_CString): handle[Geom_Surface] {.
    noSideEffect, importcpp: "GetSurface", header: "XSDRAW_Vars.hxx".}
proc SetPoint*(this: var XSDRAW_Vars; name: Standard_CString; val: gp_Pnt) {.
    importcpp: "SetPoint", header: "XSDRAW_Vars.hxx".}
proc SetPoint2d*(this: var XSDRAW_Vars; name: Standard_CString; val: gp_Pnt2d) {.
    importcpp: "SetPoint2d", header: "XSDRAW_Vars.hxx".}
proc GetPoint*(this: XSDRAW_Vars; name: var Standard_CString; pnt: var gp_Pnt): Standard_Boolean {.
    noSideEffect, importcpp: "GetPoint", header: "XSDRAW_Vars.hxx".}
proc GetPoint2d*(this: XSDRAW_Vars; name: var Standard_CString; pnt: var gp_Pnt2d): Standard_Boolean {.
    noSideEffect, importcpp: "GetPoint2d", header: "XSDRAW_Vars.hxx".}
proc SetShape*(this: var XSDRAW_Vars; name: Standard_CString; val: TopoDS_Shape) {.
    importcpp: "SetShape", header: "XSDRAW_Vars.hxx".}
proc GetShape*(this: XSDRAW_Vars; name: var Standard_CString): TopoDS_Shape {.
    noSideEffect, importcpp: "GetShape", header: "XSDRAW_Vars.hxx".}
type
  XSDRAW_Varsbase_type* = XSControl_Vars

proc get_type_name*(): cstring {.importcpp: "XSDRAW_Vars::get_type_name(@)",
                              header: "XSDRAW_Vars.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XSDRAW_Vars::get_type_descriptor(@)", header: "XSDRAW_Vars.hxx".}
proc DynamicType*(this: XSDRAW_Vars): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "XSDRAW_Vars.hxx".}