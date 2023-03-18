import ../tdatastd/tdatastd_types
import ../standard/standard_types
import ../tdf/tdf_types
import ../ncollection/ncollection_types
import ../topods/topods_types
import ../toptools/toptools_types
import ../tcollection/tcollection_types
import ../quantity/quantity_types
import ../graphic3d/graphic3d_types


type
  ImageTexture* = object # FIXME


type
  XCAFDoc* {.importcpp: "XCAFDoc", header: "XCAFDoc.hxx", bycopy.} = object 

  XCAFDocArea* {.importcpp: "XCAFDoc_Area", header: "XCAFDoc_Area.hxx", bycopy.} = object of TDataStdReal 

  HandleXCAFDocArea* = Handle[XCAFDocArea]

  XCAFDocAssemblyItemId* {.importcpp: "XCAFDoc_AssemblyItemId",
                          header: "XCAFDoc_AssemblyItemId.hxx", bycopy.} = object 

  XCAFDocAssemblyItemIdHasher* {.importcpp: "XCAFDoc_AssemblyItemId::Hasher",
                                header: "XCAFDoc_AssemblyItemId.hxx", bycopy.} = object 

  XCAFDocAssemblyItemRef* {.importcpp: "XCAFDoc_AssemblyItemRef",
                           header: "XCAFDoc_AssemblyItemRef.hxx", bycopy.} = object of TDF_Attribute 

  HandleXCAFDocAssemblyItemRef* = Handle[XCAFDocAssemblyItemRef]

  XCAFDocCentroid* {.importcpp: "XCAFDoc_Centroid", header: "XCAFDoc_Centroid.hxx",
                    bycopy.} = object of TDF_Attribute 

  HandleXCAFDocCentroid* = Handle[XCAFDocCentroid]

  XCAFDocClippingPlaneTool* {.importcpp: "XCAFDoc_ClippingPlaneTool",
                             header: "XCAFDoc_ClippingPlaneTool.hxx", bycopy.} = object of TDataStdGenericEmpty

  HandleXCAFDocClippingPlaneTool* = Handle[XCAFDocClippingPlaneTool]

  XCAFDocColor* {.importcpp: "XCAFDoc_Color", header: "XCAFDoc_Color.hxx", bycopy.} = object of TDF_Attribute

  HandleXCAFDocColor* = Handle[XCAFDocColor]

  XCAFDocColorTool* {.importcpp: "XCAFDoc_ColorTool",
                     header: "XCAFDoc_ColorTool.hxx", bycopy.} = object of TDataStdGenericEmpty 

  HandleXCAFDocColorTool* = Handle[XCAFDocColorTool]

  XCAFDocColorType* {.size: sizeof(cint), importcpp: "XCAFDoc_ColorType",
                     header: "XCAFDoc_ColorType.hxx".} = enum
    XCAFDocColorGen, XCAFDocColorSurf, XCAFDocColorCurv

  XCAFDocDataMapOfShapeLabel* = NCollectionDataMap[TopoDS_Shape, TDF_Label,
      TopToolsShapeMapHasher]

  XCAFDocDataMapIteratorOfDataMapOfShapeLabel* = NCollectionDataMapIterator[TopoDS_Shape, TDF_Label,
      TopToolsShapeMapHasher]
  # NCollection_DataMap<TopoDS_Shape,TDF_Label,TopTools_ShapeMapHasher>::Iterator

  XCAFDocDatum* {.importcpp: "XCAFDoc_Datum", header: "XCAFDoc_Datum.hxx", bycopy.} = object of TDF_Attribute

  HandleXCAFDocDatum* = Handle[XCAFDocDatum]

  XCAFDocDimension* {.importcpp: "XCAFDoc_Dimension",
                     header: "XCAFDoc_Dimension.hxx", bycopy.} = object of TDataStdGenericEmpty

  HandleXCAFDocDimension* = Handle[XCAFDocDimension]

  XCAFDocDimTol* {.importcpp: "XCAFDoc_DimTol", header: "XCAFDoc_DimTol.hxx", bycopy.} = object of TDF_Attribute

  HandleXCAFDocDimTol* = Handle[XCAFDocDimTol]

  XCAFDocDimTolTool* {.importcpp: "XCAFDoc_DimTolTool",
                      header: "XCAFDoc_DimTolTool.hxx", bycopy.} = object of TDataStdGenericEmpty

  HandleXCAFDocDimTolTool* = Handle[XCAFDocDimTolTool]

  XCAFDocDocumentTool* {.importcpp: "XCAFDoc_DocumentTool",
                        header: "XCAFDoc_DocumentTool.hxx", bycopy.} = object of TDataStdGenericEmpty

  HandleXCAFDocDocumentTool* = Handle[XCAFDocDocumentTool]

  XCAFDocEditor* {.importcpp: "XCAFDoc_Editor", header: "XCAFDoc_Editor.hxx", bycopy.} = object 

  XCAFDocGeomTolerance* {.importcpp: "XCAFDoc_GeomTolerance",
                         header: "XCAFDoc_GeomTolerance.hxx", bycopy.} = object of TDataStdGenericEmpty

  HandleXCAFDocGeomTolerance* = Handle[XCAFDocGeomTolerance]

  XCAFDocGraphNode* {.importcpp: "XCAFDoc_GraphNode",
                     header: "XCAFDoc_GraphNode.hxx", bycopy.} = object of TDF_Attribute 

  HandleXCAFDocGraphNode* = Handle[XCAFDocGraphNode]

  XCAFDocGraphNodeSequence* = NCollectionSequence[Handle[XCAFDocGraphNode]]

  XCAFDocLayerTool* {.importcpp: "XCAFDoc_LayerTool",
                     header: "XCAFDoc_LayerTool.hxx", bycopy.} = object of TDataStdGenericEmpty

  HandleXCAFDocLayerTool* = Handle[XCAFDocLayerTool]

  XCAFDocLengthUnit* {.importcpp: "XCAFDoc_LengthUnit",
                      header: "XCAFDoc_LengthUnit.hxx", bycopy.} = object of TDF_Attribute 

  HandleXCAFDocLengthUnit* = Handle[XCAFDocLengthUnit]

  XCAFDocLocation* {.importcpp: "XCAFDoc_Location", header: "XCAFDoc_Location.hxx",
                    bycopy.} = object of TDF_Attribute 

  HandleXCAFDocLocation* = Handle[XCAFDocLocation]

  XCAFDocMaterial* {.importcpp: "XCAFDoc_Material", header: "XCAFDoc_Material.hxx",
                    bycopy.} = object of TDF_Attribute

  HandleXCAFDocMaterial* = Handle[XCAFDocMaterial]

  XCAFDocMaterialTool* {.importcpp: "XCAFDoc_MaterialTool",
                        header: "XCAFDoc_MaterialTool.hxx", bycopy.} = object of TDataStdGenericEmpty

  HandleXCAFDocMaterialTool* = Handle[XCAFDocMaterialTool]

  XCAFDocNote* {.importcpp: "XCAFDoc_Note", header: "XCAFDoc_Note.hxx", bycopy.} = object of TDF_Attribute 

  HandleXCAFDocNote* = Handle[XCAFDocNote]

  XCAFDocNoteBinData* {.importcpp: "XCAFDoc_NoteBinData",
                       header: "XCAFDoc_NoteBinData.hxx", bycopy.} = object of XCAFDocNote 

  HandleXCAFDocNoteBinData* = Handle[XCAFDocNoteBinData]

  XCAFDocNoteComment* {.importcpp: "XCAFDoc_NoteComment",
                       header: "XCAFDoc_NoteComment.hxx", bycopy.} = object of XCAFDocNote 

  XCAFDocNoteBalloon* {.importcpp: "XCAFDoc_NoteBalloon",
                       header: "XCAFDoc_NoteBalloon.hxx", bycopy.} = object of XCAFDocNoteComment 

  HandleXCAFDocNoteBalloon* = Handle[XCAFDocNoteBalloon]

  HandleXCAFDocNoteComment* = Handle[XCAFDocNoteComment]

  XCAFDocNotesTool* {.importcpp: "XCAFDoc_NotesTool",
                     header: "XCAFDoc_NotesTool.hxx", bycopy.} = object of TDataStdGenericEmpty 

  HandleXCAFDocNotesTool* = Handle[XCAFDocNotesTool]

  XCAFDocPartId* = TCollectionAsciiString

  XCAFDocShapeMapTool* {.importcpp: "XCAFDoc_ShapeMapTool",
                        header: "XCAFDoc_ShapeMapTool.hxx", bycopy.} = object of TDF_Attribute

  HandleXCAFDocShapeMapTool* = Handle[XCAFDocShapeMapTool]

  XCAFDocShapeTool* {.importcpp: "XCAFDoc_ShapeTool",
                     header: "XCAFDoc_ShapeTool.hxx", bycopy.} = object of TDataStdGenericEmpty 

  HandleXCAFDocShapeTool* = Handle[XCAFDocShapeTool]

  XCAFDocView* {.importcpp: "XCAFDoc_View", header: "XCAFDoc_View.hxx", bycopy.} = object of TDataStdGenericEmpty

  HandleXCAFDocView* = Handle[XCAFDocView]

  XCAFView_Object* {.importcpp: "XCAFView_Object", header: "XCAFDoc_Object.hxx", bycopy.} = object of TDataStdGenericEmpty


  XCAFDocViewTool* {.importcpp: "XCAFDoc_ViewTool", header: "XCAFDoc_ViewTool.hxx",
                    bycopy.} = object of TDataStdGenericEmpty

  HandleXCAFDocViewTool* = Handle[XCAFDocViewTool]

  XCAFDocVisMaterial* {.importcpp: "XCAFDoc_VisMaterial",
                       header: "XCAFDoc_VisMaterial.hxx", bycopy.} = object of TDF_Attribute 

  HandleXCAFDocVisMaterial* = Handle[XCAFDocVisMaterial]

  XCAFDocVisMaterialCommon* {.importcpp: "XCAFDoc_VisMaterialCommon",
                             header: "XCAFDoc_VisMaterialCommon.hxx", bycopy.} = object
    diffuseTexture* {.importc: "DiffuseTexture".}: Handle[ImageTexture] 
    ambientColor* {.importc: "AmbientColor".}: QuantityColor 
    diffuseColor* {.importc: "DiffuseColor".}: QuantityColor 
    specularColor* {.importc: "SpecularColor".}: QuantityColor 
    emissiveColor* {.importc: "EmissiveColor".}: QuantityColor 
    shininess* {.importc: "Shininess".}: StandardShortReal 
    transparency* {.importc: "Transparency".}: StandardShortReal 
    isDefined* {.importc: "IsDefined".}: bool 

  XCAFDocVisMaterialPBR* {.importcpp: "XCAFDoc_VisMaterialPBR",
                          header: "XCAFDoc_VisMaterialPBR.hxx", bycopy.} = object
    baseColorTexture* {.importc: "BaseColorTexture".}: Handle[ImageTexture] 
    metallicRoughnessTexture* {.importc: "MetallicRoughnessTexture".}: Handle[
        ImageTexture]         
    emissiveTexture* {.importc: "EmissiveTexture".}: Handle[ImageTexture] 
    occlusionTexture* {.importc: "OcclusionTexture".}: Handle[ImageTexture] 
    normalTexture* {.importc: "NormalTexture".}: Handle[ImageTexture] 
    baseColor* {.importc: "BaseColor".}: QuantityColorRGBA 
    emissiveFactor* {.importc: "EmissiveFactor".}: Graphic3dVec3 
    metallic* {.importc: "Metallic".}: StandardShortReal 
    roughness* {.importc: "Roughness".}: StandardShortReal 
    refractionIndex* {.importc: "RefractionIndex".}: StandardShortReal 
    isDefined* {.importc: "IsDefined".}: bool 

  XCAFDocVisMaterialTool* {.importcpp: "XCAFDoc_VisMaterialTool",
                           header: "XCAFDoc_VisMaterialTool.hxx", bycopy.} = object of TDF_Attribute 

  HandleXCAFDocVisMaterialTool* = Handle[XCAFDocVisMaterialTool]

  XCAFDocVolume* {.importcpp: "XCAFDoc_Volume", header: "XCAFDoc_Volume.hxx", bycopy.} = object of TDataStdReal 


  HandleXCAFDocVolume* = Handle[XCAFDocVolume]


