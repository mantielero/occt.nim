import ../standard/standard_types
import ../stepcontrol/stepcontrol_types
import ../ncollection/ncollection_types
import ../topods/topods_types
import ../tcolstd/tcolstd_types
import ../toptools/toptools_types
import ../tdf/tdf_types

type
  StepBasic_ProductDefinition* = object # FIXME
  StepRepr_CompoundRepresentationItem* = object # FIXME
  StepShape_LimitsAndFits* = object
  StepDimTol_GeometricToleranceType* = object # FIXME
  StepDimTol_GeometricTolerance* = object # FIXME
  StepDimTol_GeometricToleranceModifier* = object # FIXME

  StepBasic_Unit* = object # FIXME
  StepDimTol_HArray1OfDatumReferenceModifier* = object # FIXME
  StepVisual_TessellatedGeometricSet* = object # FIXME
  #TDocStd_Document* = object # FIXME
  StepRepr_NextAssemblyUsageOccurrence* = object  # FIXME
  STEPConstruct_Tool* = object # FIXME


  
  

type
  STEPCAFControl_ActorWrite* {.importcpp: "STEPCAFControl_ActorWrite",
                              header: "STEPCAFControl_ActorWrite.hxx", bycopy.} = object of STEPControl_ActorWrite


type
  Handle_STEPCAFControl_ActorWrite* = Handle[STEPCAFControl_ActorWrite]

## ! Extends ActorWrite from STEPControl by analysis of
## ! whether shape is assembly (based on information from DECAF)


type
  STEPCAFControl_Controller* {.importcpp: "STEPCAFControl_Controller",
                              header: "STEPCAFControl_Controller.hxx", bycopy.} = object of STEPControl_Controller ##
                                                                                                            ## !
                                                                                                            ## Initializes
                                                                                                            ## the
                                                                                                            ## use
                                                                                                            ## of
                                                                                                            ## STEP
                                                                                                            ## Norm
                                                                                                            ## (the
                                                                                                            ## first
                                                                                                            ## time)


type
  Handle_STEPCAFControl_Controller* = Handle[STEPCAFControl_Controller]

