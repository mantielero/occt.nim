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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of IGESGeom_CopiousData"
discard "forward decl of IGESGeom_CopiousData"
type
  HandleIGESGeomCopiousData* = Handle[IGESGeomCopiousData]

## ! defines IGESCopiousData, Type <106> Form <1-3,11-13,63>
## ! in package IGESGeom
## ! This entity stores data points in the form of pairs,
## ! triples, or sextuples. An interpretation flag value
## ! signifies which of these forms is being used.

type
  IGESGeomCopiousData* {.importcpp: "IGESGeom_CopiousData",
                        header: "IGESGeom_CopiousData.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGeomCopiousData*(): IGESGeomCopiousData {.constructor,
    importcpp: "IGESGeom_CopiousData(@)", header: "IGESGeom_CopiousData.hxx".}
proc init*(this: var IGESGeomCopiousData; aDataType: StandardInteger;
          aZPlane: StandardReal; allData: Handle[TColStdHArray1OfReal]) {.
    importcpp: "Init", header: "IGESGeom_CopiousData.hxx".}
proc setPolyline*(this: var IGESGeomCopiousData; mode: StandardBoolean) {.
    importcpp: "SetPolyline", header: "IGESGeom_CopiousData.hxx".}
proc setClosedPath2D*(this: var IGESGeomCopiousData) {.importcpp: "SetClosedPath2D",
    header: "IGESGeom_CopiousData.hxx".}
proc isPointSet*(this: IGESGeomCopiousData): StandardBoolean {.noSideEffect,
    importcpp: "IsPointSet", header: "IGESGeom_CopiousData.hxx".}
proc isPolyline*(this: IGESGeomCopiousData): StandardBoolean {.noSideEffect,
    importcpp: "IsPolyline", header: "IGESGeom_CopiousData.hxx".}
proc isClosedPath2D*(this: IGESGeomCopiousData): StandardBoolean {.noSideEffect,
    importcpp: "IsClosedPath2D", header: "IGESGeom_CopiousData.hxx".}
proc dataType*(this: IGESGeomCopiousData): StandardInteger {.noSideEffect,
    importcpp: "DataType", header: "IGESGeom_CopiousData.hxx".}
proc nbPoints*(this: IGESGeomCopiousData): StandardInteger {.noSideEffect,
    importcpp: "NbPoints", header: "IGESGeom_CopiousData.hxx".}
proc data*(this: IGESGeomCopiousData; numPoint: StandardInteger;
          numData: StandardInteger): StandardReal {.noSideEffect, importcpp: "Data",
    header: "IGESGeom_CopiousData.hxx".}
proc zPlane*(this: IGESGeomCopiousData): StandardReal {.noSideEffect,
    importcpp: "ZPlane", header: "IGESGeom_CopiousData.hxx".}
proc point*(this: IGESGeomCopiousData; anIndex: StandardInteger): GpPnt {.
    noSideEffect, importcpp: "Point", header: "IGESGeom_CopiousData.hxx".}
proc transformedPoint*(this: IGESGeomCopiousData; anIndex: StandardInteger): GpPnt {.
    noSideEffect, importcpp: "TransformedPoint", header: "IGESGeom_CopiousData.hxx".}
proc vector*(this: IGESGeomCopiousData; anIndex: StandardInteger): GpVec {.
    noSideEffect, importcpp: "Vector", header: "IGESGeom_CopiousData.hxx".}
proc transformedVector*(this: IGESGeomCopiousData; anIndex: StandardInteger): GpVec {.
    noSideEffect, importcpp: "TransformedVector",
    header: "IGESGeom_CopiousData.hxx".}
type
  IGESGeomCopiousDatabaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGeom_CopiousData::get_type_name(@)",
                            header: "IGESGeom_CopiousData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGeom_CopiousData::get_type_descriptor(@)",
    header: "IGESGeom_CopiousData.hxx".}
proc dynamicType*(this: IGESGeomCopiousData): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_CopiousData.hxx".}

