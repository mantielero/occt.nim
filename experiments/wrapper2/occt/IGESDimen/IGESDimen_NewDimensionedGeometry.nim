##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen (Anand NATRAJAN)
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
  ../Standard/Standard_Real, ../IGESData/IGESData_HArray1OfIGESEntity,
  ../TColStd/TColStd_HArray1OfInteger, ../TColgp/TColgp_HArray1OfXYZ,
  ../IGESData/IGESData_IGESEntity

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESDimen_NewDimensionedGeometry"
discard "forward decl of IGESDimen_NewDimensionedGeometry"
type
  Handle_IGESDimen_NewDimensionedGeometry* = handle[
      IGESDimen_NewDimensionedGeometry]

## ! defines New Dimensioned Geometry, Type <402>, Form <21>
## ! in package IGESDimen
## ! Links a dimension entity with the geometry entities it
## ! is dimensioning, so that later, in the receiving
## ! database, the dimension can be automatically recalculated
## ! and redrawn should the geometry be changed.

type
  IGESDimen_NewDimensionedGeometry* {.importcpp: "IGESDimen_NewDimensionedGeometry", header: "IGESDimen_NewDimensionedGeometry.hxx",
                                     bycopy.} = object of IGESData_IGESEntity


proc constructIGESDimen_NewDimensionedGeometry*(): IGESDimen_NewDimensionedGeometry {.
    constructor, importcpp: "IGESDimen_NewDimensionedGeometry(@)",
    header: "IGESDimen_NewDimensionedGeometry.hxx".}
proc Init*(this: var IGESDimen_NewDimensionedGeometry; nbDimens: Standard_Integer;
          aDimen: handle[IGESData_IGESEntity]; anOrientation: Standard_Integer;
          anAngle: Standard_Real;
          allEntities: handle[IGESData_HArray1OfIGESEntity];
          allLocations: handle[TColStd_HArray1OfInteger];
          allPoints: handle[TColgp_HArray1OfXYZ]) {.importcpp: "Init",
    header: "IGESDimen_NewDimensionedGeometry.hxx".}
proc NbDimensions*(this: IGESDimen_NewDimensionedGeometry): Standard_Integer {.
    noSideEffect, importcpp: "NbDimensions",
    header: "IGESDimen_NewDimensionedGeometry.hxx".}
proc NbGeometries*(this: IGESDimen_NewDimensionedGeometry): Standard_Integer {.
    noSideEffect, importcpp: "NbGeometries",
    header: "IGESDimen_NewDimensionedGeometry.hxx".}
proc DimensionEntity*(this: IGESDimen_NewDimensionedGeometry): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "DimensionEntity",
                          header: "IGESDimen_NewDimensionedGeometry.hxx".}
proc DimensionOrientationFlag*(this: IGESDimen_NewDimensionedGeometry): Standard_Integer {.
    noSideEffect, importcpp: "DimensionOrientationFlag",
    header: "IGESDimen_NewDimensionedGeometry.hxx".}
proc AngleValue*(this: IGESDimen_NewDimensionedGeometry): Standard_Real {.
    noSideEffect, importcpp: "AngleValue",
    header: "IGESDimen_NewDimensionedGeometry.hxx".}
proc GeometryEntity*(this: IGESDimen_NewDimensionedGeometry;
                    Index: Standard_Integer): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "GeometryEntity",
    header: "IGESDimen_NewDimensionedGeometry.hxx".}
proc DimensionLocationFlag*(this: IGESDimen_NewDimensionedGeometry;
                           Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "DimensionLocationFlag",
    header: "IGESDimen_NewDimensionedGeometry.hxx".}
proc Point*(this: IGESDimen_NewDimensionedGeometry; Index: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "Point",
    header: "IGESDimen_NewDimensionedGeometry.hxx".}
proc TransformedPoint*(this: IGESDimen_NewDimensionedGeometry;
                      Index: Standard_Integer): gp_Pnt {.noSideEffect,
    importcpp: "TransformedPoint", header: "IGESDimen_NewDimensionedGeometry.hxx".}
type
  IGESDimen_NewDimensionedGeometrybase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDimen_NewDimensionedGeometry::get_type_name(@)",
                              header: "IGESDimen_NewDimensionedGeometry.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDimen_NewDimensionedGeometry::get_type_descriptor(@)",
    header: "IGESDimen_NewDimensionedGeometry.hxx".}
proc DynamicType*(this: IGESDimen_NewDimensionedGeometry): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDimen_NewDimensionedGeometry.hxx".}