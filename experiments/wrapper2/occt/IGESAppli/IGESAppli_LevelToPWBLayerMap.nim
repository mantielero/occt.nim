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

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESAppli_LevelToPWBLayerMap"
discard "forward decl of IGESAppli_LevelToPWBLayerMap"
type
  HandleIGESAppliLevelToPWBLayerMap* = Handle[IGESAppliLevelToPWBLayerMap]

## ! defines LevelToPWBLayerMap, Type <406> Form <24>
## ! in package IGESAppli
## ! Used to correlate an exchange file level number with
## ! its corresponding native level identifier, physical PWB
## ! layer number and predefined functional level
## ! identification

type
  IGESAppliLevelToPWBLayerMap* {.importcpp: "IGESAppli_LevelToPWBLayerMap",
                                header: "IGESAppli_LevelToPWBLayerMap.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESAppliLevelToPWBLayerMap*(): IGESAppliLevelToPWBLayerMap {.
    constructor, importcpp: "IGESAppli_LevelToPWBLayerMap(@)",
    header: "IGESAppli_LevelToPWBLayerMap.hxx".}
proc init*(this: var IGESAppliLevelToPWBLayerMap; nbPropVal: int;
          allExchLevels: Handle[TColStdHArray1OfInteger];
          allNativeLevels: Handle[InterfaceHArray1OfHAsciiString];
          allPhysLevels: Handle[TColStdHArray1OfInteger];
          allExchIdents: Handle[InterfaceHArray1OfHAsciiString]) {.
    importcpp: "Init", header: "IGESAppli_LevelToPWBLayerMap.hxx".}
proc nbPropertyValues*(this: IGESAppliLevelToPWBLayerMap): int {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESAppli_LevelToPWBLayerMap.hxx".}
proc nbLevelToLayerDefs*(this: IGESAppliLevelToPWBLayerMap): int {.noSideEffect,
    importcpp: "NbLevelToLayerDefs", header: "IGESAppli_LevelToPWBLayerMap.hxx".}
proc exchangeFileLevelNumber*(this: IGESAppliLevelToPWBLayerMap; index: int): int {.
    noSideEffect, importcpp: "ExchangeFileLevelNumber",
    header: "IGESAppli_LevelToPWBLayerMap.hxx".}
proc nativeLevel*(this: IGESAppliLevelToPWBLayerMap; index: int): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "NativeLevel",
                              header: "IGESAppli_LevelToPWBLayerMap.hxx".}
proc physicalLayerNumber*(this: IGESAppliLevelToPWBLayerMap; index: int): int {.
    noSideEffect, importcpp: "PhysicalLayerNumber",
    header: "IGESAppli_LevelToPWBLayerMap.hxx".}
proc exchangeFileLevelIdent*(this: IGESAppliLevelToPWBLayerMap; index: int): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "ExchangeFileLevelIdent",
                              header: "IGESAppli_LevelToPWBLayerMap.hxx".}
type
  IGESAppliLevelToPWBLayerMapbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESAppli_LevelToPWBLayerMap::get_type_name(@)",
                            header: "IGESAppli_LevelToPWBLayerMap.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESAppli_LevelToPWBLayerMap::get_type_descriptor(@)",
    header: "IGESAppli_LevelToPWBLayerMap.hxx".}
proc dynamicType*(this: IGESAppliLevelToPWBLayerMap): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESAppli_LevelToPWBLayerMap.hxx".}
