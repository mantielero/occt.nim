##  Created on: 1998-02-23
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../TCollection/TCollection_AsciiString, MoniTool_ValueType,
  ../NCollection/NCollection_DataMap, ../Standard/Standard_Type,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../TColStd/TColStd_HArray1OfAsciiString, MoniTool_ValueInterpret,
  MoniTool_ValueSatisfies, ../Standard/Standard_Transient,
  ../Standard/Standard_CString, ../Standard/Standard_Boolean,
  ../TColStd/TColStd_HSequenceOfAsciiString

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of MoniTool_TypedValue"
discard "forward decl of MoniTool_TypedValue"
type
  Handle_MoniTool_TypedValue* = handle[MoniTool_TypedValue]

## ! This class allows to dynamically manage .. typed values, i.e.
## ! values which have an alphanumeric expression, but with
## ! controls. Such as "must be an Integer" or "Enumerative Text"
## ! etc
## !
## ! Hence, a TypedValue brings a specification (type + constraints
## ! if any) and a value. Its basic form is a string, it can be
## ! specified as integer or real or enumerative string, then
## ! queried as such.
## ! Its string content, which is a Handle(HAsciiString) can be
## ! shared by other data structures, hence gives a direct on line
## ! access to its value.

type
  MoniTool_TypedValue* {.importcpp: "MoniTool_TypedValue",
                        header: "MoniTool_TypedValue.hxx", bycopy.} = object of Standard_Transient ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## a
                                                                                            ## TypedValue,
                                                                                            ## with
                                                                                            ## a
                                                                                            ## name
                                                                                            ##
                                                                                            ## !
                                                                                            ##
                                                                                            ## !
                                                                                            ## type
                                                                                            ## gives
                                                                                            ## the
                                                                                            ## type
                                                                                            ## of
                                                                                            ## the
                                                                                            ## parameter,
                                                                                            ## default
                                                                                            ## is
                                                                                            ## free
                                                                                            ## text
                                                                                            ##
                                                                                            ## !
                                                                                            ## Also
                                                                                            ## available
                                                                                            ## :
                                                                                            ## Integer,
                                                                                            ## Real,
                                                                                            ## Enum,
                                                                                            ## Entity
                                                                                            ## (i.e.
                                                                                            ## Object)
                                                                                            ##
                                                                                            ## !
                                                                                            ## More
                                                                                            ## precise
                                                                                            ## specifications,
                                                                                            ## titles,
                                                                                            ## can
                                                                                            ## be
                                                                                            ## given
                                                                                            ## to
                                                                                            ## the
                                                                                            ##
                                                                                            ## !
                                                                                            ## TypedValue
                                                                                            ## once
                                                                                            ## created
                                                                                            ##
                                                                                            ## !
                                                                                            ##
                                                                                            ## !
                                                                                            ## init
                                                                                            ## gives
                                                                                            ## an
                                                                                            ## initial
                                                                                            ## value.
                                                                                            ## If
                                                                                            ## it
                                                                                            ## is
                                                                                            ## not
                                                                                            ## given,
                                                                                            ## the
                                                                                            ##
                                                                                            ## !
                                                                                            ## TypedValue
                                                                                            ## begins
                                                                                            ## as
                                                                                            ## "not
                                                                                            ## set",
                                                                                            ## its
                                                                                            ## value
                                                                                            ## is
                                                                                            ## empty
                                                                                            ##
                                                                                            ## !
                                                                                            ## Gives
                                                                                            ## the
                                                                                            ## internal
                                                                                            ## library
                                                                                            ## of
                                                                                            ## static
                                                                                            ## values


proc constructMoniTool_TypedValue*(name: Standard_CString; `type`: MoniTool_ValueType = MoniTool_ValueText;
                                  init: Standard_CString = ""): MoniTool_TypedValue {.
    constructor, importcpp: "MoniTool_TypedValue(@)",
    header: "MoniTool_TypedValue.hxx".}
proc constructMoniTool_TypedValue*(other: handle[MoniTool_TypedValue]): MoniTool_TypedValue {.
    constructor, importcpp: "MoniTool_TypedValue(@)",
    header: "MoniTool_TypedValue.hxx".}
proc Internals*(this: MoniTool_TypedValue; interp: var MoniTool_ValueInterpret;
               satisf: var MoniTool_ValueSatisfies;
               satisname: var Standard_CString; enums: var NCollection_DataMap[
    TCollection_AsciiString, Standard_Integer]) {.noSideEffect,
    importcpp: "Internals", header: "MoniTool_TypedValue.hxx".}
proc Name*(this: MoniTool_TypedValue): Standard_CString {.noSideEffect,
    importcpp: "Name", header: "MoniTool_TypedValue.hxx".}
proc ValueType*(this: MoniTool_TypedValue): MoniTool_ValueType {.noSideEffect,
    importcpp: "ValueType", header: "MoniTool_TypedValue.hxx".}
proc Definition*(this: MoniTool_TypedValue): TCollection_AsciiString {.noSideEffect,
    importcpp: "Definition", header: "MoniTool_TypedValue.hxx".}