## ! Extends Controller from STEPControl in order to provide
## ! ActorWrite adapted for writing assemblies from DECAF
## ! Note that ActorRead from STEPControl is used for reading
## ! (inherited automatically)
## 
type
  STEPCAFControl_ExternFile* {.importcpp: "STEPCAFControl_ExternFile",
                              header: "STEPCAFControl_ExternFile.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## an
      

type
  Handle_STEPCAFControl_ExternFile* = Handle[STEPCAFControl_ExternFile]


type
  STEPCAFControl_DataMapOfLabelExternFile* = NCollection_DataMap[TDF_Label,
      Handle[STEPCAFControl_ExternFile], TDF_LabelMapHasher]
  STEPCAFControl_DataMapIteratorOfDataMapOfLabelExternFile* = NCollection_DataMapIterator[TDF_Label,
      Handle[STEPCAFControl_ExternFile], TDF_LabelMapHasher]

type
  STEPCAFControl_DataMapOfLabelShape* = NCollection_DataMap[TDF_Label,
      TopoDS_Shape, TDF_LabelMapHasher]
  STEPCAFControl_DataMapIteratorOfDataMapOfLabelShape* = NCollection_DataMapIterator[TDF_Label,
      TopoDS_Shape, TDF_LabelMapHasher]

type
  STEPCAFControl_DataMapOfPDExternFile* = NCollection_DataMap[
      Handle[StepBasic_ProductDefinition], Handle[STEPCAFControl_ExternFile],
      TColStd_MapTransientHasher]
  STEPCAFControl_DataMapIteratorOfDataMapOfPDExternFile* = NCollection_DataMapIterator[
      Handle[StepBasic_ProductDefinition], Handle[STEPCAFControl_ExternFile],
      TColStd_MapTransientHasher]

type
  STEPCAFControl_DataMapOfSDRExternFile* = NCollection_DataMap[
      Handle[StepShape_ShapeDefinitionRepresentation],
      Handle[STEPCAFControl_ExternFile], TColStd_MapTransientHasher]
  STEPCAFControl_DataMapIteratorOfDataMapOfSDRExternFile* = NCollection_DataMapIterator[
      Handle[StepShape_ShapeDefinitionRepresentation],
      Handle[STEPCAFControl_ExternFile], TColStd_MapTransientHasher]

type
  STEPCAFControl_DataMapOfShapePD* = NCollection_DataMap[TopoDS_Shape,
      Handle[StepBasic_ProductDefinition], TopTools_ShapeMapHasher]
  STEPCAFControl_DataMapIteratorOfDataMapOfShapePD* = NCollection_DataMapIterator[TopoDS_Shape,
      Handle[StepBasic_ProductDefinition], TopTools_ShapeMapHasher]

type
  STEPCAFControl_DataMapOfShapeSDR* = NCollection_DataMap[TopoDS_Shape,
      Handle[StepShape_ShapeDefinitionRepresentation], TopTools_ShapeMapHasher]
  STEPCAFControl_DataMapIteratorOfDataMapOfShapeSDR* = NCollection_DataMapIterator[TopoDS_Shape,
      Handle[StepShape_ShapeDefinitionRepresentation], TopTools_ShapeMapHasher]






                                                                                                  ## empty
                                                                                                        ## structure
type
  STEPCAFControl_GDTProperty* {.importcpp: "STEPCAFControl_GDTProperty",
                               header: "STEPCAFControl_GDTProperty.hxx", bycopy.} = object


type
  STEPCAFControl_Reader* {.importcpp: "STEPCAFControl_Reader",
                          header: "STEPCAFControl_Reader.hxx", bycopy.} = object ## !
                                                                            ## Creates a
                                                                            ## reader with an
                                                                            ## empty
                                                                            ## ! STEP
                                                                            ## model and sets
                                                                            ## ColorMode,
                                                                            ## LayerMode,
                                                                            ## NameMode and
                                                                            ## !
                                                                            ## PropsMode to
                                                                            ## Standard_True.
                                                                            ## !
                                                                            ## Translates STEP file
                                                                            ## already
                                                                            ## loaded into the
                                                                            ## reader
                                                                            ## ! into the
                                                                            ## document
                                                                            ## ! If
                                                                            ## num==0,
                                                                            ## translates all
                                                                            ## roots, else only root
                                                                            ## number num
                                                                            ## !
                                                                            ## Returns True if
                                                                            ## succeeded, and
                                                                            ## False in case of fail
                                                                            ## ! If
                                                                            ## asOne is
                                                                            ## True, in case of
                                                                            ## multiple
                                                                            ## results
                                                                            ## composes
                                                                            ## ! them into
                                                                            ## assembly.
                                                                            ## Fills
                                                                            ## sequence of
                                                                            ## produced
                                                                            ## labels
                                                                            ## !
                                                                            ## Internal
                                                                            ## method.
                                                                            ## Import all
                                                                            ## Datum
                                                                            ## attributes and set them to XCAF
                                                                            ## object. Set
                                                                            ## connection of
                                                                            ## Datum to
                                                                            ## GeomTolerance
                                                                            ## (theGDTL).

type
  STEPCAFControl_Writer* {.importcpp: "STEPCAFControl_Writer",
                          header: "STEPCAFControl_Writer.hxx", bycopy.} = object ## !
                                                                            ## Creates a
                                                                            ## writer with an
                                                                            ## empty
                                                                            ## ! STEP
                                                                            ## model and sets
                                                                            ## ColorMode,
                                                                            ## LayerMode,
                                                                            ## NameMode and
                                                                            ## !
                                                                            ## PropsMode to
                                                                            ## Standard_True.
                                                                            ## !
                                                                            ## Transfers
                                                                            ## labels to a STEP
                                                                            ## model
                                                                            ## !
                                                                            ## Returns True if
                                                                            ## translation is OK
                                                                            ## !
                                                                            ## isExternFile
                                                                            ## setting from
                                                                            ## TransferExternFiles
                                                                            ## method

