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

discard "forward decl of Draw_Drawable3D"
discard "forward decl of TDF_Label"
discard "forward decl of TDataXtd_Constraint"
discard "forward decl of TopoDS_Shape"
discard "forward decl of DDataStd_DrawDriver"
discard "forward decl of DDataStd_DrawDriver"
type
  HandleDDataStdDrawDriver* = Handle[DDataStdDrawDriver]

## ! Root class of drivers to build draw variables from TDF_Label.
## ! Priority rule to display standard attributes is :
## ! * 1 Constraint
## ! * 2 Object
## ! * 3 Datum      (Point,Axis,Plane)
## ! * 4 Geometry
## ! * 5 NamedShape

type
  DDataStdDrawDriver* {.importcpp: "DDataStd_DrawDriver",
                       header: "DDataStd_DrawDriver.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## access
                                                                                          ## to
                                                                                          ## the
                                                                                          ## current
                                                                                          ## DrawDriver
                                                                                          ##
                                                                                          ## !
                                                                                          ## ================================


proc set*(dd: Handle[DDataStdDrawDriver]) {.
    importcpp: "DDataStd_DrawDriver::Set(@)", header: "DDataStd_DrawDriver.hxx".}
proc get*(): Handle[DDataStdDrawDriver] {.importcpp: "DDataStd_DrawDriver::Get(@)",
                                       header: "DDataStd_DrawDriver.hxx".}
proc constructDDataStdDrawDriver*(): DDataStdDrawDriver {.constructor,
    importcpp: "DDataStd_DrawDriver(@)", header: "DDataStd_DrawDriver.hxx".}
proc drawable*(this: DDataStdDrawDriver; L: TDF_Label): Handle[DrawDrawable3D] {.
    noSideEffect, importcpp: "Drawable", header: "DDataStd_DrawDriver.hxx".}
proc drawableConstraint*(this: DDataStdDrawDriver; c: Handle[TDataXtdConstraint]): Handle[
    DrawDrawable3D] {.noSideEffect, importcpp: "DrawableConstraint",
                     header: "DDataStd_DrawDriver.hxx".}
proc drawableShape*(this: DDataStdDrawDriver; L: TDF_Label; color: DrawColorKind;
                   current: bool = true): Handle[DrawDrawable3D] {.noSideEffect,
    importcpp: "DrawableShape", header: "DDataStd_DrawDriver.hxx".}
proc drawableShape*(s: TopoDS_Shape; color: DrawColorKind): Handle[DrawDrawable3D] {.
    importcpp: "DDataStd_DrawDriver::DrawableShape(@)",
    header: "DDataStd_DrawDriver.hxx".}
type
  DDataStdDrawDriverbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "DDataStd_DrawDriver::get_type_name(@)",
                            header: "DDataStd_DrawDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DDataStd_DrawDriver::get_type_descriptor(@)",
    header: "DDataStd_DrawDriver.hxx".}
proc dynamicType*(this: DDataStdDrawDriver): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DDataStd_DrawDriver.hxx".}
