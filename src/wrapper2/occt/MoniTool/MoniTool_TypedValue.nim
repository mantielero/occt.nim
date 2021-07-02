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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of MoniTool_TypedValue"
discard "forward decl of MoniTool_TypedValue"
type
  HandleMoniToolTypedValue* = Handle[MoniToolTypedValue]

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
  MoniToolTypedValue* {.importcpp: "MoniTool_TypedValue",
                       header: "MoniTool_TypedValue.hxx", bycopy.} = object of StandardTransient ##
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


proc constructMoniToolTypedValue*(name: StandardCString;
                                 `type`: MoniToolValueType = moniToolValueText;
                                 init: StandardCString = ""): MoniToolTypedValue {.
    constructor, importcpp: "MoniTool_TypedValue(@)",
    header: "MoniTool_TypedValue.hxx".}
proc constructMoniToolTypedValue*(other: Handle[MoniToolTypedValue]): MoniToolTypedValue {.
    constructor, importcpp: "MoniTool_TypedValue(@)",
    header: "MoniTool_TypedValue.hxx".}
proc internals*(this: MoniToolTypedValue; interp: var MoniToolValueInterpret;
               satisf: var MoniToolValueSatisfies; satisname: var StandardCString;
    enums: var NCollectionDataMap[TCollectionAsciiString, StandardInteger]) {.
    noSideEffect, importcpp: "Internals", header: "MoniTool_TypedValue.hxx".}
proc name*(this: MoniToolTypedValue): StandardCString {.noSideEffect,
    importcpp: "Name", header: "MoniTool_TypedValue.hxx".}
proc valueType*(this: MoniToolTypedValue): MoniToolValueType {.noSideEffect,
    importcpp: "ValueType", header: "MoniTool_TypedValue.hxx".}
proc definition*(this: MoniToolTypedValue): TCollectionAsciiString {.noSideEffect,
    importcpp: "Definition", header: "MoniTool_TypedValue.hxx".}
proc setDefinition*(this: var MoniToolTypedValue; deftext: StandardCString) {.
    importcpp: "SetDefinition", header: "MoniTool_TypedValue.hxx".}
proc print*(this: MoniToolTypedValue; s: var StandardOStream) {.noSideEffect,
    importcpp: "Print", header: "MoniTool_TypedValue.hxx".}
proc printValue*(this: MoniToolTypedValue; s: var StandardOStream) {.noSideEffect,
    importcpp: "PrintValue", header: "MoniTool_TypedValue.hxx".}
proc addDef*(this: var MoniToolTypedValue; initext: StandardCString): StandardBoolean {.
    importcpp: "AddDef", header: "MoniTool_TypedValue.hxx".}
proc setLabel*(this: var MoniToolTypedValue; label: StandardCString) {.
    importcpp: "SetLabel", header: "MoniTool_TypedValue.hxx".}
proc label*(this: MoniToolTypedValue): StandardCString {.noSideEffect,
    importcpp: "Label", header: "MoniTool_TypedValue.hxx".}
proc setMaxLength*(this: var MoniToolTypedValue; max: StandardInteger) {.
    importcpp: "SetMaxLength", header: "MoniTool_TypedValue.hxx".}
proc maxLength*(this: MoniToolTypedValue): StandardInteger {.noSideEffect,
    importcpp: "MaxLength", header: "MoniTool_TypedValue.hxx".}
proc setIntegerLimit*(this: var MoniToolTypedValue; max: StandardBoolean;
                     val: StandardInteger) {.importcpp: "SetIntegerLimit",
    header: "MoniTool_TypedValue.hxx".}
proc integerLimit*(this: MoniToolTypedValue; max: StandardBoolean;
                  val: var StandardInteger): StandardBoolean {.noSideEffect,
    importcpp: "IntegerLimit", header: "MoniTool_TypedValue.hxx".}
