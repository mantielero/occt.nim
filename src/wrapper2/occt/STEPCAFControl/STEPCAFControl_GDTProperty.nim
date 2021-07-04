##  Created on: 2015-09-10
##  Created by: Irina Krylova
##  Copyright (c) 1999-2015 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_Ax2, ../STEPConstruct/STEPConstruct_Tool,
  ../Standard/Standard_Boolean, ../Standard/Standard_CString,
  ../StepBasic/StepBasic_Unit, ../StepDimTol/StepDimTol_GeometricTolerance,
  ../StepDimTol/StepDimTol_GeometricToleranceModifier,
  ../StepDimTol/StepDimTol_GeometricToleranceType,
  ../StepDimTol/StepDimTol_HArray1OfDatumReferenceModifier,
  ../StepGeom/StepGeom_Axis2Placement3d,
  ../StepRepr/StepRepr_CompoundRepresentationItem,
  ../StepVisual/StepVisual_TessellatedGeometricSet,
  ../XCAFDimTolObjects/XCAFDimTolObjects_DimensionModifiersSequence,
  ../StepShape/StepShape_LimitsAndFits,
  ../XCAFDimTolObjects/XCAFDimTolObjects_DatumModifiersSequence,
  ../XCAFDimTolObjects/XCAFDimTolObjects_DatumModifWithValue,
  ../XCAFDimTolObjects/XCAFDimTolObjects_DimensionFormVariance,
  ../XCAFDimTolObjects/XCAFDimTolObjects_DimensionGrade,
  ../XCAFDimTolObjects/XCAFDimTolObjects_DimensionType,
  ../XCAFDimTolObjects/XCAFDimTolObjects_DatumTargetType,
  ../XCAFDimTolObjects/XCAFDimTolObjects_DimensionQualifier,
  ../XCAFDimTolObjects/XCAFDimTolObjects_GeomToleranceModif,
  ../XCAFDimTolObjects/XCAFDimTolObjects_GeomToleranceType,
  ../XCAFDimTolObjects/XCAFDimTolObjects_GeomToleranceTypeValue

## ! This class provides tools for access (read)
## ! the GDT properties.

type
  STEPCAFControl_GDTProperty* {.importcpp: "STEPCAFControl_GDTProperty",
                               header: "STEPCAFControl_GDTProperty.hxx", bycopy.} = object


proc constructSTEPCAFControl_GDTProperty*(): STEPCAFControl_GDTProperty {.
    constructor, importcpp: "STEPCAFControl_GDTProperty(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc GetDimModifiers*(theCRI: handle[StepRepr_CompoundRepresentationItem];
    theModifiers: var XCAFDimTolObjects_DimensionModifiersSequence) {.
    importcpp: "STEPCAFControl_GDTProperty::GetDimModifiers(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc GetDimClassOfTolerance*(theLAF: handle[StepShape_LimitsAndFits];
                            theHolle: var Standard_Boolean;
                            theFV: var XCAFDimTolObjects_DimensionFormVariance;
                            theG: var XCAFDimTolObjects_DimensionGrade) {.
    importcpp: "STEPCAFControl_GDTProperty::GetDimClassOfTolerance(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc GetDimType*(theName: handle[TCollection_HAsciiString];
                theType: var XCAFDimTolObjects_DimensionType): Standard_Boolean {.
    importcpp: "STEPCAFControl_GDTProperty::GetDimType(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc GetDatumTargetType*(theDescription: handle[TCollection_HAsciiString];
                        theType: var XCAFDimTolObjects_DatumTargetType): Standard_Boolean {.
    importcpp: "STEPCAFControl_GDTProperty::GetDatumTargetType(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc GetDimQualifierType*(theDescription: handle[TCollection_HAsciiString];
                         theType: var XCAFDimTolObjects_DimensionQualifier): Standard_Boolean {.
    importcpp: "STEPCAFControl_GDTProperty::GetDimQualifierType(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc GetTolValueType*(theDescription: handle[TCollection_HAsciiString];
                     theType: var XCAFDimTolObjects_GeomToleranceTypeValue): Standard_Boolean {.
    importcpp: "STEPCAFControl_GDTProperty::GetTolValueType(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc GetTolValueType*(theType: XCAFDimTolObjects_GeomToleranceTypeValue): handle[
    TCollection_HAsciiString] {.importcpp: "STEPCAFControl_GDTProperty::GetTolValueType(@)",
                               header: "STEPCAFControl_GDTProperty.hxx".}
