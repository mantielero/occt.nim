##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen (Anand NATRAJAN)
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NullObject"
discard "forward decl of Standard_Transient"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESDefs_GenericData"
discard "forward decl of IGESDefs_GenericData"
type
  HandleIGESDefsGenericData* = Handle[IGESDefsGenericData]

## ! defines IGES Generic Data, Type <406> Form <27>
## ! in package IGESDefs
## ! Used to communicate information defined by the system
## ! operator while creating the model. The information is
## ! system specific and does not map into one of the
## ! predefined properties or associativities. Properties
## ! and property values can be defined by multiple
## ! instances of this property.

type
  IGESDefsGenericData* {.importcpp: "IGESDefs_GenericData",
                        header: "IGESDefs_GenericData.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDefsGenericData*(): IGESDefsGenericData {.constructor,
    importcpp: "IGESDefs_GenericData(@)", header: "IGESDefs_GenericData.hxx".}
proc init*(this: var IGESDefsGenericData; nbPropVal: int;
          aName: Handle[TCollectionHAsciiString];
          allTypes: Handle[TColStdHArray1OfInteger];
          allValues: Handle[TColStdHArray1OfTransient]) {.importcpp: "Init",
    header: "IGESDefs_GenericData.hxx".}
proc nbPropertyValues*(this: IGESDefsGenericData): int {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESDefs_GenericData.hxx".}
proc name*(this: IGESDefsGenericData): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "IGESDefs_GenericData.hxx".}
proc nbTypeValuePairs*(this: IGESDefsGenericData): int {.noSideEffect,
    importcpp: "NbTypeValuePairs", header: "IGESDefs_GenericData.hxx".}
proc `type`*(this: IGESDefsGenericData; index: int): int {.noSideEffect,
    importcpp: "Type", header: "IGESDefs_GenericData.hxx".}
proc value*(this: IGESDefsGenericData; index: int): Handle[StandardTransient] {.
    noSideEffect, importcpp: "Value", header: "IGESDefs_GenericData.hxx".}
proc valueAsInteger*(this: IGESDefsGenericData; valueNum: int): int {.noSideEffect,
    importcpp: "ValueAsInteger", header: "IGESDefs_GenericData.hxx".}
proc valueAsReal*(this: IGESDefsGenericData; valueNum: int): float {.noSideEffect,
    importcpp: "ValueAsReal", header: "IGESDefs_GenericData.hxx".}
proc valueAsString*(this: IGESDefsGenericData; valueNum: int): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "ValueAsString",
                              header: "IGESDefs_GenericData.hxx".}
proc valueAsEntity*(this: IGESDefsGenericData; valueNum: int): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "ValueAsEntity",
                         header: "IGESDefs_GenericData.hxx".}
proc valueAsLogical*(this: IGESDefsGenericData; valueNum: int): bool {.noSideEffect,
    importcpp: "ValueAsLogical", header: "IGESDefs_GenericData.hxx".}
type
  IGESDefsGenericDatabaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDefs_GenericData::get_type_name(@)",
                            header: "IGESDefs_GenericData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDefs_GenericData::get_type_descriptor(@)",
    header: "IGESDefs_GenericData.hxx".}
proc dynamicType*(this: IGESDefsGenericData): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDefs_GenericData.hxx".}
