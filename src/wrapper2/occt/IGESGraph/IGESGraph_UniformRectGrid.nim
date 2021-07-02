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

discard "forward decl of gp_XY"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of IGESGraph_UniformRectGrid"
discard "forward decl of IGESGraph_UniformRectGrid"
type
  HandleIGESGraphUniformRectGrid* = Handle[IGESGraphUniformRectGrid]

## ! defines IGESUniformRectGrid, Type <406> Form <22>
## ! in package IGESGraph
## !
## ! Stores sufficient information for the creation of
## ! a uniform rectangular grid within a drawing

type
  IGESGraphUniformRectGrid* {.importcpp: "IGESGraph_UniformRectGrid",
                             header: "IGESGraph_UniformRectGrid.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGraphUniformRectGrid*(): IGESGraphUniformRectGrid {.constructor,
    importcpp: "IGESGraph_UniformRectGrid(@)",
    header: "IGESGraph_UniformRectGrid.hxx".}
proc init*(this: var IGESGraphUniformRectGrid; nbProps: StandardInteger;
          finite: StandardInteger; line: StandardInteger; weighted: StandardInteger;
          aGridPoint: GpXY; aGridSpacing: GpXY; pointsX: StandardInteger;
          pointsY: StandardInteger) {.importcpp: "Init",
                                    header: "IGESGraph_UniformRectGrid.hxx".}
proc nbPropertyValues*(this: IGESGraphUniformRectGrid): StandardInteger {.
    noSideEffect, importcpp: "NbPropertyValues",
    header: "IGESGraph_UniformRectGrid.hxx".}
proc isFinite*(this: IGESGraphUniformRectGrid): StandardBoolean {.noSideEffect,
    importcpp: "IsFinite", header: "IGESGraph_UniformRectGrid.hxx".}
proc isLine*(this: IGESGraphUniformRectGrid): StandardBoolean {.noSideEffect,
    importcpp: "IsLine", header: "IGESGraph_UniformRectGrid.hxx".}
proc isWeighted*(this: IGESGraphUniformRectGrid): StandardBoolean {.noSideEffect,
    importcpp: "IsWeighted", header: "IGESGraph_UniformRectGrid.hxx".}
proc gridPoint*(this: IGESGraphUniformRectGrid): GpPnt2d {.noSideEffect,
    importcpp: "GridPoint", header: "IGESGraph_UniformRectGrid.hxx".}
proc gridSpacing*(this: IGESGraphUniformRectGrid): GpVec2d {.noSideEffect,
    importcpp: "GridSpacing", header: "IGESGraph_UniformRectGrid.hxx".}
proc nbPointsX*(this: IGESGraphUniformRectGrid): StandardInteger {.noSideEffect,
    importcpp: "NbPointsX", header: "IGESGraph_UniformRectGrid.hxx".}
proc nbPointsY*(this: IGESGraphUniformRectGrid): StandardInteger {.noSideEffect,
    importcpp: "NbPointsY", header: "IGESGraph_UniformRectGrid.hxx".}
type
  IGESGraphUniformRectGridbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGraph_UniformRectGrid::get_type_name(@)",
                            header: "IGESGraph_UniformRectGrid.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGraph_UniformRectGrid::get_type_descriptor(@)",
    header: "IGESGraph_UniformRectGrid.hxx".}
proc dynamicType*(this: IGESGraphUniformRectGrid): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESGraph_UniformRectGrid.hxx".}

