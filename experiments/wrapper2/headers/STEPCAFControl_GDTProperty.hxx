// Created on: 2015-09-10
// Created by: Irina Krylova
// Copyright (c) 1999-2015 OPEN CASCADE SAS
//
// This file is part of Open CASCADE Technology software library.
//
// This library is free software; you can redistribute it and/or modify it under
// the terms of the GNU Lesser General Public License version 2.1 as published
// by the Free Software Foundation, with special exception defined in the file
// OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
// distribution for complete text of the license and disclaimer of any warranty.
//
// Alternatively, this file may be used under the terms of Open CASCADE
// commercial license or contractual agreement.

#ifndef _STEPCAFControl_GDTProperty_HeaderFile
#define _STEPCAFControl_GDTProperty_HeaderFile

#include "../Standard/Standard.hxx"
#include "../Standard/Standard_DefineAlloc.hxx"
#include "../Standard/Standard_Handle.hxx"

#include "../gp/gp_Ax2.hxx"
#include "../STEPConstruct/STEPConstruct_Tool.hxx"
#include "../Standard/Standard_Boolean.hxx"
#include "../Standard/Standard_CString.hxx"
#include "../StepBasic/StepBasic_Unit.hxx"
#include "../StepDimTol/StepDimTol_GeometricTolerance.hxx"
#include "../StepDimTol/StepDimTol_GeometricToleranceModifier.hxx"
#include "../StepDimTol/StepDimTol_GeometricToleranceType.hxx"
#include "../StepDimTol/StepDimTol_HArray1OfDatumReferenceModifier.hxx"
#include "../StepGeom/StepGeom_Axis2Placement3d.hxx"
#include "../StepRepr/StepRepr_CompoundRepresentationItem.hxx"
#include "../StepVisual/StepVisual_TessellatedGeometricSet.hxx"
#include "../XCAFDimTolObjects/XCAFDimTolObjects_DimensionModifiersSequence.hxx"
#include "../StepShape/StepShape_LimitsAndFits.hxx"
#include "../XCAFDimTolObjects/XCAFDimTolObjects_DatumModifiersSequence.hxx"
#include "../XCAFDimTolObjects/XCAFDimTolObjects_DatumModifWithValue.hxx"
#include "../XCAFDimTolObjects/XCAFDimTolObjects_DimensionFormVariance.hxx"
#include "../XCAFDimTolObjects/XCAFDimTolObjects_DimensionGrade.hxx"
#include "../XCAFDimTolObjects/XCAFDimTolObjects_DimensionType.hxx"
#include "../XCAFDimTolObjects/XCAFDimTolObjects_DatumTargetType.hxx"
#include "../XCAFDimTolObjects/XCAFDimTolObjects_DimensionQualifier.hxx"
#include "../XCAFDimTolObjects/XCAFDimTolObjects_GeomToleranceModif.hxx"
#include "../XCAFDimTolObjects/XCAFDimTolObjects_GeomToleranceType.hxx"
#include "../XCAFDimTolObjects/XCAFDimTolObjects_GeomToleranceTypeValue.hxx"

//! This class provides tools for access (read)
//! the GDT properties.
class STEPCAFControl_GDTProperty
{
public:

  DEFINE_STANDARD_ALLOC

  Standard_EXPORT STEPCAFControl_GDTProperty();
  Standard_EXPORT static void GetDimModifiers(const Handle(StepRepr_CompoundRepresentationItem)& theCRI,
                                              XCAFDimTolObjects_DimensionModifiersSequence& theModifiers);

  Standard_EXPORT static void GetDimClassOfTolerance(const Handle(StepShape_LimitsAndFits)& theLAF,
                                                     Standard_Boolean& theHolle,
                                                     XCAFDimTolObjects_DimensionFormVariance& theFV,
                                                     XCAFDimTolObjects_DimensionGrade& theG);

  Standard_EXPORT static Standard_Boolean GetDimType(const Handle(TCollection_HAsciiString)& theName,
                                                     XCAFDimTolObjects_DimensionType& theType);

  Standard_EXPORT static Standard_Boolean GetDatumTargetType(const Handle(TCollection_HAsciiString)& theDescription,
                                                     XCAFDimTolObjects_DatumTargetType& theType);

  Standard_EXPORT static Standard_Boolean GetDimQualifierType(const Handle(TCollection_HAsciiString)& theDescription,
                                                     XCAFDimTolObjects_DimensionQualifier& theType);

  Standard_EXPORT static Standard_Boolean GetTolValueType(const Handle(TCollection_HAsciiString)& theDescription,
                                                     XCAFDimTolObjects_GeomToleranceTypeValue& theType);

  Standard_EXPORT static Handle(TCollection_HAsciiString) GetTolValueType(const XCAFDimTolObjects_GeomToleranceTypeValue& theType);

  Standard_EXPORT static Handle(TCollection_HAsciiString) GetDimTypeName(const XCAFDimTolObjects_DimensionType theType);

  Standard_EXPORT static Handle(TCollection_HAsciiString) GetDimQualifierName(const XCAFDimTolObjects_DimensionQualifier theQualifier);

  Standard_EXPORT static Handle(TCollection_HAsciiString) GetDimModifierName(const XCAFDimTolObjects_DimensionModif theModifier);

  Standard_EXPORT static Handle(StepShape_LimitsAndFits) GetLimitsAndFits(Standard_Boolean theHole,
                                                     XCAFDimTolObjects_DimensionFormVariance theFormVariance,
                                                     XCAFDimTolObjects_DimensionGrade theGrade);

  Standard_EXPORT static Handle(TCollection_HAsciiString) GetDatumTargetName(const XCAFDimTolObjects_DatumTargetType theDatumType);

  Standard_EXPORT static Standard_Boolean IsDimensionalLocation(const XCAFDimTolObjects_DimensionType theType);

  Standard_EXPORT static Standard_Boolean IsDimensionalSize(const XCAFDimTolObjects_DimensionType theType);

  Standard_EXPORT static StepDimTol_GeometricToleranceType GetGeomToleranceType(const XCAFDimTolObjects_GeomToleranceType theType);

  Standard_EXPORT static XCAFDimTolObjects_GeomToleranceType GetGeomToleranceType(const StepDimTol_GeometricToleranceType theType);

  Standard_EXPORT static Handle(StepDimTol_GeometricTolerance) GetGeomTolerance(const XCAFDimTolObjects_GeomToleranceType theType);

  Standard_EXPORT static StepDimTol_GeometricToleranceModifier GetGeomToleranceModifier(const XCAFDimTolObjects_GeomToleranceModif theModifier);

  Standard_EXPORT static Handle(StepDimTol_HArray1OfDatumReferenceModifier) GetDatumRefModifiers(const XCAFDimTolObjects_DatumModifiersSequence theModifiers,
                                                                                                 const XCAFDimTolObjects_DatumModifWithValue theModifWithVal,
                                                                                                 const Standard_Real theValue,
                                                                                                 const StepBasic_Unit theUnit);

  Standard_EXPORT static Handle(StepVisual_TessellatedGeometricSet) GetTessellation(const TopoDS_Shape theShape);

};

#endif // _STEPCAFControl_GDTProperty_HeaderFile

