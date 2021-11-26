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

discard "forward decl of IGESBasic_SubfigureDef"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESGeom_Point"
discard "forward decl of IGESGeom_Point"
type
  HandleC1C1* = Handle[IGESGeomPoint]

## ! defines IGESPoint, Type <116> Form <0>
## ! in package IGESGeom

type
  IGESGeomPoint* {.importcpp: "IGESGeom_Point", header: "IGESGeom_Point.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGeomPoint*(): IGESGeomPoint {.constructor,
    importcpp: "IGESGeom_Point(@)", header: "IGESGeom_Point.hxx".}
proc init*(this: var IGESGeomPoint; aPoint: Xyz;
          aSymbol: Handle[IGESBasicSubfigureDef]) {.importcpp: "Init",
    header: "IGESGeom_Point.hxx".}
proc value*(this: IGESGeomPoint): Pnt {.noSideEffect, importcpp: "Value",
                                    header: "IGESGeom_Point.hxx".}
proc transformedValue*(this: IGESGeomPoint): Pnt {.noSideEffect,
    importcpp: "TransformedValue", header: "IGESGeom_Point.hxx".}
proc hasDisplaySymbol*(this: IGESGeomPoint): bool {.noSideEffect,
    importcpp: "HasDisplaySymbol", header: "IGESGeom_Point.hxx".}
proc displaySymbol*(this: IGESGeomPoint): Handle[IGESBasicSubfigureDef] {.
    noSideEffect, importcpp: "DisplaySymbol", header: "IGESGeom_Point.hxx".}
type
  IGESGeomPointbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGeom_Point::get_type_name(@)",
                            header: "IGESGeom_Point.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGeom_Point::get_type_descriptor(@)",
    header: "IGESGeom_Point.hxx".}
proc dynamicType*(this: IGESGeomPoint): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_Point.hxx".}

























