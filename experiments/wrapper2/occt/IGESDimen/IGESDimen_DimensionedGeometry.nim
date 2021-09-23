##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( Arun MENON )
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
  ../IGESData/IGESData_HArray1OfIGESEntity, ../IGESData/IGESData_IGESEntity

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESDimen_DimensionedGeometry"
discard "forward decl of IGESDimen_DimensionedGeometry"
type
  Handle_IGESDimen_DimensionedGeometry* = handle[IGESDimen_DimensionedGeometry]

## ! Defines IGES Dimensioned Geometry, Type <402> Form <13>,
## ! in package IGESDimen
## ! This entity has been replaced by the new form of  Dimensioned
## ! Geometry Associativity Entity (Type 402, Form 21) and should no
## ! longer be used by preprocessors.

type
  IGESDimen_DimensionedGeometry* {.importcpp: "IGESDimen_DimensionedGeometry",
                                  header: "IGESDimen_DimensionedGeometry.hxx",
                                  bycopy.} = object of IGESData_IGESEntity


proc constructIGESDimen_DimensionedGeometry*(): IGESDimen_DimensionedGeometry {.
    constructor, importcpp: "IGESDimen_DimensionedGeometry(@)",
    header: "IGESDimen_DimensionedGeometry.hxx".}
proc Init*(this: var IGESDimen_DimensionedGeometry; nbDims: Standard_Integer;
          aDimension: handle[IGESData_IGESEntity];
          entities: handle[IGESData_HArray1OfIGESEntity]) {.importcpp: "Init",
    header: "IGESDimen_DimensionedGeometry.hxx".}
proc NbDimensions*(this: IGESDimen_DimensionedGeometry): Standard_Integer {.
    noSideEffect, importcpp: "NbDimensions",
    header: "IGESDimen_DimensionedGeometry.hxx".}
proc NbGeometryEntities*(this: IGESDimen_DimensionedGeometry): Standard_Integer {.
    noSideEffect, importcpp: "NbGeometryEntities",
    header: "IGESDimen_DimensionedGeometry.hxx".}
proc DimensionEntity*(this: IGESDimen_DimensionedGeometry): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "DimensionEntity",
                          header: "IGESDimen_DimensionedGeometry.hxx".}
proc GeometryEntity*(this: IGESDimen_DimensionedGeometry; Index: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "GeometryEntity",
                          header: "IGESDimen_DimensionedGeometry.hxx".}
type
  IGESDimen_DimensionedGeometrybase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDimen_DimensionedGeometry::get_type_name(@)",
                              header: "IGESDimen_DimensionedGeometry.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDimen_DimensionedGeometry::get_type_descriptor(@)",
    header: "IGESDimen_DimensionedGeometry.hxx".}
proc DynamicType*(this: IGESDimen_DimensionedGeometry): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDimen_DimensionedGeometry.hxx".}