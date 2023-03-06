import ../../tkmath/bvh/bvh_types
import ../../tkernel/tcollection/tcollection_types
import ../../tkv3d/graphic3d/graphic3d_types
import ../../tkernel/ncollection/ncollection_types
import ../../tkernel/standard/standard_types


type
  Vector*[T] = object # FIXME

  OpenGlGlFunctions* = object of RootObj# FIXME

  OpenGlTmplCore12* = object # FIXME  

  OpenGlContextOpenGlResourcesMap* = object # FIXME

  GLenum* = object # FIXME

  GLintptr* = object # FIXME

  GLsizeiptr* = object # FIXME

  OpenGlFlipper*  = object # FIXME

  FontFTFont* = object # FIXME

  GLsizei* = int # FIXME

  GLint* = int # FIXME

  GLuint* = uint # FIXME

  GLuint64* = uint64 # FIXME

  OpenGlColorFormats* = object # FIXME

  GLchar* = object # FIXME

  GLfloat* = object # FIXME

  GLboolean* = enum glFalse # FIXME

  GLushort* = object # FIXME

  GLubyte* = object # FIXME

  GLvoid* = object # FIXME

  OpenGlSetterInterface* {.importcpp: "OpenGl_SetterInterface",
                          header: "OpenGl_ShaderProgram.hxx", bycopy.} = object of RootObj

  OpenGlArbDbg* {.importcpp: "OpenGl_ArbDbg", header: "OpenGl_ArbDbg.hxx", bycopy.} = object of OpenGlGlFunctions

  OpenGlArbFBO* {.importcpp: "OpenGl_ArbFBO", header: "OpenGl_ArbFBO.hxx", bycopy.} = object of OpenGlGlFunctions

  OpenGlArbFBOBlit* {.importcpp: "OpenGl_ArbFBOBlit", header: "OpenGl_ArbFBO.hxx",
                     bycopy.} = object of OpenGlGlFunctions

  OpenGlArbIns* {.importcpp: "OpenGl_ArbIns", header: "OpenGl_ArbIns.hxx", bycopy.} = object of OpenGlGlFunctions

  OpenGlArbSamplerObject* {.importcpp: "OpenGl_ArbSamplerObject",
                           header: "OpenGl_ArbSamplerObject.hxx", bycopy.} = object of OpenGlGlFunctions

  OpenGlArbTBO* {.importcpp: "OpenGl_ArbTBO", header: "OpenGl_ArbTBO.hxx", bycopy.} = object of OpenGlGlFunctions

  OpenGlArbTexBindless* {.importcpp: "OpenGl_ArbTexBindless",
                         header: "OpenGl_ArbTexBindless.hxx", bycopy.} = object of OpenGlGlFunctions

  OpenGlAspectsProgram* {.importcpp: "OpenGl_AspectsProgram",
                         header: "OpenGl_AspectsProgram.hxx", bycopy.} = object 

  OpenGlAspectsSprite* {.importcpp: "OpenGl_AspectsSprite",
                        header: "OpenGl_AspectsSprite.hxx", bycopy.} = object 

  OpenGlAspectsTextureSet* {.importcpp: "OpenGl_AspectsTextureSet",
                            header: "OpenGl_AspectsTextureSet.hxx", bycopy.} = object 

  OpenGlCappingAlgo* {.importcpp: "OpenGl_CappingAlgo",
                      header: "OpenGl_CappingAlgo.hxx", bycopy.} = object 

  OpenGlCaps* {.importcpp: "OpenGl_Caps", header: "OpenGl_Caps.hxx", bycopy.} = object of StandardTransient 
    sRGBDisable* {.importc: "sRGBDisable".}: bool 
    compressedTexturesDisable* {.importc: "compressedTexturesDisable".}: bool 
    vboDisable* {.importc: "vboDisable".}: bool 
    pntSpritesDisable* {.importc: "pntSpritesDisable".}: bool 
    keepArrayData* {.importc: "keepArrayData".}: bool 
    ffpEnable* {.importc: "ffpEnable".}: bool 
    usePolygonMode* {.importc: "usePolygonMode".}: bool 
    useSystemBuffer* {.importc: "useSystemBuffer".}: bool 
    swapInterval* {.importc: "swapInterval".}: cint 
    buffersNoSwap* {.importc: "buffersNoSwap".}: bool 
    contextStereo* {.importc: "contextStereo".}: bool 
    contextDebug* {.importc: "contextDebug".}: bool 
    contextSyncDebug* {.importc: "contextSyncDebug".}: bool 
    contextNoAccel* {.importc: "contextNoAccel".}: bool 
    contextCompatible* {.importc: "contextCompatible".}: bool 
    contextNoExtensions* {.importc: "contextNoExtensions".}: bool 
    contextMajorVersionUpper* {.importc: "contextMajorVersionUpper".}: cint
    contextMinorVersionUpper* {.importc: "contextMinorVersionUpper".}: cint 
    isTopDownTextureUV* {.importc: "isTopDownTextureUV".}: bool
    glslWarnings* {.importc: "glslWarnings".}: bool 
    suppressExtraMsg* {.importc: "suppressExtraMsg".}: bool 
    glslDumpLevel* {.importc: "glslDumpLevel".}: OpenGlShaderProgramDumpLevel

  HandleOpenGlCaps* = Handle[OpenGlCaps]

  OpenGlClipping* {.importcpp: "OpenGl_Clipping", header: "OpenGl_Clipping.hxx",
                   bycopy.} = object 

  OpenGlClippingIterator* {.importcpp: "OpenGl_ClippingIterator",
                           header: "OpenGl_ClippingIterator.hxx", bycopy.} = object 

  # OpenGlGlCore12* = OpenGlTmplCore12[OpenGlGlCore11]

  # OpenGlGlCore12Fwd* = OpenGlTmplCore12[OpenGlGlCore11Fwd]

  # OpenGlGlCore14* = OpenGlTmplCore14[OpenGlGlCore13]

  # OpenGlGlCore14Fwd* = OpenGlTmplCore14[OpenGlGlCore13Fwd]

  # OpenGlGlCore15* = OpenGlTmplCore15[OpenGlGlCore14]

  # OpenGlGlCore15Fwd* = OpenGlTmplCore15[OpenGlGlCore14Fwd]

  # OpenGlGlCore20* = OpenGlTmplCore20[OpenGlGlCore15]

  # OpenGlGlCore20Fwd* = OpenGlTmplCore20[OpenGlGlCore15Fwd]

  # OpenGlGlCore21* = OpenGlTmplCore21[OpenGlGlCore20]

  # OpenGlGlCore21Fwd* = OpenGlTmplCore21[OpenGlGlCore20Fwd]

  # OpenGlGlCore30* = OpenGlTmplCore30[OpenGlGlCore21]
  # OpenGlGlCore12* = OpenGlTmplCore12[OpenGlGlCore11]

  # OpenGlGlCore12Fwd* = OpenGlTmplCore12[OpenGlGlCore11Fwd]

  # OpenGlGlCore14* = OpenGlTmplCore14[OpenGlGlCore13]

  # OpenGlGlCore14Fwd* = OpenGlTmplCore14[OpenGlGlCore13Fwd]

  # OpenGlGlCore15* = OpenGlTmplCore15[OpenGlGlCore14]

  # OpenGlGlCore15Fwd* = OpenGlTmplCore15[OpenGlGlCore14Fwd]

  # OpenGlGlCore20* = OpenGlTmplCore20[OpenGlGlCore15]

  # OpenGlGlCore20Fwd* = OpenGlTmplCore20[OpenGlGlCore15Fwd]

  # OpenGlGlCore21* = OpenGlTmplCore21[OpenGlGlCore20]

  # OpenGlGlCore21Fwd* = OpenGlTmplCore21[OpenGlGlCore20Fwd]

  # OpenGlGlCore30* = OpenGlTmplCore30[OpenGlGlCore21]

  # OpenGlGlCore30Fwd* = OpenGlTmplCore30[OpenGlGlCore21Fwd]

  # OpenGlGlCore31Back* = OpenGlTmplCore31[OpenGlGlCore30]

  # OpenGlGlCore31* = OpenGlTmplCore31[OpenGlGlCore30Fwd]

  # OpenGlGlCore32Back* = OpenGlTmplCore32[OpenGlGlCore31Back]

  # OpenGlGlCore32* = OpenGlTmplCore32[OpenGlGlCore31]

  # OpenGlGlCore33Back* = OpenGlTmplCore33[OpenGlGlCore32Back]

  # OpenGlGlCore33* = OpenGlTmplCore33[OpenGlGlCore32]

  # OpenGlGlCore40Back* = OpenGlTmplCore40[OpenGlGlCore33Back]

  # OpenGlGlCore40* = OpenGlTmplCore40[OpenGlGlCore33]

  # OpenGlGlCore41Back* = OpenGlTmplCore41[OpenGlGlCore40Back]

  # OpenGlGlCore41* = OpenGlTmplCore41[OpenGlGlCore40]

  # OpenGlGlCore42Back* = OpenGlTmplCore42[OpenGlGlCore41Back]

  # OpenGlGlCore42* = OpenGlTmplCore42[OpenGlGlCore41]

  # OpenGlGlCore43Back* = OpenGlTmplCore43[OpenGlGlCore42Back]

  # OpenGlGlCore43* = OpenGlTmplCore43[OpenGlGlCore42]

  # OpenGlGlCore44Back* = OpenGlTmplCore44[OpenGlGlCore43Back]

  # OpenGlGlCore44* = OpenGlTmplCore44[OpenGlGlCore43]

  # OpenGlGlCore45Back* = OpenGlTmplCore45[OpenGlGlCore44Back]

  # OpenGlGlCore45* = OpenGlTmplCore45[OpenGlGlCore44]

  # OpenGlGlCore30Fwd* = OpenGlTmplCore30[OpenGlGlCore21Fwd]

  # OpenGlGlCore31Back* = OpenGlTmplCore31[OpenGlGlCore30]

  # OpenGlGlCore31* = OpenGlTmplCore31[OpenGlGlCore30Fwd]

  # OpenGlGlCore32Back* = OpenGlTmplCore32[OpenGlGlCore31Back]

  # OpenGlGlCore32* = OpenGlTmplCore32[OpenGlGlCore31]

  # OpenGlGlCore33Back* = OpenGlTmplCore33[OpenGlGlCore32Back]

  # OpenGlGlCore33* = OpenGlTmplCore33[OpenGlGlCore32]

  # OpenGlGlCore40Back* = OpenGlTmplCore40[OpenGlGlCore33Back]

  # OpenGlGlCore40* = OpenGlTmplCore40[OpenGlGlCore33]

  # OpenGlGlCore41Back* = OpenGlTmplCore41[OpenGlGlCore40Back]

  # OpenGlGlCore41* = OpenGlTmplCore41[OpenGlGlCore40]

  # OpenGlGlCore42Back* = OpenGlTmplCore42[OpenGlGlCore41Back]

  # OpenGlGlCore42* = OpenGlTmplCore42[OpenGlGlCore41]

  # OpenGlGlCore43Back* = OpenGlTmplCore43[OpenGlGlCore42Back]

  # OpenGlGlCore43* = OpenGlTmplCore43[OpenGlGlCore42]

  # OpenGlGlCore44Back* = OpenGlTmplCore44[OpenGlGlCore43Back]

  # OpenGlGlCore44* = OpenGlTmplCore44[OpenGlGlCore43]

  # OpenGlGlCore45Back* = OpenGlTmplCore45[OpenGlGlCore44Back]

  # OpenGlGlCore45* = OpenGlTmplCore45[OpenGlGlCore44]

  OpenGlFeatureFlag* {.size: sizeof(cint), importcpp: "OpenGl_FeatureFlag",
                      header: "OpenGl_Context.hxx".} = enum
    OpenGlFeatureNotAvailable = 0, 
    OpenGlFeatureInExtensions = 1, 
    OpenGlFeatureInCore = 2

  OpenGlContext* {.importcpp: "OpenGl_Context", header: "OpenGl_Context.hxx", bycopy.} = object of StandardTransient 
    # core11* {.importc: "core11".}: ptr OpenGlGlCore11 
    # core11fwd* {.importc: "core11fwd".}: ptr OpenGlGlCore11Fwd 
    # core15* {.importc: "core15".}: ptr OpenGlGlCore15 
    # core15fwd* {.importc: "core15fwd".}: ptr OpenGlGlCore15Fwd 
    # core20* {.importc: "core20".}: ptr OpenGlGlCore20 
    # core20fwd* {.importc: "core20fwd".}: ptr OpenGlGlCore20Fwd 
    # core30* {.importc: "core30".}: ptr OpenGlGlCore30 
    # core30fwd* {.importc: "core30fwd".}: ptr OpenGlGlCore30Fwd 
    # core32* {.importc: "core32".}: ptr OpenGlGlCore32 
    # core32back* {.importc: "core32back".}: ptr OpenGlGlCore32Back 
    # core33* {.importc: "core33".}: ptr OpenGlGlCore33 
    # core33back* {.importc: "core33back".}: ptr OpenGlGlCore33Back 
    # core41* {.importc: "core41".}: ptr OpenGlGlCore41 
    # core41back* {.importc: "core41back".}: ptr OpenGlGlCore41Back 
    # core42* {.importc: "core42".}: ptr OpenGlGlCore42 
    # core42back* {.importc: "core42back".}: ptr OpenGlGlCore42Back 
    # core43* {.importc: "core43".}: ptr OpenGlGlCore43 
    # core43back* {.importc: "core43back".}: ptr OpenGlGlCore43Back 
    # core44* {.importc: "core44".}: ptr OpenGlGlCore44 
    # core44back* {.importc: "core44back".}: ptr OpenGlGlCore44Back 
    # core45* {.importc: "core45".}: ptr OpenGlGlCore45 
    # core45back* {.importc: "core45back".}: ptr OpenGlGlCore45Back 
    caps* {.importc: "caps".}: Handle[OpenGlCaps] 
    hasGetBufferData* {.importc: "hasGetBufferData".}: bool 
    hasHighp* {.importc: "hasHighp".}: bool 
    hasUintIndex* {.importc: "hasUintIndex".}: bool 
    hasTexRGBA8* {.importc: "hasTexRGBA8".}: bool 
    hasTexFloatLinear* {.importc: "hasTexFloatLinear".}: bool 
    hasTexSRGB* {.importc: "hasTexSRGB".}: bool 
    hasFboSRGB* {.importc: "hasFboSRGB".}: bool 
    hasSRGBControl* {.importc: "hasSRGBControl".}: bool 
    hasFlatShading* {.importc: "hasFlatShading".}: OpenGlFeatureFlag 
    hasGlslBitwiseOps* {.importc: "hasGlslBitwiseOps".}: OpenGlFeatureFlag 
    hasDrawBuffers* {.importc: "hasDrawBuffers".}: OpenGlFeatureFlag 
    hasFloatBuffer* {.importc: "hasFloatBuffer".}: OpenGlFeatureFlag 
    hasHalfFloatBuffer* {.importc: "hasHalfFloatBuffer".}: OpenGlFeatureFlag 
    hasSampleVariables* {.importc: "hasSampleVariables".}: OpenGlFeatureFlag 
    hasGeometryStage* {.importc: "hasGeometryStage".}: OpenGlFeatureFlag 
    arbDrawBuffers* {.importc: "arbDrawBuffers".}: bool 
    arbNPTW* {.importc: "arbNPTW".}: bool 
    arbTexRG* {.importc: "arbTexRG".}: bool 
    arbTexFloat* {.importc: "arbTexFloat".}: bool 
    arbSamplerObject* {.importc: "arbSamplerObject".}: ptr OpenGlArbSamplerObject 
    arbTexBindless* {.importc: "arbTexBindless".}: ptr OpenGlArbTexBindless 
    arbTBO* {.importc: "arbTBO".}: ptr OpenGlArbTBO 
    arbTboRGB32* {.importc: "arbTboRGB32".}: bool 
    arbIns* {.importc: "arbIns".}: ptr OpenGlArbIns 
    arbDbg* {.importc: "arbDbg".}: ptr OpenGlArbDbg 
    arbFBO* {.importc: "arbFBO".}: ptr OpenGlArbFBO 
    arbFBOBlit* {.importc: "arbFBOBlit".}: ptr OpenGlArbFBOBlit 
    arbSampleShading* {.importc: "arbSampleShading".}: bool 
    extFragDepth* {.importc: "extFragDepth".}: bool 
    extDrawBuffers* {.importc: "extDrawBuffers".}: bool 
    extGS* {.importc: "extGS".}: ptr OpenGlExtGS 
    extBgra* {.importc: "extBgra".}: bool 
    extAnis* {.importc: "extAnis".}: bool 
    extPDS* {.importc: "extPDS".}: bool 
    atiMem* {.importc: "atiMem".}: bool 
    nvxMem* {.importc: "nvxMem".}: bool 
    oesSampleVariables* {.importc: "oesSampleVariables".}: bool 
    oesStdDerivatives* {.importc: "oesStdDerivatives".}: bool 
    # modelWorldState* {.importc: "ModelWorldState".}: OpenGlMatrixState[
    #     StandardShortReal]    
    # worldViewState* {.importc: "WorldViewState".}: OpenGlMatrixState[
    #     StandardShortReal]    
    # projectionState* {.importc: "ProjectionState".}: OpenGlMatrixState[
    #     StandardShortReal]    

  HandleOpenGlContext* = Handle[OpenGlContext]

  # OpenGlContextOpenGlResourcesMap* = NCollectionShared[
  #     NCollectionDataMap[TCollectionAsciiString, Handle[OpenGlResource]]]

  OpenGlElement* {.importcpp: "OpenGl_Element", header: "OpenGl_Element.hxx", bycopy.} = object of RootObj

  OpenGlAspects* {.importcpp: "OpenGl_Aspects", header: "OpenGl_Aspects.hxx", bycopy.} = object of OpenGlElement 

  OpenGlExtGS* {.importcpp: "OpenGl_ExtGS", header: "OpenGl_ExtGS.hxx", bycopy.} = object of OpenGlGlFunctions

  # OpenGlFlipper* {.importcpp: "OpenGl_Flipper", header: "OpenGl_Flipper.hxx", bycopy.} = object of OpenGlElement 

  OpenGlFontTile* {.importcpp: "OpenGl_Font::Tile", header: "OpenGl_Font.hxx", bycopy.} = object
    # uv* {.importc: "uv".}: FontRect 
    # px* {.importc: "px".}: FontRect 
    # texture* {.importc: "texture".}: GLuint 

  OpenGlFontRectI* {.importcpp: "OpenGl_Font::RectI", header: "OpenGl_Font.hxx",
                    bycopy.} = object
    left* {.importc: "Left".}: cint
    right* {.importc: "Right".}: cint
    top* {.importc: "Top".}: cint
    bottom* {.importc: "Bottom".}: cint

  # OpenGlColorFormats* = NCollectionVector[GLint]

  OpenGlFrameStats* {.importcpp: "OpenGl_FrameStats",
                     header: "OpenGl_FrameStats.hxx", bycopy.} = object of Graphic3dFrameStats 

  HandleOpenGlFrameStats* = Handle[OpenGlFrameStats]

  OpenGlFrameStatsPrs* {.importcpp: "OpenGl_FrameStatsPrs",
                        header: "OpenGl_FrameStatsPrs.hxx", bycopy.} = object of OpenGlElement 

  OpenGlGraduatedTrihedron* {.importcpp: "OpenGl_GraduatedTrihedron",
                             header: "OpenGl_GraduatedTrihedron.hxx", bycopy.} = object of OpenGlElement 

  OpenGlStateCounter* {.importcpp: "OpenGl_StateCounter",
                       header: "OpenGl_GraphicDriver.hxx", bycopy.} = object

  OpenGlGraphicDriver* {.importcpp: "OpenGl_GraphicDriver",
                        header: "OpenGl_GraphicDriver.hxx", bycopy.} = object of Graphic3dGraphicDriver 
    when defined(have_Egl) or defined(have_Gles2) or defined(occt_Uwp) or
        defined(android) or defined(qnx) or defined(emscripten):
      discard
    when defined(have_Egl) or defined(have_Gles2) or defined(occt_Uwp) or
        defined(android) or defined(qnx) or defined(emscripten):
      discard
    when defined(have_Egl) or defined(have_Gles2) or defined(occt_Uwp) or
        defined(android) or defined(qnx) or defined(emscripten):
      discard

  HandleOpenGlGraphicDriver* = Handle[OpenGlGraphicDriver]

  OpenGlElementNode* {.importcpp: "OpenGl_ElementNode", header: "OpenGl_Group.hxx",
                      bycopy.} = object
    elem* {.importc: "elem".}: ptr OpenGlElement
    next* {.importc: "next".}: ptr OpenGlElementNode

  OpenGlGroup* {.importcpp: "OpenGl_Group", header: "OpenGl_Group.hxx", bycopy.} = object of Graphic3dGroup 

  HandleOpenGlGroup* = Handle[OpenGlGroup]

  OpenGlHaltonSampler* {.importcpp: "OpenGl_HaltonSampler",
                        header: "OpenGl_HaltonSampler.hxx", bycopy.} = object 

  OpenGlLayer* = Graphic3dLayer

  OpenGlLayerFilter* {.size: sizeof(cint), importcpp: "OpenGl_LayerFilter",
                      header: "OpenGl_LayerFilter.hxx".} = enum
    OpenGlLF_All,             
    OpenGlLF_Upper,           
    OpenGlLF_Bottom,          
    OpenGlLF_RayTracable      

  OpenGlLayerList* {.importcpp: "OpenGl_LayerList", header: "OpenGl_LayerList.hxx",
                    bycopy.} = object 

  # OpenGlMapOfHatchStylesAndIds* = NCollectionDataMap[Handle[Graphic3dHatchStyle],
  #     cuint]

  OpenGlMaterialCommon* {.importcpp: "OpenGl_MaterialCommon",
                         header: "OpenGl_Material.hxx", bycopy.} = object
    # ambient* {.importc: "Ambient".}: OpenGlVec4 
    # diffuse* {.importc: "Diffuse".}: OpenGlVec4 
    # specular* {.importc: "Specular".}: OpenGlVec4 
    # emission* {.importc: "Emission".}: OpenGlVec4 
    # params* {.importc: "Params".}: OpenGlVec4 

  OpenGlMaterialPBR* {.importcpp: "OpenGl_MaterialPBR",
                      header: "OpenGl_Material.hxx", bycopy.} = object
    baseColor* {.importc: "BaseColor".}: OpenGlVec4 
    emissionIOR* {.importc: "EmissionIOR".}: OpenGlVec4 
    params* {.importc: "Params".}: OpenGlVec4 

  OpenGlMaterial* {.importcpp: "OpenGl_Material", header: "OpenGl_Material.hxx",
                   bycopy.} = object
    common* {.importc: "Common".}: OpenGlMaterialCommon
    pbr* {.importc: "Pbr".}: OpenGlMaterialPBR 

  OpenGlMaterialFlag* {.size: sizeof(cint), importcpp: "OpenGl_MaterialFlag",
                       header: "OpenGl_Material.hxx".} = enum
    OpenGlMaterialFlagFront,  
    OpenGlMaterialFlagBack    

  OpenGlMatrix* {.importcpp: "OpenGl_Matrix", header: "OpenGl_Matrix.hxx", bycopy.} = object
    mat* {.importc: "mat".}: array[4, array[4, cfloat]]

  OpenGlPrimitiveArray* {.importcpp: "OpenGl_PrimitiveArray",
                         header: "OpenGl_PrimitiveArray.hxx", bycopy.} = object of OpenGlElement 

  OpenGlBackgroundArray* {.importcpp: "OpenGl_BackgroundArray",
                          header: "OpenGl_BackgroundArray.hxx", bycopy.} = object of OpenGlPrimitiveArray 

  OpenGlRenderFilter* {.size: sizeof(cint), importcpp: "OpenGl_RenderFilter",
                       header: "OpenGl_RenderFilter.hxx".} = enum
    OpenGlRenderFilterEmpty = 0x000, 
    OpenGlRenderFilterOpaqueOnly = 0x001, 
    OpenGlRenderFilterTransparentOnly = 0x002, 
    OpenGlRenderFilterNonRaytraceableOnly = 0x004, 
    OpenGlRenderFilterFillModeOnly = 0x008 

  OpenGlResource* {.importcpp: "OpenGl_Resource", header: "OpenGl_Resource.hxx",
                   bycopy.} = object of StandardTransient 

  OpenGlNamedResource* {.importcpp: "OpenGl_NamedResource",
                        header: "OpenGl_NamedResource.hxx", bycopy.} = object of OpenGlResource 

  OpenGlPBREnvironment* {.importcpp: "OpenGl_PBREnvironment",
                         header: "OpenGl_PBREnvironment.hxx", bycopy.} = object of OpenGlNamedResource 

  OpenGlLineAttributes* {.importcpp: "OpenGl_LineAttributes",
                         header: "OpenGl_LineAttributes.hxx", bycopy.} = object of OpenGlResource 

  HandleOpenGlLineAttributes* = Handle[OpenGlLineAttributes]

  OpenGlFrameBuffer* {.importcpp: "OpenGl_FrameBuffer",
                      header: "OpenGl_FrameBuffer.hxx", bycopy.} = object of OpenGlResource 

  HandleOpenGlFrameBuffer* = Handle[OpenGlFrameBuffer]

  OpenGlFont* {.importcpp: "OpenGl_Font", header: "OpenGl_Font.hxx", bycopy.} = object of OpenGlResource 

  HandleOpenGlFont* = Handle[OpenGlFont]

  OpenGlCappingPlaneResource* {.importcpp: "OpenGl_CappingPlaneResource",
                               header: "OpenGl_CappingPlaneResource.hxx", bycopy.} = object of OpenGlResource 

  HandleOpenGlCappingPlaneResource* = Handle[OpenGlCappingPlaneResource]

  HandleOpenGlResource* = Handle[OpenGlResource]

  OpenGlSampler* {.importcpp: "OpenGl_Sampler", header: "OpenGl_Sampler.hxx", bycopy.} = object of OpenGlResource 

  HandleOpenGlSampler* = Handle[OpenGlSampler]

  OpenGlRaytraceMaterial* {.importcpp: "OpenGl_RaytraceMaterial",
                           header: "OpenGl_SceneGeometry.hxx", bycopy.} = object 
    ambient* {.importc: "Ambient".}: BVH_Vec4f 
    diffuse* {.importc: "Diffuse".}: BVH_Vec4f 
    specular* {.importc: "Specular".}: BVH_Vec4f 
    emission* {.importc: "Emission".}: BVH_Vec4f 
    reflection* {.importc: "Reflection".}: BVH_Vec4f 
    refraction* {.importc: "Refraction".}: BVH_Vec4f 
    transparency* {.importc: "Transparency".}: BVH_Vec4f 
    textureTransform* {.importc: "TextureTransform".}: BVH_Mat4f 

  OpenGlRaytraceMaterialPhysical* {.importcpp: "OpenGl_RaytraceMaterial::Physical",
                                   header: "OpenGl_SceneGeometry.hxx", bycopy.} = object
    kc* {.importc: "Kc".}: BVH_Vec4f 
    kd* {.importc: "Kd".}: BVH_Vec4f 
    ks* {.importc: "Ks".}: BVH_Vec4f 
    kt* {.importc: "Kt".}: BVH_Vec4f 
    le* {.importc: "Le".}: BVH_Vec4f 
    fresnelCoat* {.importc: "FresnelCoat".}: BVH_Vec4f 
    fresnelBase* {.importc: "FresnelBase".}: BVH_Vec4f 
    absorption* {.importc: "Absorption".}: BVH_Vec4f 

  OpenGlRaytraceLight* {.importcpp: "OpenGl_RaytraceLight",
                        header: "OpenGl_SceneGeometry.hxx", bycopy.} = object 
    emission* {.importc: "Emission".}: BVH_Vec4f 
    position* {.importc: "Position".}: BVH_Vec4f 

  # QuadBvhHandle* = Handle[BVH_Tree[StandardShortReal, 3, BVH_QuadTree]]

  OpenGlBVHTriangulation3f* = BVH_Triangulation[StandardShortReal, 3]

  OpenGlTriangleSet* {.importcpp: "OpenGl_TriangleSet",
                      header: "OpenGl_SceneGeometry.hxx", bycopy.} = object of OpenGlBVHTriangulation3f 
    normals* {.importc: "Normals".}: BVH_Array3f 
    texCrds* {.importc: "TexCrds".}: BVH_Array2f 

  OpenGlRaytraceGeometry* {.importcpp: "OpenGl_RaytraceGeometry",
                           header: "OpenGl_SceneGeometry.hxx", bycopy.} = object of BVH_Geometry[
      StandardShortReal, 3] 
    # sources* {.importc: "Sources".}: Vector[OpenGlRaytraceLight,
    #     NCollectionStdAllocator[OpenGlRaytraceLight]] 
    # materials* {.importc: "Materials".}: Vector[OpenGlRaytraceMaterial,
    #     NCollectionStdAllocator[OpenGlRaytraceMaterial]] 
    # ambient* {.importc: "Ambient".}: BVH_Vec4f

  OpenGlProgramOptions* {.size: sizeof(cint), importcpp: "OpenGl_ProgramOptions",
                         header: "OpenGl_SetOfShaderPrograms.hxx".} = enum
    OpenGlPO_VertColor = 0x0001, 
    OpenGlPO_TextureRGB = 0x0002, 
    OpenGlPO_TextureEnv = 0x0004, 
    # OpenGlPO_TextureNormal = openGlPO_TextureRGB or openGlPO_TextureEnv, 
    OpenGlPO_PointSimple = 0x0008, 
    OpenGlPO_PointSprite = 0x0010, 
    # OpenGlPO_PointSpriteA = openGlPO_PointSimple or openGlPO_PointSprite, 
    OpenGlPO_StippleLine = 0x0020, 
    OpenGlPO_ClipPlanes1 = 0x0040, 
    OpenGlPO_ClipPlanes2 = 0x0080, 
    # OpenGlPO_ClipPlanesN = openGlPO_ClipPlanes1 or openGlPO_ClipPlanes2, 
    OpenGlPO_ClipChains = 0x0100, 
    OpenGlPO_MeshEdges = 0x0200, 
    OpenGlPO_AlphaTest = 0x0400, 
    OpenGlPO_WriteOit = 0x0800, 
    OpenGlPO_NB = 0x1000,       
    # OpenGlPO_IsPoint = openGlPO_PointSimple or openGlPO_PointSprite or
    #     openGlPO_PointSpriteA,
    # OpenGlPO_HasTextures = openGlPO_TextureRGB or openGlPO_TextureEnv,
    # OpenGlPO_NeedsGeomShader = openGlPO_MeshEdges

  OpenGlSetOfPrograms* {.importcpp: "OpenGl_SetOfPrograms",
                        header: "OpenGl_SetOfShaderPrograms.hxx", bycopy.} = object of StandardTransient 

  OpenGlSetOfProgramsbaseType* = StandardTransient

  OpenGlSetOfShaderPrograms* {.importcpp: "OpenGl_SetOfShaderPrograms",
                              header: "OpenGl_SetOfShaderPrograms.hxx", bycopy.} = object of StandardTransient 

  OpenGlSetOfShaderProgramsbaseType* = StandardTransient

  # OpenGlMapOfShaderPrograms* = NCollectionDataMap[TCollectionAsciiString,
  #     Handle[OpenGlSetOfShaderPrograms]]

  OpenGlShaderProgramList* = NCollectionSequence[Handle[OpenGlShaderProgram]]

  OpenGlShaderManager* {.importcpp: "OpenGl_ShaderManager",
                        header: "OpenGl_ShaderManager.hxx", bycopy.} = object of StandardTransient 

  HandleOpenGlShaderManager* = Handle[OpenGlShaderManager]

  OpenGlShaderObject* {.importcpp: "OpenGl_ShaderObject",
                       header: "OpenGl_ShaderObject.hxx", bycopy.} = object of OpenGlResource 

  OpenGlShaderObjectShaderVariable* {.importcpp: "OpenGl_ShaderObject::ShaderVariable",
                                     header: "OpenGl_ShaderObject.hxx", bycopy.} = object
    name* {.importc: "Name".}: TCollectionAsciiString 
    stages* {.importc: "Stages".}: cint 

  OpenGlShaderObjectShaderVariableList* = NCollectionSequence[
      OpenGlShaderObjectShaderVariable]

  HandleOpenGlShaderObject* = Handle[OpenGlShaderObject]

  OpenGlStateVariable* {.size: sizeof(cint), importcpp: "OpenGl_StateVariable",
                        header: "OpenGl_ShaderProgram.hxx".} = enum 
    OpenGlOCC_MODEL_WORLD_MATRIX, OpenGlOCC_WORLD_VIEW_MATRIX,
    OpenGlOCC_PROJECTION_MATRIX, OpenGlOCC_MODEL_WORLD_MATRIX_INVERSE,
    OpenGlOCC_WORLD_VIEW_MATRIX_INVERSE, OpenGlOCC_PROJECTION_MATRIX_INVERSE,
    OpenGlOCC_MODEL_WORLD_MATRIX_TRANSPOSE,
    OpenGlOCC_WORLD_VIEW_MATRIX_TRANSPOSE, OpenGlOCC_PROJECTION_MATRIX_TRANSPOSE,
    OpenGlOCC_MODEL_WORLD_MATRIX_INVERSE_TRANSPOSE,
    OpenGlOCC_WORLD_VIEW_MATRIX_INVERSE_TRANSPOSE, OpenGlOCC_PROJECTION_MATRIX_INVERSE_TRANSPOSE, 
    OpenGlOCC_CLIP_PLANE_EQUATIONS, OpenGlOCC_CLIP_PLANE_CHAINS, OpenGlOCC_CLIP_PLANE_COUNT, 
    OpenGlOCC_LIGHT_SOURCE_COUNT, OpenGlOCC_LIGHT_SOURCE_TYPES,
    OpenGlOCC_LIGHT_SOURCE_PARAMS, OpenGlOCC_LIGHT_AMBIENT, 
    OpenGlOCCT_TEXTURE_ENABLE, OpenGlOCCT_DISTINGUISH_MODE,
    OpenGlOCCT_PBR_FRONT_MATERIAL, OpenGlOCCT_PBR_BACK_MATERIAL,
    OpenGlOCCT_COMMON_FRONT_MATERIAL, OpenGlOCCT_COMMON_BACK_MATERIAL,
    OpenGlOCCT_ALPHA_CUTOFF, OpenGlOCCT_COLOR, 
    OpenGlOCCT_OIT_OUTPUT, OpenGlOCCT_OIT_DEPTH_FACTOR, 
    OpenGlOCCT_TEXTURE_TRSF2D, OpenGlOCCT_POINT_SIZE, 
    OpenGlOCCT_VIEWPORT, OpenGlOCCT_LINE_WIDTH, OpenGlOCCT_LINE_FEATHER, OpenGlOCCT_LINE_STIPPLE_PATTERN, 
    OpenGlOCCT_LINE_STIPPLE_FACTOR, 
    OpenGlOCCT_WIREFRAME_COLOR, OpenGlOCCT_QUAD_MODE_STATE, 
    OpenGlOCCT_ORTHO_SCALE, OpenGlOCCT_SILHOUETTE_THICKNESS, 
    OpenGlOCCT_NB_SPEC_IBL_LEVELS, 
    OpenGlOCCT_NUMBER_OF_STATE_VARIABLES



  OpenGlShaderList* = NCollectionSequence[Handle[OpenGlShaderObject]]

  # OpenGlSetterList* = NCollectionDataMap[csize_t, ptr OpenGlSetterInterface]

  OpenGlVariableSetterSelector* {.importcpp: "OpenGl_VariableSetterSelector",
                                 header: "OpenGl_ShaderProgram.hxx", bycopy.} = object 

  OpenGlUniformStateType* {.size: sizeof(cint),
                           importcpp: "OpenGl_UniformStateType",
                           header: "OpenGl_ShaderProgram.hxx".} = enum
    stOpenGlLIGHT_SOURCES_STATE, stOpenGlCLIP_PLANES_STATE, stOpenGlMODEL_WORLD_STATE,
    stOpenGlWORLD_VIEW_STATE, stOpenGlPROJECTION_STATE, stOpenGlMATERIAL_STATE,
    stOpenGlSURF_DETAIL_STATE, stOpenGL_OIT_STATE, stOpenGlUniformStateTypeNB

  OpenGlShaderUniformLocation* {.importcpp: "OpenGl_ShaderUniformLocation",
                                header: "OpenGl_ShaderProgram.hxx", bycopy.} = object 

  OpenGlShaderProgram* {.importcpp: "OpenGl_ShaderProgram",
                        header: "OpenGl_ShaderProgram.hxx", bycopy.} = object of OpenGlNamedResource 

  HandleOpenGlShaderProgram* = Handle[OpenGlShaderProgram]

  OpenGlVariableSetter*[T] {.importcpp: "OpenGl_VariableSetter<\'0>",
                            header: "OpenGl_ShaderProgram.hxx", bycopy.} = object of OpenGlSetterInterface 

  MapListOfType*[K; V] {.importcpp: "OpenGl_HashMapInitializer::MapListOfType<\'0,\'1>",
                       header: "OpenGl_ShaderProgram.hxx", bycopy.} = object
    # myDictionary* {.importc: "myDictionary".}: NCollectionDataMap[K, V]

  OpenGlShaderProgramDumpLevel* {.size: sizeof(cint),
                                 importcpp: "OpenGl_ShaderProgramDumpLevel",
                                 header: "OpenGl_ShaderProgramDumpLevel.hxx".} = enum
    OpenGlShaderProgramDumpLevelOff, 
    OpenGlShaderProgramDumpLevelShort, 
    OpenGlShaderProgramDumpLevelFull 

  OpenGlStateInterface* {.importcpp: "OpenGl_StateInterface",
                         header: "OpenGl_ShaderStates.hxx", bycopy.} = object of RootObj

  OpenGlMaterialState* {.importcpp: "OpenGl_MaterialState",
                        header: "OpenGl_MaterialState.hxx", bycopy.} = object of OpenGlStateInterface 

  OpenGlProjectionState* {.importcpp: "OpenGl_ProjectionState",
                          header: "OpenGl_ShaderStates.hxx", bycopy.} = object of OpenGlStateInterface 

  OpenGlModelWorldState* {.importcpp: "OpenGl_ModelWorldState",
                          header: "OpenGl_ShaderStates.hxx", bycopy.} = object of OpenGlStateInterface 

  OpenGlWorldViewState* {.importcpp: "OpenGl_WorldViewState",
                         header: "OpenGl_ShaderStates.hxx", bycopy.} = object of OpenGlStateInterface 

  OpenGlLightSourceState* {.importcpp: "OpenGl_LightSourceState",
                           header: "OpenGl_ShaderStates.hxx", bycopy.} = object of OpenGlStateInterface 

  OpenGlClippingState* {.importcpp: "OpenGl_ClippingState",
                        header: "OpenGl_ShaderStates.hxx", bycopy.} = object 

  OpenGlOitState* {.importcpp: "OpenGl_OitState",
                   header: "OpenGl_ShaderStates.hxx", bycopy.} = object of OpenGlStateInterface 

  OpenGlStencilTest* {.importcpp: "OpenGl_StencilTest",
                      header: "OpenGl_StencilTest.hxx", bycopy.} = object of OpenGlElement 

  OpenGlListOfStructure* = NCollectionList[ptr OpenGlStructure]

  OpenGlStructure* {.importcpp: "OpenGl_Structure", header: "OpenGl_Structure.hxx",
                    bycopy.} = object of Graphic3dCStructure 

  HandleOpenGlStructure* = Handle[OpenGlStructure]

  # OpenGlStructureStructIterator* = SubclassStructIterator[OpenGlStructure]

  # OpenGlStructureGroupIterator* = SubclassGroupIterator[OpenGlGroup]

  OpenGlStructureShadow* {.importcpp: "OpenGl_StructureShadow",
                          header: "OpenGl_StructureShadow.hxx", bycopy.} = object of OpenGlStructure 

  HandleOpenGlStructureShadow* = Handle[OpenGlStructureShadow]

  OpenGlText* {.importcpp: "OpenGl_Text", header: "OpenGl_Text.hxx", bycopy.} = object of OpenGlElement 

  OpenGlTextBuilder* {.importcpp: "OpenGl_TextBuilder",
                      header: "OpenGl_TextBuilder.hxx", bycopy.} = object 

  OpenGlTexture* {.importcpp: "OpenGl_Texture", header: "OpenGl_Texture.hxx", bycopy.} = object of OpenGlNamedResource 

  OpenGlPointSprite* {.importcpp: "OpenGl_PointSprite",
                      header: "OpenGl_PointSprite.hxx", bycopy.} = object of OpenGlTexture 

  HandleOpenGlPointSprite* = Handle[OpenGlPointSprite]

  HandleOpenGlTexture* = Handle[OpenGlTexture]

  OpenGlTextureFormat* {.importcpp: "OpenGl_TextureFormat",
                        header: "OpenGl_TextureFormat.hxx", bycopy.} = object 

  OpenGlTextureFormatSelector*[T] {.importcpp: "OpenGl_TextureFormatSelector<\'0>",
                                   header: "OpenGl_TextureFormat.hxx", bycopy.} = object 

  OpenGlTextureSet* {.importcpp: "OpenGl_TextureSet",
                     header: "OpenGl_TextureSet.hxx", bycopy.} = object of StandardTransient 

  OpenGlTextureSetTextureSlot* {.importcpp: "OpenGl_TextureSet::TextureSlot",
                                header: "OpenGl_TextureSet.hxx", bycopy.} = object
    texture* {.importc: "Texture".}: Handle[OpenGlTexture]
    unit* {.importc: "Unit".}: Graphic3dTextureUnit

  # OpenGlTextureSetIterator* {.importcpp: "OpenGl_TextureSet::Iterator",
  #                            header: "OpenGl_TextureSet.hxx", bycopy.} = object of OpenGlTextureSetIterator[
  #     OpenGlTextureSetTextureSlot] 

  OpenGlTextureSetPairIterator* {.importcpp: "OpenGl_TextureSetPairIterator",
                                 header: "OpenGl_TextureSetPairIterator.hxx",
                                 bycopy.} = object 

  OpenGlTileSampler* {.importcpp: "OpenGl_TileSampler",
                      header: "OpenGl_TileSampler.hxx", bycopy.} = object 

  OpenGlVec2i* = Graphic3dVec2i

  OpenGlVec3i* = Graphic3dVec3i

  OpenGlVec4i* = Graphic3dVec4i

  OpenGlVec2b* = Graphic3dVec2b

  OpenGlVec3b* = Graphic3dVec3b

  OpenGlVec4b* = Graphic3dVec4b

  OpenGlVec2u* = Graphic3dVec2u

  OpenGlVec3u* = Graphic3dVec3u

  OpenGlVec4u* = Graphic3dVec4u

  OpenGlVec2ub* = Graphic3dVec2ub

  OpenGlVec3ub* = Graphic3dVec3ub

  OpenGlVec4ub* = Graphic3dVec4ub

  OpenGlVec2* = Graphic3dVec2

  OpenGlVec3* = Graphic3dVec3

  OpenGlVec4* = Graphic3dVec4

  OpenGlVec2d* = Graphic3dVec2d

  OpenGlVec3d* = Graphic3dVec3d

  OpenGlVec4d* = Graphic3dVec4d

  OpenGlMat4* = Graphic3dMat4

  OpenGlMat4d* = Graphic3dMat4d

  VectorType*[T] {.importcpp: "OpenGl::VectorType<\'0>", header: "OpenGl_Vec.hxx",
                  bycopy.} = object 

  MatrixType*[T] {.importcpp: "OpenGl::MatrixType<\'0>", header: "OpenGl_Vec.hxx",
                  bycopy.} = object 

  OpenGlVertexBuffer* {.importcpp: "OpenGl_VertexBuffer",
                       header: "OpenGl_VertexBuffer.hxx", bycopy.} = object of OpenGlResource 

  OpenGlTextureBufferArb* {.importcpp: "OpenGl_TextureBufferArb",
                           header: "OpenGl_TextureBufferArb.hxx", bycopy.} = object of OpenGlVertexBuffer 

  HandleOpenGlTextureBufferArb* = Handle[OpenGlTextureBufferArb]

  OpenGlIndexBuffer* {.importcpp: "OpenGl_IndexBuffer",
                      header: "OpenGl_IndexBuffer.hxx", bycopy.} = object of OpenGlVertexBuffer 

  HandleOpenGlIndexBuffer* = Handle[OpenGlIndexBuffer]

  HandleOpenGlVertexBuffer* = Handle[OpenGlVertexBuffer]

  OpenGlVertexBufferCompat* {.importcpp: "OpenGl_VertexBufferCompat",
                             header: "OpenGl_VertexBufferCompat.hxx", bycopy.} = object of OpenGlVertexBuffer 

  HandleOpenGlVertexBufferCompat* = Handle[OpenGlVertexBufferCompat]

  OpenGlVertexBufferEditor*[TheVecT] {.importcpp: "OpenGl_VertexBufferEditor<\'0>",
                                      header: "OpenGl_VertexBufferEditor.hxx",
                                      bycopy.} = object 

  OpenGlView* {.importcpp: "OpenGl_View", header: "OpenGl_View.hxx", bycopy.} = object of Graphic3dCView 

  HandleOpenGlView* = Handle[OpenGlView]

  OpenGlWindow* {.importcpp: "OpenGl_Window", header: "OpenGl_Window.hxx", bycopy.} = object of StandardTransient 

  HandleOpenGlWindow* = Handle[OpenGlWindow]

  OpenGlWorkspace* {.importcpp: "OpenGl_Workspace", header: "OpenGl_Workspace.hxx",
                    bycopy.} = object of StandardTransient 

  HandleOpenGlWorkspace* = Handle[OpenGlWorkspace]

