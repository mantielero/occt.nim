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

type
  STEPCAFControlGDTProperty* {.importcpp: "STEPCAFControl_GDTProperty",
                              header: "STEPCAFControl_GDTProperty.hxx", bycopy.} = object


proc constructSTEPCAFControlGDTProperty*(): STEPCAFControlGDTProperty {.
    constructor, importcpp: "STEPCAFControl_GDTProperty(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc getDimModifiers*(theCRI: Handle[StepReprCompoundRepresentationItem];
    theModifiers: var XCAFDimTolObjectsDimensionModifiersSequence) {.
    importcpp: "STEPCAFControl_GDTProperty::GetDimModifiers(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc getDimClassOfTolerance*(theLAF: Handle[StepShapeLimitsAndFits];
                            theHolle: var bool;
                            theFV: var XCAFDimTolObjectsDimensionFormVariance;
                            theG: var XCAFDimTolObjectsDimensionGrade) {.
    importcpp: "STEPCAFControl_GDTProperty::GetDimClassOfTolerance(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc getDimType*(theName: Handle[TCollectionHAsciiString];
                theType: var XCAFDimTolObjectsDimensionType): bool {.
    importcpp: "STEPCAFControl_GDTProperty::GetDimType(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc getDatumTargetType*(theDescription: Handle[TCollectionHAsciiString];
                        theType: var XCAFDimTolObjectsDatumTargetType): bool {.
    importcpp: "STEPCAFControl_GDTProperty::GetDatumTargetType(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc getDimQualifierType*(theDescription: Handle[TCollectionHAsciiString];
                         theType: var XCAFDimTolObjectsDimensionQualifier): bool {.
    importcpp: "STEPCAFControl_GDTProperty::GetDimQualifierType(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc getTolValueType*(theDescription: Handle[TCollectionHAsciiString];
                     theType: var XCAFDimTolObjectsGeomToleranceTypeValue): bool {.
    importcpp: "STEPCAFControl_GDTProperty::GetTolValueType(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc getTolValueType*(theType: XCAFDimTolObjectsGeomToleranceTypeValue): Handle[
    TCollectionHAsciiString] {.importcpp: "STEPCAFControl_GDTProperty::GetTolValueType(@)",
                              header: "STEPCAFControl_GDTProperty.hxx".}
proc getDimTypeName*(theType: XCAFDimTolObjectsDimensionType): Handle[
    TCollectionHAsciiString] {.importcpp: "STEPCAFControl_GDTProperty::GetDimTypeName(@)",
                              header: "STEPCAFControl_GDTProperty.hxx".}
proc getDimQualifierName*(theQualifier: XCAFDimTolObjectsDimensionQualifier): Handle[
    TCollectionHAsciiString] {.importcpp: "STEPCAFControl_GDTProperty::GetDimQualifierName(@)",
                              header: "STEPCAFControl_GDTProperty.hxx".}
proc getDimModifierName*(theModifier: XCAFDimTolObjectsDimensionModif): Handle[
    TCollectionHAsciiString] {.importcpp: "STEPCAFControl_GDTProperty::GetDimModifierName(@)",
                              header: "STEPCAFControl_GDTProperty.hxx".}
proc getLimitsAndFits*(theHole: bool;
                      theFormVariance: XCAFDimTolObjectsDimensionFormVariance;
                      theGrade: XCAFDimTolObjectsDimensionGrade): Handle[
    StepShapeLimitsAndFits] {.importcpp: "STEPCAFControl_GDTProperty::GetLimitsAndFits(@)",
                             header: "STEPCAFControl_GDTProperty.hxx".}
proc getDatumTargetName*(theDatumType: XCAFDimTolObjectsDatumTargetType): Handle[
    TCollectionHAsciiString] {.importcpp: "STEPCAFControl_GDTProperty::GetDatumTargetName(@)",
                              header: "STEPCAFControl_GDTProperty.hxx".}
proc isDimensionalLocation*(theType: XCAFDimTolObjectsDimensionType): bool {.
    importcpp: "STEPCAFControl_GDTProperty::IsDimensionalLocation(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc isDimensionalSize*(theType: XCAFDimTolObjectsDimensionType): bool {.
    importcpp: "STEPCAFControl_GDTProperty::IsDimensionalSize(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc getGeomToleranceType*(theType: XCAFDimTolObjectsGeomToleranceType): StepDimTolGeometricToleranceType {.
    importcpp: "STEPCAFControl_GDTProperty::GetGeomToleranceType(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc getGeomToleranceType*(theType: StepDimTolGeometricToleranceType): XCAFDimTolObjectsGeomToleranceType {.
    importcpp: "STEPCAFControl_GDTProperty::GetGeomToleranceType(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc getGeomTolerance*(theType: XCAFDimTolObjectsGeomToleranceType): Handle[
    StepDimTolGeometricTolerance] {.importcpp: "STEPCAFControl_GDTProperty::GetGeomTolerance(@)",
                                   header: "STEPCAFControl_GDTProperty.hxx".}
proc getGeomToleranceModifier*(theModifier: XCAFDimTolObjectsGeomToleranceModif): StepDimTolGeometricToleranceModifier {.
    importcpp: "STEPCAFControl_GDTProperty::GetGeomToleranceModifier(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc getDatumRefModifiers*(theModifiers: XCAFDimTolObjectsDatumModifiersSequence;
    theModifWithVal: XCAFDimTolObjectsDatumModifWithValue; theValue: float;
                          theUnit: StepBasicUnit): Handle[
    StepDimTolHArray1OfDatumReferenceModifier] {.
    importcpp: "STEPCAFControl_GDTProperty::GetDatumRefModifiers(@)",
    header: "STEPCAFControl_GDTProperty.hxx".}
proc getTessellation*(theShape: TopoDS_Shape): Handle[
    StepVisualTessellatedGeometricSet] {.importcpp: "STEPCAFControl_GDTProperty::GetTessellation(@)", header: "STEPCAFControl_GDTProperty.hxx".}
