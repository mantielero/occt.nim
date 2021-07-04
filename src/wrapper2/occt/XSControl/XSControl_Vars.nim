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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_CString, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient, ../NCollection/NCollection_DataMap,
  ../TCollection/TCollection_AsciiString

discard "forward decl of Geom_Geometry"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of TopoDS_Shape"
discard "forward decl of XSControl_Vars"
discard "forward decl of XSControl_Vars"
type
  Handle_XSControl_Vars* = handle[XSControl_Vars]

## ! Defines a receptacle for externally defined variables, each
## ! one has a name
## !
## ! I.E. a WorkSession for XSTEP is generally used inside a
## ! context, which brings variables, especially shapes and
## ! geometries. For instance DRAW or an application engine
## !
## ! This class provides a common form for this. It also provides
## ! a default implementation (locally recorded variables in a
## ! dictionary), but which is aimed to be redefined

type
  XSControl_Vars* {.importcpp: "XSControl_Vars", header: "XSControl_Vars.hxx", bycopy.} = object of Standard_Transient


proc constructXSControl_Vars*(): XSControl_Vars {.constructor,
    importcpp: "XSControl_Vars(@)", header: "XSControl_Vars.hxx".}
proc Set*(this: var XSControl_Vars; name: Standard_CString;
         val: handle[Standard_Transient]) {.importcpp: "Set",
    header: "XSControl_Vars.hxx".}
proc Get*(this: XSControl_Vars; name: var Standard_CString): handle[Standard_Transient] {.
    noSideEffect, importcpp: "Get", header: "XSControl_Vars.hxx".}
proc GetGeom*(this: XSControl_Vars; name: var Standard_CString): handle[Geom_Geometry] {.
    noSideEffect, importcpp: "GetGeom", header: "XSControl_Vars.hxx".}
proc GetCurve2d*(this: XSControl_Vars; name: var Standard_CString): handle[
    Geom2d_Curve] {.noSideEffect, importcpp: "GetCurve2d",
                   header: "XSControl_Vars.hxx".}
proc GetCurve*(this: XSControl_Vars; name: var Standard_CString): handle[Geom_Curve] {.
    noSideEffect, importcpp: "GetCurve", header: "XSControl_Vars.hxx".}
proc GetSurface*(this: XSControl_Vars; name: var Standard_CString): handle[
    Geom_Surface] {.noSideEffect, importcpp: "GetSurface",
                   header: "XSControl_Vars.hxx".}
proc SetPoint*(this: var XSControl_Vars; name: Standard_CString; val: gp_Pnt) {.
    importcpp: "SetPoint", header: "XSControl_Vars.hxx".}
proc SetPoint2d*(this: var XSControl_Vars; name: Standard_CString; val: gp_Pnt2d) {.
    importcpp: "SetPoint2d", header: "XSControl_Vars.hxx".}
proc GetPoint*(this: XSControl_Vars; name: var Standard_CString; pnt: var gp_Pnt): Standard_Boolean {.
    noSideEffect, importcpp: "GetPoint", header: "XSControl_Vars.hxx".}
proc GetPoint2d*(this: XSControl_Vars; name: var Standard_CString; pnt: var gp_Pnt2d): Standard_Boolean {.
    noSideEffect, importcpp: "GetPoint2d", header: "XSControl_Vars.hxx".}
proc SetShape*(this: var XSControl_Vars; name: Standard_CString; val: TopoDS_Shape) {.
    importcpp: "SetShape", header: "XSControl_Vars.hxx".}
proc GetShape*(this: XSControl_Vars; name: var Standard_CString): TopoDS_Shape {.
    noSideEffect, importcpp: "GetShape", header: "XSControl_Vars.hxx".}
type
  XSControl_Varsbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "XSControl_Vars::get_type_name(@)",
                              header: "XSControl_Vars.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XSControl_Vars::get_type_descriptor(@)",
    header: "XSControl_Vars.hxx".}
proc DynamicType*(this: XSControl_Vars): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "XSControl_Vars.hxx".}