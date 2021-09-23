##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( TCD )
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../gp/gp_XY, ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Boolean

discard "forward decl of gp_XY"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of IGESGraph_UniformRectGrid"
discard "forward decl of IGESGraph_UniformRectGrid"
type
  Handle_IGESGraph_UniformRectGrid* = handle[IGESGraph_UniformRectGrid]

## ! defines IGESUniformRectGrid, Type <406> Form <22>
## ! in package IGESGraph
## !
## ! Stores sufficient information for the creation of
## ! a uniform rectangular grid within a drawing

type
  IGESGraph_UniformRectGrid* {.importcpp: "IGESGraph_UniformRectGrid",
                              header: "IGESGraph_UniformRectGrid.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGraph_UniformRectGrid*(): IGESGraph_UniformRectGrid {.
    constructor, importcpp: "IGESGraph_UniformRectGrid(@)",
    header: "IGESGraph_UniformRectGrid.hxx".}
proc Init*(this: var IGESGraph_UniformRectGrid; nbProps: Standard_Integer;
          finite: Standard_Integer; line: Standard_Integer;
          weighted: Standard_Integer; aGridPoint: gp_XY; aGridSpacing: gp_XY;
          pointsX: Standard_Integer; pointsY: Standard_Integer) {.importcpp: "Init",
    header: "IGESGraph_UniformRectGrid.hxx".}
proc NbPropertyValues*(this: IGESGraph_UniformRectGrid): Standard_Integer {.
    noSideEffect, importcpp: "NbPropertyValues",
    header: "IGESGraph_UniformRectGrid.hxx".}
proc IsFinite*(this: IGESGraph_UniformRectGrid): Standard_Boolean {.noSideEffect,
    importcpp: "IsFinite", header: "IGESGraph_UniformRectGrid.hxx".}
proc IsLine*(this: IGESGraph_UniformRectGrid): Standard_Boolean {.noSideEffect,
    importcpp: "IsLine", header: "IGESGraph_UniformRectGrid.hxx".}
proc IsWeighted*(this: IGESGraph_UniformRectGrid): Standard_Boolean {.noSideEffect,
    importcpp: "IsWeighted", header: "IGESGraph_UniformRectGrid.hxx".}
proc GridPoint*(this: IGESGraph_UniformRectGrid): gp_Pnt2d {.noSideEffect,
    importcpp: "GridPoint", header: "IGESGraph_UniformRectGrid.hxx".}
proc GridSpacing*(this: IGESGraph_UniformRectGrid): gp_Vec2d {.noSideEffect,
    importcpp: "GridSpacing", header: "IGESGraph_UniformRectGrid.hxx".}
proc NbPointsX*(this: IGESGraph_UniformRectGrid): Standard_Integer {.noSideEffect,
    importcpp: "NbPointsX", header: "IGESGraph_UniformRectGrid.hxx".}
proc NbPointsY*(this: IGESGraph_UniformRectGrid): Standard_Integer {.noSideEffect,
    importcpp: "NbPointsY", header: "IGESGraph_UniformRectGrid.hxx".}
type
  IGESGraph_UniformRectGridbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGraph_UniformRectGrid::get_type_name(@)",
                              header: "IGESGraph_UniformRectGrid.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGraph_UniformRectGrid::get_type_descriptor(@)",
    header: "IGESGraph_UniformRectGrid.hxx".}
proc DynamicType*(this: IGESGraph_UniformRectGrid): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESGraph_UniformRectGrid.hxx".}