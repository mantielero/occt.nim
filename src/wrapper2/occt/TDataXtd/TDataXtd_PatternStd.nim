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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, TDataXtd_Pattern, TDataXtd_Array1OfTrsf,
  ../Standard/Standard_OStream

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
  Handle_TDataXtd_PatternStd* = handle[TDataXtd_PatternStd]

## ! to create a PatternStd
## ! (LinearPattern, CircularPattern, RectangularPattern,
## ! RadialCircularPattern, MirrorPattern)

type
  TDataXtd_PatternStd* {.importcpp: "TDataXtd_PatternStd",
                        header: "TDataXtd_PatternStd.hxx", bycopy.} = object of TDataXtd_Pattern


proc GetPatternID*(): Standard_GUID {.importcpp: "TDataXtd_PatternStd::GetPatternID(@)",
                                   header: "TDataXtd_PatternStd.hxx".}
proc Set*(label: TDF_Label): handle[TDataXtd_PatternStd] {.
    importcpp: "TDataXtd_PatternStd::Set(@)", header: "TDataXtd_PatternStd.hxx".}
proc constructTDataXtd_PatternStd*(): TDataXtd_PatternStd {.constructor,
    importcpp: "TDataXtd_PatternStd(@)", header: "TDataXtd_PatternStd.hxx".}
proc Signature*(this: var TDataXtd_PatternStd; signature: Standard_Integer) {.
    importcpp: "Signature", header: "TDataXtd_PatternStd.hxx".}
proc Axis1*(this: var TDataXtd_PatternStd; Axis1: handle[TNaming_NamedShape]) {.
    importcpp: "Axis1", header: "TDataXtd_PatternStd.hxx".}
proc Axis2*(this: var TDataXtd_PatternStd; Axis2: handle[TNaming_NamedShape]) {.
    importcpp: "Axis2", header: "TDataXtd_PatternStd.hxx".}
proc Axis1Reversed*(this: var TDataXtd_PatternStd; Axis1Reversed: Standard_Boolean) {.
    importcpp: "Axis1Reversed", header: "TDataXtd_PatternStd.hxx".}
proc Axis2Reversed*(this: var TDataXtd_PatternStd; Axis2Reversed: Standard_Boolean) {.
    importcpp: "Axis2Reversed", header: "TDataXtd_PatternStd.hxx".}
proc Value1*(this: var TDataXtd_PatternStd; value: handle[TDataStd_Real]) {.
    importcpp: "Value1", header: "TDataXtd_PatternStd.hxx".}
proc Value2*(this: var TDataXtd_PatternStd; value: handle[TDataStd_Real]) {.
    importcpp: "Value2", header: "TDataXtd_PatternStd.hxx".}
proc NbInstances1*(this: var TDataXtd_PatternStd;
                  NbInstances1: handle[TDataStd_Integer]) {.
    importcpp: "NbInstances1", header: "TDataXtd_PatternStd.hxx".}
proc NbInstances2*(this: var TDataXtd_PatternStd;
                  NbInstances2: handle[TDataStd_Integer]) {.
    importcpp: "NbInstances2", header: "TDataXtd_PatternStd.hxx".}
proc Mirror*(this: var TDataXtd_PatternStd; plane: handle[TNaming_NamedShape]) {.
    importcpp: "Mirror", header: "TDataXtd_PatternStd.hxx".}
proc Signature*(this: TDataXtd_PatternStd): Standard_Integer {.noSideEffect,
    importcpp: "Signature", header: "TDataXtd_PatternStd.hxx".}
proc Axis1*(this: TDataXtd_PatternStd): handle[TNaming_NamedShape] {.noSideEffect,
    importcpp: "Axis1", header: "TDataXtd_PatternStd.hxx".}
proc Axis2*(this: TDataXtd_PatternStd): handle[TNaming_NamedShape] {.noSideEffect,
    importcpp: "Axis2", header: "TDataXtd_PatternStd.hxx".}
proc Axis1Reversed*(this: TDataXtd_PatternStd): Standard_Boolean {.noSideEffect,
    importcpp: "Axis1Reversed", header: "TDataXtd_PatternStd.hxx".}
proc Axis2Reversed*(this: TDataXtd_PatternStd): Standard_Boolean {.noSideEffect,
    importcpp: "Axis2Reversed", header: "TDataXtd_PatternStd.hxx".}
proc Value1*(this: TDataXtd_PatternStd): handle[TDataStd_Real] {.noSideEffect,
    importcpp: "Value1", header: "TDataXtd_PatternStd.hxx".}
proc Value2*(this: TDataXtd_PatternStd): handle[TDataStd_Real] {.noSideEffect,
    importcpp: "Value2", header: "TDataXtd_PatternStd.hxx".}
proc NbInstances1*(this: TDataXtd_PatternStd): handle[TDataStd_Integer] {.
    noSideEffect, importcpp: "NbInstances1", header: "TDataXtd_PatternStd.hxx".}
proc NbInstances2*(this: TDataXtd_PatternStd): handle[TDataStd_Integer] {.
    noSideEffect, importcpp: "NbInstances2", header: "TDataXtd_PatternStd.hxx".}
proc Mirror*(this: TDataXtd_PatternStd): handle[TNaming_NamedShape] {.noSideEffect,
    importcpp: "Mirror", header: "TDataXtd_PatternStd.hxx".}
proc NbTrsfs*(this: TDataXtd_PatternStd): Standard_Integer {.noSideEffect,
    importcpp: "NbTrsfs", header: "TDataXtd_PatternStd.hxx".}
proc ComputeTrsfs*(this: TDataXtd_PatternStd; Trsfs: var TDataXtd_Array1OfTrsf) {.
    noSideEffect, importcpp: "ComputeTrsfs", header: "TDataXtd_PatternStd.hxx".}
proc PatternID*(this: TDataXtd_PatternStd): Standard_GUID {.noSideEffect,
    importcpp: "PatternID", header: "TDataXtd_PatternStd.hxx".}
proc Restore*(this: var TDataXtd_PatternStd; With: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataXtd_PatternStd.hxx".}
proc NewEmpty*(this: TDataXtd_PatternStd): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataXtd_PatternStd.hxx".}
proc Paste*(this: TDataXtd_PatternStd; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataXtd_PatternStd.hxx".}
proc References*(this: TDataXtd_PatternStd; aDataSet: handle[TDF_DataSet]) {.
    noSideEffect, importcpp: "References", header: "TDataXtd_PatternStd.hxx".}
proc Dump*(this: TDataXtd_PatternStd; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataXtd_PatternStd.hxx".}
type
  TDataXtd_PatternStdbase_type* = TDataXtd_Pattern

proc get_type_name*(): cstring {.importcpp: "TDataXtd_PatternStd::get_type_name(@)",
                              header: "TDataXtd_PatternStd.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataXtd_PatternStd::get_type_descriptor(@)",
    header: "TDataXtd_PatternStd.hxx".}
proc DynamicType*(this: TDataXtd_PatternStd): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataXtd_PatternStd.hxx".}