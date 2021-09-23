##  Created on: 1993-01-13
##  Created by: CKY / Contract Toubro-Larsen ( Deepak PRABHU )
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../Interface/Interface_HArray1OfHAsciiString, ../TColStd/TColStd_HArray1OfReal,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Integer,
  ../Standard/Standard_Real

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESDefs_UnitsData"
discard "forward decl of IGESDefs_UnitsData"
type
  Handle_IGESDefs_UnitsData* = handle[IGESDefs_UnitsData]

## ! defines IGES UnitsData Entity, Type <316> Form <0>
## ! in package IGESDefs
## ! This class stores data about a model's fundamental units.

type
  IGESDefs_UnitsData* {.importcpp: "IGESDefs_UnitsData",
                       header: "IGESDefs_UnitsData.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDefs_UnitsData*(): IGESDefs_UnitsData {.constructor,
    importcpp: "IGESDefs_UnitsData(@)", header: "IGESDefs_UnitsData.hxx".}
proc Init*(this: var IGESDefs_UnitsData;
          unitTypes: handle[Interface_HArray1OfHAsciiString];
          unitValues: handle[Interface_HArray1OfHAsciiString];
          unitScales: handle[TColStd_HArray1OfReal]) {.importcpp: "Init",
    header: "IGESDefs_UnitsData.hxx".}
proc NbUnits*(this: IGESDefs_UnitsData): Standard_Integer {.noSideEffect,
    importcpp: "NbUnits", header: "IGESDefs_UnitsData.hxx".}
proc UnitType*(this: IGESDefs_UnitsData; UnitNum: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "UnitType",
                               header: "IGESDefs_UnitsData.hxx".}
proc UnitValue*(this: IGESDefs_UnitsData; UnitNum: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "UnitValue",
                               header: "IGESDefs_UnitsData.hxx".}
proc ScaleFactor*(this: IGESDefs_UnitsData; UnitNum: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "ScaleFactor", header: "IGESDefs_UnitsData.hxx".}
type
  IGESDefs_UnitsDatabase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDefs_UnitsData::get_type_name(@)",
                              header: "IGESDefs_UnitsData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDefs_UnitsData::get_type_descriptor(@)",
    header: "IGESDefs_UnitsData.hxx".}
proc DynamicType*(this: IGESDefs_UnitsData): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDefs_UnitsData.hxx".}