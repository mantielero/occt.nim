import stepcafcontrol_types
import ../standard/standard_types
import ../tcollection/tcollection_types
import ../topods/topods_types
import ../xcafdimtolobjects/xcafdimtolobjects_types
#
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

## ! This class provides tools for access (read)
## ! the GDT properties.


proc newSTEPCAFControl_GDTProperty*(): STEPCAFControl_GDTProperty {.cdecl,
    constructor, importcpp: "STEPCAFControl_GDTProperty(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc getDimModifiers*(theCRI: Handle[StepRepr_CompoundRepresentationItem];
    theModifiers: var XCAFDimTolObjects_DimensionModifiersSequence) {.cdecl,
    importcpp: "STEPCAFControl_GDTProperty::GetDimModifiers(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc getDimClassOfTolerance*(theLAF: Handle[StepShape_LimitsAndFits];
                            theHolle: var bool;
                            theFV: var XCAFDimTolObjects_DimensionFormVariance;
                            theG: var XCAFDimTolObjects_DimensionGrade) {.cdecl,
    importcpp: "STEPCAFControl_GDTProperty::GetDimClassOfTolerance(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc getDimType*(theName: Handle[TCollection_HAsciiString];
                theType: var XCAFDimTolObjects_DimensionType): bool {.cdecl,
    importcpp: "STEPCAFControl_GDTProperty::GetDimType(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc getDatumTargetType*(theDescription: Handle[TCollection_HAsciiString];
                        theType: var XCAFDimTolObjects_DatumTargetType): bool {.
    cdecl, importcpp: "STEPCAFControl_GDTProperty::GetDatumTargetType(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc getDimQualifierType*(theDescription: Handle[TCollection_HAsciiString];
                         theType: var XCAFDimTolObjects_DimensionQualifier): bool {.
    cdecl, importcpp: "STEPCAFControl_GDTProperty::GetDimQualifierType(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc getTolValueType*(theDescription: Handle[TCollection_HAsciiString];
                     theType: var XCAFDimTolObjects_GeomToleranceTypeValue): bool {.
    cdecl, importcpp: "STEPCAFControl_GDTProperty::GetTolValueType(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc getTolValueType*(theType: XCAFDimTolObjects_GeomToleranceTypeValue): Handle[
    TCollection_HAsciiString] {.cdecl, importcpp: "STEPCAFControl_GDTProperty::GetTolValueType(@)",
                               header: "STEPCAFControl_GDTProperty.hxx".}
proc getDimTypeName*(theType: XCAFDimTolObjects_DimensionType): Handle[
    TCollection_HAsciiString] {.cdecl, importcpp: "STEPCAFControl_GDTProperty::GetDimTypeName(@)",
                               header: "STEPCAFControl_GDTProperty.hxx".}
proc getDimQualifierName*(theQualifier: XCAFDimTolObjects_DimensionQualifier): Handle[
    TCollection_HAsciiString] {.cdecl, importcpp: "STEPCAFControl_GDTProperty::GetDimQualifierName(@)",
                               header: "STEPCAFControl_GDTProperty.hxx".}
proc getDimModifierName*(theModifier: XCAFDimTolObjects_DimensionModif): Handle[
    TCollection_HAsciiString] {.cdecl, importcpp: "STEPCAFControl_GDTProperty::GetDimModifierName(@)",
                               header: "STEPCAFControl_GDTProperty.hxx".}
proc getLimitsAndFits*(theHole: bool;
                      theFormVariance: XCAFDimTolObjects_DimensionFormVariance;
                      theGrade: XCAFDimTolObjects_DimensionGrade): Handle[
    StepShape_LimitsAndFits] {.cdecl, importcpp: "STEPCAFControl_GDTProperty::GetLimitsAndFits(@)",
                              header: "STEPCAFControl_GDTProperty.hxx".}
proc getDatumTargetName*(theDatumType: XCAFDimTolObjects_DatumTargetType): Handle[
    TCollection_HAsciiString] {.cdecl, importcpp: "STEPCAFControl_GDTProperty::GetDatumTargetName(@)",
                               header: "STEPCAFControl_GDTProperty.hxx".}
proc isDimensionalLocation*(theType: XCAFDimTolObjects_DimensionType): bool {.cdecl,
    importcpp: "STEPCAFControl_GDTProperty::IsDimensionalLocation(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc isDimensionalSize*(theType: XCAFDimTolObjects_DimensionType): bool {.cdecl,
    importcpp: "STEPCAFControl_GDTProperty::IsDimensionalSize(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc getGeomToleranceType*(theType: XCAFDimTolObjects_GeomToleranceType): StepDimTol_GeometricToleranceType {.
    cdecl, importcpp: "STEPCAFControl_GDTProperty::GetGeomToleranceType(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc getGeomToleranceType*(theType: StepDimTol_GeometricToleranceType): XCAFDimTolObjects_GeomToleranceType {.
    cdecl, importcpp: "STEPCAFControl_GDTProperty::GetGeomToleranceType(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc getGeomTolerance*(theType: XCAFDimTolObjects_GeomToleranceType): Handle[
    StepDimTol_GeometricTolerance] {.cdecl, importcpp: "STEPCAFControl_GDTProperty::GetGeomTolerance(@)",
                                    header: "STEPCAFControl_GDTProperty.hxx".}
proc getGeomToleranceModifier*(theModifier: XCAFDimTolObjects_GeomToleranceModif): StepDimTol_GeometricToleranceModifier {.
    cdecl, importcpp: "STEPCAFControl_GDTProperty::GetGeomToleranceModifier(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc getDatumRefModifiers*(theModifiers: XCAFDimTolObjects_DatumModifiersSequence;
    theModifWithVal: XCAFDimTolObjects_DatumModifWithValue; theValue: cfloat;
                          theUnit: StepBasic_Unit): Handle[
    StepDimTol_HArray1OfDatumReferenceModifier] {.cdecl,
    importcpp: "STEPCAFControl_GDTProperty::GetDatumRefModifiers(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc getTessellation*(theShape: TopoDS_Shape): Handle[
    StepVisual_TessellatedGeometricSet] {.cdecl,
    importcpp: "STEPCAFControl_GDTProperty::GetTessellation(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}