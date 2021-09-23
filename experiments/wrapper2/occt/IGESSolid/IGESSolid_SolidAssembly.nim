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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../IGESData/IGESData_HArray1OfIGESEntity,
  ../IGESGeom/IGESGeom_HArray1OfTransformationMatrix,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESGeom_TransformationMatrix"
discard "forward decl of IGESSolid_SolidAssembly"
discard "forward decl of IGESSolid_SolidAssembly"
type
  Handle_IGESSolid_SolidAssembly* = handle[IGESSolid_SolidAssembly]

## ! defines SolidAssembly, Type <184> Form <0>
## ! in package IGESSolid
## ! Solid assembly is a collection of items which possess a
## ! shared fixed geometric relationship.
## !
## ! From IGES-5.3, From 1 says that at least one item is a Brep
## ! else all are Primitives, Boolean Trees, Solid Instances or
## ! other Assemblies

type
  IGESSolid_SolidAssembly* {.importcpp: "IGESSolid_SolidAssembly",
                            header: "IGESSolid_SolidAssembly.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESSolid_SolidAssembly*(): IGESSolid_SolidAssembly {.constructor,
    importcpp: "IGESSolid_SolidAssembly(@)", header: "IGESSolid_SolidAssembly.hxx".}
proc Init*(this: var IGESSolid_SolidAssembly;
          allItems: handle[IGESData_HArray1OfIGESEntity];
          allMatrices: handle[IGESGeom_HArray1OfTransformationMatrix]) {.
    importcpp: "Init", header: "IGESSolid_SolidAssembly.hxx".}
proc HasBrep*(this: IGESSolid_SolidAssembly): Standard_Boolean {.noSideEffect,
    importcpp: "HasBrep", header: "IGESSolid_SolidAssembly.hxx".}
proc SetBrep*(this: var IGESSolid_SolidAssembly; hasbrep: Standard_Boolean) {.
    importcpp: "SetBrep", header: "IGESSolid_SolidAssembly.hxx".}
proc NbItems*(this: IGESSolid_SolidAssembly): Standard_Integer {.noSideEffect,
    importcpp: "NbItems", header: "IGESSolid_SolidAssembly.hxx".}
proc Item*(this: IGESSolid_SolidAssembly; Index: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "Item",
                          header: "IGESSolid_SolidAssembly.hxx".}
proc TransfMatrix*(this: IGESSolid_SolidAssembly; Index: Standard_Integer): handle[
    IGESGeom_TransformationMatrix] {.noSideEffect, importcpp: "TransfMatrix",
                                    header: "IGESSolid_SolidAssembly.hxx".}
type
  IGESSolid_SolidAssemblybase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESSolid_SolidAssembly::get_type_name(@)",
                              header: "IGESSolid_SolidAssembly.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_SolidAssembly::get_type_descriptor(@)",
    header: "IGESSolid_SolidAssembly.hxx".}
proc DynamicType*(this: IGESSolid_SolidAssembly): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSolid_SolidAssembly.hxx".}