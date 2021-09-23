##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Anand NATRAJAN )
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
  ../TColStd/TColStd_HArray1OfInteger,
  ../Interface/Interface_HArray1OfHAsciiString, ../IGESData/IGESData_IGESEntity

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESAppli_LevelToPWBLayerMap"
discard "forward decl of IGESAppli_LevelToPWBLayerMap"
type
  Handle_IGESAppli_LevelToPWBLayerMap* = handle[IGESAppli_LevelToPWBLayerMap]

## ! defines LevelToPWBLayerMap, Type <406> Form <24>
## ! in package IGESAppli
## ! Used to correlate an exchange file level number with
## ! its corresponding native level identifier, physical PWB
## ! layer number and predefined functional level
## ! identification

type
  IGESAppli_LevelToPWBLayerMap* {.importcpp: "IGESAppli_LevelToPWBLayerMap",
                                 header: "IGESAppli_LevelToPWBLayerMap.hxx",
                                 bycopy.} = object of IGESData_IGESEntity


proc constructIGESAppli_LevelToPWBLayerMap*(): IGESAppli_LevelToPWBLayerMap {.
    constructor, importcpp: "IGESAppli_LevelToPWBLayerMap(@)",
    header: "IGESAppli_LevelToPWBLayerMap.hxx".}
proc Init*(this: var IGESAppli_LevelToPWBLayerMap; nbPropVal: Standard_Integer;
          allExchLevels: handle[TColStd_HArray1OfInteger];
          allNativeLevels: handle[Interface_HArray1OfHAsciiString];
          allPhysLevels: handle[TColStd_HArray1OfInteger];
          allExchIdents: handle[Interface_HArray1OfHAsciiString]) {.
    importcpp: "Init", header: "IGESAppli_LevelToPWBLayerMap.hxx".}
proc NbPropertyValues*(this: IGESAppli_LevelToPWBLayerMap): Standard_Integer {.
    noSideEffect, importcpp: "NbPropertyValues",
    header: "IGESAppli_LevelToPWBLayerMap.hxx".}
proc NbLevelToLayerDefs*(this: IGESAppli_LevelToPWBLayerMap): Standard_Integer {.
    noSideEffect, importcpp: "NbLevelToLayerDefs",
    header: "IGESAppli_LevelToPWBLayerMap.hxx".}
proc ExchangeFileLevelNumber*(this: IGESAppli_LevelToPWBLayerMap;
                             Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "ExchangeFileLevelNumber",
    header: "IGESAppli_LevelToPWBLayerMap.hxx".}
proc NativeLevel*(this: IGESAppli_LevelToPWBLayerMap; Index: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "NativeLevel",
                               header: "IGESAppli_LevelToPWBLayerMap.hxx".}
proc PhysicalLayerNumber*(this: IGESAppli_LevelToPWBLayerMap;
                         Index: Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "PhysicalLayerNumber", header: "IGESAppli_LevelToPWBLayerMap.hxx".}
proc ExchangeFileLevelIdent*(this: IGESAppli_LevelToPWBLayerMap;
                            Index: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "ExchangeFileLevelIdent",
                               header: "IGESAppli_LevelToPWBLayerMap.hxx".}
type
  IGESAppli_LevelToPWBLayerMapbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESAppli_LevelToPWBLayerMap::get_type_name(@)",
                              header: "IGESAppli_LevelToPWBLayerMap.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESAppli_LevelToPWBLayerMap::get_type_descriptor(@)",
    header: "IGESAppli_LevelToPWBLayerMap.hxx".}
proc DynamicType*(this: IGESAppli_LevelToPWBLayerMap): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESAppli_LevelToPWBLayerMap.hxx".}