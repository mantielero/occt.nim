{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}
{.experimental: "callOperator".}

include StepBasic_Action
include StepBasic_ActionAssignment
include StepBasic_ActionMethod
include StepBasic_ActionRequestAssignment
include StepBasic_ActionRequestSolution
include StepBasic_Address
include StepBasic_AheadOrBehind
include StepBasic_ApplicationContext
include StepBasic_ApplicationContextElement
include StepBasic_ApplicationProtocolDefinition
include StepBasic_Approval
include StepBasic_ApprovalAssignment
include StepBasic_ApprovalDateTime
include StepBasic_ApprovalPersonOrganization
include StepBasic_ApprovalRelationship
include StepBasic_ApprovalRole
include StepBasic_ApprovalStatus
include StepBasic_AreaUnit
include StepBasic_Array1OfApproval
include StepBasic_Array1OfDerivedUnitElement
include StepBasic_Array1OfDocument
include StepBasic_Array1OfNamedUnit
include StepBasic_Array1OfOrganization
include StepBasic_Array1OfPerson
include StepBasic_Array1OfProduct
include StepBasic_Array1OfProductContext
include StepBasic_Array1OfProductDefinition
include StepBasic_Array1OfUncertaintyMeasureWithUnit
include StepBasic_CalendarDate
include StepBasic_Certification
include StepBasic_CertificationAssignment
include StepBasic_CertificationType
include StepBasic_CharacterizedObject
include StepBasic_Contract
include StepBasic_ContractAssignment
include StepBasic_ContractType
include StepBasic_ConversionBasedUnit
include StepBasic_ConversionBasedUnitAndAreaUnit
include StepBasic_ConversionBasedUnitAndLengthUnit
include StepBasic_ConversionBasedUnitAndMassUnit
include StepBasic_ConversionBasedUnitAndPlaneAngleUnit
include StepBasic_ConversionBasedUnitAndRatioUnit
include StepBasic_ConversionBasedUnitAndSolidAngleUnit
include StepBasic_ConversionBasedUnitAndTimeUnit
include StepBasic_ConversionBasedUnitAndVolumeUnit
include StepBasic_CoordinatedUniversalTimeOffset
include StepBasic_Date
include StepBasic_DateAndTime
include StepBasic_DateAndTimeAssignment
include StepBasic_DateAssignment
include StepBasic_DateRole
include StepBasic_DateTimeRole
include StepBasic_DateTimeSelect
include StepBasic_DerivedUnit
include StepBasic_DerivedUnitElement
include StepBasic_DesignContext
include StepBasic_DigitalDocument
include StepBasic_DimensionalExponents
include StepBasic_Document
include StepBasic_DocumentFile
include StepBasic_DocumentProductAssociation
include StepBasic_DocumentProductEquivalence
include StepBasic_DocumentReference
include StepBasic_DocumentRelationship
include StepBasic_DocumentRepresentationType
include StepBasic_DocumentType
include StepBasic_DocumentUsageConstraint
include StepBasic_Effectivity
include StepBasic_EffectivityAssignment
include StepBasic_EulerAngles
include StepBasic_ExternalIdentificationAssignment
include StepBasic_ExternalSource
include StepBasic_ExternallyDefinedItem
include StepBasic_GeneralProperty
include StepBasic_Group
include StepBasic_GroupAssignment
include StepBasic_GroupRelationship
#include StepBasic_HArray1OfApproval
#include StepBasic_HArray1OfDerivedUnitElement
#include StepBasic_HArray1OfDocument
#include StepBasic_HArray1OfNamedUnit
#include StepBasic_HArray1OfOrganization
#include StepBasic_HArray1OfPerson
#include StepBasic_HArray1OfProduct
#include StepBasic_HArray1OfProductContext
#include StepBasic_HArray1OfProductDefinition
#include StepBasic_HArray1OfUncertaintyMeasureWithUnit
include StepBasic_IdentificationAssignment
include StepBasic_IdentificationRole
include StepBasic_LengthMeasureWithUnit
include StepBasic_LengthUnit
include StepBasic_LocalTime
include StepBasic_MassMeasureWithUnit
include StepBasic_MassUnit
include StepBasic_MeasureValueMember
include StepBasic_MeasureWithUnit
include StepBasic_MechanicalContext
include StepBasic_NameAssignment
include StepBasic_NamedUnit
include StepBasic_ObjectRole
include StepBasic_OrdinalDate
include StepBasic_Organization
include StepBasic_OrganizationAssignment
include StepBasic_OrganizationRole
include StepBasic_OrganizationalAddress
include StepBasic_Person
include StepBasic_PersonAndOrganization
include StepBasic_PersonAndOrganizationAssignment
include StepBasic_PersonAndOrganizationRole
include StepBasic_PersonOrganizationSelect
include StepBasic_PersonalAddress
include StepBasic_PhysicallyModeledProductDefinition
include StepBasic_PlaneAngleMeasureWithUnit
include StepBasic_PlaneAngleUnit
include StepBasic_Product
include StepBasic_ProductCategory
include StepBasic_ProductCategoryRelationship
include StepBasic_ProductConceptContext
include StepBasic_ProductContext
include StepBasic_ProductDefinition
include StepBasic_ProductDefinitionContext
include StepBasic_ProductDefinitionEffectivity
include StepBasic_ProductDefinitionFormation
include StepBasic_ProductDefinitionFormationRelationship
include StepBasic_ProductDefinitionFormationWithSpecifiedSource
include StepBasic_ProductDefinitionOrReference
include StepBasic_ProductDefinitionReference
include StepBasic_ProductDefinitionReferenceWithLocalRepresentation
include StepBasic_ProductDefinitionRelationship
include StepBasic_ProductDefinitionWithAssociatedDocuments
include StepBasic_ProductOrFormationOrDefinition
include StepBasic_ProductRelatedProductCategory
include StepBasic_ProductType
include StepBasic_RatioMeasureWithUnit
include StepBasic_RatioUnit
include StepBasic_RoleAssociation
include StepBasic_RoleSelect
include StepBasic_SecurityClassification
include StepBasic_SecurityClassificationAssignment
include StepBasic_SecurityClassificationLevel
include StepBasic_SiPrefix
include StepBasic_SiUnit
include StepBasic_SiUnitAndAreaUnit
include StepBasic_SiUnitAndLengthUnit
include StepBasic_SiUnitAndMassUnit
include StepBasic_SiUnitAndPlaneAngleUnit
include StepBasic_SiUnitAndRatioUnit
include StepBasic_SiUnitAndSolidAngleUnit
include StepBasic_SiUnitAndThermodynamicTemperatureUnit
include StepBasic_SiUnitAndTimeUnit
include StepBasic_SiUnitAndVolumeUnit
include StepBasic_SiUnitName
include StepBasic_SizeMember
include StepBasic_SizeSelect
include StepBasic_SolidAngleMeasureWithUnit
include StepBasic_SolidAngleUnit
include StepBasic_Source
include StepBasic_SourceItem
include StepBasic_ThermodynamicTemperatureUnit
include StepBasic_TimeMeasureWithUnit
include StepBasic_TimeUnit
include StepBasic_UncertaintyMeasureWithUnit
include StepBasic_Unit
include StepBasic_VersionedActionRequest
include StepBasic_VolumeUnit
include StepBasic_WeekOfYearAndDayDate
