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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../TColStd/TColStd_HArray1OfReal,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Boolean

discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of IGESGeom_CopiousData"
discard "forward decl of IGESGeom_CopiousData"
type
  Handle_IGESGeom_CopiousData* = handle[IGESGeom_CopiousData]

## ! defines IGESCopiousData, Type <106> Form <1-3,11-13,63>
## ! in package IGESGeom
## ! This entity stores data points in the form of pairs,
## ! triples, or sextuples. An interpretation flag value
## ! signifies which of these forms is being used.

type
  IGESGeom_CopiousData* {.importcpp: "IGESGeom_CopiousData",
                         header: "IGESGeom_CopiousData.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGeom_CopiousData*(): IGESGeom_CopiousData {.constructor,
    importcpp: "IGESGeom_CopiousData(@)", header: "IGESGeom_CopiousData.hxx".}
proc Init*(this: var IGESGeom_CopiousData; aDataType: Standard_Integer;
          aZPlane: Standard_Real; allData: handle[TColStd_HArray1OfReal]) {.
    importcpp: "Init", header: "IGESGeom_CopiousData.hxx".}
proc SetPolyline*(this: var IGESGeom_CopiousData; mode: Standard_Boolean) {.
    importcpp: "SetPolyline", header: "IGESGeom_CopiousData.hxx".}
proc SetClosedPath2D*(this: var IGESGeom_CopiousData) {.
    importcpp: "SetClosedPath2D", header: "IGESGeom_CopiousData.hxx".}
proc IsPointSet*(this: IGESGeom_CopiousData): Standard_Boolean {.noSideEffect,
    importcpp: "IsPointSet", header: "IGESGeom_CopiousData.hxx".}
proc IsPolyline*(this: IGESGeom_CopiousData): Standard_Boolean {.noSideEffect,
    importcpp: "IsPolyline", header: "IGESGeom_CopiousData.hxx".}
proc IsClosedPath2D*(this: IGESGeom_CopiousData): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosedPath2D", header: "IGESGeom_CopiousData.hxx".}
proc DataType*(this: IGESGeom_CopiousData): Standard_Integer {.noSideEffect,
    importcpp: "DataType", header: "IGESGeom_CopiousData.hxx".}
proc NbPoints*(this: IGESGeom_CopiousData): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "IGESGeom_CopiousData.hxx".}
proc Data*(this: IGESGeom_CopiousData; NumPoint: Standard_Integer;
          NumData: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Data", header: "IGESGeom_CopiousData.hxx".}
proc ZPlane*(this: IGESGeom_CopiousData): Standard_Real {.noSideEffect,
    importcpp: "ZPlane", header: "IGESGeom_CopiousData.hxx".}
proc Point*(this: IGESGeom_CopiousData; anIndex: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "Point", header: "IGESGeom_CopiousData.hxx".}
proc TransformedPoint*(this: IGESGeom_CopiousData; anIndex: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "TransformedPoint", header: "IGESGeom_CopiousData.hxx".}
proc Vector*(this: IGESGeom_CopiousData; anIndex: Standard_Integer): gp_Vec {.
    noSideEffect, importcpp: "Vector", header: "IGESGeom_CopiousData.hxx".}
proc TransformedVector*(this: IGESGeom_CopiousData; anIndex: Standard_Integer): gp_Vec {.
    noSideEffect, importcpp: "TransformedVector",
    header: "IGESGeom_CopiousData.hxx".}
type
  IGESGeom_CopiousDatabase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGeom_CopiousData::get_type_name(@)",
                              header: "IGESGeom_CopiousData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGeom_CopiousData::get_type_descriptor(@)",
    header: "IGESGeom_CopiousData.hxx".}
proc DynamicType*(this: IGESGeom_CopiousData): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_CopiousData.hxx".}