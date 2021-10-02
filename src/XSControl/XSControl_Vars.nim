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
  HandleXSControlVars* = Handle[XSControlVars]

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
  XSControlVars* {.importcpp: "XSControl_Vars", header: "XSControl_Vars.hxx", bycopy.} = object of StandardTransient


proc constructXSControlVars*(): XSControlVars {.constructor,
    importcpp: "XSControl_Vars(@)", header: "XSControl_Vars.hxx".}
proc set*(this: var XSControlVars; name: StandardCString;
         val: Handle[StandardTransient]) {.importcpp: "Set",
    header: "XSControl_Vars.hxx".}
proc get*(this: XSControlVars; name: var StandardCString): Handle[StandardTransient] {.
    noSideEffect, importcpp: "Get", header: "XSControl_Vars.hxx".}
proc getGeom*(this: XSControlVars; name: var StandardCString): Handle[GeomGeometry] {.
    noSideEffect, importcpp: "GetGeom", header: "XSControl_Vars.hxx".}
proc getCurve2d*(this: XSControlVars; name: var StandardCString): Handle[Geom2dCurve] {.
    noSideEffect, importcpp: "GetCurve2d", header: "XSControl_Vars.hxx".}
proc getCurve*(this: XSControlVars; name: var StandardCString): Handle[GeomCurve] {.
    noSideEffect, importcpp: "GetCurve", header: "XSControl_Vars.hxx".}
proc getSurface*(this: XSControlVars; name: var StandardCString): Handle[GeomSurface] {.
    noSideEffect, importcpp: "GetSurface", header: "XSControl_Vars.hxx".}
proc setPoint*(this: var XSControlVars; name: StandardCString; val: Pnt) {.
    importcpp: "SetPoint", header: "XSControl_Vars.hxx".}
proc setPoint2d*(this: var XSControlVars; name: StandardCString; val: Pnt2d) {.
    importcpp: "SetPoint2d", header: "XSControl_Vars.hxx".}
proc getPoint*(this: XSControlVars; name: var StandardCString; pnt: var Pnt): bool {.
    noSideEffect, importcpp: "GetPoint", header: "XSControl_Vars.hxx".}
proc getPoint2d*(this: XSControlVars; name: var StandardCString; pnt: var Pnt2d): bool {.
    noSideEffect, importcpp: "GetPoint2d", header: "XSControl_Vars.hxx".}
proc setShape*(this: var XSControlVars; name: StandardCString; val: TopoDS_Shape) {.
    importcpp: "SetShape", header: "XSControl_Vars.hxx".}
proc getShape*(this: XSControlVars; name: var StandardCString): TopoDS_Shape {.
    noSideEffect, importcpp: "GetShape", header: "XSControl_Vars.hxx".}
type
  XSControlVarsbaseType* = StandardTransient
#[ 
proc getTypeName*(): cstring {.importcpp: "XSControl_Vars::get_type_name(@)",
                            header: "XSControl_Vars.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XSControl_Vars::get_type_descriptor(@)",
    header: "XSControl_Vars.hxx".}
proc dynamicType*(this: XSControlVars): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XSControl_Vars.hxx".}

























 ]#