##  Created on: 1998-09-07
##  Created by: Denis PASCAL
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
  ../Draw/Draw_ColorKind, ../Standard/Standard_Boolean

discard "forward decl of Draw_Drawable3D"
discard "forward decl of TDF_Label"
discard "forward decl of TDataXtd_Constraint"
discard "forward decl of TopoDS_Shape"
discard "forward decl of DDataStd_DrawDriver"
discard "forward decl of DDataStd_DrawDriver"
type
  Handle_DDataStd_DrawDriver* = handle[DDataStd_DrawDriver]

## ! Root class of drivers to build draw variables from TDF_Label.
## ! Priority rule to display standard attributes is :
## ! * 1 Constraint
## ! * 2 Object
## ! * 3 Datum      (Point,Axis,Plane)
## ! * 4 Geometry
## ! * 5 NamedShape

type
  DDataStd_DrawDriver* {.importcpp: "DDataStd_DrawDriver",
                        header: "DDataStd_DrawDriver.hxx", bycopy.} = object of Standard_Transient ##
                                                                                            ## !
                                                                                            ## access
                                                                                            ## to
                                                                                            ## the
                                                                                            ## current
                                                                                            ## DrawDriver
                                                                                            ##
                                                                                            ## !
                                                                                            ## ================================


proc Set*(DD: handle[DDataStd_DrawDriver]) {.
    importcpp: "DDataStd_DrawDriver::Set(@)", header: "DDataStd_DrawDriver.hxx".}
proc Get*(): handle[DDataStd_DrawDriver] {.importcpp: "DDataStd_DrawDriver::Get(@)",
                                        header: "DDataStd_DrawDriver.hxx".}
proc constructDDataStd_DrawDriver*(): DDataStd_DrawDriver {.constructor,
    importcpp: "DDataStd_DrawDriver(@)", header: "DDataStd_DrawDriver.hxx".}
proc Drawable*(this: DDataStd_DrawDriver; L: TDF_Label): handle[Draw_Drawable3D] {.
    noSideEffect, importcpp: "Drawable", header: "DDataStd_DrawDriver.hxx".}
proc DrawableConstraint*(this: DDataStd_DrawDriver; C: handle[TDataXtd_Constraint]): handle[
    Draw_Drawable3D] {.noSideEffect, importcpp: "DrawableConstraint",
                      header: "DDataStd_DrawDriver.hxx".}
proc DrawableShape*(this: DDataStd_DrawDriver; L: TDF_Label; color: Draw_ColorKind;
                   current: Standard_Boolean = Standard_True): handle[
    Draw_Drawable3D] {.noSideEffect, importcpp: "DrawableShape",
                      header: "DDataStd_DrawDriver.hxx".}
proc DrawableShape*(s: TopoDS_Shape; color: Draw_ColorKind): handle[Draw_Drawable3D] {.
    importcpp: "DDataStd_DrawDriver::DrawableShape(@)",
    header: "DDataStd_DrawDriver.hxx".}
type
  DDataStd_DrawDriverbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "DDataStd_DrawDriver::get_type_name(@)",
                              header: "DDataStd_DrawDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DDataStd_DrawDriver::get_type_descriptor(@)",
    header: "DDataStd_DrawDriver.hxx".}
proc DynamicType*(this: DDataStd_DrawDriver): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "DDataStd_DrawDriver.hxx".}