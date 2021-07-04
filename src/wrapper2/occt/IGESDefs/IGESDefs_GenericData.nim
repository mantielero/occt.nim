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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../TColStd/TColStd_HArray1OfInteger, ../TColStd/TColStd_HArray1OfTransient,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NullObject"
discard "forward decl of Standard_Transient"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESDefs_GenericData"
discard "forward decl of IGESDefs_GenericData"
type
  Handle_IGESDefs_GenericData* = handle[IGESDefs_GenericData]

## ! defines IGES Generic Data, Type <406> Form <27>
## ! in package IGESDefs
## ! Used to communicate information defined by the system
## ! operator while creating the model. The information is
## ! system specific and does not map into one of the
## ! predefined properties or associativities. Properties
## ! and property values can be defined by multiple
## ! instances of this property.

type
  IGESDefs_GenericData* {.importcpp: "IGESDefs_GenericData",
                         header: "IGESDefs_GenericData.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDefs_GenericData*(): IGESDefs_GenericData {.constructor,
    importcpp: "IGESDefs_GenericData(@)", header: "IGESDefs_GenericData.hxx".}
proc Init*(this: var IGESDefs_GenericData; nbPropVal: Standard_Integer;
          aName: handle[TCollection_HAsciiString];
          allTypes: handle[TColStd_HArray1OfInteger];
          allValues: handle[TColStd_HArray1OfTransient]) {.importcpp: "Init",
    header: "IGESDefs_GenericData.hxx".}
proc NbPropertyValues*(this: IGESDefs_GenericData): Standard_Integer {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESDefs_GenericData.hxx".}
proc Name*(this: IGESDefs_GenericData): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "IGESDefs_GenericData.hxx".}
proc NbTypeValuePairs*(this: IGESDefs_GenericData): Standard_Integer {.noSideEffect,
    importcpp: "NbTypeValuePairs", header: "IGESDefs_GenericData.hxx".}
proc Type*(this: IGESDefs_GenericData; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Type", header: "IGESDefs_GenericData.hxx".}
proc Value*(this: IGESDefs_GenericData; Index: Standard_Integer): handle[
    Standard_Transient] {.noSideEffect, importcpp: "Value",
                         header: "IGESDefs_GenericData.hxx".}
proc ValueAsInteger*(this: IGESDefs_GenericData; ValueNum: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "ValueAsInteger", header: "IGESDefs_GenericData.hxx".}
proc ValueAsReal*(this: IGESDefs_GenericData; ValueNum: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "ValueAsReal", header: "IGESDefs_GenericData.hxx".}
proc ValueAsString*(this: IGESDefs_GenericData; ValueNum: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "ValueAsString",
                               header: "IGESDefs_GenericData.hxx".}
proc ValueAsEntity*(this: IGESDefs_GenericData; ValueNum: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "ValueAsEntity",
                          header: "IGESDefs_GenericData.hxx".}
proc ValueAsLogical*(this: IGESDefs_GenericData; ValueNum: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "ValueAsLogical", header: "IGESDefs_GenericData.hxx".}
type
  IGESDefs_GenericDatabase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDefs_GenericData::get_type_name(@)",
                              header: "IGESDefs_GenericData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDefs_GenericData::get_type_descriptor(@)",
    header: "IGESDefs_GenericData.hxx".}
proc DynamicType*(this: IGESDefs_GenericData): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDefs_GenericData.hxx".}