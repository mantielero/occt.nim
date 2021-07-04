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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_XYZ,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Boolean

discard "forward decl of IGESBasic_SubfigureDef"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESGeom_Point"
discard "forward decl of IGESGeom_Point"
type
  Handle_IGESGeom_Point* = handle[IGESGeom_Point]

## ! defines IGESPoint, Type <116> Form <0>
## ! in package IGESGeom

type
  IGESGeom_Point* {.importcpp: "IGESGeom_Point", header: "IGESGeom_Point.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGeom_Point*(): IGESGeom_Point {.constructor,
    importcpp: "IGESGeom_Point(@)", header: "IGESGeom_Point.hxx".}
proc Init*(this: var IGESGeom_Point; aPoint: gp_XYZ;
          aSymbol: handle[IGESBasic_SubfigureDef]) {.importcpp: "Init",
    header: "IGESGeom_Point.hxx".}
proc Value*(this: IGESGeom_Point): gp_Pnt {.noSideEffect, importcpp: "Value",
                                        header: "IGESGeom_Point.hxx".}
proc TransformedValue*(this: IGESGeom_Point): gp_Pnt {.noSideEffect,
    importcpp: "TransformedValue", header: "IGESGeom_Point.hxx".}
proc HasDisplaySymbol*(this: IGESGeom_Point): Standard_Boolean {.noSideEffect,
    importcpp: "HasDisplaySymbol", header: "IGESGeom_Point.hxx".}
proc DisplaySymbol*(this: IGESGeom_Point): handle[IGESBasic_SubfigureDef] {.
    noSideEffect, importcpp: "DisplaySymbol", header: "IGESGeom_Point.hxx".}
type
  IGESGeom_Pointbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGeom_Point::get_type_name(@)",
                              header: "IGESGeom_Point.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGeom_Point::get_type_descriptor(@)",
    header: "IGESGeom_Point.hxx".}
proc DynamicType*(this: IGESGeom_Point): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_Point.hxx".}