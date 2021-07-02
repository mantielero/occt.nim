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

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESDimen_NewDimensionedGeometry"
discard "forward decl of IGESDimen_NewDimensionedGeometry"
type
  HandleIGESDimenNewDimensionedGeometry* = Handle[IGESDimenNewDimensionedGeometry]

## ! defines New Dimensioned Geometry, Type <402>, Form <21>
## ! in package IGESDimen
## ! Links a dimension entity with the geometry entities it
## ! is dimensioning, so that later, in the receiving
## ! database, the dimension can be automatically recalculated
## ! and redrawn should the geometry be changed.

type
  IGESDimenNewDimensionedGeometry* {.importcpp: "IGESDimen_NewDimensionedGeometry", header: "IGESDimen_NewDimensionedGeometry.hxx",
                                    bycopy.} = object of IGESDataIGESEntity


proc constructIGESDimenNewDimensionedGeometry*(): IGESDimenNewDimensionedGeometry {.
    constructor, importcpp: "IGESDimen_NewDimensionedGeometry(@)",
    header: "IGESDimen_NewDimensionedGeometry.hxx".}
proc init*(this: var IGESDimenNewDimensionedGeometry; nbDimens: StandardInteger;
          aDimen: Handle[IGESDataIGESEntity]; anOrientation: StandardInteger;
          anAngle: StandardReal; allEntities: Handle[IGESDataHArray1OfIGESEntity];
          allLocations: Handle[TColStdHArray1OfInteger];
          allPoints: Handle[TColgpHArray1OfXYZ]) {.importcpp: "Init",
    header: "IGESDimen_NewDimensionedGeometry.hxx".}
proc nbDimensions*(this: IGESDimenNewDimensionedGeometry): StandardInteger {.
    noSideEffect, importcpp: "NbDimensions",
    header: "IGESDimen_NewDimensionedGeometry.hxx".}
proc nbGeometries*(this: IGESDimenNewDimensionedGeometry): StandardInteger {.
    noSideEffect, importcpp: "NbGeometries",
    header: "IGESDimen_NewDimensionedGeometry.hxx".}
proc dimensionEntity*(this: IGESDimenNewDimensionedGeometry): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "DimensionEntity",
                         header: "IGESDimen_NewDimensionedGeometry.hxx".}
proc dimensionOrientationFlag*(this: IGESDimenNewDimensionedGeometry): StandardInteger {.
    noSideEffect, importcpp: "DimensionOrientationFlag",
    header: "IGESDimen_NewDimensionedGeometry.hxx".}
proc angleValue*(this: IGESDimenNewDimensionedGeometry): StandardReal {.
    noSideEffect, importcpp: "AngleValue",
    header: "IGESDimen_NewDimensionedGeometry.hxx".}
proc geometryEntity*(this: IGESDimenNewDimensionedGeometry; index: StandardInteger): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "GeometryEntity",
                         header: "IGESDimen_NewDimensionedGeometry.hxx".}
proc dimensionLocationFlag*(this: IGESDimenNewDimensionedGeometry;
                           index: StandardInteger): StandardInteger {.noSideEffect,
    importcpp: "DimensionLocationFlag",
    header: "IGESDimen_NewDimensionedGeometry.hxx".}
proc point*(this: IGESDimenNewDimensionedGeometry; index: StandardInteger): GpPnt {.
    noSideEffect, importcpp: "Point",
    header: "IGESDimen_NewDimensionedGeometry.hxx".}
proc transformedPoint*(this: IGESDimenNewDimensionedGeometry;
                      index: StandardInteger): GpPnt {.noSideEffect,
    importcpp: "TransformedPoint", header: "IGESDimen_NewDimensionedGeometry.hxx".}
type
  IGESDimenNewDimensionedGeometrybaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDimen_NewDimensionedGeometry::get_type_name(@)",
                            header: "IGESDimen_NewDimensionedGeometry.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_NewDimensionedGeometry::get_type_descriptor(@)",
    header: "IGESDimen_NewDimensionedGeometry.hxx".}
proc dynamicType*(this: IGESDimenNewDimensionedGeometry): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDimen_NewDimensionedGeometry.hxx".}

