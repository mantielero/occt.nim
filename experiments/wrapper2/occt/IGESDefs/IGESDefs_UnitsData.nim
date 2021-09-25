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

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESDefs_UnitsData"
discard "forward decl of IGESDefs_UnitsData"
type
  HandleIGESDefsUnitsData* = Handle[IGESDefsUnitsData]

## ! defines IGES UnitsData Entity, Type <316> Form <0>
## ! in package IGESDefs
## ! This class stores data about a model's fundamental units.

type
  IGESDefsUnitsData* {.importcpp: "IGESDefs_UnitsData",
                      header: "IGESDefs_UnitsData.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDefsUnitsData*(): IGESDefsUnitsData {.constructor,
    importcpp: "IGESDefs_UnitsData(@)", header: "IGESDefs_UnitsData.hxx".}
proc init*(this: var IGESDefsUnitsData;
          unitTypes: Handle[InterfaceHArray1OfHAsciiString];
          unitValues: Handle[InterfaceHArray1OfHAsciiString];
          unitScales: Handle[TColStdHArray1OfReal]) {.importcpp: "Init",
    header: "IGESDefs_UnitsData.hxx".}
proc nbUnits*(this: IGESDefsUnitsData): int {.noSideEffect, importcpp: "NbUnits",
    header: "IGESDefs_UnitsData.hxx".}
proc unitType*(this: IGESDefsUnitsData; unitNum: int): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "UnitType", header: "IGESDefs_UnitsData.hxx".}
proc unitValue*(this: IGESDefsUnitsData; unitNum: int): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "UnitValue",
                              header: "IGESDefs_UnitsData.hxx".}
proc scaleFactor*(this: IGESDefsUnitsData; unitNum: int): float {.noSideEffect,
    importcpp: "ScaleFactor", header: "IGESDefs_UnitsData.hxx".}
type
  IGESDefsUnitsDatabaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDefs_UnitsData::get_type_name(@)",
                            header: "IGESDefs_UnitsData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDefs_UnitsData::get_type_descriptor(@)",
    header: "IGESDefs_UnitsData.hxx".}
proc dynamicType*(this: IGESDefsUnitsData): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDefs_UnitsData.hxx".}
