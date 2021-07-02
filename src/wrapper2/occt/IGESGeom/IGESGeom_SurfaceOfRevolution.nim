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

discard "forward decl of IGESGeom_Line"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESGeom_SurfaceOfRevolution"
discard "forward decl of IGESGeom_SurfaceOfRevolution"
type
  HandleIGESGeomSurfaceOfRevolution* = Handle[IGESGeomSurfaceOfRevolution]

## ! defines IGESSurfaceOfRevolution, Type <120> Form <0>
## ! in package IGESGeom
## ! A surface of revolution is defined by an axis of rotation
## ! a generatrix, and start and terminate rotation angles. The
## ! surface is created by rotating the generatrix about the axis
## ! of rotation through the start and terminate rotation angles.

type
  IGESGeomSurfaceOfRevolution* {.importcpp: "IGESGeom_SurfaceOfRevolution",
                                header: "IGESGeom_SurfaceOfRevolution.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGeomSurfaceOfRevolution*(): IGESGeomSurfaceOfRevolution {.
    constructor, importcpp: "IGESGeom_SurfaceOfRevolution(@)",
    header: "IGESGeom_SurfaceOfRevolution.hxx".}
proc init*(this: var IGESGeomSurfaceOfRevolution; anAxis: Handle[IGESGeomLine];
          aGeneratrix: Handle[IGESDataIGESEntity]; aStartAngle: StandardReal;
          anEndAngle: StandardReal) {.importcpp: "Init",
                                    header: "IGESGeom_SurfaceOfRevolution.hxx".}
proc axisOfRevolution*(this: IGESGeomSurfaceOfRevolution): Handle[IGESGeomLine] {.
    noSideEffect, importcpp: "AxisOfRevolution",
    header: "IGESGeom_SurfaceOfRevolution.hxx".}
proc generatrix*(this: IGESGeomSurfaceOfRevolution): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "Generatrix",
    header: "IGESGeom_SurfaceOfRevolution.hxx".}
proc startAngle*(this: IGESGeomSurfaceOfRevolution): StandardReal {.noSideEffect,
    importcpp: "StartAngle", header: "IGESGeom_SurfaceOfRevolution.hxx".}
proc endAngle*(this: IGESGeomSurfaceOfRevolution): StandardReal {.noSideEffect,
    importcpp: "EndAngle", header: "IGESGeom_SurfaceOfRevolution.hxx".}
type
  IGESGeomSurfaceOfRevolutionbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGeom_SurfaceOfRevolution::get_type_name(@)",
                            header: "IGESGeom_SurfaceOfRevolution.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGeom_SurfaceOfRevolution::get_type_descriptor(@)",
    header: "IGESGeom_SurfaceOfRevolution.hxx".}
proc dynamicType*(this: IGESGeomSurfaceOfRevolution): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESGeom_SurfaceOfRevolution.hxx".}