proc setRealLimit*(this: var MoniToolTypedValue; max: StandardBoolean;
                  val: StandardReal) {.importcpp: "SetRealLimit",
                                     header: "MoniTool_TypedValue.hxx".}
proc realLimit*(this: MoniToolTypedValue; max: StandardBoolean; val: var StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "RealLimit", header: "MoniTool_TypedValue.hxx".}
proc setUnitDef*(this: var MoniToolTypedValue; def: StandardCString) {.
    importcpp: "SetUnitDef", header: "MoniTool_TypedValue.hxx".}
proc unitDef*(this: MoniToolTypedValue): StandardCString {.noSideEffect,
    importcpp: "UnitDef", header: "MoniTool_TypedValue.hxx".}
proc startEnum*(this: var MoniToolTypedValue; start: StandardInteger = 0;
               match: StandardBoolean = standardTrue) {.importcpp: "StartEnum",
    header: "MoniTool_TypedValue.hxx".}
proc addEnum*(this: var MoniToolTypedValue; v1: StandardCString = "";
             v2: StandardCString = ""; v3: StandardCString = "";
             v4: StandardCString = ""; v5: StandardCString = "";
             v6: StandardCString = ""; v7: StandardCString = "";
             v8: StandardCString = ""; v9: StandardCString = "";
             v10: StandardCString = "") {.importcpp: "AddEnum",
                                      header: "MoniTool_TypedValue.hxx".}
proc addEnumValue*(this: var MoniToolTypedValue; val: StandardCString;
                  num: StandardInteger) {.importcpp: "AddEnumValue",
                                        header: "MoniTool_TypedValue.hxx".}
proc enumDef*(this: MoniToolTypedValue; startcase: var StandardInteger;
             endcase: var StandardInteger; match: var StandardBoolean): StandardBoolean {.
    noSideEffect, importcpp: "EnumDef", header: "MoniTool_TypedValue.hxx".}
proc enumVal*(this: MoniToolTypedValue; num: StandardInteger): StandardCString {.
    noSideEffect, importcpp: "EnumVal", header: "MoniTool_TypedValue.hxx".}
proc enumCase*(this: MoniToolTypedValue; val: StandardCString): StandardInteger {.
    noSideEffect, importcpp: "EnumCase", header: "MoniTool_TypedValue.hxx".}
proc setObjectType*(this: var MoniToolTypedValue; typ: Handle[StandardType]) {.
    importcpp: "SetObjectType", header: "MoniTool_TypedValue.hxx".}
proc objectType*(this: MoniToolTypedValue): Handle[StandardType] {.noSideEffect,
    importcpp: "ObjectType", header: "MoniTool_TypedValue.hxx".}
proc setInterpret*(this: var MoniToolTypedValue; `func`: MoniToolValueInterpret) {.
    importcpp: "SetInterpret", header: "MoniTool_TypedValue.hxx".}
proc hasInterpret*(this: MoniToolTypedValue): StandardBoolean {.noSideEffect,
    importcpp: "HasInterpret", header: "MoniTool_TypedValue.hxx".}
proc setSatisfies*(this: var MoniToolTypedValue; `func`: MoniToolValueSatisfies;
                  name: StandardCString) {.importcpp: "SetSatisfies",
    header: "MoniTool_TypedValue.hxx".}
proc satisfiesName*(this: MoniToolTypedValue): StandardCString {.noSideEffect,
    importcpp: "SatisfiesName", header: "MoniTool_TypedValue.hxx".}
proc isSetValue*(this: MoniToolTypedValue): StandardBoolean {.noSideEffect,
    importcpp: "IsSetValue", header: "MoniTool_TypedValue.hxx".}
proc cStringValue*(this: MoniToolTypedValue): StandardCString {.noSideEffect,
    importcpp: "CStringValue", header: "MoniTool_TypedValue.hxx".}
proc hStringValue*(this: MoniToolTypedValue): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "HStringValue", header: "MoniTool_TypedValue.hxx".}
proc interpret*(this: MoniToolTypedValue; hval: Handle[TCollectionHAsciiString];
               native: StandardBoolean): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Interpret", header: "MoniTool_TypedValue.hxx".}
