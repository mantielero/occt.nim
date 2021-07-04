##  Created on: 1998-03-12
##  Created by: Pierre BARRAS
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColGeom2d/TColGeom2d_HArray1OfCurve, ShapeUpgrade_SplitCurve,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean

discard "forward decl of Geom2d_Curve"
discard "forward decl of ShapeUpgrade_SplitCurve2d"
discard "forward decl of ShapeUpgrade_SplitCurve2d"
type
  Handle_ShapeUpgrade_SplitCurve2d* = handle[ShapeUpgrade_SplitCurve2d]

## ! Splits a 2d curve with a criterion.

type
  ShapeUpgrade_SplitCurve2d* {.importcpp: "ShapeUpgrade_SplitCurve2d",
                              header: "ShapeUpgrade_SplitCurve2d.hxx", bycopy.} = object of ShapeUpgrade_SplitCurve ##
                                                                                                             ## !
                                                                                                             ## Empty
                                                                                                             ## constructor.


proc constructShapeUpgrade_SplitCurve2d*(): ShapeUpgrade_SplitCurve2d {.
    constructor, importcpp: "ShapeUpgrade_SplitCurve2d(@)",
    header: "ShapeUpgrade_SplitCurve2d.hxx".}
proc Init*(this: var ShapeUpgrade_SplitCurve2d; C: handle[Geom2d_Curve]) {.
    importcpp: "Init", header: "ShapeUpgrade_SplitCurve2d.hxx".}
proc Init*(this: var ShapeUpgrade_SplitCurve2d; C: handle[Geom2d_Curve];
          First: Standard_Real; Last: Standard_Real) {.importcpp: "Init",
    header: "ShapeUpgrade_SplitCurve2d.hxx".}
proc Build*(this: var ShapeUpgrade_SplitCurve2d; Segment: Standard_Boolean) {.
    importcpp: "Build", header: "ShapeUpgrade_SplitCurve2d.hxx".}
proc GetCurves*(this: ShapeUpgrade_SplitCurve2d): handle[TColGeom2d_HArray1OfCurve] {.
    noSideEffect, importcpp: "GetCurves", header: "ShapeUpgrade_SplitCurve2d.hxx".}
type
  ShapeUpgrade_SplitCurve2dbase_type* = ShapeUpgrade_SplitCurve

proc get_type_name*(): cstring {.importcpp: "ShapeUpgrade_SplitCurve2d::get_type_name(@)",
                              header: "ShapeUpgrade_SplitCurve2d.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeUpgrade_SplitCurve2d::get_type_descriptor(@)",
    header: "ShapeUpgrade_SplitCurve2d.hxx".}
proc DynamicType*(this: ShapeUpgrade_SplitCurve2d): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeUpgrade_SplitCurve2d.hxx".}