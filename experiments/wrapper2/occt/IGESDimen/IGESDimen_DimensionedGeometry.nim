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

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESDimen_DimensionedGeometry"
discard "forward decl of IGESDimen_DimensionedGeometry"
type
  HandleIGESDimenDimensionedGeometry* = Handle[IGESDimenDimensionedGeometry]

## ! Defines IGES Dimensioned Geometry, Type <402> Form <13>,
## ! in package IGESDimen
## ! This entity has been replaced by the new form of  Dimensioned
## ! Geometry Associativity Entity (Type 402, Form 21) and should no
## ! longer be used by preprocessors.

type
  IGESDimenDimensionedGeometry* {.importcpp: "IGESDimen_DimensionedGeometry",
                                 header: "IGESDimen_DimensionedGeometry.hxx",
                                 bycopy.} = object of IGESDataIGESEntity


proc constructIGESDimenDimensionedGeometry*(): IGESDimenDimensionedGeometry {.
    constructor, importcpp: "IGESDimen_DimensionedGeometry(@)",
    header: "IGESDimen_DimensionedGeometry.hxx".}
proc init*(this: var IGESDimenDimensionedGeometry; nbDims: int;
          aDimension: Handle[IGESDataIGESEntity];
          entities: Handle[IGESDataHArray1OfIGESEntity]) {.importcpp: "Init",
    header: "IGESDimen_DimensionedGeometry.hxx".}
proc nbDimensions*(this: IGESDimenDimensionedGeometry): int {.noSideEffect,
    importcpp: "NbDimensions", header: "IGESDimen_DimensionedGeometry.hxx".}
proc nbGeometryEntities*(this: IGESDimenDimensionedGeometry): int {.noSideEffect,
    importcpp: "NbGeometryEntities", header: "IGESDimen_DimensionedGeometry.hxx".}
proc dimensionEntity*(this: IGESDimenDimensionedGeometry): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "DimensionEntity",
                         header: "IGESDimen_DimensionedGeometry.hxx".}
proc geometryEntity*(this: IGESDimenDimensionedGeometry; index: int): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "GeometryEntity",
                         header: "IGESDimen_DimensionedGeometry.hxx".}
type
  IGESDimenDimensionedGeometrybaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDimen_DimensionedGeometry::get_type_name(@)",
                            header: "IGESDimen_DimensionedGeometry.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_DimensionedGeometry::get_type_descriptor(@)",
    header: "IGESDimen_DimensionedGeometry.hxx".}
proc dynamicType*(this: IGESDimenDimensionedGeometry): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDimen_DimensionedGeometry.hxx".}
