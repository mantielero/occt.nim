##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( Kiran )
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../IGESData/IGESData_IGESEntity

discard "forward decl of IGESGeom_Line"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESGeom_SurfaceOfRevolution"
discard "forward decl of IGESGeom_SurfaceOfRevolution"
type
  Handle_IGESGeom_SurfaceOfRevolution* = handle[IGESGeom_SurfaceOfRevolution]

## ! defines IGESSurfaceOfRevolution, Type <120> Form <0>
## ! in package IGESGeom
## ! A surface of revolution is defined by an axis of rotation
## ! a generatrix, and start and terminate rotation angles. The
## ! surface is created by rotating the generatrix about the axis
## ! of rotation through the start and terminate rotation angles.

type
  IGESGeom_SurfaceOfRevolution* {.importcpp: "IGESGeom_SurfaceOfRevolution",
                                 header: "IGESGeom_SurfaceOfRevolution.hxx",
                                 bycopy.} = object of IGESData_IGESEntity


proc constructIGESGeom_SurfaceOfRevolution*(): IGESGeom_SurfaceOfRevolution {.
    constructor, importcpp: "IGESGeom_SurfaceOfRevolution(@)",
    header: "IGESGeom_SurfaceOfRevolution.hxx".}
proc Init*(this: var IGESGeom_SurfaceOfRevolution; anAxis: handle[IGESGeom_Line];
          aGeneratrix: handle[IGESData_IGESEntity]; aStartAngle: Standard_Real;
          anEndAngle: Standard_Real) {.importcpp: "Init",
                                     header: "IGESGeom_SurfaceOfRevolution.hxx".}
proc AxisOfRevolution*(this: IGESGeom_SurfaceOfRevolution): handle[IGESGeom_Line] {.
    noSideEffect, importcpp: "AxisOfRevolution",
    header: "IGESGeom_SurfaceOfRevolution.hxx".}
proc Generatrix*(this: IGESGeom_SurfaceOfRevolution): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "Generatrix",
    header: "IGESGeom_SurfaceOfRevolution.hxx".}
proc StartAngle*(this: IGESGeom_SurfaceOfRevolution): Standard_Real {.noSideEffect,
    importcpp: "StartAngle", header: "IGESGeom_SurfaceOfRevolution.hxx".}
proc EndAngle*(this: IGESGeom_SurfaceOfRevolution): Standard_Real {.noSideEffect,
    importcpp: "EndAngle", header: "IGESGeom_SurfaceOfRevolution.hxx".}
type
  IGESGeom_SurfaceOfRevolutionbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGeom_SurfaceOfRevolution::get_type_name(@)",
                              header: "IGESGeom_SurfaceOfRevolution.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGeom_SurfaceOfRevolution::get_type_descriptor(@)",
    header: "IGESGeom_SurfaceOfRevolution.hxx".}
proc DynamicType*(this: IGESGeom_SurfaceOfRevolution): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESGeom_SurfaceOfRevolution.hxx".}