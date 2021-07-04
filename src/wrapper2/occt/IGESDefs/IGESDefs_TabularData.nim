##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( SIVA )
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
  ../TColStd/TColStd_HArray1OfInteger, ../IGESData/IGESData_IGESEntity,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../TColStd/TColStd_HArray1OfReal

discard "forward decl of IGESBasic_HArray1OfHArray1OfReal"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESDefs_TabularData"
discard "forward decl of IGESDefs_TabularData"
type
  Handle_IGESDefs_TabularData* = handle[IGESDefs_TabularData]

## ! Defines IGES Tabular Data, Type <406> Form <11>,
## ! in package IGESDefs
## ! This Class is used to provide a Structure to accomodate
## ! point form data.

type
  IGESDefs_TabularData* {.importcpp: "IGESDefs_TabularData",
                         header: "IGESDefs_TabularData.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDefs_TabularData*(): IGESDefs_TabularData {.constructor,
    importcpp: "IGESDefs_TabularData(@)", header: "IGESDefs_TabularData.hxx".}
proc Init*(this: var IGESDefs_TabularData; nbProps: Standard_Integer;
          propType: Standard_Integer; typesInd: handle[TColStd_HArray1OfInteger];
          nbValuesInd: handle[TColStd_HArray1OfInteger];
          valuesInd: handle[IGESBasic_HArray1OfHArray1OfReal];
          valuesDep: handle[IGESBasic_HArray1OfHArray1OfReal]) {.
    importcpp: "Init", header: "IGESDefs_TabularData.hxx".}
proc NbPropertyValues*(this: IGESDefs_TabularData): Standard_Integer {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESDefs_TabularData.hxx".}
proc ComputedNbPropertyValues*(this: IGESDefs_TabularData): Standard_Integer {.
    noSideEffect, importcpp: "ComputedNbPropertyValues",
    header: "IGESDefs_TabularData.hxx".}
proc OwnCorrect*(this: var IGESDefs_TabularData): Standard_Boolean {.
    importcpp: "OwnCorrect", header: "IGESDefs_TabularData.hxx".}
proc PropertyType*(this: IGESDefs_TabularData): Standard_Integer {.noSideEffect,
    importcpp: "PropertyType", header: "IGESDefs_TabularData.hxx".}
proc NbDependents*(this: IGESDefs_TabularData): Standard_Integer {.noSideEffect,
    importcpp: "NbDependents", header: "IGESDefs_TabularData.hxx".}
proc NbIndependents*(this: IGESDefs_TabularData): Standard_Integer {.noSideEffect,
    importcpp: "NbIndependents", header: "IGESDefs_TabularData.hxx".}
proc TypeOfIndependents*(this: IGESDefs_TabularData; num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "TypeOfIndependents",
    header: "IGESDefs_TabularData.hxx".}
proc NbValues*(this: IGESDefs_TabularData; num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbValues", header: "IGESDefs_TabularData.hxx".}
proc IndependentValue*(this: IGESDefs_TabularData; variablenum: Standard_Integer;
                      valuenum: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "IndependentValue", header: "IGESDefs_TabularData.hxx".}
proc DependentValues*(this: IGESDefs_TabularData; num: Standard_Integer): handle[
    TColStd_HArray1OfReal] {.noSideEffect, importcpp: "DependentValues",
                            header: "IGESDefs_TabularData.hxx".}
proc DependentValue*(this: IGESDefs_TabularData; variablenum: Standard_Integer;
                    valuenum: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "DependentValue", header: "IGESDefs_TabularData.hxx".}
type
  IGESDefs_TabularDatabase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDefs_TabularData::get_type_name(@)",
                              header: "IGESDefs_TabularData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDefs_TabularData::get_type_descriptor(@)",
    header: "IGESDefs_TabularData.hxx".}
proc DynamicType*(this: IGESDefs_TabularData): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDefs_TabularData.hxx".}