proc GetDimTypeName*(theType: XCAFDimTolObjects_DimensionType): handle[
    TCollection_HAsciiString] {.importcpp: "STEPCAFControl_GDTProperty::GetDimTypeName(@)",
                               header: "STEPCAFControl_GDTProperty.hxx".}
proc GetDimQualifierName*(theQualifier: XCAFDimTolObjects_DimensionQualifier): handle[
    TCollection_HAsciiString] {.importcpp: "STEPCAFControl_GDTProperty::GetDimQualifierName(@)",
                               header: "STEPCAFControl_GDTProperty.hxx".}
proc GetDimModifierName*(theModifier: XCAFDimTolObjects_DimensionModif): handle[
    TCollection_HAsciiString] {.importcpp: "STEPCAFControl_GDTProperty::GetDimModifierName(@)",
                               header: "STEPCAFControl_GDTProperty.hxx".}
proc GetLimitsAndFits*(theHole: Standard_Boolean;
                      theFormVariance: XCAFDimTolObjects_DimensionFormVariance;
                      theGrade: XCAFDimTolObjects_DimensionGrade): handle[
    StepShape_LimitsAndFits] {.importcpp: "STEPCAFControl_GDTProperty::GetLimitsAndFits(@)",
                              header: "STEPCAFControl_GDTProperty.hxx".}
proc GetDatumTargetName*(theDatumType: XCAFDimTolObjects_DatumTargetType): handle[
    TCollection_HAsciiString] {.importcpp: "STEPCAFControl_GDTProperty::GetDatumTargetName(@)",
                               header: "STEPCAFControl_GDTProperty.hxx".}
proc IsDimensionalLocation*(theType: XCAFDimTolObjects_DimensionType): Standard_Boolean {.
    importcpp: "STEPCAFControl_GDTProperty::IsDimensionalLocation(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc IsDimensionalSize*(theType: XCAFDimTolObjects_DimensionType): Standard_Boolean {.
    importcpp: "STEPCAFControl_GDTProperty::IsDimensionalSize(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc GetGeomToleranceType*(theType: XCAFDimTolObjects_GeomToleranceType): StepDimTol_GeometricToleranceType {.
    importcpp: "STEPCAFControl_GDTProperty::GetGeomToleranceType(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc GetGeomToleranceType*(theType: StepDimTol_GeometricToleranceType): XCAFDimTolObjects_GeomToleranceType {.
    importcpp: "STEPCAFControl_GDTProperty::GetGeomToleranceType(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc GetGeomTolerance*(theType: XCAFDimTolObjects_GeomToleranceType): handle[
    StepDimTol_GeometricTolerance] {.importcpp: "STEPCAFControl_GDTProperty::GetGeomTolerance(@)",
                                    header: "STEPCAFControl_GDTProperty.hxx".}
proc GetGeomToleranceModifier*(theModifier: XCAFDimTolObjects_GeomToleranceModif): StepDimTol_GeometricToleranceModifier {.
    importcpp: "STEPCAFControl_GDTProperty::GetGeomToleranceModifier(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc GetDatumRefModifiers*(theModifiers: XCAFDimTolObjects_DatumModifiersSequence;
    theModifWithVal: XCAFDimTolObjects_DatumModifWithValue;
                          theValue: Standard_Real; theUnit: StepBasic_Unit): handle[
    StepDimTol_HArray1OfDatumReferenceModifier] {.
    importcpp: "STEPCAFControl_GDTProperty::GetDatumRefModifiers(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc GetTessellation*(theShape: TopoDS_Shape): handle[
    StepVisual_TessellatedGeometricSet] {.
    importcpp: "STEPCAFControl_GDTProperty::GetTessellation(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}