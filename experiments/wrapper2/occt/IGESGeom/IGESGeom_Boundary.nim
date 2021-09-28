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

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESBasic_HArray1OfHArray1OfIGESEntity"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESGeom_Boundary"
discard "forward decl of IGESGeom_Boundary"
type
  HandleC1C1* = Handle[IGESGeomBoundary]

## ! defines IGESBoundary, Type <141> Form <0>
## ! in package IGESGeom
## ! A boundary entity identifies a surface boundary consisting
## ! of a set of curves lying on the surface

type
  IGESGeomBoundary* {.importcpp: "IGESGeom_Boundary",
                     header: "IGESGeom_Boundary.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGeomBoundary*(): IGESGeomBoundary {.constructor,
    importcpp: "IGESGeom_Boundary(@)", header: "IGESGeom_Boundary.hxx".}
proc init*(this: var IGESGeomBoundary; aType: cint; aPreference: cint;
          aSurface: Handle[IGESDataIGESEntity];
          allModelCurves: Handle[IGESDataHArray1OfIGESEntity];
          allSenses: Handle[TColStdHArray1OfInteger];
          allParameterCurves: Handle[IGESBasicHArray1OfHArray1OfIGESEntity]) {.
    importcpp: "Init", header: "IGESGeom_Boundary.hxx".}
proc boundaryType*(this: IGESGeomBoundary): cint {.noSideEffect,
    importcpp: "BoundaryType", header: "IGESGeom_Boundary.hxx".}
proc preferenceType*(this: IGESGeomBoundary): cint {.noSideEffect,
    importcpp: "PreferenceType", header: "IGESGeom_Boundary.hxx".}
proc surface*(this: IGESGeomBoundary): Handle[IGESDataIGESEntity] {.noSideEffect,
    importcpp: "Surface", header: "IGESGeom_Boundary.hxx".}
proc nbModelSpaceCurves*(this: IGESGeomBoundary): cint {.noSideEffect,
    importcpp: "NbModelSpaceCurves", header: "IGESGeom_Boundary.hxx".}
proc modelSpaceCurve*(this: IGESGeomBoundary; index: cint): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "ModelSpaceCurve", header: "IGESGeom_Boundary.hxx".}
proc sense*(this: IGESGeomBoundary; index: cint): cint {.noSideEffect,
    importcpp: "Sense", header: "IGESGeom_Boundary.hxx".}
proc nbParameterCurves*(this: IGESGeomBoundary; index: cint): cint {.noSideEffect,
    importcpp: "NbParameterCurves", header: "IGESGeom_Boundary.hxx".}
proc parameterCurves*(this: IGESGeomBoundary; index: cint): Handle[
    IGESDataHArray1OfIGESEntity] {.noSideEffect, importcpp: "ParameterCurves",
                                  header: "IGESGeom_Boundary.hxx".}
proc parameterCurve*(this: IGESGeomBoundary; index: cint; num: cint): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "ParameterCurve",
                         header: "IGESGeom_Boundary.hxx".}
type
  IGESGeomBoundarybaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGeom_Boundary::get_type_name(@)",
                            header: "IGESGeom_Boundary.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGeom_Boundary::get_type_descriptor(@)",
    header: "IGESGeom_Boundary.hxx".}
proc dynamicType*(this: IGESGeomBoundary): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_Boundary.hxx".}

























