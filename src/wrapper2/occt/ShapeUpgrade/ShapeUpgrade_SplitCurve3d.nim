##  Created on: 1998-03-12
##  Created by: Roman LYGIN
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
  ../TColGeom/TColGeom_HArray1OfCurve, ShapeUpgrade_SplitCurve,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean

discard "forward decl of Geom_Curve"
discard "forward decl of ShapeUpgrade_SplitCurve3d"
discard "forward decl of ShapeUpgrade_SplitCurve3d"
type
  Handle_ShapeUpgrade_SplitCurve3d* = handle[ShapeUpgrade_SplitCurve3d]

## ! Splits a 3d curve with a criterion.

type
  ShapeUpgrade_SplitCurve3d* {.importcpp: "ShapeUpgrade_SplitCurve3d",
                              header: "ShapeUpgrade_SplitCurve3d.hxx", bycopy.} = object of ShapeUpgrade_SplitCurve ##
                                                                                                             ## !
                                                                                                             ## Empty
                                                                                                             ## constructor.


proc constructShapeUpgrade_SplitCurve3d*(): ShapeUpgrade_SplitCurve3d {.
    constructor, importcpp: "ShapeUpgrade_SplitCurve3d(@)",
    header: "ShapeUpgrade_SplitCurve3d.hxx".}
proc Init*(this: var ShapeUpgrade_SplitCurve3d; C: handle[Geom_Curve]) {.
    importcpp: "Init", header: "ShapeUpgrade_SplitCurve3d.hxx".}
proc Init*(this: var ShapeUpgrade_SplitCurve3d; C: handle[Geom_Curve];
          First: Standard_Real; Last: Standard_Real) {.importcpp: "Init",
    header: "ShapeUpgrade_SplitCurve3d.hxx".}
proc Build*(this: var ShapeUpgrade_SplitCurve3d; Segment: Standard_Boolean) {.
    importcpp: "Build", header: "ShapeUpgrade_SplitCurve3d.hxx".}
proc GetCurves*(this: ShapeUpgrade_SplitCurve3d): handle[TColGeom_HArray1OfCurve] {.
    noSideEffect, importcpp: "GetCurves", header: "ShapeUpgrade_SplitCurve3d.hxx".}
type
  ShapeUpgrade_SplitCurve3dbase_type* = ShapeUpgrade_SplitCurve

proc get_type_name*(): cstring {.importcpp: "ShapeUpgrade_SplitCurve3d::get_type_name(@)",
                              header: "ShapeUpgrade_SplitCurve3d.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeUpgrade_SplitCurve3d::get_type_descriptor(@)",
    header: "ShapeUpgrade_SplitCurve3d.hxx".}
proc DynamicType*(this: ShapeUpgrade_SplitCurve3d): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeUpgrade_SplitCurve3d.hxx".}