proc satisfies*(this: MoniToolTypedValue; hval: Handle[TCollectionHAsciiString]): StandardBoolean {.
    noSideEffect, importcpp: "Satisfies", header: "MoniTool_TypedValue.hxx".}
proc clearValue*(this: var MoniToolTypedValue) {.importcpp: "ClearValue",
    header: "MoniTool_TypedValue.hxx".}
proc setCStringValue*(this: var MoniToolTypedValue; val: StandardCString): StandardBoolean {.
    importcpp: "SetCStringValue", header: "MoniTool_TypedValue.hxx".}
proc setHStringValue*(this: var MoniToolTypedValue;
                     hval: Handle[TCollectionHAsciiString]): StandardBoolean {.
    importcpp: "SetHStringValue", header: "MoniTool_TypedValue.hxx".}
proc integerValue*(this: MoniToolTypedValue): StandardInteger {.noSideEffect,
    importcpp: "IntegerValue", header: "MoniTool_TypedValue.hxx".}
proc setIntegerValue*(this: var MoniToolTypedValue; ival: StandardInteger): StandardBoolean {.
    importcpp: "SetIntegerValue", header: "MoniTool_TypedValue.hxx".}
proc realValue*(this: MoniToolTypedValue): StandardReal {.noSideEffect,
    importcpp: "RealValue", header: "MoniTool_TypedValue.hxx".}
proc setRealValue*(this: var MoniToolTypedValue; rval: StandardReal): StandardBoolean {.
    importcpp: "SetRealValue", header: "MoniTool_TypedValue.hxx".}
proc objectValue*(this: MoniToolTypedValue): Handle[StandardTransient] {.
    noSideEffect, importcpp: "ObjectValue", header: "MoniTool_TypedValue.hxx".}
proc getObjectValue*(this: MoniToolTypedValue; val: var Handle[StandardTransient]) {.
    noSideEffect, importcpp: "GetObjectValue", header: "MoniTool_TypedValue.hxx".}
proc setObjectValue*(this: var MoniToolTypedValue; obj: Handle[StandardTransient]): StandardBoolean {.
    importcpp: "SetObjectValue", header: "MoniTool_TypedValue.hxx".}
proc objectTypeName*(this: MoniToolTypedValue): StandardCString {.noSideEffect,
    importcpp: "ObjectTypeName", header: "MoniTool_TypedValue.hxx".}
proc addLib*(tv: Handle[MoniToolTypedValue]; def: StandardCString = ""): StandardBoolean {.
    importcpp: "MoniTool_TypedValue::AddLib(@)", header: "MoniTool_TypedValue.hxx".}
proc lib*(def: StandardCString): Handle[MoniToolTypedValue] {.
    importcpp: "MoniTool_TypedValue::Lib(@)", header: "MoniTool_TypedValue.hxx".}
proc fromLib*(def: StandardCString): Handle[MoniToolTypedValue] {.
    importcpp: "MoniTool_TypedValue::FromLib(@)",
    header: "MoniTool_TypedValue.hxx".}
proc libList*(): Handle[TColStdHSequenceOfAsciiString] {.
    importcpp: "MoniTool_TypedValue::LibList(@)",
    header: "MoniTool_TypedValue.hxx".}
proc staticValue*(name: StandardCString): Handle[MoniToolTypedValue] {.
    importcpp: "MoniTool_TypedValue::StaticValue(@)",
    header: "MoniTool_TypedValue.hxx".}
type
  MoniToolTypedValuebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "MoniTool_TypedValue::get_type_name(@)",
                            header: "MoniTool_TypedValue.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MoniTool_TypedValue::get_type_descriptor(@)",
    header: "MoniTool_TypedValue.hxx".}
proc dynamicType*(this: MoniToolTypedValue): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MoniTool_TypedValue.hxx".}

