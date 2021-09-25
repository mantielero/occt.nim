##  Created on: 2009-04-06
##  Created by: Sergey ZARITCHNY
##  Copyright (c) 2009-2014 OPEN CASCADE SAS
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

discard "forward decl of TNaming_NamedShape"
discard "forward decl of TDataStd_Real"
discard "forward decl of TDataStd_Integer"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DataSet"
discard "forward decl of TDataXtd_PatternStd"
discard "forward decl of TDataXtd_PatternStd"
type
  HandleTDataXtdPatternStd* = Handle[TDataXtdPatternStd]

## ! to create a PatternStd
## ! (LinearPattern, CircularPattern, RectangularPattern,
## ! RadialCircularPattern, MirrorPattern)

type
  TDataXtdPatternStd* {.importcpp: "TDataXtd_PatternStd",
                       header: "TDataXtd_PatternStd.hxx", bycopy.} = object of TDataXtdPattern


proc getPatternID*(): StandardGUID {.importcpp: "TDataXtd_PatternStd::GetPatternID(@)",
                                  header: "TDataXtd_PatternStd.hxx".}
proc set*(label: TDF_Label): Handle[TDataXtdPatternStd] {.
    importcpp: "TDataXtd_PatternStd::Set(@)", header: "TDataXtd_PatternStd.hxx".}
proc constructTDataXtdPatternStd*(): TDataXtdPatternStd {.constructor,
    importcpp: "TDataXtd_PatternStd(@)", header: "TDataXtd_PatternStd.hxx".}
proc signature*(this: var TDataXtdPatternStd; signature: int) {.
    importcpp: "Signature", header: "TDataXtd_PatternStd.hxx".}
proc axis1*(this: var TDataXtdPatternStd; axis1: Handle[TNamingNamedShape]) {.
    importcpp: "Axis1", header: "TDataXtd_PatternStd.hxx".}
proc axis2*(this: var TDataXtdPatternStd; axis2: Handle[TNamingNamedShape]) {.
    importcpp: "Axis2", header: "TDataXtd_PatternStd.hxx".}
proc axis1Reversed*(this: var TDataXtdPatternStd; axis1Reversed: bool) {.
    importcpp: "Axis1Reversed", header: "TDataXtd_PatternStd.hxx".}
proc axis2Reversed*(this: var TDataXtdPatternStd; axis2Reversed: bool) {.
    importcpp: "Axis2Reversed", header: "TDataXtd_PatternStd.hxx".}
proc value1*(this: var TDataXtdPatternStd; value: Handle[TDataStdReal]) {.
    importcpp: "Value1", header: "TDataXtd_PatternStd.hxx".}
proc value2*(this: var TDataXtdPatternStd; value: Handle[TDataStdReal]) {.
    importcpp: "Value2", header: "TDataXtd_PatternStd.hxx".}
proc nbInstances1*(this: var TDataXtdPatternStd;
                  nbInstances1: Handle[TDataStdInteger]) {.
    importcpp: "NbInstances1", header: "TDataXtd_PatternStd.hxx".}
proc nbInstances2*(this: var TDataXtdPatternStd;
                  nbInstances2: Handle[TDataStdInteger]) {.
    importcpp: "NbInstances2", header: "TDataXtd_PatternStd.hxx".}
proc mirror*(this: var TDataXtdPatternStd; plane: Handle[TNamingNamedShape]) {.
    importcpp: "Mirror", header: "TDataXtd_PatternStd.hxx".}
proc signature*(this: TDataXtdPatternStd): int {.noSideEffect,
    importcpp: "Signature", header: "TDataXtd_PatternStd.hxx".}
proc axis1*(this: TDataXtdPatternStd): Handle[TNamingNamedShape] {.noSideEffect,
    importcpp: "Axis1", header: "TDataXtd_PatternStd.hxx".}
proc axis2*(this: TDataXtdPatternStd): Handle[TNamingNamedShape] {.noSideEffect,
    importcpp: "Axis2", header: "TDataXtd_PatternStd.hxx".}
proc axis1Reversed*(this: TDataXtdPatternStd): bool {.noSideEffect,
    importcpp: "Axis1Reversed", header: "TDataXtd_PatternStd.hxx".}
proc axis2Reversed*(this: TDataXtdPatternStd): bool {.noSideEffect,
    importcpp: "Axis2Reversed", header: "TDataXtd_PatternStd.hxx".}
proc value1*(this: TDataXtdPatternStd): Handle[TDataStdReal] {.noSideEffect,
    importcpp: "Value1", header: "TDataXtd_PatternStd.hxx".}
proc value2*(this: TDataXtdPatternStd): Handle[TDataStdReal] {.noSideEffect,
    importcpp: "Value2", header: "TDataXtd_PatternStd.hxx".}
proc nbInstances1*(this: TDataXtdPatternStd): Handle[TDataStdInteger] {.
    noSideEffect, importcpp: "NbInstances1", header: "TDataXtd_PatternStd.hxx".}
proc nbInstances2*(this: TDataXtdPatternStd): Handle[TDataStdInteger] {.
    noSideEffect, importcpp: "NbInstances2", header: "TDataXtd_PatternStd.hxx".}
proc mirror*(this: TDataXtdPatternStd): Handle[TNamingNamedShape] {.noSideEffect,
    importcpp: "Mirror", header: "TDataXtd_PatternStd.hxx".}
proc nbTrsfs*(this: TDataXtdPatternStd): int {.noSideEffect, importcpp: "NbTrsfs",
    header: "TDataXtd_PatternStd.hxx".}
proc computeTrsfs*(this: TDataXtdPatternStd; trsfs: var TDataXtdArray1OfTrsf) {.
    noSideEffect, importcpp: "ComputeTrsfs", header: "TDataXtd_PatternStd.hxx".}
proc patternID*(this: TDataXtdPatternStd): StandardGUID {.noSideEffect,
    importcpp: "PatternID", header: "TDataXtd_PatternStd.hxx".}
proc restore*(this: var TDataXtdPatternStd; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataXtd_PatternStd.hxx".}
proc newEmpty*(this: TDataXtdPatternStd): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataXtd_PatternStd.hxx".}
proc paste*(this: TDataXtdPatternStd; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataXtd_PatternStd.hxx".}
proc references*(this: TDataXtdPatternStd; aDataSet: Handle[TDF_DataSet]) {.
    noSideEffect, importcpp: "References", header: "TDataXtd_PatternStd.hxx".}
proc dump*(this: TDataXtdPatternStd; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataXtd_PatternStd.hxx".}
type
  TDataXtdPatternStdbaseType* = TDataXtdPattern

proc getTypeName*(): cstring {.importcpp: "TDataXtd_PatternStd::get_type_name(@)",
                            header: "TDataXtd_PatternStd.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataXtd_PatternStd::get_type_descriptor(@)",
    header: "TDataXtd_PatternStd.hxx".}
proc dynamicType*(this: TDataXtdPatternStd): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataXtd_PatternStd.hxx".}