proc SetDefinition*(this: var MoniTool_TypedValue; deftext: Standard_CString) {.
    importcpp: "SetDefinition", header: "MoniTool_TypedValue.hxx".}
proc Print*(this: MoniTool_TypedValue; S: var Standard_OStream) {.noSideEffect,
    importcpp: "Print", header: "MoniTool_TypedValue.hxx".}
proc PrintValue*(this: MoniTool_TypedValue; S: var Standard_OStream) {.noSideEffect,
    importcpp: "PrintValue", header: "MoniTool_TypedValue.hxx".}
proc AddDef*(this: var MoniTool_TypedValue; initext: Standard_CString): Standard_Boolean {.
    importcpp: "AddDef", header: "MoniTool_TypedValue.hxx".}
proc SetLabel*(this: var MoniTool_TypedValue; label: Standard_CString) {.
    importcpp: "SetLabel", header: "MoniTool_TypedValue.hxx".}
proc Label*(this: MoniTool_TypedValue): Standard_CString {.noSideEffect,
    importcpp: "Label", header: "MoniTool_TypedValue.hxx".}
proc SetMaxLength*(this: var MoniTool_TypedValue; max: Standard_Integer) {.
    importcpp: "SetMaxLength", header: "MoniTool_TypedValue.hxx".}
proc MaxLength*(this: MoniTool_TypedValue): Standard_Integer {.noSideEffect,
    importcpp: "MaxLength", header: "MoniTool_TypedValue.hxx".}
proc SetIntegerLimit*(this: var MoniTool_TypedValue; max: Standard_Boolean;
                     val: Standard_Integer) {.importcpp: "SetIntegerLimit",
    header: "MoniTool_TypedValue.hxx".}
proc IntegerLimit*(this: MoniTool_TypedValue; max: Standard_Boolean;
                  val: var Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "IntegerLimit", header: "MoniTool_TypedValue.hxx".}
proc SetRealLimit*(this: var MoniTool_TypedValue; max: Standard_Boolean;
                  val: Standard_Real) {.importcpp: "SetRealLimit",
                                      header: "MoniTool_TypedValue.hxx".}
proc RealLimit*(this: MoniTool_TypedValue; max: Standard_Boolean;
               val: var Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "RealLimit", header: "MoniTool_TypedValue.hxx".}
proc SetUnitDef*(this: var MoniTool_TypedValue; def: Standard_CString) {.
    importcpp: "SetUnitDef", header: "MoniTool_TypedValue.hxx".}
proc UnitDef*(this: MoniTool_TypedValue): Standard_CString {.noSideEffect,
    importcpp: "UnitDef", header: "MoniTool_TypedValue.hxx".}
proc StartEnum*(this: var MoniTool_TypedValue; start: Standard_Integer = 0;
               match: Standard_Boolean = Standard_True) {.importcpp: "StartEnum",
    header: "MoniTool_TypedValue.hxx".}
proc AddEnum*(this: var MoniTool_TypedValue; v1: Standard_CString = "";
             v2: Standard_CString = ""; v3: Standard_CString = "";
             v4: Standard_CString = ""; v5: Standard_CString = "";
             v6: Standard_CString = ""; v7: Standard_CString = "";
             v8: Standard_CString = ""; v9: Standard_CString = "";
             v10: Standard_CString = "") {.importcpp: "AddEnum",
                                       header: "MoniTool_TypedValue.hxx".}
proc AddEnumValue*(this: var MoniTool_TypedValue; val: Standard_CString;
                  num: Standard_Integer) {.importcpp: "AddEnumValue",
    header: "MoniTool_TypedValue.hxx".}
proc EnumDef*(this: MoniTool_TypedValue; startcase: var Standard_Integer;
             endcase: var Standard_Integer; match: var Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "EnumDef", header: "MoniTool_TypedValue.hxx".}
proc EnumVal*(this: MoniTool_TypedValue; num: Standard_Integer): Standard_CString {.
    noSideEffect, importcpp: "EnumVal", header: "MoniTool_TypedValue.hxx".}
proc EnumCase*(this: MoniTool_TypedValue; val: Standard_CString): Standard_Integer {.
    noSideEffect, importcpp: "EnumCase", header: "MoniTool_TypedValue.hxx".}
proc SetObjectType*(this: var MoniTool_TypedValue; typ: handle[Standard_Type]) {.
    importcpp: "SetObjectType", header: "MoniTool_TypedValue.hxx".}
proc ObjectType*(this: MoniTool_TypedValue): handle[Standard_Type] {.noSideEffect,
    importcpp: "ObjectType", header: "MoniTool_TypedValue.hxx".}
proc SetInterpret*(this: var MoniTool_TypedValue; `func`: MoniTool_ValueInterpret) {.
    importcpp: "SetInterpret", header: "MoniTool_TypedValue.hxx".}
proc HasInterpret*(this: MoniTool_TypedValue): Standard_Boolean {.noSideEffect,
    importcpp: "HasInterpret", header: "MoniTool_TypedValue.hxx".}
