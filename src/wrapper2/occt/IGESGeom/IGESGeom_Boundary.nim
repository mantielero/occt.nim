##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen (Kiran)
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
  ../IGESData/IGESData_HArray1OfIGESEntity, ../TColStd/TColStd_HArray1OfInteger,
  ../IGESData/IGESData_IGESEntity

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESBasic_HArray1OfHArray1OfIGESEntity"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESGeom_Boundary"
discard "forward decl of IGESGeom_Boundary"
type
  Handle_IGESGeom_Boundary* = handle[IGESGeom_Boundary]

## ! defines IGESBoundary, Type <141> Form <0>
## ! in package IGESGeom
## ! A boundary entity identifies a surface boundary consisting
## ! of a set of curves lying on the surface

type
  IGESGeom_Boundary* {.importcpp: "IGESGeom_Boundary",
                      header: "IGESGeom_Boundary.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGeom_Boundary*(): IGESGeom_Boundary {.constructor,
    importcpp: "IGESGeom_Boundary(@)", header: "IGESGeom_Boundary.hxx".}
proc Init*(this: var IGESGeom_Boundary; aType: Standard_Integer;
          aPreference: Standard_Integer; aSurface: handle[IGESData_IGESEntity];
          allModelCurves: handle[IGESData_HArray1OfIGESEntity];
          allSenses: handle[TColStd_HArray1OfInteger];
          allParameterCurves: handle[IGESBasic_HArray1OfHArray1OfIGESEntity]) {.
    importcpp: "Init", header: "IGESGeom_Boundary.hxx".}
proc BoundaryType*(this: IGESGeom_Boundary): Standard_Integer {.noSideEffect,
    importcpp: "BoundaryType", header: "IGESGeom_Boundary.hxx".}
proc PreferenceType*(this: IGESGeom_Boundary): Standard_Integer {.noSideEffect,
    importcpp: "PreferenceType", header: "IGESGeom_Boundary.hxx".}
proc Surface*(this: IGESGeom_Boundary): handle[IGESData_IGESEntity] {.noSideEffect,
    importcpp: "Surface", header: "IGESGeom_Boundary.hxx".}
proc NbModelSpaceCurves*(this: IGESGeom_Boundary): Standard_Integer {.noSideEffect,
    importcpp: "NbModelSpaceCurves", header: "IGESGeom_Boundary.hxx".}
proc ModelSpaceCurve*(this: IGESGeom_Boundary; Index: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "ModelSpaceCurve",
                          header: "IGESGeom_Boundary.hxx".}
proc Sense*(this: IGESGeom_Boundary; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Sense", header: "IGESGeom_Boundary.hxx".}
proc NbParameterCurves*(this: IGESGeom_Boundary; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbParameterCurves", header: "IGESGeom_Boundary.hxx".}
proc ParameterCurves*(this: IGESGeom_Boundary; Index: Standard_Integer): handle[
    IGESData_HArray1OfIGESEntity] {.noSideEffect, importcpp: "ParameterCurves",
                                   header: "IGESGeom_Boundary.hxx".}
proc ParameterCurve*(this: IGESGeom_Boundary; Index: Standard_Integer;
                    Num: Standard_Integer): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "ParameterCurve", header: "IGESGeom_Boundary.hxx".}
type
  IGESGeom_Boundarybase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGeom_Boundary::get_type_name(@)",
                              header: "IGESGeom_Boundary.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGeom_Boundary::get_type_descriptor(@)",
    header: "IGESGeom_Boundary.hxx".}
proc DynamicType*(this: IGESGeom_Boundary): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_Boundary.hxx".}