proc SetSatisfies*(this: var MoniTool_TypedValue; `func`: MoniTool_ValueSatisfies;
                  name: Standard_CString) {.importcpp: "SetSatisfies",
    header: "MoniTool_TypedValue.hxx".}
proc SatisfiesName*(this: MoniTool_TypedValue): Standard_CString {.noSideEffect,
    importcpp: "SatisfiesName", header: "MoniTool_TypedValue.hxx".}
proc IsSetValue*(this: MoniTool_TypedValue): Standard_Boolean {.noSideEffect,
    importcpp: "IsSetValue", header: "MoniTool_TypedValue.hxx".}
proc CStringValue*(this: MoniTool_TypedValue): Standard_CString {.noSideEffect,
    importcpp: "CStringValue", header: "MoniTool_TypedValue.hxx".}
proc HStringValue*(this: MoniTool_TypedValue): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "HStringValue", header: "MoniTool_TypedValue.hxx".}
proc Interpret*(this: MoniTool_TypedValue; hval: handle[TCollection_HAsciiString];
               native: Standard_Boolean): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Interpret", header: "MoniTool_TypedValue.hxx".}
proc Satisfies*(this: MoniTool_TypedValue; hval: handle[TCollection_HAsciiString]): Standard_Boolean {.
    noSideEffect, importcpp: "Satisfies", header: "MoniTool_TypedValue.hxx".}
proc ClearValue*(this: var MoniTool_TypedValue) {.importcpp: "ClearValue",
    header: "MoniTool_TypedValue.hxx".}
proc SetCStringValue*(this: var MoniTool_TypedValue; val: Standard_CString): Standard_Boolean {.
    importcpp: "SetCStringValue", header: "MoniTool_TypedValue.hxx".}
proc SetHStringValue*(this: var MoniTool_TypedValue;
                     hval: handle[TCollection_HAsciiString]): Standard_Boolean {.
    importcpp: "SetHStringValue", header: "MoniTool_TypedValue.hxx".}
proc IntegerValue*(this: MoniTool_TypedValue): Standard_Integer {.noSideEffect,
    importcpp: "IntegerValue", header: "MoniTool_TypedValue.hxx".}
proc SetIntegerValue*(this: var MoniTool_TypedValue; ival: Standard_Integer): Standard_Boolean {.
    importcpp: "SetIntegerValue", header: "MoniTool_TypedValue.hxx".}
proc RealValue*(this: MoniTool_TypedValue): Standard_Real {.noSideEffect,
    importcpp: "RealValue", header: "MoniTool_TypedValue.hxx".}
proc SetRealValue*(this: var MoniTool_TypedValue; rval: Standard_Real): Standard_Boolean {.
    importcpp: "SetRealValue", header: "MoniTool_TypedValue.hxx".}
proc ObjectValue*(this: MoniTool_TypedValue): handle[Standard_Transient] {.
    noSideEffect, importcpp: "ObjectValue", header: "MoniTool_TypedValue.hxx".}
proc GetObjectValue*(this: MoniTool_TypedValue; val: var handle[Standard_Transient]) {.
    noSideEffect, importcpp: "GetObjectValue", header: "MoniTool_TypedValue.hxx".}
proc SetObjectValue*(this: var MoniTool_TypedValue; obj: handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "SetObjectValue", header: "MoniTool_TypedValue.hxx".}
proc ObjectTypeName*(this: MoniTool_TypedValue): Standard_CString {.noSideEffect,
    importcpp: "ObjectTypeName", header: "MoniTool_TypedValue.hxx".}
proc AddLib*(tv: handle[MoniTool_TypedValue]; def: Standard_CString = ""): Standard_Boolean {.
    importcpp: "MoniTool_TypedValue::AddLib(@)", header: "MoniTool_TypedValue.hxx".}
proc Lib*(def: Standard_CString): handle[MoniTool_TypedValue] {.
    importcpp: "MoniTool_TypedValue::Lib(@)", header: "MoniTool_TypedValue.hxx".}
proc FromLib*(def: Standard_CString): handle[MoniTool_TypedValue] {.
    importcpp: "MoniTool_TypedValue::FromLib(@)",
    header: "MoniTool_TypedValue.hxx".}
proc LibList*(): handle[TColStd_HSequenceOfAsciiString] {.
    importcpp: "MoniTool_TypedValue::LibList(@)",
    header: "MoniTool_TypedValue.hxx".}
proc StaticValue*(name: Standard_CString): handle[MoniTool_TypedValue] {.
    importcpp: "MoniTool_TypedValue::StaticValue(@)",
    header: "MoniTool_TypedValue.hxx".}
type
  MoniTool_TypedValuebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "MoniTool_TypedValue::get_type_name(@)",
                              header: "MoniTool_TypedValue.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MoniTool_TypedValue::get_type_descriptor(@)",
    header: "MoniTool_TypedValue.hxx".}
proc DynamicType*(this: MoniTool_TypedValue): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MoniTool_TypedValue.hxx".}