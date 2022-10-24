# PROVIDES: Graphic3dArrayFlags HandleGraphic3dArrayOfPrimitives Graphic3dFresnelModel Graphic3dFresnel Graphic3dBSDF Graphic3dTypeOfAttribute Graphic3dTypeOfData Graphic3dAttribute Graphic3dArray1OfAttribute Graphic3dBufferRange Graphic3dCameraFocusType Graphic3dCameraIODType Graphic3dCameraTile Graphic3dCappingFlags Graphic3dClipState Graphic3dCTexture Graphic3dCubeMapOrder Graphic3dValidatedCubeMapOrder Graphic3dCullingToolCullingContext Graphic3dCullingToolPlane HandleGraphic3dCView HandleGraphic3dDataStructureManager Graphic3dDiagnosticInfo Graphic3dFrameStatsCounter Graphic3dFrameStatsTimer Graphic3dAxisAspect Graphic3dGraduatedTrihedronMinMaxValuesCallback HandleGraphic3dGraphicDriver Graphic3dLightSetIterator Graphic3dMaterialAspect MediaHMutex Graphic3dNameOfMaterial Graphic3dPBRMaterial Graphic3dPolygonOffset Graphic3dRenderingParamsAnaglyph Graphic3dRenderingParamsPerfCounters Graphic3dRenderingParamsFrustumCulling Graphic3dSequenceOfHClipPlaneIterator Graphic3dShaderObjectList Graphic3dShaderVariableList Graphic3dShaderAttributeList Graphic3dValueInterface Graphic3dUniformValueTypeID Graphic3dUniformInt Graphic3dUniformVec2i Graphic3dUniformVec3i Graphic3dUniformVec4i Graphic3dUniformFloat Graphic3dUniformVec2 Graphic3dUniformVec3 Graphic3dUniformVec4 HandleGraphic3dStructure Graphic3dIndexedMapOfView HandleGraphic3dTexture1D HandleGraphic3dTexture1Dmanual HandleGraphic3dTexture1Dsegment HandleGraphic3dTexture2Dplane HandleGraphic3dTextureEnv Graphic3dTextureSetIterator Graphic3dTextureUnit HandleGraphic3dTransformPers Graphic3dTransModeFlags Graphic3dTypeOfBackground Graphic3dTypeOfLightSource Graphic3dTypeOfReflection Graphic3dTypeOfShadingModel Graphic3dVertex Graphic3dWorldViewProjState Graphic3dZLayerId Graphic3dZLayerSetting Graphic3dZLayerSettings Graphic3dUniformValue
# DEPENDS: Graphic3dArrayOfPrimitives Graphic3dArrayOfPrimitives Graphic3dArrayOfPrimitives StandardTransient Graphic3dArrayOfPrimitives Graphic3dArrayOfPrimitives Graphic3dArrayOfPrimitives Graphic3dArrayOfPrimitives Graphic3dArrayOfPrimitives Graphic3dArrayOfPrimitives Graphic3dAspects Graphic3dAspects Graphic3dAspects StandardTransient Graphic3dAspects Graphic3dBuffer NCollectionBuffer NCollectionBuffer BVH_PrimitiveSet3d BVH_Set StandardTransient StandardTransient StandardTransient StandardTransient Graphic3dTextureMap Graphic3dCubeMap Graphic3dCubeMap Graphic3dDataStructureManager StandardTransient RootObj## Graphic3dFrameStatsData StandardTransient StandardTransient StandardTransient Graphic3dBuffer StandardTransient StandardTransient StandardTransient Graphic3dTexture2D Graphic3dTextureSet Graphic3dIndexBuffer StandardTransient StandardTransient StandardTransient StandardTransient StandardTransient StandardTransient StandardTransient StandardTransient Graphic3dTextureMap Graphic3dTexture1D Graphic3dTexture1D Graphic3dTextureMap Graphic3dTexture2D Graphic3dTexture2D Graphic3dTextureRoot Graphic3dTextureRoot StandardTransient StandardTransient StandardTransient StandardTransient

type
  Graphic3dArrayFlags* = cint
## ! Graphic3d_ArrayFlags bitmask values.

type
  HandleGraphic3dArrayOfPrimitives* = Handle[Graphic3dArrayOfPrimitives]
## ! This class furnish services to defined and fill an array of primitives
## ! which can be passed directly to graphics rendering API.
## !
## ! The basic interface consists of the following parts:
## ! 1) Specifying primitive type.
## !    WARNING! Particular primitive types might be unsupported by specific hardware/graphics API (like quads and polygons).
## !             It is always preferred using one of basic types having maximum compatibility:
## !             Point, Triangle (or Triangle strip), Segment aka Lines (or Polyline aka Line Strip).
## !    Primitive strip types can be used to reduce memory usage as alternative to Indexed arrays.
## ! 2) Vertex array.
## !    - Specifying the (maximum) number of vertexes within array.
## !    - Specifying the vertex attributes, complementary to mandatory vertex Position (normal, color, UV texture coordinates).
## !    - Defining vertex values by using various versions of AddVertex() or SetVertex*() methods.
## ! 3) Index array (optional).
## !    - Specifying the (maximum) number of indexes (edges).
## !    - Defining index values by using AddEdge() method; the index value should be within number of defined Vertexes.
## !
## !    Indexed array allows sharing vertex data across Primitives and thus reducing memory usage,
## !    since index size is much smaller then size of vertex with all its attributes.
## !    It is a preferred way for defining primitive array and main alternative to Primitive Strips for optimal memory usage,
## !    although it is also possible (but unusual) defining Indexed Primitive Strip.
## !    Note that it is NOT possible sharing Vertex Attributes partially (e.g. share Position, but have different Normals);
## !    in such cases Vertex should be entirely duplicated with all Attributes.
## ! 4) Bounds array (optional).
## !    - Specifying the (maximum) number of bounds.
## !    - Defining bounds using AddBound() methods.
## !
## !    Bounds allow splitting Primitive Array into sub-groups.
## !    This is useful only in two cases - for specifying per-group color and for restarting Primitive Strips.
## !    WARNING! Bounds within Primitive Array break rendering batches into parts (additional for loops),
## !             affecting rendering performance negatively (increasing CPU load).

type
  Graphic3dFresnelModel* {.size: sizeof(cint), importcpp: "Graphic3d_FresnelModel",
                          header: "Graphic3d_BSDF.hxx".} = enum
    Graphic3dFM_SCHLICK = 0, Graphic3dFM_CONSTANT = 1, Graphic3dFM_CONDUCTOR = 2,
    Graphic3dFM_DIELECTRIC = 3
## ! Describes Fresnel reflectance parameters.

type
  Graphic3dFresnel* {.importcpp: "Graphic3d_Fresnel", header: "Graphic3d_BSDF.hxx",
                     bycopy.} = object ## ! Creates uninitialized Fresnel factor.
                                    ## ! Returns serialized representation of Fresnel factor.
                                    ## ! Creates new Fresnel reflectance factor.
                                    ## ! Type of Fresnel approximation.
    ## ! Serialized parameters of specific approximation.

type
  Graphic3dBSDF* {.importcpp: "Graphic3d_BSDF", header: "Graphic3d_BSDF.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Weight
                                                                                        ## of
                                                                                        ## coat
                                                                                        ## specular/glossy
                                                                                        ## BRDF.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## BSDF
                                                                                        ## describing
                                                                                        ## diffuse
                                                                                        ## (Lambertian)
                                                                                        ## surface.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## uninitialized
                                                                                        ## BSDF.
    kc* {.importc: "Kc".}: Graphic3dVec4 ## ! Weight of base diffuse BRDF.
    kd* {.importc: "Kd".}: Graphic3dVec3 ## ! Weight of base specular/glossy BRDF.
    ks* {.importc: "Ks".}: Graphic3dVec4 ## ! Weight of base specular/glossy BTDF.
    kt* {.importc: "Kt".}: Graphic3dVec3 ## ! Radiance emitted by the surface.
    le* {.importc: "Le".}: Graphic3dVec3 ## ! Volume scattering color/density.
    absorption* {.importc: "Absorption".}: Graphic3dVec4 ## ! Parameters of Fresnel reflectance of coat layer.
    fresnelCoat* {.importc: "FresnelCoat".}: Graphic3dFresnel ## ! Parameters of Fresnel reflectance of base layer.
    fresnelBase* {.importc: "FresnelBase".}: Graphic3dFresnel

type
  Graphic3dTypeOfAttribute* {.size: sizeof(cint),
                             importcpp: "Graphic3d_TypeOfAttribute",
                             header: "Graphic3d_Buffer.hxx".} = enum
    Graphic3dTOA_POS = 0,       ## !< vertex position
    Graphic3dTOA_NORM,        ## !< normal
    Graphic3dTOA_UV,          ## !< texture coordinates
    Graphic3dTOA_COLOR,       ## !< per-vertex color
    Graphic3dTOA_CUSTOM       ## !< custom attributes
## ! Type of the element in Vertex or Index Buffer

type
  Graphic3dTypeOfData* {.size: sizeof(cint), importcpp: "Graphic3d_TypeOfData",
                        header: "Graphic3d_Buffer.hxx".} = enum
    Graphic3dTOD_USHORT,      ## !< unsigned 16-bit integer
    Graphic3dTOD_UINT,        ## !< unsigned 32-bit integer
    Graphic3dTOD_VEC2,        ## !< 2-components float vector
    Graphic3dTOD_VEC3,        ## !< 3-components float vector
    Graphic3dTOD_VEC4,        ## !< 4-components float vector
    Graphic3dTOD_VEC4UB,      ## !< 4-components unsigned byte vector
    Graphic3dTOD_FLOAT        ## !< float value
## ! Vertex attribute definition.

type
  Graphic3dAttribute* {.importcpp: "Graphic3d_Attribute",
                       header: "Graphic3d_Buffer.hxx", bycopy.} = object
    id* {.importc: "Id".}: Graphic3dTypeOfAttribute ## !< attribute identifier in vertex shader, 0 is reserved for vertex position
    dataType* {.importc: "DataType".}: Graphic3dTypeOfData ## !< vec2,vec3,vec4,vec4ub

type
  Graphic3dArray1OfAttribute* = NCollectionArray1[Graphic3dAttribute]
## ! Buffer of vertex attributes.

type
  Graphic3dBufferRange* {.importcpp: "Graphic3d_BufferRange",
                         header: "Graphic3d_BufferRange.hxx", bycopy.} = object
    start* {.importc: "Start".}: cint ## !< first element within the range
    length* {.importc: "Length".}: cint ## !< number of elements within the range
                                    ## ! Empty constructor.

type
  Graphic3dCameraFocusType* {.size: sizeof(cint),
                             importcpp: "Graphic3d_Camera::FocusType",
                             header: "Graphic3d_Camera.hxx".} = enum
    FocusTypeAbsolute, FocusTypeRelative

type
  Graphic3dCameraIODType* {.size: sizeof(cint),
                           importcpp: "Graphic3d_Camera::IODType",
                           header: "Graphic3d_Camera.hxx".} = enum
    IODTypeAbsolute, IODTypeRelative

type
  Graphic3dCameraTile* {.importcpp: "Graphic3d_CameraTile",
                        header: "Graphic3d_CameraTile.hxx", bycopy.} = object ## ! Default
                                                                         ## constructor.
                                                                         ## !
                                                                         ## Initializes the empty Tile of zero size and
                                                                         ## lower-left offset
                                                                         ## orientation.
                                                                         ## ! Such Tile is
                                                                         ## considered
                                                                         ## uninitialized
                                                                         ## (invalid).
    totalSize* {.importc: "TotalSize".}: Graphic3dVec2i ## !< total size of the View area, in pixels
    tileSize* {.importc: "TileSize".}: Graphic3dVec2i ## !< size of the Tile, in pixels
    offset* {.importc: "Offset".}: Graphic3dVec2i ## !< the lower-left corner of the Tile relative to the View area (or upper-left if IsTopDown is true), in pixels
    isTopDown* {.importc: "IsTopDown".}: bool ## !< indicate the offset coordinate system - lower-left (default) or top-down

type
  Graphic3dCappingFlags* {.size: sizeof(cint), importcpp: "Graphic3d_CappingFlags",
                          header: "Graphic3d_CappingFlags.hxx".} = enum
    graphic3dCappingFlagsNone = 0x0000, ## !< no flags
    graphic3dCappingFlagsObjectMaterial = 0x0001, ## !< use object material
    graphic3dCappingFlagsObjectTexture = 0x0002, ## !< use object texture
    graphic3dCappingFlagsObjectShader = 0x0008 ## !< use object GLSL program

type
  Graphic3dClipState* {.size: sizeof(cint), importcpp: "Graphic3d_ClipState",
                       header: "Graphic3d_ClipPlane.hxx".} = enum
    Graphic3dClipStateOut,    ## !< fully outside (clipped) - should be discarded
    Graphic3dClipStateIn,     ## !< fully inside  (NOT clipped) - should NOT be discarded
    Graphic3dClipStateOn      ## !< on (not clipped / partially clipped) - should NOT be discarded
## ! Container for properties describing either a Clipping halfspace (single Clipping Plane),
## ! or a chain of Clipping Planes defining logical AND (conjunction) operation.
## ! The plane equation is specified in "world" coordinate system.

type
  Graphic3dCTexture* {.importcpp: "Graphic3d_CTexture",
                      header: "Graphic3d_CTexture.hxx", bycopy.} = object
    textureMap* {.importc: "TextureMap".}: Handle[Graphic3dTextureMap] ## !< handle to texture
    doTextureMap* {.importc: "doTextureMap".}: cint ## !< flag indicates to use texture or not

type
  Graphic3dCubeMapOrder* {.importcpp: "Graphic3d_CubeMapOrder",
                          header: "Graphic3d_CubeMapOrder.hxx", bycopy.} = object ## !
                                                                             ## Default
                                                                             ## constructor.
                                                                             ## !
                                                                             ## Creates
                                                                             ## empty
                                                                             ## order
                                                                             ## with
                                                                             ## zero
                                                                             ## convolution.
                                                                             ## !
                                                                             ## Sets
                                                                             ## number of
                                                                             ## tile in
                                                                             ## packed
                                                                             ## cubemap
                                                                             ## image
                                                                             ## according
                                                                             ## passed
                                                                             ## cubemap
                                                                             ## side.
                                                                             ## !
                                                                             ## Returns
                                                                             ## default
                                                                             ## order in
                                                                             ## protector
                                                                             ## container
                                                                             ## class.
                                                                             ## ! It is
                                                                             ## guaranteed to be
                                                                             ## valid.
                                                                             ## !
                                                                             ## Alias of
                                                                             ## 'Get'
                                                                             ## with
                                                                             ## other
                                                                             ## parameter's
                                                                             ## type for
                                                                             ## more
                                                                             ## handful
                                                                             ## iteration.
    ## !< Contains all values of permutation as power convolution
    ## !< Indicates if there are attempts to assign index greater than 5

type
  Graphic3dValidatedCubeMapOrder* {.importcpp: "Graphic3d_ValidatedCubeMapOrder",
                                   header: "Graphic3d_CubeMapOrder.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Only
                                                                                      ## Graphic3d_CubeMapOrder
                                                                                      ## can
                                                                                      ## generate
                                                                                      ## Graphic3d_ValidatedCubeMapOrder
                                                                                      ## in
                                                                                      ## 'Validated'
                                                                                      ## method.
    order* {.importc: "Order".}: Graphic3dCubeMapOrder ## !< Completely valid order

type
  Graphic3dCullingTool* {.importcpp: "Graphic3d_CullingTool",
                         header: "Graphic3d_CullingTool.hxx", bycopy.} = object ## !
                                                                           ## Auxiliary
                                                                           ## structure
                                                                           ## holding
                                                                           ## non-persistent
                                                                           ## culling
                                                                           ## options.
                                                                           ## !
                                                                           ## Creates an empty
                                                                           ## selector
                                                                           ## object with
                                                                           ## parallel
                                                                           ## projection type by
                                                                           ## default.
                                                                           ## !
                                                                           ## Calculates
                                                                           ## signed
                                                                           ## distance from plane to
                                                                           ## point.
                                                                           ## !
                                                                           ## @param
                                                                           ## theNormal [in] the
                                                                           ## plane's
                                                                           ## normal.
                                                                           ## !
                                                                           ## @param
                                                                           ## thePnt    [in]
                                                                           ## !
                                                                           ## Enumerates
                                                                           ## planes of view
                                                                           ## volume.
    ## !< Planes
    ## !< Vertices
    ## !< camera definition
    ##  for caching clip points projections onto viewing area normals once per traverse
    ##  ORDER: LEFT, RIGHT, BOTTOM, TOP, NEAR, FAR
    ## !< Max view volume's vertices projections onto its normals
    ## !< Min view volume's vertices projections onto its normals
    ##  for caching clip points projections onto AABB normals once per traverse
    ##  ORDER: E0, E1, E2
    ## !< Max view volume's vertices projections onto normalized dimensions of AABB
    ## !< Min view volume's vertices projections onto normalized dimensions of AABB
    ## !< State of world view projection matrices.
    ## !< camera eye position for distance culling
    ## !< camera direction for size culling
    ## !< camera scale for size culling
    ## !< pixel size for size culling
  Graphic3dCullingToolCullingContext* {.importcpp: "Graphic3d_CullingTool::CullingContext",
                                       header: "Graphic3d_CullingTool.hxx", bycopy.} = object
    distCull* {.importc: "DistCull".}: cfloat ## !< culling distance
    sizeCull2* {.importc: "SizeCull2".}: cfloat ## !< squared culling size
                                            ## ! Empty constructor.

type
  Graphic3dCullingToolPlane* {.importcpp: "Graphic3d_CullingTool::Plane",
                              header: "Graphic3d_CullingTool.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Creates
                                                                                ## default
                                                                                ## plane.
    origin* {.importc: "Origin".}: Graphic3dVec3d
    normal* {.importc: "Normal".}: Graphic3dVec3d

type
  HandleGraphic3dCView* = Handle[Graphic3dCView]
## ! Base class of a graphical view that carries out rendering process for a concrete
## ! implementation of graphical driver. Provides virtual interfaces for redrawing its
## ! contents, management of displayed structures and render settings. The source code
## ! of the class itself implements functionality related to management of
## ! computed (HLR or "view-dependent") structures.

type
  HandleGraphic3dDataStructureManager* = Handle[Graphic3dDataStructureManager]
## ! This class allows the definition of a manager to
## ! which the graphic objects are associated.
## ! It allows them to be globally manipulated.
## ! It defines the global attributes.

type
  Graphic3dDiagnosticInfo* {.size: sizeof(cint),
                            importcpp: "Graphic3d_DiagnosticInfo",
                            header: "Graphic3d_DiagnosticInfo.hxx".} = enum
    graphic3dDiagnosticInfoDevice = 0x001, ## !< device / vendor / version information
    graphic3dDiagnosticInfoFrameBuffer = 0x002, ## !< framebuffer information
    graphic3dDiagnosticInfoLimits = 0x004, ## !< hardware limits
    graphic3dDiagnosticInfoMemory = 0x008, ## !< memory counters
    graphic3dDiagnosticInfoNativePlatform = 0x010, ## !< native platform API information (e.g. WGL / GLX / EGL)
    graphic3dDiagnosticInfoExtensions = 0x020 ## !< vendor extension list (usually very long)
                                            ##  groups

type
  Graphic3dFrameStatsCounter* {.size: sizeof(cint),
                               importcpp: "Graphic3d_FrameStatsCounter",
                               header: "Graphic3d_FrameStatsCounter.hxx".} = enum ##  overall scene counters
    graphic3dFrameStatsCounterNbLayers = 0, ## !< number of ZLayers
    graphic3dFrameStatsCounterNbStructs, ## !< number of defined OpenGl_Structure
    graphic3dFrameStatsCounterEstimatedBytesGeom, ## !< estimated GPU memory used for geometry
    graphic3dFrameStatsCounterEstimatedBytesFbos, ## !< estimated GPU memory used for FBOs
    graphic3dFrameStatsCounterEstimatedBytesTextures, ## !< estimated GPU memory used for textures
                                                     ##  rendered counters
    graphic3dFrameStatsCounterNbLayersNotCulled, ## !< number of not culled ZLayers
    graphic3dFrameStatsCounterNbStructsNotCulled, ## !< number of not culled OpenGl_Structure
    graphic3dFrameStatsCounterNbGroupsNotCulled, ## !< number of not culled OpenGl_Group
    graphic3dFrameStatsCounterNbElemsNotCulled, ## !< number of not culled OpenGl_Element
    graphic3dFrameStatsCounterNbElemsFillNotCulled, ## !< number of not culled OpenGl_PrimitiveArray drawing triangles
    graphic3dFrameStatsCounterNbElemsLineNotCulled, ## !< number of not culled OpenGl_PrimitiveArray drawing lines
    graphic3dFrameStatsCounterNbElemsPointNotCulled, ## !< number of not culled OpenGl_PrimitiveArray drawing points
    graphic3dFrameStatsCounterNbElemsTextNotCulled, ## !< number of not culled OpenGl_Text
    graphic3dFrameStatsCounterNbTrianglesNotCulled, ## !< number of not culled (as structure) triangles
    graphic3dFrameStatsCounterNbLinesNotCulled, ## !< number of not culled (as structure) line segments
    graphic3dFrameStatsCounterNbPointsNotCulled, ## !< number of not culled (as structure) points
                                                ## Graphic3d_FrameStatsCounter_NbGlyphsNotCulled,    //!< number glyphs, to be considered in future
                                                ##  immediate layer rendered counters
    graphic3dFrameStatsCounterNbLayersImmediate, ## !< number of ZLayers in immediate layer
    graphic3dFrameStatsCounterNbStructsImmediate, ## !< number of OpenGl_Structure in immediate layer
    graphic3dFrameStatsCounterNbGroupsImmediate, ## !< number of OpenGl_Group in immediate layer
    graphic3dFrameStatsCounterNbElemsImmediate, ## !< number of OpenGl_Element in immediate layer
    graphic3dFrameStatsCounterNbElemsFillImmediate, ## !< number of OpenGl_PrimitiveArray drawing triangles in immediate layer
    graphic3dFrameStatsCounterNbElemsLineImmediate, ## !< number of OpenGl_PrimitiveArray drawing lines in immediate layer
    graphic3dFrameStatsCounterNbElemsPointImmediate, ## !< number of OpenGl_PrimitiveArray drawing points in immediate layer
    graphic3dFrameStatsCounterNbElemsTextImmediate, ## !< number of OpenGl_Text in immediate layer
    graphic3dFrameStatsCounterNbTrianglesImmediate, ## !< number of triangles in immediate layer
    graphic3dFrameStatsCounterNbLinesImmediate, ## !< number of line segments in immediate layer
    graphic3dFrameStatsCounterNbPointsImmediate ## !< number of points in immediate layer

type
  Graphic3dFrameStatsTimer* {.size: sizeof(cint),
                             importcpp: "Graphic3d_FrameStatsTimer",
                             header: "Graphic3d_FrameStatsTimer.hxx".} = enum
    graphic3dFrameStatsTimerElapsedFrame, graphic3dFrameStatsTimerCpuFrame,
    graphic3dFrameStatsTimerCpuCulling, graphic3dFrameStatsTimerCpuPicking,
    graphic3dFrameStatsTimerCpuDynamics

type
  Graphic3dAxisAspect* {.importcpp: "Graphic3d_AxisAspect",
                        header: "Graphic3d_GraduatedTrihedron.hxx", bycopy.} = object
    ## !< Number of splits along axes
    ## !< Length of tickmarks
    ## !< Color of axis and values
    ## !< Offset for drawing values
    ## !< Offset for drawing name of axis

type
  Graphic3dGraduatedTrihedron* {.importcpp: "Graphic3d_GraduatedTrihedron",
                                header: "Graphic3d_GraduatedTrihedron.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Default
                                                                                         ## constructor
                                                                                         ##
                                                                                         ## !
                                                                                         ## Constructs
                                                                                         ## the
                                                                                         ## default
                                                                                         ## graduated
                                                                                         ## trihedron
                                                                                         ## with
                                                                                         ## grid,
                                                                                         ## X,
                                                                                         ## Y,
                                                                                         ## Z
                                                                                         ## axes,
                                                                                         ## and
                                                                                         ## tickmarks
    cubicAxesCallback* {.importc: "CubicAxesCallback".}: Graphic3dGraduatedTrihedronMinMaxValuesCallback ## !< Callback function to define boundary box of displayed objects
    ptrView* {.importc: "PtrView".}: ptr Graphic3dCView
    ## !< Font name of names of axes: Courier, Arial, ...
    ## !< Style of names of axes: OSD_FA_Regular, OSD_FA_Bold,..
    ## !< Size of names of axes: 8, 10,..
    ## !< Font name of values: Courier, Arial, ...
    ## !< Style of values: OSD_FA_Regular, OSD_FA_Bold, ...
    ## !< Size of values: 8, 10, 12, 14, ...
    ## !< X, Y and Z axes parameters
  Graphic3dGraduatedTrihedronMinMaxValuesCallback* = proc (a1: ptr Graphic3dCView) {.
      cdecl.}
#proc newGraphic3dGraduatedTrihedron*(theNamesFont: TCollectionAsciiString = "Arial";
#    theNamesStyle: FontFontAspect = fontFA_Bold; theNamesSize: cint = 12; theValuesFont: TCollectionAsciiString = "Arial";
#    theValuesStyle: FontFontAspect = fontFA_Regular; theValuesSize: cint = 12;
#                                    theArrowsLength: StandardShortReal = 30.0f;
#    theGridColor: QuantityColor = quantityNOC_WHITE; theToDrawGrid: bool = true;
#                                    theToDrawAxes: bool = true): Graphic3dGraduatedTrihedron {.
#    cdecl, constructor, importcpp: "Graphic3d_GraduatedTrihedron(@)", header: "Graphic3d_GraduatedTrihedron.hxx".}

type
  HandleGraphic3dGraphicDriver* = Handle[Graphic3dGraphicDriver]
## ! This class allows the definition of a graphic driver
## ! for 3d interface (currently only OpenGl driver is used).

type
  Graphic3dLightSetIterator* {.importcpp: "Graphic3d_LightSet::Iterator",
                              header: "Graphic3d_LightSet.hxx", bycopy.} = object ## !
                                                                             ## Empty
                                                                             ## constructor.
                                                                             ## !
                                                                             ## Skip
                                                                             ## filtered
                                                                             ## items.

type
  Graphic3dMaterialAspect* {.importcpp: "Graphic3d_MaterialAspect",
                            header: "Graphic3d_MaterialAspect.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Returns
                                                                                 ## the
                                                                                 ## number
                                                                                 ## of
                                                                                 ## predefined
                                                                                 ## textures.
                                                                                 ##
                                                                                 ## !
                                                                                 ## Creates
                                                                                 ## a
                                                                                 ## material
                                                                                 ## from
                                                                                 ## default
                                                                                 ## values.
                                                                                 ##
                                                                                 ## !
                                                                                 ## Deactivates
                                                                                 ## the
                                                                                 ## reflective
                                                                                 ## properties
                                                                                 ## of
                                                                                 ## the
                                                                                 ## surface
                                                                                 ## with
                                                                                 ## specified
                                                                                 ## reflection
                                                                                 ## type.
                                                                                 ##
                                                                                 ## !
                                                                                 ## Initialize
                                                                                 ## the
                                                                                 ## standard
                                                                                 ## material.

type
  MediaHMutex* = NCollectionShared[StandardMutex]
## ! Texture adapter for Media_Frame.

type
  Graphic3dNameOfMaterial* {.size: sizeof(cint),
                            importcpp: "Graphic3d_NameOfMaterial",
                            header: "Graphic3d_NameOfMaterial.hxx".} = enum
    graphic3dNameOfMaterialBrass, ## !< Brass        (Physic)
    graphic3dNameOfMaterialBronze, ## !< Bronze       (Physic)
    graphic3dNameOfMaterialCopper, ## !< Copper       (Physic)
    graphic3dNameOfMaterialGold, ## !< Gold         (Physic)
    graphic3dNameOfMaterialPewter, ## !< Pewter       (Physic)
    graphic3dNameOfMaterialPlastered, ## !< Plastered    (Generic)
    graphic3dNameOfMaterialPlastified, ## !< Plastified   (Generic)
    graphic3dNameOfMaterialSilver, ## !< Silver       (Physic)
    graphic3dNameOfMaterialSteel, ## !< Steel        (Physic)
    graphic3dNameOfMaterialStone, ## !< Stone        (Physic)
    graphic3dNameOfMaterialShinyPlastified, ## !< Shiny Plastified (Generic)
    graphic3dNameOfMaterialSatin, ## !< Satin        (Generic)
    graphic3dNameOfMaterialMetalized, ## !< Metalized    (Generic)
    graphic3dNameOfMaterialIonized, ## !< Ionized      (Generic)
    graphic3dNameOfMaterialChrome, ## !< Chrome       (Physic)
    graphic3dNameOfMaterialAluminum, ## !< Aluminum     (Physic)
    graphic3dNameOfMaterialObsidian, ## !< Obsidian     (Physic)
    graphic3dNameOfMaterialNeon, ## !< Neon         (Physic)
    graphic3dNameOfMaterialJade, ## !< Jade         (Physic)
    graphic3dNameOfMaterialCharcoal, ## !< Charcoal     (Physic)
    graphic3dNameOfMaterialWater, ## !< Water        (Physic)
    graphic3dNameOfMaterialGlass, ## !< Glass        (Physic)
    graphic3dNameOfMaterialDiamond, ## !< Diamond      (Physic)
    graphic3dNameOfMaterialTransparent, ## !< Transparent  (Physic)
    graphic3dNameOfMaterialDEFAULT, ## !< Default      (Generic);
                                   ## !  normally used as out-of-range value pointing to some application default
    graphic3dNameOfMaterialUserDefined ## !< User-defined (Physic);
                                       ## !  used for any material with non-standard definition
                                       ##  old aliases

type
  Graphic3dPBRMaterial* {.importcpp: "Graphic3d_PBRMaterial",
                         header: "Graphic3d_PBRMaterial.hxx", bycopy.} = object ## !
                                                                           ## Creates new
                                                                           ## physically based
                                                                           ## material in
                                                                           ## Metallic-Roughness
                                                                           ## system.
                                                                           ## !
                                                                           ## 'metallic'
                                                                           ## parameter is 0 by
                                                                           ## default.
                                                                           ## !
                                                                           ## 'roughness'
                                                                           ## parameter is 1 by
                                                                           ## default.
                                                                           ## !
                                                                           ## 'color'
                                                                           ## parameter is (0, 0, 0) by
                                                                           ## default.
                                                                           ## !
                                                                           ## 'alpha'
                                                                           ## parameter is 1 by
                                                                           ## default.
                                                                           ## ! 'IOR'
                                                                           ## parameter is 1.5 by
                                                                           ## default.
                                                                           ## !
                                                                           ## 'emission'
                                                                           ## parameter is (0, 0, 0) by
                                                                           ## default.
                                                                           ## ! PBR
                                                                           ## materials
                                                                           ## comparison
                                                                           ## operator.
                                                                           ## !
                                                                           ## Generates 2D look up table of scale and bias for
                                                                           ## fresnell zero
                                                                           ## coefficient.
                                                                           ## ! It is
                                                                           ## needed for
                                                                           ## calculation
                                                                           ## reflectance part of
                                                                           ## environment
                                                                           ## lighting.
                                                                           ## !
                                                                           ## @param [out]
                                                                           ## theLUT table
                                                                           ## storage (must be
                                                                           ## Image_Format_RGF).
                                                                           ## !
                                                                           ## @param [in]
                                                                           ## theIntegralSamplesCount
                                                                           ## number of
                                                                           ## importance
                                                                           ## samples in
                                                                           ## hemisphere
                                                                           ## integral
                                                                           ## calculation for every table item.
                                                                           ## !
                                                                           ## Roughness
                                                                           ## cannot be 0 in real
                                                                           ## calculations, so it
                                                                           ## returns
                                                                           ## minimal
                                                                           ## achievable level of
                                                                           ## roughness in
                                                                           ## practice
                                                                           ## ! Shows how much times less
                                                                           ## samples can be used in
                                                                           ## certain
                                                                           ## roughness value
                                                                           ## specular IBL map
                                                                           ## generation
                                                                           ## ! in
                                                                           ## compare with
                                                                           ## samples
                                                                           ## number for map with
                                                                           ## roughness of 1.
                                                                           ## !
                                                                           ## Specular IBL maps with less
                                                                           ## roughness
                                                                           ## values have
                                                                           ## higher
                                                                           ## resolution but
                                                                           ## require less
                                                                           ## samples for the same
                                                                           ## quality of
                                                                           ## baking.
                                                                           ## ! So that
                                                                           ## reducing
                                                                           ## samples
                                                                           ## number is good
                                                                           ## strategy to
                                                                           ## improve
                                                                           ## performance of
                                                                           ## baking.
                                                                           ## ! The
                                                                           ## samples
                                                                           ## number for
                                                                           ## specular IBL map with
                                                                           ## roughness of 1 (the
                                                                           ## maximum
                                                                           ## possible
                                                                           ## samples
                                                                           ## number) is
                                                                           ## expected to be
                                                                           ## defined as
                                                                           ## baking
                                                                           ## parameter.
                                                                           ## !
                                                                           ## Samples
                                                                           ## number for other
                                                                           ## roughness
                                                                           ## values can be
                                                                           ## calculated by
                                                                           ## multiplication
                                                                           ## origin
                                                                           ## samples
                                                                           ## number by this
                                                                           ## factor.
                                                                           ## !
                                                                           ## @param
                                                                           ## theProbability value from 0 to 1
                                                                           ## controlling
                                                                           ## strength of
                                                                           ## samples
                                                                           ## reducing.
                                                                           ## !
                                                                           ## Bigger
                                                                           ## values
                                                                           ## result in
                                                                           ## slower
                                                                           ## reduction to
                                                                           ## provide
                                                                           ## better
                                                                           ## quality but worse
                                                                           ## performance.
                                                                           ## ! Value of 1
                                                                           ## doesn't
                                                                           ## affect at all so that 1 will be
                                                                           ## returned (it can be used to
                                                                           ## disable
                                                                           ## reduction
                                                                           ## strategy).
                                                                           ## !
                                                                           ## @param
                                                                           ## theRoughness
                                                                           ## roughness value of
                                                                           ## current
                                                                           ## generated
                                                                           ## specular IBL map (from 0 to 1).
                                                                           ## !
                                                                           ## @return
                                                                           ## factor to
                                                                           ## calculate
                                                                           ## number of
                                                                           ## samples for
                                                                           ## current
                                                                           ## specular IBL map
                                                                           ## baking.
                                                                           ## ! Be
                                                                           ## aware! It has no
                                                                           ## obligation to
                                                                           ## return 1 in case of
                                                                           ## roughness of 1.
                                                                           ## ! Be
                                                                           ## aware! It
                                                                           ## produces poor
                                                                           ## quality with small
                                                                           ## number of
                                                                           ## origin
                                                                           ## samples. In that case it is
                                                                           ## recommended to be
                                                                           ## disabled.
                                                                           ## !
                                                                           ## Calculates
                                                                           ## geometry
                                                                           ## factor of
                                                                           ## Cook-Torrance BRDF using Smith
                                                                           ## formula.
    ## !< albedo color with alpha component [0, 1]
    ## !< metallic coefficient of material [0, 1]
    ## !< roughness coefficient of material [0, 1]
    ## !< light intensity emitted by material [>= 0]
    ## !< index of refraction [1, 3]

type
  Graphic3dPolygonOffset* {.importcpp: "Graphic3d_PolygonOffset",
                           header: "Graphic3d_PolygonOffset.hxx", bycopy.} = object
    mode* {.importc: "Mode".}: AspectPolygonOffsetMode
    factor* {.importc: "Factor".}: StandardShortReal
    units* {.importc: "Units".}: StandardShortReal ## ! Empty constructor.

type
  Graphic3dRenderingParams* {.importcpp: "Graphic3d_RenderingParams",
                             header: "Graphic3d_RenderingParams.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Default
                                                                                   ## pixels
                                                                                   ## density.
                                                                                   ##
                                                                                   ## !
                                                                                   ## Creates
                                                                                   ## default
                                                                                   ## rendering
                                                                                   ## parameters.
    `method`* {.importc: "Method".}: Graphic3dRenderingMode ## !< specifies rendering mode, Graphic3d_RM_RASTERIZATION by default
    transparencyMethod* {.importc: "TransparencyMethod".}: Graphic3dRenderTransparentMethod ## !< specifies rendering method for transparent graphics
    lineFeather* {.importc: "LineFeather".}: StandardShortReal ## !< line feater width in pixels (> 0.0), 1.0 by default;
                                                           ## !  high values produce blurred results, small values produce sharp (aliased) edges
    pbrEnvPow2Size* {.importc: "PbrEnvPow2Size".}: cint ## !< size of IBL maps side can be calculated as 2^PbrEnvPow2Size (> 0), 9 by default
    pbrEnvSpecMapNbLevels* {.importc: "PbrEnvSpecMapNbLevels".}: cint ## !< number of levels used in specular IBL map (> 1), 6 by default
    pbrEnvBakingDiffNbSamples* {.importc: "PbrEnvBakingDiffNbSamples".}: cint ## !< number of samples used in Monte-Carlo integration during diffuse IBL map's
                                                                          ## !  spherical harmonics coefficients generation (> 0), 1024 by default
    pbrEnvBakingSpecNbSamples* {.importc: "PbrEnvBakingSpecNbSamples".}: cint ## !< number of samples used in Monte-Carlo integration during specular IBL map's generation (> 0), 256 by default
    pbrEnvBakingProbability* {.importc: "PbrEnvBakingProbability".}: StandardShortReal ## !< controls strength of samples reducing strategy during specular IBL map's generation
                                                                                   ## !  (see 'SpecIBLMapSamplesFactor' function for detail explanation) [0.0, 1.0], 0.99 by default
    oitDepthFactor* {.importc: "OitDepthFactor".}: StandardShortReal ## !< scalar factor [0-1] controlling influence of depth of a fragment to its final coverage
    nbMsaaSamples* {.importc: "NbMsaaSamples".}: cint ## !< number of MSAA samples (should be within 0..GL_MAX_SAMPLES, power-of-two number), 0 by default
    renderResolutionScale* {.importc: "RenderResolutionScale".}: StandardShortReal ## !< rendering resolution scale factor, 1 by default;
                                                                               ## !  incompatible with MSAA (e.g. NbMsaaSamples should be set to 0)
    toEnableDepthPrepass* {.importc: "ToEnableDepthPrepass".}: bool ## !< enables/disables depth pre-pass, False by default
    toEnableAlphaToCoverage* {.importc: "ToEnableAlphaToCoverage".}: bool ## !< enables/disables alpha to coverage, True by default
    isGlobalIlluminationEnabled* {.importc: "IsGlobalIlluminationEnabled".}: bool ## !< enables/disables global illumination effects (path tracing)
    samplesPerPixel* {.importc: "SamplesPerPixel".}: cint ## !< number of samples per pixel (SPP)
    raytracingDepth* {.importc: "RaytracingDepth".}: cint ## !< maximum ray-tracing depth, 3 by default
    isShadowEnabled* {.importc: "IsShadowEnabled".}: bool ## !< enables/disables shadows rendering, True by default
    isReflectionEnabled* {.importc: "IsReflectionEnabled".}: bool ## !< enables/disables specular reflections, False by default
    isAntialiasingEnabled* {.importc: "IsAntialiasingEnabled".}: bool ## !< enables/disables adaptive anti-aliasing, False by default
    isTransparentShadowEnabled* {.importc: "IsTransparentShadowEnabled".}: bool ## !< enables/disables light propagation through transparent media, False by default
    useEnvironmentMapBackground* {.importc: "UseEnvironmentMapBackground".}: bool ## !< enables/disables environment map background
    toIgnoreNormalMapInRayTracing* {.importc: "ToIgnoreNormalMapInRayTracing".}: bool ## !< enables/disables normal map ignoring during path tracing; FALSE by default
    coherentPathTracingMode* {.importc: "CoherentPathTracingMode".}: bool ## !< enables/disables 'coherent' tracing mode (single RNG seed within 16x16 image blocks)
    adaptiveScreenSampling* {.importc: "AdaptiveScreenSampling".}: bool ## !< enables/disables adaptive screen sampling mode for path tracing, FALSE by default
    adaptiveScreenSamplingAtomic* {.importc: "AdaptiveScreenSamplingAtomic".}: bool ## !< enables/disables usage of atomic float operations within adaptive screen sampling, FALSE by default
    showSamplingTiles* {.importc: "ShowSamplingTiles".}: bool ## !< enables/disables debug mode for adaptive screen sampling, FALSE by default
    twoSidedBsdfModels* {.importc: "TwoSidedBsdfModels".}: bool ## !< forces path tracing to use two-sided versions of original one-sided scattering models
    radianceClampingValue* {.importc: "RadianceClampingValue".}: StandardShortReal ## !< maximum radiance value used for clamping radiance estimation.
    rebuildRayTracingShaders* {.importc: "RebuildRayTracingShaders".}: bool ## !< forces rebuilding ray tracing shaders at the next frame
    rayTracingTileSize* {.importc: "RayTracingTileSize".}: cint ## !< screen tile size, 32 by default (adaptive sampling mode of path tracing);
    nbRayTracingTiles* {.importc: "NbRayTracingTiles".}: cint ## !< maximum number of screen tiles per frame, 256 by default (adaptive sampling mode of path tracing);
                                                          ## !  this parameter limits the number of tiles to be rendered per redraw, increasing Viewer interactivity,
                                                          ## !  but also increasing the time for achieving a good quality; -1 means no limit
    cameraApertureRadius* {.importc: "CameraApertureRadius".}: StandardShortReal ## !< aperture radius of perspective camera used for depth-of-field, 0.0 by default (no DOF) (path tracing only)
    cameraFocalPlaneDist* {.importc: "CameraFocalPlaneDist".}: StandardShortReal ## !< focal  distance of perspective camera used for depth-of field, 1.0 by default (path tracing only)
    frustumCullingState* {.importc: "FrustumCullingState".}: Graphic3dRenderingParamsFrustumCulling ## !< state of frustum culling optimization; FrustumCulling_On by default
    toneMappingMethod* {.importc: "ToneMappingMethod".}: Graphic3dToneMappingMethod ## !< specifies tone mapping method for path tracing, Graphic3d_ToneMappingMethod_Disabled by default
    exposure* {.importc: "Exposure".}: StandardShortReal ## !< exposure value used for tone mapping (path tracing), 0.0 by default
    whitePoint* {.importc: "WhitePoint".}: StandardShortReal ## !< white point value used in filmic tone mapping (path tracing), 1.0 by default
    stereoMode* {.importc: "StereoMode".}: Graphic3dStereoMode ## !< stereoscopic output mode, Graphic3d_StereoMode_QuadBuffer by default
    hmdFov2d* {.importc: "HmdFov2d".}: StandardShortReal ## !< sharp field of view range in degrees for displaying on-screen 2D elements, 30.0 by default;
    anaglyphFilter* {.importc: "AnaglyphFilter".}: Graphic3dRenderingParamsAnaglyph ## !< filter for anaglyph output, Anaglyph_RedCyan_Optimized by default
    anaglyphLeft* {.importc: "AnaglyphLeft".}: Graphic3dMat4 ## !< left  anaglyph filter (in normalized colorspace), Color = AnaglyphRight * theColorRight + AnaglyphLeft * theColorLeft;
    anaglyphRight* {.importc: "AnaglyphRight".}: Graphic3dMat4 ## !< right anaglyph filter (in normalized colorspace), Color = AnaglyphRight * theColorRight + AnaglyphLeft * theColorLeft;
    toReverseStereo* {.importc: "ToReverseStereo".}: bool ## !< flag to reverse stereo pair, FALSE by default
    toMirrorComposer* {.importc: "ToMirrorComposer".}: bool ## !< if output device is an external composer - mirror rendering results in window in addition to sending frame to composer, TRUE by default
    statsPosition* {.importc: "StatsPosition".}: Handle[Graphic3dTransformPers] ## !< location of stats, upper-left position by default
    chartPosition* {.importc: "ChartPosition".}: Handle[Graphic3dTransformPers] ## !< location of stats chart, upper-right position by default
    chartSize* {.importc: "ChartSize".}: Graphic3dVec2i ## !< chart size in pixels, (-1, -1) by default which means that chart will occupy a portion of viewport
    statsTextAspect* {.importc: "StatsTextAspect".}: Handle[Graphic3dAspectText3d] ## !< stats text aspect
    statsUpdateInterval* {.importc: "StatsUpdateInterval".}: StandardShortReal ## !< time interval between stats updates in seconds, 1.0 second by default;
                                                                           ## !  too often updates might impact performance and will smear text within widgets
                                                                           ## !  (especially framerate, which is better averaging);
                                                                           ## !  0.0 interval will force updating on each frame
    statsTextHeight* {.importc: "StatsTextHeight".}: cint ## !< stats text size; 16 by default
    statsNbFrames* {.importc: "StatsNbFrames".}: cint ## !< number of data frames to collect history; 1 by default
    statsMaxChartTime* {.importc: "StatsMaxChartTime".}: StandardShortReal ## !< upper time limit within frame chart in seconds; 0.1 seconds by default (100 ms or 10 FPS)
    collectedStats* {.importc: "CollectedStats".}: Graphic3dRenderingParamsPerfCounters ## !< performance counters to collect, PerfCounters_Basic by default;
                                                                                    ## !  too verbose options might impact rendering performance,
                                                                                    ## !  because some counters might lack caching optimization (and will require expensive iteration through all data structures)
    toShowStats* {.importc: "ToShowStats".}: bool ## !< display performance statistics, FALSE by default;
                                              ## !  note that counters specified within CollectedStats will be updated nevertheless
                                              ## !  of visibility of widget managed by ToShowStats flag (e.g. stats can be retrieved by application for displaying using other methods)
    resolution* {.importc: "Resolution".}: cuint ## !< Pixels density (PPI), defines scaling factor for parameters like text size
                                             ## !  (when defined in screen-space units rather than in 3D) to be properly displayed
                                             ## !  on device (screen / printer). 72 is default value.
                                             ## !  Note that using difference resolution in different Views in same Viewer
                                             ## !  will lead to performance regression (for example, text will be recreated every time).
  Graphic3dRenderingParamsAnaglyph* {.size: sizeof(cint), importcpp: "Graphic3d_RenderingParams::Anaglyph",
                                     header: "Graphic3d_RenderingParams.hxx".} = enum
    AnaglyphRedCyanSimple,    ## !< simple    filter for Red-Cyan      glasses (R+GB)
    AnaglyphRedCyanOptimized, ## !< optimized filter for Red-Cyan      glasses (R+GB)
    AnaglyphYellowBlueSimple, ## !< simple    filter for Yellow-Blue   glasses (RG+B)
    AnaglyphYellowBlueOptimized, ## !< optimized filter for Yellow-Blue   glasses (RG+B)
    AnaglyphGreenMagentaSimple, ## !< simple    filter for Green-Magenta glasses (G+RB)
    AnaglyphUserDefined       ## !< use externally specified matrices

type
  Graphic3dRenderingParamsPerfCounters* {.size: sizeof(cint),
      importcpp: "Graphic3d_RenderingParams::PerfCounters",
      header: "Graphic3d_RenderingParams.hxx".} = enum
    perfCountersNONE = 0x000,   ## !< no stats
    perfCountersFrameRate = 0x001, ## !< Frame Rate,        frames per second (number of frames within elapsed time)
    perfCountersCPU = 0x002,    ## !< CPU utilization as frames per second (number of frames within CPU utilization time (rendering thread))
    perfCountersLayers = 0x004, ## !< count layers (groups of structures)
    perfCountersStructures = 0x008, ## !< count low-level Structures (normal unhighlighted Presentable Object is usually represented by 1 Structure)
                                 ##
    perfCountersGroups = 0x010, ## !< count primitive Groups (1 Structure holds 1 or more primitive Group)
    perfCountersGroupArrays = 0x020, ## !< count Arrays within Primitive Groups (optimal primitive Group holds 1 Array)
                                  ##
    perfCountersTriangles = 0x040, ## !< count Triangles
    perfCountersPoints = 0x080, ## !< count Points
    perfCountersLines = 0x100,  ## !< count Line segments
                            ##
    perfCountersEstimMem = 0x200, ## !< estimated GPU memory usage
                               ##
    perfCountersFrameTime = 0x400, ## !< frame CPU utilization time (rendering thread); @sa Graphic3d_FrameStatsTimer
    perfCountersFrameTimeMax = 0x800, ## !< maximum frame times
                                   ##
    perfCountersSkipImmediate = 0x1000 ## !< do not include immediate viewer updates (e.g. lazy updates without redrawing entire view content)
                                     ## ! show basic statistics

type
  Graphic3dRenderingParamsFrustumCulling* {.size: sizeof(cint),
      importcpp: "Graphic3d_RenderingParams::FrustumCulling",
      header: "Graphic3d_RenderingParams.hxx".} = enum
    FrustumCullingOff,        ## !< culling is disabled
    FrustumCullingOn,         ## !< culling is active, and the list of culled entities is automatically updated before redraw
    FrustumCullingNoUpdate    ## !< culling is active, but the list of culled entities is not updated

type
  Graphic3dSequenceOfHClipPlane* {.importcpp: "Graphic3d_SequenceOfHClipPlane",
                                  header: "Graphic3d_SequenceOfHClipPlane.hxx",
                                  bycopy.} = object of StandardTransient ## ! Iterator through clipping planes.
                                                                    ## ! Empty constructor.
  Graphic3dSequenceOfHClipPlaneIterator* {.
      importcpp: "Graphic3d_SequenceOfHClipPlane::Iterator",
      header: "Graphic3d_SequenceOfHClipPlane.hxx", bycopy.} = object of RootObj

type
  Graphic3dShaderObjectList* = NCollectionSequence[Handle[Graphic3dShaderObject]]
## ! List of custom uniform shader variables.

type
  Graphic3dShaderVariableList* = NCollectionSequence[
      Handle[Graphic3dShaderVariable]]
## ! List of custom vertex shader attrubures

type
  Graphic3dShaderAttributeList* = NCollectionSequence[
      Handle[Graphic3dShaderAttribute]]
## ! This class is responsible for managing shader programs.

type
  Graphic3dValueInterface* {.importcpp: "Graphic3d_ValueInterface",
                            header: "Graphic3d_ShaderVariable.hxx", bycopy.} = object of RootObj ##
                                                                                 ## !
                                                                                 ## Releases
                                                                                 ## memory
                                                                                 ## resources
                                                                                 ## of
                                                                                 ## variable
                                                                                 ## value.

type
  Graphic3dUniformValueTypeID*[T] {.importcpp: "Graphic3d_UniformValueTypeID<\'0>",
                                   header: "Graphic3d_ShaderVariable.hxx", bycopy.} = object ##  Not implemented
##  template<>
##  struct Graphic3d_UniformValueTypeID<Standard_Integer> {
##    static const Standard_Size ID = __LINE__;
##  };
##
##  template<>
##  struct Graphic3d_UniformValueTypeID<Standard_ShortReal> {
##    static const Standard_Size ID = __LINE__;
##  };
##
##  template<>
##  struct Graphic3d_UniformValueTypeID<Graphic3d_Vec2> {
##    static const Standard_Size ID = __LINE__;
##  };
##
##  template<>
##  struct Graphic3d_UniformValueTypeID<Graphic3d_Vec3> {
##    static const Standard_Size ID = __LINE__;
##  };
##
##  template<>
##  struct Graphic3d_UniformValueTypeID<Graphic3d_Vec4> {
##    static const Standard_Size ID = __LINE__;
##  };
##
##  template<>
##  struct Graphic3d_UniformValueTypeID<Graphic3d_Vec2i> {
##    static const Standard_Size ID = __LINE__;
##  };
##
##  template<>
##  struct Graphic3d_UniformValueTypeID<Graphic3d_Vec3i> {
##    static const Standard_Size ID = __LINE__;
##  };
##
##  template<>
##  struct Graphic3d_UniformValueTypeID<Graphic3d_Vec4i> {
##    static const Standard_Size ID = __LINE__;
##  };
## ! Describes specific value of custom uniform variable.

type
  Graphic3dUniformInt* = Graphic3dUniformValue[cint]
## ! Integer uniform 2D vector.

type
  Graphic3dUniformVec2i* = Graphic3dUniformValue[Graphic3dVec2i]
## ! Integer uniform 3D vector.

type
  Graphic3dUniformVec3i* = Graphic3dUniformValue[Graphic3dVec3i]
## ! Integer uniform 4D vector.

type
  Graphic3dUniformVec4i* = Graphic3dUniformValue[Graphic3dVec4i]
## ! Floating-point uniform value.

type
  Graphic3dUniformFloat* = Graphic3dUniformValue[StandardShortReal]
## ! Floating-point uniform 2D vector.

type
  Graphic3dUniformVec2* = Graphic3dUniformValue[Graphic3dVec2]
## ! Floating-point uniform 3D vector.

type
  Graphic3dUniformVec3* = Graphic3dUniformValue[Graphic3dVec3]
## ! Floating-point uniform 4D vector.

type
  Graphic3dUniformVec4* = Graphic3dUniformValue[Graphic3dVec4]
## ! Describes custom uniform shader variable.

type
  HandleGraphic3dStructure* = Handle[Graphic3dStructure]
## ! This class allows the definition a graphic object.
## ! This graphic structure can be displayed, erased, or highlighted.
## ! This graphic structure can be connected with another graphic structure.

type
  Graphic3dIndexedMapOfView* {.importcpp:"NCollection_IndexedMap<ptr Graphic3dCView>", header:"Graphic3d_StructureManager.hxx", bycopy.} = object

type
  HandleGraphic3dTexture1D* = Handle[Graphic3dTexture1D]
## ! This is an abstract class for managing 1D textures.

type
  HandleGraphic3dTexture1Dmanual* = Handle[Graphic3dTexture1Dmanual]
## ! This class provides the implementation of a manual 1D texture.
## ! you MUST provides texture coordinates on your facets if you want to see your texture.

type
  HandleGraphic3dTexture1Dsegment* = Handle[Graphic3dTexture1Dsegment]
## ! This class provides the implementation
## ! of a 1D texture applyable along a segment.
## ! You might use the SetSegment() method
## ! to set the way the texture is "streched" on facets.

type
  HandleGraphic3dTexture2Dplane* = Handle[Graphic3dTexture2Dplane]
## ! This class allows the management of a 2D texture defined from a plane equation
## ! Use the SetXXX() methods for positioning the texture as you want.

type
  HandleGraphic3dTextureEnv* = Handle[Graphic3dTextureEnv]
## ! This class provides environment texture.

type
  Graphic3dTextureSet* {.importcpp: "Graphic3d_TextureSet",
                        header: "Graphic3d_TextureSet.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Class
                                                                                            ## for
                                                                                            ## iterating
                                                                                            ## texture
                                                                                            ## set.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Empty
                                                                                            ## constructor.
  Graphic3dTextureSetIterator* {.importcpp: "Graphic3d_TextureSet::Iterator",
                                header: "Graphic3d_TextureSet.hxx", bycopy.} = object of RootObj ## ! Empty constructor.

type
  Graphic3dTextureUnit* {.size: sizeof(cint), importcpp: "Graphic3d_TextureUnit",
                         header: "Graphic3d_TextureUnit.hxx".} = enum ##  value as index number
    graphic3dTextureUnitPbrEnvironmentLUT = -3, ## ! sampler2D occDiffIBLMapSHCoeffs.
                                             ## ! Diffuse (irradiance) IBL map's spherical harmonics coefficients baked for PBR from environment cubemap image.
                                             ## ! Configured as index at the end of available texture units - 2.
    graphic3dTextureUnitPbrIblDiffuseSH = -2, ## ! samplerCube occSpecIBLMap.
                                           ## ! Specular IBL (Image-Based Lighting) environment map baked for PBR from environment cubemap image.
                                           ## ! Configured as index at the end of available texture units - 1.
    graphic3dTextureUnitPbrIblSpecular = -1, graphic3dTextureUnit0,
    graphic3dTextureUnit1, graphic3dTextureUnit2, graphic3dTextureUnit3,
    graphic3dTextureUnit4, graphic3dTextureUnit5, graphic3dTextureUnit6,
    graphic3dTextureUnit7, graphic3dTextureUnit8, graphic3dTextureUnit9,
    graphic3dTextureUnit10, graphic3dTextureUnit11, graphic3dTextureUnit12,
    graphic3dTextureUnit13, graphic3dTextureUnit14, graphic3dTextureUnit15 ##  aliases
                                                                         ## ! sampler2D occSamplerBaseColor.
                                                                         ## ! RGB(A) base color of the material and alpha mask/opacity.

type
  HandleGraphic3dTransformPers* = Handle[Graphic3dTransformPers]
## ! Transformation Persistence definition.
## !
## ! Transformation Persistence defines a mutable Local Coordinate system which depends on camera position,
## ! so that visual appearance of the object becomes partially immutable while camera moves.
## ! Object visually preserves particular property such as size, placement, rotation or their combination.
## !
## ! Graphic3d_TMF_ZoomPers, Graphic3d_TMF_RotatePers and Graphic3d_TMF_ZoomRotatePers define Local Coordinate system
## ! having origin in specified anchor point defined in World Coordinate system,
## ! while Graphic3d_TMF_TriedronPers and Graphic3d_TMF_2d define origin as 2D offset from screen corner in pixels.
## !
## ! Graphic3d_TMF_2d, Graphic3d_TMF_TriedronPers and Graphic3d_TMF_ZoomPers defines Local Coordinate system where length units are pixels.
## ! Beware that Graphic3d_RenderingParams::ResolutionRatio() will be ignored!
## ! For other Persistence flags, normal (world) length units will apply.
## !
## ! WARNING: Graphic3d_TMF_None is not permitted for defining instance of this class - NULL handle should be used for this purpose!

type
  Graphic3dTransModeFlags* {.size: sizeof(cint),
                            importcpp: "Graphic3d_TransModeFlags",
                            header: "Graphic3d_TransModeFlags.hxx".} = enum
    graphic3dTMF_None = 0x0000, ## !< no persistence attributes (normal 3D object)
    graphic3dTMF_ZoomPers = 0x0002, ## !< object does not resize
    graphic3dTMF_RotatePers = 0x0008, ## !< object does not rotate;
    graphic3dTMF_TriedronPers = 0x0020, ## !< object behaves like trihedron - it is fixed at the corner of view and does not resizing (but rotating)
    graphic3dTMF_2d = 0x0040   ##  object is defined in 2D screen coordinates (pixels) and does not resize, pan and rotate

type
  Graphic3dTypeOfBackground* {.size: sizeof(cint),
                              importcpp: "Graphic3d_TypeOfBackground",
                              header: "Graphic3d_TypeOfBackground.hxx".} = enum
    graphic3dTOB_NONE = -1, graphic3dTOB_GRADIENT, graphic3dTOB_TEXTURE,
    graphic3dTOB_CUBEMAP

type
  Graphic3dTypeOfLightSource* {.size: sizeof(cint),
                               importcpp: "Graphic3d_TypeOfLightSource",
                               header: "Graphic3d_TypeOfLightSource.hxx".} = enum
    graphic3dTOLS_AMBIENT,    ## !< ambient light
    graphic3dTOLS_DIRECTIONAL, ## !< directional light
    graphic3dTOLS_POSITIONAL, ## !< positional light
    graphic3dTOLS_SPOT       ## !< spot light
#  obsolete aliases

type
  Graphic3dTypeOfReflection* {.size: sizeof(cint),
                              importcpp: "Graphic3d_TypeOfReflection",
                              header: "Graphic3d_TypeOfReflection.hxx".} = enum
    Graphic3dTOR_AMBIENT = 0, Graphic3dTOR_DIFFUSE, Graphic3dTOR_SPECULAR,
    Graphic3dTOR_EMISSION

type
  Graphic3dTypeOfShadingModel* {.size: sizeof(cint),
                                importcpp: "Graphic3d_TypeOfShadingModel",
                                header: "Graphic3d_TypeOfShadingModel.hxx".} = enum ##
                                                                                ## !
                                                                                ## Use
                                                                                ## Shading
                                                                                ## Model,
                                                                                ## specified
                                                                                ## as
                                                                                ## default
                                                                                ## for
                                                                                ## entire
                                                                                ## Viewer.
    graphic3dTOSM_DEFAULT = -1, ## ! Unlit Shading (or shadeless), lighting is ignored and facet is fully filled by its material color.
                             ## ! This model is useful for artificial/auxiliary objects, not intended to be lit,
                             ## ! or for objects with pre-calculated lighting information (e.g. captured by camera).
    graphic3dTOSM_UNLIT = 0, ## ! Flat Shading, calculated per-facet basing on facet normal.
                          ## ! This model is useful for mesh element analysis.
                          ## ! Note that unlike Graphic3d_TOSM_VERTEX/Graphic3d_TOSM_FRAGMENT,
                          ## ! this shading model does NOT require normals to be defined within vertex attributes.
    graphic3dTOSM_FACET, ## ! Gouraud Shading, calculated per-vertex basing on nodal normal, and then color is interpolated across fragments.
                        ## ! This shading model was default within Fixed-Function Pipeline of old OpenGL (and Direct3d);
                        ## ! still can be used as alternative to Graphic3d_TOSM_FRAGMENT for better performance on low-poly (and middle-poly) models
                        ## ! (per-fragment shading is more optimal for considerably high-poly models, since expensive shading is not computed for discarded fragments).
                        ## ! Shading model requires normals to be defined within vertex attributes.
    graphic3dTOSM_VERTEX, ## ! Phong Shading, calculated per-fragment basing on nodal normal, so that normal is interpolated across fragments.
                         ## ! This is a main shading model nowadays, providing the best image quality.
                         ## ! Shading model requires normals to be defined within vertex attributes.
    graphic3dTOSM_FRAGMENT,   ## ! Metallic-roughness physically based (PBR) illumination system.
    graphic3dTOSM_PBR,        ## ! Same as Graphic3d_TOSM_PBR but using flat per-triangle normal.
    graphic3dTOSM_PBR_FACET  ##  obsolete aliases

type
  Graphic3dVertex* {.importcpp: "Graphic3d_Vertex", header: "Graphic3d_Vertex.hxx",
                    bycopy.} = object ## ! Creates a point with 0.0, 0.0, 0.0 coordinates.
    xyz* {.importc: "xyz".}: array[3, cfloat]

type
  Graphic3dWorldViewProjState* {.importcpp: "Graphic3d_WorldViewProjState",
                                header: "Graphic3d_WorldViewProjState.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Default
                                                                                         ## constructor.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Check
                                                                                         ## state
                                                                                         ## validity.
                                                                                         ##
                                                                                         ## !
                                                                                         ## @return
                                                                                         ## true
                                                                                         ## if
                                                                                         ## state
                                                                                         ## is
                                                                                         ## set.
                                                                                         ##
                                                                                         ## !
                                                                                         ## @return
                                                                                         ## projection
                                                                                         ## state
                                                                                         ## counter.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Compare
                                                                                         ## projection
                                                                                         ## with
                                                                                         ## other
                                                                                         ## state.
                                                                                         ##
                                                                                         ## !
                                                                                         ## @return
                                                                                         ## true
                                                                                         ## when
                                                                                         ## the
                                                                                         ## projection
                                                                                         ## of
                                                                                         ## the
                                                                                         ## given
                                                                                         ## camera
                                                                                         ## state
                                                                                         ## differs
                                                                                         ## from
                                                                                         ## this
                                                                                         ## one.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Compare
                                                                                         ## with
                                                                                         ## other
                                                                                         ## world
                                                                                         ## view
                                                                                         ## projection
                                                                                         ## state.
                                                                                         ##
                                                                                         ## !
                                                                                         ## @return
                                                                                         ## true
                                                                                         ## if
                                                                                         ## the
                                                                                         ## other
                                                                                         ## projection
                                                                                         ## state
                                                                                         ## is
                                                                                         ## different
                                                                                         ## to
                                                                                         ## this
                                                                                         ## one.

type
  Graphic3dZLayerId* = cint
## ! This enumeration defines the list of predefined layers, which can not be removed (but settings can be overridden).
## ! Custom layers might be added with positive index (>= 1) if standard list is insufficient for application needs;
## ! these layers will be displayed on top of predefined ones.

type
  Graphic3dZLayerSetting* {.size: sizeof(cint),
                           importcpp: "Graphic3d_ZLayerSetting",
                           header: "Graphic3d_ZLayerSettings.hxx".} = enum
    Graphic3dZLayerDepthTest = 1, Graphic3dZLayerDepthWrite = 2,
    Graphic3dZLayerDepthClear = 4, Graphic3dZLayerDepthOffset = 8
## ! Structure defines list of ZLayer properties.

## ! Structure defines list of ZLayer properties.
type
  Graphic3dZLayerSettings* {.importcpp: "Graphic3d_ZLayerSettings",
                            header: "Graphic3d_ZLayerSettings.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Default
                                                                                 ## settings.
    ## !< user-provided name
    ## !< lights list
    ## !< transformation to the origin
    ## !< the origin of all objects within the layer
    ## !< distance to discard objects
    ## !< size to discard objects
    ## !< glPolygonOffset() arguments
    ## !< immediate layer will be drawn after all normal layers
    ## !< option to render layer within ray-tracing engine
    ## !< flag to allow/prevent environment texture mapping usage for specific layer
    ## !< option to enable depth test
    ## !< option to enable write depth values
    ## !< option to clear depth values before drawing the layer
    ## !< option to render layer within depth pre-pass


type
  Graphic3dUniformValue*[T] {.importcpp: "Graphic3d_UniformValue<\'0>",
                             header: "Graphic3d_ShaderVariable.hxx", bycopy.} = object of Graphic3dValueInterface ##
                                                                                                           ## !
                                                                                                           ## Creates
                                                                                                           ## new
                                                                                                           ## variable
                                                                                                           ## value.
    value* {.importc: "Value".}: T

type
  Graphic3dArrayOfPoints* {.importcpp: "Graphic3d_ArrayOfPoints",
                           header: "Graphic3d_ArrayOfPoints.hxx", bycopy.} = object of Graphic3dArrayOfPrimitives ##
                                                                                                           ## !
                                                                                                           ## Creates
                                                                                                           ## an
                                                                                                           ## array
                                                                                                           ## of
                                                                                                           ## points
                                                                                                           ## (Graphic3d_TOPA_POINTS).
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## The
                                                                                                           ## array
                                                                                                           ## must
                                                                                                           ## be
                                                                                                           ## filled
                                                                                                           ## using
                                                                                                           ## the
                                                                                                           ## AddVertex(Point)
                                                                                                           ## method.
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## @param
                                                                                                           ## theMaxVertexs
                                                                                                           ## maximum
                                                                                                           ## number
                                                                                                           ## of
                                                                                                           ## points
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## @param
                                                                                                           ## theArrayFlags
                                                                                                           ## array
                                                                                                           ## flags

type
  Graphic3dArrayOfPolygons* {.importcpp: "Graphic3d_ArrayOfPolygons",
                             header: "Graphic3d_ArrayOfPolygons.hxx", bycopy.} = object of Graphic3dArrayOfPrimitives ##
                                                                                                               ## !
                                                                                                               ## Creates
                                                                                                               ## an
                                                                                                               ## array
                                                                                                               ## of
                                                                                                               ## polygons
                                                                                                               ## (Graphic3d_TOPA_POLYGONS),
                                                                                                               ## a
                                                                                                               ## polygon
                                                                                                               ## can
                                                                                                               ## be
                                                                                                               ## filled
                                                                                                               ## as:
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## 1)
                                                                                                               ## Creating
                                                                                                               ## a
                                                                                                               ## single
                                                                                                               ## polygon
                                                                                                               ## defined
                                                                                                               ## with
                                                                                                               ## his
                                                                                                               ## vertexes,
                                                                                                               ## i.e:
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## @code
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray
                                                                                                               ## =
                                                                                                               ## Graphic3d_ArrayOfPolygons
                                                                                                               ## (7);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddVertex
                                                                                                               ## (x1,
                                                                                                               ## y1,
                                                                                                               ## z1);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## ....
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddVertex
                                                                                                               ## (x7,
                                                                                                               ## y7,
                                                                                                               ## z7);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## @endcode
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## 2)
                                                                                                               ## Creating
                                                                                                               ## separate
                                                                                                               ## polygons
                                                                                                               ## defined
                                                                                                               ## with
                                                                                                               ## a
                                                                                                               ## predefined
                                                                                                               ## number
                                                                                                               ## of
                                                                                                               ## bounds
                                                                                                               ## and
                                                                                                               ## the
                                                                                                               ## number
                                                                                                               ## of
                                                                                                               ## vertex
                                                                                                               ## per
                                                                                                               ## bound,
                                                                                                               ## i.e:
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## @code
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray
                                                                                                               ## =
                                                                                                               ## Graphic3d_ArrayOfPolygons
                                                                                                               ## (7,
                                                                                                               ## 2);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddBound
                                                                                                               ## (4);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddVertex
                                                                                                               ## (x1,
                                                                                                               ## y1,
                                                                                                               ## z1);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## ....
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddVertex
                                                                                                               ## (x4,
                                                                                                               ## y4,
                                                                                                               ## z4);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddBound
                                                                                                               ## (3);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddVertex
                                                                                                               ## (x5,
                                                                                                               ## y5,
                                                                                                               ## z5);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## ....
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddVertex
                                                                                                               ## (x7,
                                                                                                               ## y7,
                                                                                                               ## z7);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## @endcode
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## 3)
                                                                                                               ## Creating
                                                                                                               ## a
                                                                                                               ## single
                                                                                                               ## indexed
                                                                                                               ## polygon
                                                                                                               ## defined
                                                                                                               ## with
                                                                                                               ## his
                                                                                                               ## vertex
                                                                                                               ## ans
                                                                                                               ## edges,
                                                                                                               ## i.e:
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## @code
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray
                                                                                                               ## =
                                                                                                               ## Graphic3d_ArrayOfPolygons
                                                                                                               ## (4,
                                                                                                               ## 0,
                                                                                                               ## 6);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddVertex
                                                                                                               ## (x1,
                                                                                                               ## y1,
                                                                                                               ## z1);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## ....
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddVertex
                                                                                                               ## (x4,
                                                                                                               ## y4,
                                                                                                               ## z4);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddEdge
                                                                                                               ## (1);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddEdge
                                                                                                               ## (2);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddEdge
                                                                                                               ## (3);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddEdge
                                                                                                               ## (1);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddEdge
                                                                                                               ## (2);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddEdge
                                                                                                               ## (4);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## @endcode
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## 4)
                                                                                                               ## Creating
                                                                                                               ## separate
                                                                                                               ## polygons
                                                                                                               ## defined
                                                                                                               ## with
                                                                                                               ## a
                                                                                                               ## predefined
                                                                                                               ## number
                                                                                                               ## of
                                                                                                               ## bounds
                                                                                                               ## and
                                                                                                               ## the
                                                                                                               ## number
                                                                                                               ## of
                                                                                                               ## edges
                                                                                                               ## per
                                                                                                               ## bound,
                                                                                                               ## i.e:
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## @code
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray
                                                                                                               ## =
                                                                                                               ## Graphic3d_ArrayOfPolygons
                                                                                                               ## (6,
                                                                                                               ## 4,
                                                                                                               ## 14);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddBound
                                                                                                               ## (3);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddVertex
                                                                                                               ## (x1,
                                                                                                               ## y1,
                                                                                                               ## z1);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddVertex
                                                                                                               ## (x2,
                                                                                                               ## y2,
                                                                                                               ## z2);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddVertex
                                                                                                               ## (x3,
                                                                                                               ## y3,
                                                                                                               ## z3);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddEdge
                                                                                                               ## (1);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddEdge
                                                                                                               ## (2);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddEdge
                                                                                                               ## (3);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddBound
                                                                                                               ## (3);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddVertex
                                                                                                               ## (x4,
                                                                                                               ## y4,
                                                                                                               ## z4);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddVertex
                                                                                                               ## (x5,
                                                                                                               ## y5,
                                                                                                               ## z5);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddVertex
                                                                                                               ## (x6,
                                                                                                               ## y6,
                                                                                                               ## z6);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddEdge
                                                                                                               ## (4);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddEdge
                                                                                                               ## (5);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddEdge
                                                                                                               ## (6);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddBound
                                                                                                               ## (4);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddEdge
                                                                                                               ## (2);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddEdge
                                                                                                               ## (3);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddEdge
                                                                                                               ## (5);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddEdge
                                                                                                               ## (6);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddBound
                                                                                                               ## (4);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddEdge
                                                                                                               ## (1);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddEdge
                                                                                                               ## (3);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddEdge
                                                                                                               ## (5);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddEdge
                                                                                                               ## (4);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## @endcode
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## @param
                                                                                                               ## theMaxVertexs
                                                                                                               ## defines
                                                                                                               ## the
                                                                                                               ## maximum
                                                                                                               ## allowed
                                                                                                               ## vertex
                                                                                                               ## number
                                                                                                               ## in
                                                                                                               ## the
                                                                                                               ## array
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## @param
                                                                                                               ## theMaxBounds
                                                                                                               ## defines
                                                                                                               ## the
                                                                                                               ## maximum
                                                                                                               ## allowed
                                                                                                               ## bound
                                                                                                               ## number
                                                                                                               ## in
                                                                                                               ## the
                                                                                                               ## array
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## @param
                                                                                                               ## theMaxEdges
                                                                                                               ## defines
                                                                                                               ## the
                                                                                                               ## maximum
                                                                                                               ## allowed
                                                                                                               ## edge
                                                                                                               ## number
                                                                                                               ## in
                                                                                                               ## the
                                                                                                               ## array
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## @param
                                                                                                               ## theArrayFlags
                                                                                                               ## array
                                                                                                               ## flags

type
  Graphic3dArrayOfPolylines* {.importcpp: "Graphic3d_ArrayOfPolylines",
                              header: "Graphic3d_ArrayOfPolylines.hxx", bycopy.} = object of Graphic3dArrayOfPrimitives ##
                                                                                                                 ## !
                                                                                                                 ## Creates
                                                                                                                 ## an
                                                                                                                 ## array
                                                                                                                 ## of
                                                                                                                 ## polylines
                                                                                                                 ## (Graphic3d_TOPA_POLYLINES),
                                                                                                                 ## a
                                                                                                                 ## polyline
                                                                                                                 ## can
                                                                                                                 ## be
                                                                                                                 ## filled
                                                                                                                 ## as:
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## 1)
                                                                                                                 ## Creating
                                                                                                                 ## a
                                                                                                                 ## single
                                                                                                                 ## polyline
                                                                                                                 ## defined
                                                                                                                 ## with
                                                                                                                 ## his
                                                                                                                 ## vertexes,
                                                                                                                 ## i.e:
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## @code
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray
                                                                                                                 ## =
                                                                                                                 ## Graphic3d_ArrayOfPolylines
                                                                                                                 ## (7);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddVertex
                                                                                                                 ## (x1,
                                                                                                                 ## y1,
                                                                                                                 ## z1);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## ....
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddVertex
                                                                                                                 ## (x7,
                                                                                                                 ## y7,
                                                                                                                 ## z7);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## @endcode
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## 2)
                                                                                                                 ## Creating
                                                                                                                 ## separate
                                                                                                                 ## polylines
                                                                                                                 ## defined
                                                                                                                 ## with
                                                                                                                 ## a
                                                                                                                 ## predefined
                                                                                                                 ## number
                                                                                                                 ## of
                                                                                                                 ## bounds
                                                                                                                 ## and
                                                                                                                 ## the
                                                                                                                 ## number
                                                                                                                 ## of
                                                                                                                 ## vertex
                                                                                                                 ## per
                                                                                                                 ## bound,
                                                                                                                 ## i.e:
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## @code
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray
                                                                                                                 ## =
                                                                                                                 ## Graphic3d_ArrayOfPolylines
                                                                                                                 ## (7,
                                                                                                                 ## 2);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddBound
                                                                                                                 ## (4);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddVertex
                                                                                                                 ## (x1,
                                                                                                                 ## y1,
                                                                                                                 ## z1);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## ....
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddVertex
                                                                                                                 ## (x4,
                                                                                                                 ## y4,
                                                                                                                 ## z4);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddBound
                                                                                                                 ## (3);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddVertex
                                                                                                                 ## (x5,
                                                                                                                 ## y5,
                                                                                                                 ## z5);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## ....
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddVertex
                                                                                                                 ## (x7,
                                                                                                                 ## y7,
                                                                                                                 ## z7);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## @endcode
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## 3)
                                                                                                                 ## Creating
                                                                                                                 ## a
                                                                                                                 ## single
                                                                                                                 ## indexed
                                                                                                                 ## polyline
                                                                                                                 ## defined
                                                                                                                 ## with
                                                                                                                 ## his
                                                                                                                 ## vertex
                                                                                                                 ## and
                                                                                                                 ## edges,
                                                                                                                 ## i.e:
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## @code
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray
                                                                                                                 ## =
                                                                                                                 ## Graphic3d_ArrayOfPolylines
                                                                                                                 ## (4,
                                                                                                                 ## 0,
                                                                                                                 ## 6);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddVertex
                                                                                                                 ## (x1,
                                                                                                                 ## y1,
                                                                                                                 ## z1);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## ....
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddVertex
                                                                                                                 ## (x4,
                                                                                                                 ## y4,
                                                                                                                 ## z4);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (1);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (2);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (3);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (1);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (2);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (4);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## @endcode
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## 4)
                                                                                                                 ## creating
                                                                                                                 ## separate
                                                                                                                 ## polylines
                                                                                                                 ## defined
                                                                                                                 ## with
                                                                                                                 ## a
                                                                                                                 ## predefined
                                                                                                                 ## number
                                                                                                                 ## of
                                                                                                                 ## bounds
                                                                                                                 ## and
                                                                                                                 ## the
                                                                                                                 ## number
                                                                                                                 ## of
                                                                                                                 ## edges
                                                                                                                 ## per
                                                                                                                 ## bound,
                                                                                                                 ## i.e:
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## @code
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray
                                                                                                                 ## =
                                                                                                                 ## Graphic3d_ArrayOfPolylines
                                                                                                                 ## (6,
                                                                                                                 ## 4,
                                                                                                                 ## 14);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddBound
                                                                                                                 ## (3);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddVertex
                                                                                                                 ## (x1,
                                                                                                                 ## y1,
                                                                                                                 ## z1);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddVertex
                                                                                                                 ## (x2,
                                                                                                                 ## y2,
                                                                                                                 ## z2);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddVertex
                                                                                                                 ## (x3,
                                                                                                                 ## y3,
                                                                                                                 ## z3);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (1);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (2);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (3);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddBound
                                                                                                                 ## (3);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddVertex
                                                                                                                 ## (x4,
                                                                                                                 ## y4,
                                                                                                                 ## z4);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddVertex
                                                                                                                 ## (x5,
                                                                                                                 ## y5,
                                                                                                                 ## z5);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddVertex
                                                                                                                 ## (x6,
                                                                                                                 ## y6,
                                                                                                                 ## z6);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (4);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (5);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (6);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddBound
                                                                                                                 ## (4);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (2);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (3);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (5);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (6);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddBound
                                                                                                                 ## (4);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (1);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (3);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (5);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (4);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## @endcode
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## @param
                                                                                                                 ## theMaxVertexs
                                                                                                                 ## defines
                                                                                                                 ## the
                                                                                                                 ## maximum
                                                                                                                 ## allowed
                                                                                                                 ## vertex
                                                                                                                 ## number
                                                                                                                 ## in
                                                                                                                 ## the
                                                                                                                 ## array
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## @param
                                                                                                                 ## theMaxBounds
                                                                                                                 ## defines
                                                                                                                 ## the
                                                                                                                 ## maximum
                                                                                                                 ## allowed
                                                                                                                 ## bound
                                                                                                                 ## number
                                                                                                                 ## in
                                                                                                                 ## the
                                                                                                                 ## array
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## @param
                                                                                                                 ## theMaxEdges
                                                                                                                 ## defines
                                                                                                                 ## the
                                                                                                                 ## maximum
                                                                                                                 ## allowed
                                                                                                                 ## edge
                                                                                                                 ## number
                                                                                                                 ## in
                                                                                                                 ## the
                                                                                                                 ## array
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## @param
                                                                                                                 ## theArrayFlags
                                                                                                                 ## array
                                                                                                                 ## flags

type
  Graphic3dArrayOfPrimitives* {.importcpp: "Graphic3d_ArrayOfPrimitives",
                               header: "Graphic3d_ArrayOfPrimitives.hxx", bycopy.} = object of StandardTransient ##
                                                                                                          ## !
                                                                                                          ## Create
                                                                                                          ## an
                                                                                                          ## array
                                                                                                          ## of
                                                                                                          ## specified
                                                                                                          ## type.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Destructor.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @name
                                                                                                          ## optional
                                                                                                          ## array
                                                                                                          ## of
                                                                                                          ## Indices/Edges
                                                                                                          ## for
                                                                                                          ## using
                                                                                                          ## shared
                                                                                                          ## Vertex
                                                                                                          ## data
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## optional
                                                                                                          ## index
                                                                                                          ## buffer.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @name
                                                                                                          ## optional
                                                                                                          ## array
                                                                                                          ## of
                                                                                                          ## Bounds/Subgroups
                                                                                                          ## within
                                                                                                          ## primitive
                                                                                                          ## array
                                                                                                          ## (e.g.
                                                                                                          ## restarting
                                                                                                          ## primitives
                                                                                                          ## /
                                                                                                          ## assigning
                                                                                                          ## colors)
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## optional
                                                                                                          ## bounds
                                                                                                          ## buffer.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @name
                                                                                                          ## protected
                                                                                                          ## constructors
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Main
                                                                                                          ## constructor.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theType
                                                                                                          ## type
                                                                                                          ## of
                                                                                                          ## primitive
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theMaxVertexs
                                                                                                          ## length
                                                                                                          ## of
                                                                                                          ## vertex
                                                                                                          ## attributes
                                                                                                          ## buffer
                                                                                                          ## to
                                                                                                          ## be
                                                                                                          ## allocated
                                                                                                          ## (maximum
                                                                                                          ## number
                                                                                                          ## of
                                                                                                          ## vertexes,
                                                                                                          ## @sa
                                                                                                          ## ::AddVertex())
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theMaxBounds
                                                                                                          ## length
                                                                                                          ## of
                                                                                                          ## bounds
                                                                                                          ## buffer
                                                                                                          ## to
                                                                                                          ## be
                                                                                                          ## allocated
                                                                                                          ## (maximum
                                                                                                          ## number
                                                                                                          ## of
                                                                                                          ## bounds,
                                                                                                          ## @sa
                                                                                                          ## ::AddBound())
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theMaxEdges
                                                                                                          ## length
                                                                                                          ## of
                                                                                                          ## edges
                                                                                                          ## (index)
                                                                                                          ## buffer
                                                                                                          ## to
                                                                                                          ## be
                                                                                                          ## allocated
                                                                                                          ## (maximum
                                                                                                          ## number
                                                                                                          ## of
                                                                                                          ## indexes
                                                                                                          ## @sa
                                                                                                          ## ::AddEdge())
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theArrayFlags
                                                                                                          ## array
                                                                                                          ## flags
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @name
                                                                                                          ## private
                                                                                                          ## fields

type
  Graphic3dArrayOfQuadrangles* {.importcpp: "Graphic3d_ArrayOfQuadrangles",
                                header: "Graphic3d_ArrayOfQuadrangles.hxx", bycopy.} = object of Graphic3dArrayOfPrimitives ##
                                                                                                                     ## !
                                                                                                                     ## Creates
                                                                                                                     ## an
                                                                                                                     ## array
                                                                                                                     ## of
                                                                                                                     ## quadrangles
                                                                                                                     ## (Graphic3d_TOPA_QUADRANGLES),
                                                                                                                     ## a
                                                                                                                     ## quadrangle
                                                                                                                     ## can
                                                                                                                     ## be
                                                                                                                     ## filled
                                                                                                                     ## as:
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## 1)
                                                                                                                     ## Creating
                                                                                                                     ## a
                                                                                                                     ## set
                                                                                                                     ## of
                                                                                                                     ## quadrangles
                                                                                                                     ## defined
                                                                                                                     ## with
                                                                                                                     ## his
                                                                                                                     ## vertexes,
                                                                                                                     ## i.e:
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## @code
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## myArray
                                                                                                                     ## =
                                                                                                                     ## Graphic3d_ArrayOfQuadrangles
                                                                                                                     ## (8);
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## myArray->AddVertex
                                                                                                                     ## (x1,
                                                                                                                     ## y1,
                                                                                                                     ## z1);
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## ....
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## myArray->AddVertex
                                                                                                                     ## (x8,
                                                                                                                     ## y8,
                                                                                                                     ## z8);
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## @endcode
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## 2)
                                                                                                                     ## Creating
                                                                                                                     ## a
                                                                                                                     ## set
                                                                                                                     ## of
                                                                                                                     ## indexed
                                                                                                                     ## quadrangles
                                                                                                                     ## defined
                                                                                                                     ## with
                                                                                                                     ## his
                                                                                                                     ## vertex
                                                                                                                     ## ans
                                                                                                                     ## edges,
                                                                                                                     ## i.e:
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## @code
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## myArray
                                                                                                                     ## =
                                                                                                                     ## Graphic3d_ArrayOfQuadrangles
                                                                                                                     ## (6,
                                                                                                                     ## 8);
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## myArray->AddVertex
                                                                                                                     ## (x1,
                                                                                                                     ## y1,
                                                                                                                     ## z1);
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## ....
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## myArray->AddVertex
                                                                                                                     ## (x6,
                                                                                                                     ## y6,
                                                                                                                     ## z6);
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## myArray->AddEdges
                                                                                                                     ## (1,
                                                                                                                     ## 2,
                                                                                                                     ## 3,
                                                                                                                     ## 4);
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## myArray->AddEdges
                                                                                                                     ## (3,
                                                                                                                     ## 4,
                                                                                                                     ## 5,
                                                                                                                     ## 6);
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## @endcode
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## @param
                                                                                                                     ## theMaxVertexs
                                                                                                                     ## defines
                                                                                                                     ## the
                                                                                                                     ## maximum
                                                                                                                     ## allowed
                                                                                                                     ## vertex
                                                                                                                     ## number
                                                                                                                     ## in
                                                                                                                     ## the
                                                                                                                     ## array
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## @param
                                                                                                                     ## theMaxEdges
                                                                                                                     ## defines
                                                                                                                     ## the
                                                                                                                     ## maximum
                                                                                                                     ## allowed
                                                                                                                     ## edge
                                                                                                                     ## number
                                                                                                                     ## in
                                                                                                                     ## the
                                                                                                                     ## array
                                                                                                                     ## (for
                                                                                                                     ## indexed
                                                                                                                     ## array)
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## @param
                                                                                                                     ## theArrayFlags
                                                                                                                     ## array
                                                                                                                     ## flags

type
  Graphic3dArrayOfQuadrangleStrips* {.importcpp: "Graphic3d_ArrayOfQuadrangleStrips", header: "Graphic3d_ArrayOfQuadrangleStrips.hxx",
                                     bycopy.} = object of Graphic3dArrayOfPrimitives ##
                                                                                ## !
                                                                                ## Creates
                                                                                ## an
                                                                                ## array
                                                                                ## of
                                                                                ## quadrangle
                                                                                ## strips
                                                                                ## (Graphic3d_TOPA_QUADRANGLESTRIPS),
                                                                                ## a
                                                                                ## polygon
                                                                                ## can
                                                                                ## be
                                                                                ## filled
                                                                                ## as:
                                                                                ##
                                                                                ## !
                                                                                ## 1)
                                                                                ## Creating
                                                                                ## a
                                                                                ## single
                                                                                ## strip
                                                                                ## defined
                                                                                ## with
                                                                                ## his
                                                                                ## vertexes,
                                                                                ## i.e:
                                                                                ##
                                                                                ## !
                                                                                ## @code
                                                                                ##
                                                                                ## !
                                                                                ## myArray
                                                                                ## =
                                                                                ## Graphic3d_ArrayOfQuadrangleStrips
                                                                                ## (7);
                                                                                ##
                                                                                ## !
                                                                                ## myArray->AddVertex
                                                                                ## (x1,
                                                                                ## y1,
                                                                                ## z1);
                                                                                ##
                                                                                ## !
                                                                                ## ....
                                                                                ##
                                                                                ## !
                                                                                ## myArray->AddVertex
                                                                                ## (x7,
                                                                                ## y7,
                                                                                ## z7);
                                                                                ##
                                                                                ## !
                                                                                ## @endcode
                                                                                ##
                                                                                ## !
                                                                                ## 2)
                                                                                ## Creating
                                                                                ## separate
                                                                                ## strips
                                                                                ## defined
                                                                                ## with
                                                                                ## a
                                                                                ## predefined
                                                                                ## number
                                                                                ## of
                                                                                ## strips
                                                                                ## and
                                                                                ## the
                                                                                ## number
                                                                                ## of
                                                                                ## vertex
                                                                                ## per
                                                                                ## strip,
                                                                                ## i.e:
                                                                                ##
                                                                                ## !
                                                                                ## @code
                                                                                ##
                                                                                ## !
                                                                                ## myArray
                                                                                ## =
                                                                                ## Graphic3d_ArrayOfQuadrangleStrips
                                                                                ## (8,
                                                                                ## 2);
                                                                                ##
                                                                                ## !
                                                                                ## myArray->AddBound
                                                                                ## (4);
                                                                                ##
                                                                                ## !
                                                                                ## myArray->AddVertex
                                                                                ## (x1,
                                                                                ## y1,
                                                                                ## z1);
                                                                                ##
                                                                                ## !
                                                                                ## ....
                                                                                ##
                                                                                ## !
                                                                                ## myArray->AddVertex
                                                                                ## (x4,
                                                                                ## y4,
                                                                                ## z4);
                                                                                ##
                                                                                ## !
                                                                                ## myArray->AddBound
                                                                                ## (4);
                                                                                ##
                                                                                ## !
                                                                                ## myArray->AddVertex
                                                                                ## (x5,
                                                                                ## y5,
                                                                                ## z5);
                                                                                ##
                                                                                ## !
                                                                                ## ....
                                                                                ##
                                                                                ## !
                                                                                ## myArray->AddVertex
                                                                                ## (x8,
                                                                                ## y8,
                                                                                ## z8);
                                                                                ##
                                                                                ## !
                                                                                ## @endcode
                                                                                ##
                                                                                ## !
                                                                                ## The
                                                                                ## number
                                                                                ## of
                                                                                ## quadrangle
                                                                                ## really
                                                                                ## drawn
                                                                                ## is:
                                                                                ## VertexNumber()/2
                                                                                ## -
                                                                                ## Min(1,
                                                                                ## BoundNumber()).
                                                                                ##
                                                                                ## !
                                                                                ## @param
                                                                                ## theMaxVertexs
                                                                                ## defines
                                                                                ## the
                                                                                ## maximum
                                                                                ## allowed
                                                                                ## vertex
                                                                                ## number
                                                                                ## in
                                                                                ## the
                                                                                ## array
                                                                                ##
                                                                                ## !
                                                                                ## @param
                                                                                ## theMaxStrips
                                                                                ## defines
                                                                                ## the
                                                                                ## maximum
                                                                                ## allowed
                                                                                ## strip
                                                                                ## number
                                                                                ## in
                                                                                ## the
                                                                                ## array
                                                                                ##
                                                                                ## !
                                                                                ## @param
                                                                                ## theArrayFlags
                                                                                ## array
                                                                                ## flags

type
  Graphic3dArrayOfSegments* {.importcpp: "Graphic3d_ArrayOfSegments",
                             header: "Graphic3d_ArrayOfSegments.hxx", bycopy.} = object of Graphic3dArrayOfPrimitives ##
                                                                                                               ## !
                                                                                                               ## Creates
                                                                                                               ## an
                                                                                                               ## array
                                                                                                               ## of
                                                                                                               ## segments
                                                                                                               ## (Graphic3d_TOPA_SEGMENTS),
                                                                                                               ## a
                                                                                                               ## segment
                                                                                                               ## can
                                                                                                               ## be
                                                                                                               ## filled
                                                                                                               ## as:
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## 1)
                                                                                                               ## Creating
                                                                                                               ## a
                                                                                                               ## set
                                                                                                               ## of
                                                                                                               ## segments
                                                                                                               ## defined
                                                                                                               ## with
                                                                                                               ## his
                                                                                                               ## vertexes,
                                                                                                               ## i.e:
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## @code
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray
                                                                                                               ## =
                                                                                                               ## Graphic3d_ArrayOfSegments
                                                                                                               ## (4);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddVertex
                                                                                                               ## (x1,
                                                                                                               ## y1,
                                                                                                               ## z1);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## ....
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddVertex
                                                                                                               ## (x4,
                                                                                                               ## y4,
                                                                                                               ## z4);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## @endcode
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## 2)
                                                                                                               ## Creating
                                                                                                               ## a
                                                                                                               ## set
                                                                                                               ## of
                                                                                                               ## indexed
                                                                                                               ## segments
                                                                                                               ## defined
                                                                                                               ## with
                                                                                                               ## his
                                                                                                               ## vertex
                                                                                                               ## and
                                                                                                               ## edges,
                                                                                                               ## i.e:
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## @code
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray
                                                                                                               ## =
                                                                                                               ## Graphic3d_ArrayOfSegments
                                                                                                               ## (4,
                                                                                                               ## 8);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddVertex
                                                                                                               ## (x1,
                                                                                                               ## y1,
                                                                                                               ## z1);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## ....
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddVertex
                                                                                                               ## (x4,
                                                                                                               ## y4,
                                                                                                               ## z4);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddEdges
                                                                                                               ## (1,
                                                                                                               ## 2);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddEdges
                                                                                                               ## (3,
                                                                                                               ## 4);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddEdges
                                                                                                               ## (2,
                                                                                                               ## 4);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## myArray->AddEdges
                                                                                                               ## (1,
                                                                                                               ## 3);
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## @endcode
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## @param
                                                                                                               ## theMaxVertexs
                                                                                                               ## defines
                                                                                                               ## the
                                                                                                               ## maximum
                                                                                                               ## allowed
                                                                                                               ## vertex
                                                                                                               ## number
                                                                                                               ## in
                                                                                                               ## the
                                                                                                               ## array
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## @param
                                                                                                               ## theMaxEdges
                                                                                                               ## defines
                                                                                                               ## the
                                                                                                               ## maximum
                                                                                                               ## allowed
                                                                                                               ## edge
                                                                                                               ## number
                                                                                                               ## in
                                                                                                               ## the
                                                                                                               ## array
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## @param
                                                                                                               ## theArrayFlags
                                                                                                               ## array
                                                                                                               ## flags

type
  Graphic3dArrayOfTriangleFans* {.importcpp: "Graphic3d_ArrayOfTriangleFans",
                                 header: "Graphic3d_ArrayOfTriangleFans.hxx",
                                 bycopy.} = object of Graphic3dArrayOfPrimitives ## !
                                                                            ## Creates an
                                                                            ## array of
                                                                            ## triangle fans
                                                                            ## (Graphic3d_TOPA_TRIANGLEFANS), a
                                                                            ## polygon can be
                                                                            ## filled as:
                                                                            ## ! 1)
                                                                            ## Creating a
                                                                            ## single fan
                                                                            ## defined with his
                                                                            ## vertexes, i.e:
                                                                            ## !
                                                                            ## @code
                                                                            ## !
                                                                            ## myArray =
                                                                            ## Graphic3d_ArrayOfTriangleFans (7);
                                                                            ## !
                                                                            ## myArray->AddVertex (x1, y1, z1);
                                                                            ## !   ....
                                                                            ## !
                                                                            ## myArray->AddVertex (x7, y7, z7);
                                                                            ## !
                                                                            ## @endcode
                                                                            ## ! 2)
                                                                            ## creating
                                                                            ## separate fans
                                                                            ## defined with a
                                                                            ## predefined
                                                                            ## number of fans and the
                                                                            ## number of
                                                                            ## vertex per fan, i.e:
                                                                            ## !
                                                                            ## @code
                                                                            ## !
                                                                            ## myArray =
                                                                            ## Graphic3d_ArrayOfTriangleFans (8, 2);
                                                                            ## !
                                                                            ## myArray->AddBound (4);
                                                                            ## !
                                                                            ## myArray->AddVertex (x1, y1, z1);
                                                                            ## !   ....
                                                                            ## !
                                                                            ## myArray->AddVertex (x4, y4, z4);
                                                                            ## !
                                                                            ## myArray->AddBound (4);
                                                                            ## !
                                                                            ## myArray->AddVertex (x5, y5, z5);
                                                                            ## !   ....
                                                                            ## !
                                                                            ## myArray->AddVertex (x8, y8, z8);
                                                                            ## !
                                                                            ## @endcode
                                                                            ## ! The
                                                                            ## number of
                                                                            ## triangle
                                                                            ## really
                                                                            ## drawn is:
                                                                            ## VertexNumber() - 2 *
                                                                            ## Min(1,
                                                                            ## BoundNumber())
                                                                            ## !
                                                                            ## @param
                                                                            ## theMaxVertexs
                                                                            ## defines the
                                                                            ## maximum
                                                                            ## allowed
                                                                            ## vertex
                                                                            ## number in the
                                                                            ## array
                                                                            ## !
                                                                            ## @param
                                                                            ## theMaxFans
                                                                            ## defines the
                                                                            ## maximum
                                                                            ## allowed fan
                                                                            ## number in the
                                                                            ## array
                                                                            ## !
                                                                            ## @param
                                                                            ## theArrayFlags
                                                                            ## array
                                                                            ## flags

type
  Graphic3dArrayOfTriangles* {.importcpp: "Graphic3d_ArrayOfTriangles",
                              header: "Graphic3d_ArrayOfTriangles.hxx", bycopy.} = object of Graphic3dArrayOfPrimitives ##
                                                                                                                 ## !
                                                                                                                 ## Creates
                                                                                                                 ## an
                                                                                                                 ## array
                                                                                                                 ## of
                                                                                                                 ## triangles
                                                                                                                 ## (Graphic3d_TOPA_TRIANGLES),
                                                                                                                 ## a
                                                                                                                 ## triangle
                                                                                                                 ## can
                                                                                                                 ## be
                                                                                                                 ## filled
                                                                                                                 ## as:
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## 1)
                                                                                                                 ## Creating
                                                                                                                 ## a
                                                                                                                 ## set
                                                                                                                 ## of
                                                                                                                 ## triangles
                                                                                                                 ## defined
                                                                                                                 ## with
                                                                                                                 ## his
                                                                                                                 ## vertexes,
                                                                                                                 ## i.e:
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## @code
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray
                                                                                                                 ## =
                                                                                                                 ## Graphic3d_ArrayOfTriangles
                                                                                                                 ## (6);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddVertex
                                                                                                                 ## (x1,
                                                                                                                 ## y1,
                                                                                                                 ## z1);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## ....
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddVertex
                                                                                                                 ## (x6,
                                                                                                                 ## y6,
                                                                                                                 ## z6);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## @endcode
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## 3)
                                                                                                                 ## Creating
                                                                                                                 ## a
                                                                                                                 ## set
                                                                                                                 ## of
                                                                                                                 ## indexed
                                                                                                                 ## triangles
                                                                                                                 ## defined
                                                                                                                 ## with
                                                                                                                 ## his
                                                                                                                 ## vertex
                                                                                                                 ## and
                                                                                                                 ## edges,
                                                                                                                 ## i.e:
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## @code
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray
                                                                                                                 ## =
                                                                                                                 ## Graphic3d_ArrayOfTriangles
                                                                                                                 ## (4,
                                                                                                                 ## 6);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddVertex
                                                                                                                 ## (x1,
                                                                                                                 ## y1,
                                                                                                                 ## z1);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## ....
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddVertex
                                                                                                                 ## (x4,
                                                                                                                 ## y4,
                                                                                                                 ## z4);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdges
                                                                                                                 ## (1,
                                                                                                                 ## 2,
                                                                                                                 ## 3);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdges
                                                                                                                 ## (2,
                                                                                                                 ## 3,
                                                                                                                 ## 4);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## @endcode
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## @param
                                                                                                                 ## theMaxVertexs
                                                                                                                 ## defines
                                                                                                                 ## the
                                                                                                                 ## maximum
                                                                                                                 ## allowed
                                                                                                                 ## vertex
                                                                                                                 ## number
                                                                                                                 ## in
                                                                                                                 ## the
                                                                                                                 ## array
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## @param
                                                                                                                 ## theMaxEdges
                                                                                                                 ## defines
                                                                                                                 ## the
                                                                                                                 ## maximum
                                                                                                                 ## allowed
                                                                                                                 ## edge
                                                                                                                 ## number
                                                                                                                 ## in
                                                                                                                 ## the
                                                                                                                 ## array
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## @param
                                                                                                                 ## theArrayFlags
                                                                                                                 ## array
                                                                                                                 ## flags

type
  Graphic3dArrayOfTriangleStrips* {.importcpp: "Graphic3d_ArrayOfTriangleStrips", header: "Graphic3d_ArrayOfTriangleStrips.hxx",
                                   bycopy.} = object of Graphic3dArrayOfPrimitives ## !
                                                                              ## Creates an
                                                                              ## array of
                                                                              ## triangle
                                                                              ## strips
                                                                              ## (Graphic3d_TOPA_TRIANGLESTRIPS), a
                                                                              ## polygon
                                                                              ## can be
                                                                              ## filled
                                                                              ## as:
                                                                              ## ! 1)
                                                                              ## Creating a
                                                                              ## single
                                                                              ## strip
                                                                              ## defined
                                                                              ## with
                                                                              ## his
                                                                              ## vertexes,
                                                                              ## i.e:
                                                                              ## !
                                                                              ## @code
                                                                              ## !
                                                                              ## myArray =
                                                                              ## Graphic3d_ArrayOfTriangleStrips
                                                                              ## (7);
                                                                              ## !
                                                                              ## myArray->AddVertex
                                                                              ## (x1,
                                                                              ## y1,
                                                                              ## z1);
                                                                              ## !
                                                                              ## ....
                                                                              ## !
                                                                              ## myArray->AddVertex
                                                                              ## (x7,
                                                                              ## y7,
                                                                              ## z7);
                                                                              ## !
                                                                              ## @endcode
                                                                              ## ! 2)
                                                                              ## Creating
                                                                              ## separate
                                                                              ## strips
                                                                              ## defined
                                                                              ## with a
                                                                              ## predefined
                                                                              ## number of
                                                                              ## strips
                                                                              ## and
                                                                              ## the
                                                                              ## number of
                                                                              ## vertex
                                                                              ## per
                                                                              ## strip,
                                                                              ## i.e:
                                                                              ## !
                                                                              ## @code
                                                                              ## !
                                                                              ## myArray =
                                                                              ## Graphic3d_ArrayOfTriangleStrips
                                                                              ## (8,
                                                                              ## 2);
                                                                              ## !
                                                                              ## myArray->AddBound
                                                                              ## (4);
                                                                              ## !
                                                                              ## myArray->AddVertex
                                                                              ## (x1,
                                                                              ## y1,
                                                                              ## z1);
                                                                              ## !
                                                                              ## ....
                                                                              ## !
                                                                              ## myArray->AddVertex
                                                                              ## (x4,
                                                                              ## y4,
                                                                              ## z4);
                                                                              ## !
                                                                              ## myArray->AddBound
                                                                              ## (4);
                                                                              ## !
                                                                              ## myArray->AddVertex
                                                                              ## (x5,
                                                                              ## y5,
                                                                              ## z5);
                                                                              ## !
                                                                              ## ....
                                                                              ## !
                                                                              ## myArray->AddVertex
                                                                              ## (x8,
                                                                              ## y8,
                                                                              ## z8);
                                                                              ## !
                                                                              ## @endcode
                                                                              ## !
                                                                              ## @param
                                                                              ## theMaxVertexs
                                                                              ## defines
                                                                              ## the
                                                                              ## maximum
                                                                              ## allowed
                                                                              ## vertex
                                                                              ## number in
                                                                              ## the
                                                                              ## array
                                                                              ## !
                                                                              ## @param
                                                                              ## theMaxStrips
                                                                              ## defines
                                                                              ## the
                                                                              ## maximum
                                                                              ## allowed
                                                                              ## strip
                                                                              ## number in
                                                                              ## the
                                                                              ## array;
                                                                              ## !
                                                                              ## the
                                                                              ## number of
                                                                              ## triangle
                                                                              ## really
                                                                              ## drawn
                                                                              ## is:
                                                                              ## VertexNumber() - 2 *
                                                                              ## Min(1,
                                                                              ## BoundNumber())
                                                                              ## !
                                                                              ## @param
                                                                              ## theArrayFlags
                                                                              ## array
                                                                              ## flags

type
  Graphic3dAspectFillArea3d* {.importcpp: "Graphic3d_AspectFillArea3d",
                              header: "Graphic3d_AspectFillArea3d.hxx", bycopy.} = object of Graphic3dAspects ##
                                                                                                       ## !
                                                                                                       ## Creates
                                                                                                       ## a
                                                                                                       ## context
                                                                                                       ## table
                                                                                                       ## for
                                                                                                       ## fill
                                                                                                       ## area
                                                                                                       ## primitives
                                                                                                       ## defined
                                                                                                       ## with
                                                                                                       ## the
                                                                                                       ## following
                                                                                                       ## default
                                                                                                       ## values:
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## InteriorStyle
                                                                                                       ## :
                                                                                                       ## Aspect_IS_EMPTY
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## InteriorColor
                                                                                                       ## :
                                                                                                       ## Quantity_NOC_CYAN1
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## EdgeColor
                                                                                                       ## :
                                                                                                       ## Quantity_NOC_WHITE
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## EdgeLineType
                                                                                                       ## :
                                                                                                       ## Aspect_TOL_SOLID
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## EdgeWidth
                                                                                                       ## :
                                                                                                       ## 1.0
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## FrontMaterial
                                                                                                       ## :
                                                                                                       ## NOM_BRASS
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## BackMaterial
                                                                                                       ## :
                                                                                                       ## NOM_BRASS
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## HatchStyle
                                                                                                       ## :
                                                                                                       ## Aspect_HS_SOLID
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Display
                                                                                                       ## of
                                                                                                       ## back-facing
                                                                                                       ## filled
                                                                                                       ## polygons.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## No
                                                                                                       ## distinction
                                                                                                       ## between
                                                                                                       ## external
                                                                                                       ## and
                                                                                                       ## internal
                                                                                                       ## faces
                                                                                                       ## of
                                                                                                       ## FillAreas.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## The
                                                                                                       ## edges
                                                                                                       ## are
                                                                                                       ## not
                                                                                                       ## drawn.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Polygon
                                                                                                       ## offset
                                                                                                       ## parameters:
                                                                                                       ## mode
                                                                                                       ## =
                                                                                                       ## Aspect_POM_None,
                                                                                                       ## factor
                                                                                                       ## =
                                                                                                       ## 1.,
                                                                                                       ## units
                                                                                                       ## =
                                                                                                       ## 0.

type
  Graphic3dAspectLine3d* {.importcpp: "Graphic3d_AspectLine3d",
                          header: "Graphic3d_AspectLine3d.hxx", bycopy.} = object of Graphic3dAspects ##
                                                                                               ## !
                                                                                               ## Creates
                                                                                               ## a
                                                                                               ## context
                                                                                               ## table
                                                                                               ## for
                                                                                               ## line
                                                                                               ## primitives
                                                                                               ##
                                                                                               ## !
                                                                                               ## defined
                                                                                               ## with
                                                                                               ## the
                                                                                               ## following
                                                                                               ## default
                                                                                               ## values:
                                                                                               ##
                                                                                               ## !
                                                                                               ##
                                                                                               ## !
                                                                                               ## Color
                                                                                               ## =
                                                                                               ## Quantity_NOC_YELLOW;
                                                                                               ##
                                                                                               ## !
                                                                                               ## Type
                                                                                               ## =
                                                                                               ## Aspect_TOL_SOLID;
                                                                                               ##
                                                                                               ## !
                                                                                               ## Width
                                                                                               ## =
                                                                                               ## 1.0;

type
  Graphic3dAspectMarker3d* {.importcpp: "Graphic3d_AspectMarker3d",
                            header: "Graphic3d_AspectMarker3d.hxx", bycopy.} = object of Graphic3dAspects ##
                                                                                                   ## !
                                                                                                   ## Creates
                                                                                                   ## a
                                                                                                   ## context
                                                                                                   ## table
                                                                                                   ## for
                                                                                                   ## marker
                                                                                                   ## primitives
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## defined
                                                                                                   ## with
                                                                                                   ## the
                                                                                                   ## following
                                                                                                   ## default
                                                                                                   ## values:
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Marker
                                                                                                   ## type
                                                                                                   ## :
                                                                                                   ## TOM_X
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Color
                                                                                                   ## :
                                                                                                   ## YELLOW
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Scale
                                                                                                   ## factor:
                                                                                                   ## 1.0

type
  Graphic3dAspects* {.importcpp: "Graphic3d_Aspects",
                     header: "Graphic3d_Aspects.hxx", bycopy.} = object of StandardTransient ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## a
                                                                                      ## context
                                                                                      ## table
                                                                                      ## for
                                                                                      ## drawing
                                                                                      ## primitives
                                                                                      ## defined
                                                                                      ## with
                                                                                      ## the
                                                                                      ## following
                                                                                      ## default
                                                                                      ## values:
                                                                                      ##
                                                                                      ## !
                                                                                      ## Return
                                                                                      ## line
                                                                                      ## type;
                                                                                      ## Aspect_TOL_SOLID
                                                                                      ## by
                                                                                      ## default.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Return
                                                                                      ## marker
                                                                                      ## type;
                                                                                      ## Aspect_TOM_POINT
                                                                                      ## by
                                                                                      ## default.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## the
                                                                                      ## font;
                                                                                      ## NULL
                                                                                      ## string
                                                                                      ## by
                                                                                      ## default.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## true
                                                                                      ## if
                                                                                      ## mesh
                                                                                      ## edges
                                                                                      ## should
                                                                                      ## be
                                                                                      ## drawn
                                                                                      ## (false
                                                                                      ## by
                                                                                      ## default).
                                                                                      ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## the
                                                                                      ## hatch
                                                                                      ## type
                                                                                      ## used
                                                                                      ## when
                                                                                      ## InteriorStyle
                                                                                      ## is
                                                                                      ## IS_HATCH
                                                                                      ##
                                                                                      ## !
                                                                                      ## Check
                                                                                      ## for
                                                                                      ## equality
                                                                                      ## with
                                                                                      ## another
                                                                                      ## aspects.

type
  Graphic3dAspectText3d* {.importcpp: "Graphic3d_AspectText3d",
                          header: "Graphic3d_AspectText3d.hxx", bycopy.} = object of Graphic3dAspects ##
                                                                                               ## !
                                                                                               ## Creates
                                                                                               ## a
                                                                                               ## context
                                                                                               ## table
                                                                                               ## for
                                                                                               ## text
                                                                                               ## primitives
                                                                                               ## defined
                                                                                               ## with
                                                                                               ## the
                                                                                               ## following
                                                                                               ## default
                                                                                               ## values:
                                                                                               ##
                                                                                               ## !
                                                                                               ## Color
                                                                                               ## :
                                                                                               ## Quantity_NOC_YELLOW
                                                                                               ##
                                                                                               ## !
                                                                                               ## Font
                                                                                               ## :
                                                                                               ## Font_NOF_ASCII_MONO
                                                                                               ##
                                                                                               ## !
                                                                                               ## The
                                                                                               ## style
                                                                                               ## :
                                                                                               ## Aspect_TOST_NORMAL
                                                                                               ##
                                                                                               ## !
                                                                                               ## The
                                                                                               ## display
                                                                                               ## type
                                                                                               ## :
                                                                                               ## Aspect_TODT_NORMAL

type
  Graphic3dAttribBuffer* {.importcpp: "Graphic3d_AttribBuffer",
                          header: "Graphic3d_AttribBuffer.hxx", bycopy.} = object of Graphic3dBuffer ##
                                                                                              ## !
                                                                                              ## Empty
                                                                                              ## constructor.
    ## !< invalidated buffer data range (as byte offsets)
    ## !< flag indicating the vertex attributes being interleaved
    ## !< flag indicating that data can be invalidated

type
  Graphic3dBoundBuffer* {.importcpp: "Graphic3d_BoundBuffer",
                         header: "Graphic3d_BoundBuffer.hxx", bycopy.} = object of NCollectionBuffer ##
                                                                                              ## !
                                                                                              ## Empty
                                                                                              ## constructor.
    colors* {.importc: "Colors".}: ptr Graphic3dVec4 ## !< pointer to facet color values
    bounds* {.importc: "Bounds".}: ptr cint ## !< pointer to bounds array
    nbBounds* {.importc: "NbBounds".}: cint ## !< number of bounds
    nbMaxBounds* {.importc: "NbMaxBounds".}: cint ## !< number of allocated bounds

type
  Graphic3dBuffer* {.importcpp: "Graphic3d_Buffer", header: "Graphic3d_Buffer.hxx",
                    bycopy.} = object of NCollectionBuffer ## ! Empty constructor.
                                                      ## ! @return data offset to specified attribute
                                                      ## ! Release buffer.
                                                      ## ! Flag indicating that attributes in the buffer are interleaved; TRUE by default.
                                                      ## ! Requires sub-classing for creating a non-interleaved buffer (advanced usage).
    stride* {.importc: "Stride".}: cint ## !< the distance to the attributes of the next vertex within interleaved array
    nbElements* {.importc: "NbElements".}: cint ## !< number of the elements (@sa NbMaxElements() specifying the number of initially allocated number of elements)
    nbAttributes* {.importc: "NbAttributes".}: cint ## !< number of vertex attributes

type
  Graphic3dBvhCStructureSet* {.importcpp: "Graphic3d_BvhCStructureSet",
                              header: "Graphic3d_BvhCStructureSet.hxx", bycopy.} = object of BVH_PrimitiveSet3d ##
                                                                                                         ## !
                                                                                                         ## Creates
                                                                                                         ## an
                                                                                                         ## empty
                                                                                                         ## primitive
                                                                                                         ## set
                                                                                                         ## for
                                                                                                         ## BVH
                                                                                                         ## clipping.
    ## !< Indexed map of structures.
## using statement

type
  Graphic3dBvhCStructureSetTrsfPers* {.importcpp: "Graphic3d_BvhCStructureSetTrsfPers", header: "Graphic3d_BvhCStructureSetTrsfPers.hxx",
                                      bycopy.} = object of BVH_Set[cfloat, 3] ## ! Creates an empty
                                                                        ## primitive set for BVH
                                                                        ## clipping.
                                                                        ## ! Marks internal object state as
                                                                        ## outdated.
    ## ! Constructed bottom-level BVH.
    ## ! Builder for bottom-level BVH.
    ## ! Indexed map of structures.
    ## ! Cached set of bounding boxes precomputed for transformation persistent selectable objects.
    ## ! Cache exists only during computation of BVH Tree. Bounding boxes are world view projection
    ## ! dependent and should by synchronized.
    ## ! State of world view projection used for generation of transformation persistence bounding boxes.

type
  Graphic3dCamera* {.importcpp: "Graphic3d_Camera", header: "Graphic3d_Camera.hxx",
                    bycopy.} = object of StandardTransient ## ! Template container for cached matrices or Real/ShortReal types.
                                                      ## ! Enumerates supported monographic projections.
                                                      ## ! - Projection_Orthographic : orthographic projection.
                                                      ## ! - Projection_Perspective  : perspective projection.
                                                      ## ! - Projection_Stereo       : stereographic projection.
                                                      ## ! - Projection_MonoLeftEye  : mono projection for stereo left eye.
                                                      ## ! - Projection_MonoRightEye : mono projection for stereo right eye.
                                                      ## ! Default constructor.
                                                      ## ! Initializes camera with the following properties:
                                                      ## ! Eye (0, 0, -2); Center (0, 0, 0); Up (0, 1, 0);
                                                      ## ! Type (Orthographic); FOVy (45); Scale (1000); IsStereo(false);
                                                      ## ! ZNear (0.001); ZFar (3000.0); Aspect(1);
                                                      ## ! ZFocus(1.0); ZFocusType(Relative); IOD(0.05); IODType(Relative)
                                                      ## ! Get camera look direction.
                                                      ## ! @return camera look direction.
                                                      ## ! Transform orientation components of the camera:
                                                      ## ! Eye, Up and Center points.
                                                      ## ! @param theTrsf [in] the transformation to apply.
                                                      ## ! Project point from world coordinate space to
                                                      ## ! normalized device coordinates (mapping).
                                                      ## ! @param thePnt [in] the 3D point in WCS.
                                                      ## ! @return mapped point in NDC.
                                                      ## ! @return projection modification state of the camera.
                                                      ## ! Get orientation matrix.
                                                      ## ! @return camera orientation matrix.
                                                      ## ! Get stereo projection matrices.
                                                      ## ! @param theProjL      [out] left  eye projection matrix
                                                      ## ! @param theHeadToEyeL [out] left  head to eye translation matrix
                                                      ## ! @param theProjR      [out] right eye projection matrix
                                                      ## ! @param theHeadToEyeR [out] right head to eye translation matrix
                                                      ## ! Get stereo projection matrices.
                                                      ## ! @param theProjL      [out] left  eye projection matrix
                                                      ## ! @param theHeadToEyeL [out] left  head to eye translation matrix
                                                      ## ! @param theProjR      [out] right eye projection matrix
                                                      ## ! @param theHeadToEyeR [out] right head to eye translation matrix
                                                      ## ! Compose orthographic projection matrix for the passed camera volume mapping.
                                                      ## ! @param theOutMx [out] the projection matrix
                                                      ## ! @param theLRBT [in] the left/right/bottom/top mapping (clipping) coordinates
                                                      ## ! @param theNear [in] the near mapping (clipping) coordinate
                                                      ## ! @param theFar [in] the far mapping (clipping) coordinate
                                                      ## ! Enumerates vertices of view volume.
    ## !< Camera up direction vector
    ## !< Camera view direction (from eye)
    ## !< Camera eye position
    ## !< distance from Eye to Center
    ## !< World axial scale.
    ## !< Projection type used for rendering.
    ## !< Field Of View in y axis.
    ## !< Field Of View in x axis.
    ## !< Field Of View limit for 2d on-screen elements
    ## !< Field Of View as Tan(DTR_HALF * myFOVy)
    ## !< Distance to near clipping plane.
    ## !< Distance to far clipping plane.
    ## !< Width to height display ratio.
    ## !< Specifies parallel scale for orthographic projection.
    ## !< Stereographic focus value.
    ## !< Stereographic focus definition type.
    ## !< Intraocular distance value.
    ## !< Intraocular distance definition type.
    ## !< Tile defining sub-area for drawing
    ## !< left  custom frustum
    ## !< right custom frustum
    ## !< flag indicating usage of custom projection matrix
    ## !< flag indicating usage of custom stereo projection matrices
    ## !< flag indicating usage of custom stereo frustums
  Graphic3dCameraProjection* {.size: sizeof(cint),
                              importcpp: "Graphic3d_Camera::Projection",
                              header: "Graphic3d_Camera.hxx".} = enum
    ProjectionOrthographic, ProjectionPerspective, ProjectionStereo,
    ProjectionMonoLeftEye, ProjectionMonoRightEye

type
  Graphic3dCLight* {.importcpp: "Graphic3d_CLight", header: "Graphic3d_CLight.hxx",
                    bycopy.} = object of StandardTransient ## ! Empty constructor, which should be followed by light source properties configuration.
                                                      ## ! Returns location of positional/spot light; (0, 0, 0) by default.
                                                      ## ! Returns direction of directional/spot light.
                                                      ## ! Returns an angle in radians of the cone created by the spot; 30 degrees by default.
                                                      ## ! Returns the intensity of light source; 1.0 by default.
                                                      ## ! @return light resource identifier string
                                                      ## ! Access positional/spot light constant attenuation coefficient from packed vector.
                                                      ## ! Generate unique object id.
    ## !< resource id
    ## !< user given name
    ## !< light position
    ## !< light color
    ## !< direction of directional/spot light
    ## !< packed light parameters
    ## !< radius for point light or cone angle for directional light
    ## !< intensity multiplier for light
    ## !< Graphic3d_TypeOfLightSource enumeration
    ## !< modification counter
    ## !< flag to mark head light
    ## !< enabled state

type
  Graphic3dClipPlane* {.importcpp: "Graphic3d_ClipPlane",
                       header: "Graphic3d_ClipPlane.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## Type
                                                                                          ## defining
                                                                                          ## XYZW
                                                                                          ## (ABCD)
                                                                                          ## plane
                                                                                          ## equation
                                                                                          ## -
                                                                                          ## left
                                                                                          ## for
                                                                                          ## compatibility
                                                                                          ## with
                                                                                          ## old
                                                                                          ## code
                                                                                          ## using
                                                                                          ## Graphic3d_ClipPlane::Equation
                                                                                          ## type.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Default
                                                                                          ## constructor.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Initializes
                                                                                          ## clip
                                                                                          ## plane
                                                                                          ## container
                                                                                          ## with
                                                                                          ## the
                                                                                          ## following
                                                                                          ## properties:
                                                                                          ##
                                                                                          ## !
                                                                                          ## -
                                                                                          ## Equation
                                                                                          ## (0.0,
                                                                                          ## 0.0,
                                                                                          ## 1.0,
                                                                                          ## 0)
                                                                                          ##
                                                                                          ## !
                                                                                          ## -
                                                                                          ## IsOn
                                                                                          ## (True),
                                                                                          ##
                                                                                          ## !
                                                                                          ## -
                                                                                          ## IsCapping
                                                                                          ## (False),
                                                                                          ##
                                                                                          ## !
                                                                                          ## -
                                                                                          ## Material
                                                                                          ## (Graphic3d_NameOfMaterial_DEFAULT),
                                                                                          ##
                                                                                          ## !
                                                                                          ## -
                                                                                          ## Texture
                                                                                          ## (NULL),
                                                                                          ##
                                                                                          ## !
                                                                                          ## -
                                                                                          ## HatchStyle
                                                                                          ## (Aspect_HS_HORIZONTAL),
                                                                                          ##
                                                                                          ## !
                                                                                          ## -
                                                                                          ## IsHatchOn
                                                                                          ## (False)
                                                                                          ##
                                                                                          ## !
                                                                                          ## Return
                                                                                          ## TRUE
                                                                                          ## if
                                                                                          ## this
                                                                                          ## item
                                                                                          ## defines
                                                                                          ## a
                                                                                          ## conjunction
                                                                                          ## (logical
                                                                                          ## AND)
                                                                                          ## between
                                                                                          ## a
                                                                                          ## set
                                                                                          ## of
                                                                                          ## Planes.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Graphic3d_ClipPlane
                                                                                          ## item
                                                                                          ## defines
                                                                                          ## either
                                                                                          ## a
                                                                                          ## Clipping
                                                                                          ## halfspace
                                                                                          ## (single
                                                                                          ## Clipping
                                                                                          ## Plane)
                                                                                          ##
                                                                                          ## !
                                                                                          ## or
                                                                                          ## a
                                                                                          ## Clipping
                                                                                          ## volume
                                                                                          ## defined
                                                                                          ## by
                                                                                          ## a
                                                                                          ## logical
                                                                                          ## AND
                                                                                          ## (conjunction)
                                                                                          ## operation
                                                                                          ## between
                                                                                          ## a
                                                                                          ## set
                                                                                          ## of
                                                                                          ## Planes
                                                                                          ## defined
                                                                                          ## as
                                                                                          ## a
                                                                                          ## Chain
                                                                                          ##
                                                                                          ## !
                                                                                          ## (so
                                                                                          ## that
                                                                                          ## the
                                                                                          ## volume
                                                                                          ## cuts
                                                                                          ## a
                                                                                          ## space
                                                                                          ## only
                                                                                          ## in
                                                                                          ## case
                                                                                          ## if
                                                                                          ## check
                                                                                          ## fails
                                                                                          ## for
                                                                                          ## ALL
                                                                                          ## Planes
                                                                                          ## in
                                                                                          ## the
                                                                                          ## Chain).
                                                                                          ##
                                                                                          ## !
                                                                                          ##
                                                                                          ## !
                                                                                          ## Note
                                                                                          ## that
                                                                                          ## Graphic3d_ClipPlane
                                                                                          ## item
                                                                                          ## cannot:
                                                                                          ##
                                                                                          ## !
                                                                                          ## -
                                                                                          ## Define
                                                                                          ## a
                                                                                          ## Chain
                                                                                          ## with
                                                                                          ## logical
                                                                                          ## OR
                                                                                          ## (disjunction)
                                                                                          ## operation;
                                                                                          ##
                                                                                          ## !
                                                                                          ## this
                                                                                          ## should
                                                                                          ## be
                                                                                          ## done
                                                                                          ## through
                                                                                          ## Graphic3d_SequenceOfHClipPlane.
                                                                                          ##
                                                                                          ## !
                                                                                          ## -
                                                                                          ## Define
                                                                                          ## nested
                                                                                          ## Chains.
                                                                                          ##
                                                                                          ## !
                                                                                          ## -
                                                                                          ## Disable
                                                                                          ## Chain
                                                                                          ## items;
                                                                                          ## only
                                                                                          ## entire
                                                                                          ## Chain
                                                                                          ## can
                                                                                          ## be
                                                                                          ## disabled
                                                                                          ## (by
                                                                                          ## disabled
                                                                                          ## a
                                                                                          ## head
                                                                                          ## of
                                                                                          ## Chain).
                                                                                          ##
                                                                                          ## !
                                                                                          ##
                                                                                          ## !
                                                                                          ## The
                                                                                          ## head
                                                                                          ## of
                                                                                          ## a
                                                                                          ## Chain
                                                                                          ## defines
                                                                                          ## all
                                                                                          ## visual
                                                                                          ## properties
                                                                                          ## of
                                                                                          ## the
                                                                                          ## Chain,
                                                                                          ##
                                                                                          ## !
                                                                                          ## so
                                                                                          ## that
                                                                                          ## Graphic3d_ClipPlane
                                                                                          ## of
                                                                                          ## next
                                                                                          ## items
                                                                                          ## in
                                                                                          ## a
                                                                                          ## Chain
                                                                                          ## merely
                                                                                          ## defines
                                                                                          ## only
                                                                                          ## geometrical
                                                                                          ## definition
                                                                                          ## of
                                                                                          ## the
                                                                                          ## plane.
                                                                                          ##
                                                                                          ## @name
                                                                                          ## user-defined
                                                                                          ## graphical
                                                                                          ## attributes
                                                                                          ##
                                                                                          ## !
                                                                                          ## Return
                                                                                          ## color
                                                                                          ## for
                                                                                          ## rendering
                                                                                          ## capping
                                                                                          ## surface.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Return
                                                                                          ## capping
                                                                                          ## aspect.
                                                                                          ##
                                                                                          ## !
                                                                                          ## @return
                                                                                          ## capping
                                                                                          ## surface
                                                                                          ## rendering
                                                                                          ## aspect.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Check
                                                                                          ## if
                                                                                          ## the
                                                                                          ## given
                                                                                          ## point
                                                                                          ## is
                                                                                          ## outside
                                                                                          ## /
                                                                                          ## inside
                                                                                          ## /
                                                                                          ## on
                                                                                          ## section.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Check
                                                                                          ## if
                                                                                          ## the
                                                                                          ## given
                                                                                          ## point
                                                                                          ## is
                                                                                          ## outside
                                                                                          ## of
                                                                                          ## the
                                                                                          ## half-space
                                                                                          ## (e.g.
                                                                                          ## should
                                                                                          ## be
                                                                                          ## discarded
                                                                                          ## by
                                                                                          ## clipping
                                                                                          ## plane).
                                                                                          ##
                                                                                          ## @name
                                                                                          ## modification
                                                                                          ## counters
                                                                                          ##
                                                                                          ## !
                                                                                          ## @return
                                                                                          ## modification
                                                                                          ## counter
                                                                                          ## for
                                                                                          ## equation.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Generate
                                                                                          ## unique
                                                                                          ## object
                                                                                          ## id
                                                                                          ## for
                                                                                          ## OpenGL
                                                                                          ## graphic
                                                                                          ## resource
                                                                                          ## manager.
    ## !< fill area aspect
    ## !< next     plane in a chain of planes defining logical AND operation
    ## !< previous plane in a chain of planes defining logical AND operation
    ## !< resource id
    ## !< plane definition
    ## !< plane equation vector
    ## !< reversed plane equation
    ## !< chain length in forward direction (including this item)
    ## !< capping flags
    ## !< modification counter for equation
    ## !< modification counter of aspect
    ## !< state of the clipping plane
    ## !< state of graphic driver capping
  Graphic3dClipPlaneEquation* = Graphic3dVec4d

type
  Graphic3dCStructure* {.importcpp: "Graphic3d_CStructure",
                        header: "Graphic3d_CStructure.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Auxiliary
                                                                                            ## wrapper
                                                                                            ## to
                                                                                            ## iterate
                                                                                            ## through
                                                                                            ## structure
                                                                                            ## list.
                                                                                            ##
                                                                                            ## !
                                                                                            ## @return
                                                                                            ## graphic
                                                                                            ## driver
                                                                                            ## created
                                                                                            ## this
                                                                                            ## structure
                                                                                            ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## FALSE
                                                                                            ## if
                                                                                            ## the
                                                                                            ## structure
                                                                                            ## hits
                                                                                            ## the
                                                                                            ## current
                                                                                            ## view
                                                                                            ## volume,
                                                                                            ## otherwise
                                                                                            ## returns
                                                                                            ## TRUE.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Update
                                                                                            ## structure
                                                                                            ## visibility
                                                                                            ## state
                                                                                            ##
                                                                                            ## !
                                                                                            ## Create
                                                                                            ## empty
                                                                                            ## structure.
                                                                                            ##
                                                                                            ## Type
                                                                                            ## definition
    id* {.importc: "Id".}: cint
    myZLayer* {.importc: "myZLayer".}: Graphic3dZLayerId
    priority* {.importc: "Priority".}: cint
    previousPriority* {.importc: "PreviousPriority".}: cint
    containsFacet* {.importc: "ContainsFacet".}: cint
    viewAffinity* {.importc: "ViewAffinity".}: Handle[Graphic3dViewAffinity] ## !< view affinity mask
    isInfinite* {.importc: "IsInfinite", bitsize: 1.}: cuint
    stick* {.importc: "stick", bitsize: 1.}: cuint ## !< displaying state - should be set when structure has been added to scene graph (but can be in hidden state)
    highlight* {.importc: "highlight", bitsize: 1.}: cuint
    visible* {.importc: "visible", bitsize: 1.}: cuint ## !< visibility flag - can be used to suppress structure while leaving it in the scene graph
    hLRValidation* {.importc: "HLRValidation", bitsize: 1.}: cuint
    isForHighlight* {.importc: "IsForHighlight", bitsize: 1.}: cuint
    isMutable* {.importc: "IsMutable", bitsize: 1.}: cuint
    is2dText* {.importc: "Is2dText", bitsize: 1.}: cuint
    ## ! Current highlight style; is set only if highlight flag is true
    ## !< A status specifying is structure needs to be rendered after BVH tree traverse
    ## !< Flag responsible for checking of bounding box clipping before drawing of object

type
  Graphic3dCubeMap* {.importcpp: "Graphic3d_CubeMap",
                     header: "Graphic3d_CubeMap.hxx", bycopy.} = object of Graphic3dTextureMap ##
                                                                                        ## !
                                                                                        ## Constructor
                                                                                        ## defining
                                                                                        ## loading
                                                                                        ## cubemap
                                                                                        ## from
                                                                                        ## file.
    ## !< Iterator state
    ## !< Indicates whether end of iteration has been reached or hasn't
    ## !< Indicates whether Z axis is inverted that allows to synchronize vertical flip of cubemap
    ## !< Indicates whether mipmaps of cubemap will be generated or not

type
  Graphic3dCubeMapPacked* {.importcpp: "Graphic3d_CubeMapPacked",
                           header: "Graphic3d_CubeMapPacked.hxx", bycopy.} = object of Graphic3dCubeMap ##
                                                                                                 ## !
                                                                                                 ## Initialization
                                                                                                 ## to
                                                                                                 ## load
                                                                                                 ## cubemap
                                                                                                 ## from
                                                                                                 ## file.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @theFileName
                                                                                                 ## -
                                                                                                 ## path
                                                                                                 ## to
                                                                                                 ## the
                                                                                                 ## cubemap
                                                                                                 ## image
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @theOrder
                                                                                                 ## -
                                                                                                 ## array
                                                                                                 ## containing
                                                                                                 ## six
                                                                                                 ## different
                                                                                                 ## indexes
                                                                                                 ## of
                                                                                                 ## cubemap
                                                                                                 ## sides
                                                                                                 ## which
                                                                                                 ## maps
                                                                                                 ## tile
                                                                                                 ## grid
                                                                                                 ## to
                                                                                                 ## cubemap
                                                                                                 ## sides
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Checks
                                                                                                 ## whether
                                                                                                 ## given
                                                                                                 ## tiles
                                                                                                 ## order
                                                                                                 ## is
                                                                                                 ## valid.
    ## !< order mapping tile grit to cubemap sides
    ## !< width of tile grid

type
  Graphic3dCubeMapSeparate* {.importcpp: "Graphic3d_CubeMapSeparate",
                             header: "Graphic3d_CubeMapSeparate.hxx", bycopy.} = object of Graphic3dCubeMap ##
                                                                                                     ## !
                                                                                                     ## Initializes
                                                                                                     ## cubemap
                                                                                                     ## to
                                                                                                     ## be
                                                                                                     ## loaded
                                                                                                     ## from
                                                                                                     ## file.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## @thePaths
                                                                                                     ## -
                                                                                                     ## array
                                                                                                     ## of
                                                                                                     ## paths
                                                                                                     ## to
                                                                                                     ## separate
                                                                                                     ## image
                                                                                                     ## files
                                                                                                     ## (has
                                                                                                     ## to
                                                                                                     ## have
                                                                                                     ## size
                                                                                                     ## equal
                                                                                                     ## 6).
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Nulifies
                                                                                                     ## whole
                                                                                                     ## images
                                                                                                     ## array.
    ## !< array of paths to cubemap images
    ## !< array of cubemap images
    ## !< size of each side of cubemap
    ## !< format each side of cubemap

type
  Graphic3dCView* {.importcpp: "Graphic3d_CView", header: "Graphic3d_CView.hxx",
                   bycopy.} = object of Graphic3dDataStructureManager ## ! Constructor.
                                                                 ## ! Returns default Shading Model of the view;
                                                                 ## Graphic3d_TOSM_FRAGMENT by default.
                                                                 ## ! Is it possible to display the structure in the view?
                                                                 ## ! Redraw content of the view.
                                                                 ## ! Copy visualization settings from another view.
                                                                 ## ! Method is used for cloning views in viewer when its required to create view
                                                                 ## ! with same view properties.
                                                                 ## ! Return unit scale factor defined as scale factor for m (meters); 1.0 by default.
                                                                 ## ! Normally, view definition is unitless, however some operations like VR input requires proper units mapping.
                                                                 ## ! @name obsolete Graduated Trihedron functionality
                                                                 ## ! Returns data of a graduated trihedron
                                                                 ## ! Adds the structure to display lists of the view.
    ## !< camera projection parameters to restore after closing XR session (FOV, aspect and similar)
    ## !< neutral camera orientation defining coordinate system in which head tracking is defined
    ## !< transient XR camera orientation with tracked head orientation applied (based on myBaseXRCamera)
    ## !< neutral camera orientation copy at the beginning of processing input
    ## !< unit scale factor defined as scale factor for m (meters)

type
  Graphic3dFrameStats* {.importcpp: "Graphic3d_FrameStats",
                        header: "Graphic3d_FrameStats.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Default
                                                                                            ## constructor.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## formatted
                                                                                            ## string.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## value
                                                                                            ## of
                                                                                            ## specified
                                                                                            ## counter
                                                                                            ## for
                                                                                            ## modification,
                                                                                            ## should
                                                                                            ## be
                                                                                            ## called
                                                                                            ## between
                                                                                            ## ::FrameStart()
                                                                                            ## and
                                                                                            ## ::FrameEnd()
                                                                                            ## calls.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Method
                                                                                            ## to
                                                                                            ## collect
                                                                                            ## statistics
                                                                                            ## from
                                                                                            ## the
                                                                                            ## View;
                                                                                            ## called
                                                                                            ## by
                                                                                            ## FrameEnd().
    ## !< timer for FPS measurements
    ## !< time at the beginning of frame redraw
    ## !< frame duration
    ## !< interval to update meters
    ## !< FPS counter (within short measurement time slice)
    ## !< data frames history
    ## !< data frame values filled to be filled between FrameStart() and FrameEnd() calls
    ## !< data frame values with absolute maximum values in the history
    ## !< last data frame index
    ## !< prefer longer lines over greater number of lines

type
  Graphic3dFrameStatsData* {.importcpp: "Graphic3d_FrameStatsData",
                            header: "Graphic3d_FrameStatsData.hxx", bycopy.} = object of RootObj##
                                                                                 ## !
                                                                                 ## Returns
                                                                                 ## FPS
                                                                                 ## (frames
                                                                                 ## per
                                                                                 ## seconds,
                                                                                 ## elapsed
                                                                                 ## time).
                                                                                 ##
                                                                                 ## !
                                                                                 ## This
                                                                                 ## number
                                                                                 ## indicates
                                                                                 ## an
                                                                                 ## actual
                                                                                 ## frame
                                                                                 ## rate
                                                                                 ## averaged
                                                                                 ## for
                                                                                 ## several
                                                                                 ## frames
                                                                                 ## within
                                                                                 ## UpdateInterval()
                                                                                 ## duration,
                                                                                 ##
                                                                                 ## !
                                                                                 ## basing
                                                                                 ## on
                                                                                 ## a
                                                                                 ## real
                                                                                 ## elapsed
                                                                                 ## time
                                                                                 ## between
                                                                                 ## updates.
    ## !< counters
    ## !< timers
    ## !< minimal values of timers
    ## !< maximum values of timers
    ## !< FPS     meter (frames per seconds, elapsed time)
    ## !< CPU FPS meter (frames per seconds, CPU time)
    ## !< FPS     meter for immediate redraws
    ## !< CPU FPS meter for immediate redraws

type
  Graphic3dFrameStatsDataTmp* {.importcpp: "Graphic3d_FrameStatsDataTmp",
                               header: "Graphic3d_FrameStatsData.hxx", bycopy.} = object of Graphic3dFrameStatsData ##
                                                                                                             ## !
                                                                                                             ## Empty
                                                                                                             ## constructor.
    ## !< precise timers for time measurements
    ## !< previous timers values

type
  Graphic3dGraphicDriver* {.importcpp: "Graphic3d_GraphicDriver",
                           header: "Graphic3d_GraphicDriver.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Request
                                                                                                  ## limit
                                                                                                  ## of
                                                                                                  ## graphic
                                                                                                  ## resource
                                                                                                  ## of
                                                                                                  ## specific
                                                                                                  ## type.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## new
                                                                                                  ## empty
                                                                                                  ## graphic
                                                                                                  ## structure
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Initializes
                                                                                                  ## the
                                                                                                  ## Driver

type
  Graphic3dGroup* {.importcpp: "Graphic3d_Group", header: "Graphic3d_Group.hxx",
                   bycopy.} = object of StandardTransient ## ! Supress all primitives and attributes of <me>.
                                                     ## ! To clear group without update in Graphic3d_StructureManager
                                                     ## ! pass Standard_False as <theUpdateStructureMgr>. This
                                                     ## ! used on context and viewer destruction, when the pointer
                                                     ## ! to structure manager in Graphic3d_Structure could be
                                                     ## ! already released (pointers are used here to avoid handle
                                                     ## ! cross-reference);
                                                     ## ! Return fill area aspect.
                                                     ## ! sets the stencil test to theIsEnabled state;
                                                     ## ! Creates the string <AText> at position <APoint>.
                                                     ## ! The 3D point of attachment is projected. The text is
                                                     ## ! written in the plane of projection.
                                                     ## ! The attributes are given with respect to the plane of
                                                     ## ! projection.
                                                     ## ! AHeight : Height of text.
                                                     ## ! (Relative to the Normalized Projection
                                                     ## ! Coordinates (NPC) Space).
                                                     ## ! AAngle  : Orientation of the text
                                                     ## ! (with respect to the horizontal).
                                                     ## ! Creates a group in the structure <AStructure>.
    ## !< pointer to the parent structure
    ## !< bounding box
    ## !< flag indicating closed volume
    ## !< flag indicating that this group contains face primitives

type
  Graphic3dHatchStyle* {.importcpp: "Graphic3d_HatchStyle",
                        header: "Graphic3d_HatchStyle.hxx", bycopy.} = object of StandardTransient ##  Type definition
                                                                                            ## ! Creates a new custom hatch style with the given pattern and unique style id
                                                                                            ## ! @warning Raises a program error if given pattern image is not a valid 32*32 bitmap
    ## !< Image bitmap with custom hatch pattern
    ## !< Index of used style

type
  Graphic3dIndexBuffer* {.importcpp: "Graphic3d_IndexBuffer",
                         header: "Graphic3d_IndexBuffer.hxx", bycopy.} = object of Graphic3dBuffer ##
                                                                                            ## !
                                                                                            ## Empty
                                                                                            ## constructor.

type
  Graphic3dLayer* {.importcpp: "Graphic3d_Layer", header: "Graphic3d_Layer.hxx",
                   bycopy.} = object of StandardTransient ## ! Initializes associated priority list and layer properties
                                                     ## ! Returns set of Graphic3d_CStructures structures for building BVH tree.
                                                     ## ! Updates BVH trees if their state has been invalidated.
                                                     ## ! Array of Graphic3d_CStructures by priority rendered in layer.
    ## ! Overall number of structures rendered in the layer.
    ## ! Number of NOT culled structures in the layer.
    ## ! Layer setting flags.
    ## ! Layer id.
    ## ! Set of Graphic3d_CStructures structures for building BVH tree.
    ## ! Set of transform persistent Graphic3d_CStructures for building BVH tree.
    ## ! Indexed map of always rendered structures.
    ## ! Is needed for implementation of stochastic order of BVH traverse.
    ## ! Defines if the primitive set for BVH is outdated.
    ## ! Defines if the cached bounding box is outdated.
    ## ! Cached layer bounding box.

type
  Graphic3dLightSet* {.importcpp: "Graphic3d_LightSet",
                      header: "Graphic3d_LightSet.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Iteration
                                                                                        ## filter
                                                                                        ## flags.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Empty
                                                                                        ## constructor.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Update
                                                                                        ## light
                                                                                        ## sources
                                                                                        ## revision.
    ## !< list of light sources with their cached state (revision)
    ## !< cached value of cumulative ambient color
    ## !< key identifying the list of enabled light sources by their type
    ## !< key identifying the list of enabled light sources by the number of sources of each type
    ## !< counters per each light source type defined in the list
    ## !< counters per each light source type enabled in the list
    ## !< number of enabled light sources, excluding ambient
    ## !< current revision of light source set
    ## !< revision of cached state
  Graphic3dLightSetIterationFilter* {.size: sizeof(cint), importcpp: "Graphic3d_LightSet::IterationFilter",
                                     header: "Graphic3d_LightSet.hxx".} = enum
    iterationFilterNone = 0x0000, ## !< no filter
    iterationFilterExcludeAmbient = 0x0002, ## !< exclude ambient  light sources
    iterationFilterExcludeDisabled = 0x0004 ## !< exclude disabled light sources

type
  Graphic3dMarkerImage* {.importcpp: "Graphic3d_MarkerImage",
                         header: "Graphic3d_MarkerImage.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## @param
                                                                                              ## theImage
                                                                                              ## -
                                                                                              ## source
                                                                                              ## image
                                                                                              ##
                                                                                              ## Type
                                                                                              ## definition
    ## !< resource identifier
    ## !< resource identifier
    ## !< bytes array with bitmap definition (for compatibility with old code)
    ## !< full-color  marker definition
    ## !< alpha-color marker definition (for dynamic hi-lighting)
    ## !< extra margin from boundaries for bitmap -> point sprite conversion, 1 px by default
    ## !< marker width
    ## !< marker height

type
  Graphic3dMediaTexture* {.importcpp: "Graphic3d_MediaTexture",
                          header: "Graphic3d_MediaTexture.hxx", bycopy.} = object of Graphic3dTexture2D ##
                                                                                                 ## !
                                                                                                 ## Main
                                                                                                 ## constructor.

type
  Graphic3dMediaTextureSet* {.importcpp: "Graphic3d_MediaTextureSet",
                             header: "Graphic3d_MediaTextureSet.hxx", bycopy.} = object of Graphic3dTextureSet ##
                                                                                                        ## !
                                                                                                        ## Callback
                                                                                                        ## definition.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## constructor.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Lock
                                                                                                        ## the
                                                                                                        ## frame
                                                                                                        ## for
                                                                                                        ## decoding
                                                                                                        ## into.
    ## !< player context
    ## !< front/back frames pair
    ## !< shader program for YUV  texture set
    ## !< shader program for YUVJ texture set
    ## !< mutex for accessing frames
    ## !< input media
    ## !< callback function
    ## !< callback data
    ## !< front frame size
    ## !< playback progress in seconds
    ## !< stream duration
    ## !< index of front texture
    ## !< flag
    ## !< front frame contains planar YUV data or native texture format
    ## !< front frame defines full-range or reduced-range YUV
  Graphic3dMediaTextureSetCallbackOnUpdateT* = proc (theUserPtr: pointer) {.cdecl.}

type
  Graphic3dMutableIndexBuffer* {.importcpp: "Graphic3d_MutableIndexBuffer",
                                header: "Graphic3d_MutableIndexBuffer.hxx", bycopy.} = object of Graphic3dIndexBuffer ##
                                                                                                               ## !
                                                                                                               ## Empty
                                                                                                               ## constructor.
    ## !< invalidated buffer data range (as byte offsets)

type
  Graphic3dPresentationAttributes* {.importcpp: "Graphic3d_PresentationAttributes", header: "Graphic3d_PresentationAttributes.hxx",
                                    bycopy.} = object of StandardTransient ## ! Empty
                                                                      ## constructor.
    ## !< presentation fill area aspect
    ## !< presentation color
    ## !< box or color highlighting
    ## !< Z-layer
    ## !< display mode

type
  Graphic3dShaderAttribute* {.importcpp: "Graphic3d_ShaderAttribute",
                             header: "Graphic3d_ShaderAttribute.hxx", bycopy.} = object of StandardTransient ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## new
                                                                                                      ## attribute.
    ## !< attribute name
    ## !< attribute location

type
  Graphic3dShaderObject* {.importcpp: "Graphic3d_ShaderObject",
                          header: "Graphic3d_ShaderObject.hxx", bycopy.} = object of StandardTransient ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## new
                                                                                                ## shader
                                                                                                ## object
                                                                                                ## of
                                                                                                ## specified
                                                                                                ## type.
                                                                                                ##
                                                                                                ## !
                                                                                                ## Releases
                                                                                                ## resources
                                                                                                ## of
                                                                                                ## shader
                                                                                                ## object.
                                                                                                ##
                                                                                                ## !
                                                                                                ## The
                                                                                                ## type
                                                                                                ## of
                                                                                                ## shader
                                                                                                ## object.
    ## !< the ID of shader object
    ## !< the source code of shader object
    ## !< the path to shader source (may be empty)

type
  Graphic3dShaderProgram* {.importcpp: "Graphic3d_ShaderProgram",
                           header: "Graphic3d_ShaderProgram.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Default
                                                                                                  ## value
                                                                                                  ## of
                                                                                                  ## THE_MAX_LIGHTS
                                                                                                  ## macros
                                                                                                  ## within
                                                                                                  ## GLSL
                                                                                                  ## program
                                                                                                  ## (see
                                                                                                  ## Declarations.glsl).
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## new
                                                                                                  ## empty
                                                                                                  ## program
                                                                                                  ## object.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## The
                                                                                                  ## path
                                                                                                  ## to
                                                                                                  ## GLSL
                                                                                                  ## programs
                                                                                                  ## determined
                                                                                                  ## from
                                                                                                  ## CSF_ShadersDirectory
                                                                                                  ## or
                                                                                                  ## CASROOT
                                                                                                  ## environment
                                                                                                  ## variables.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @return
                                                                                                  ## the
                                                                                                  ## root
                                                                                                  ## folder
                                                                                                  ## with
                                                                                                  ## default
                                                                                                  ## GLSL
                                                                                                  ## programs.
    ## !< the unique identifier of program object
    ## !< the list of attached shader objects
    ## !< the list of custom uniform variables
    ## !< the list of custom vertex attributes
    ## !< GLSL header with version code and used extensions
    ## !< length of array of light sources (THE_MAX_LIGHTS)
    ## !< length of array of clipping planes (THE_MAX_CLIP_PLANES)
    ## !< length of array of Fragment Shader outputs (THE_NB_FRAG_OUTPUTS)
    ## !< texture units declared within the program, @sa Graphic3d_TextureSetBits
    ## !< flag indicating that program defines default texture sampler occSampler0
    ## !< flag indicating that Fragment Shader performs alpha test
    ## !< flag indicating that Fragment Shader includes weighted OIT coverage
    ## !< flag indicating that program defines functions and variables used in PBR pipeline

type
  Graphic3dShaderVariable* {.importcpp: "Graphic3d_ShaderVariable",
                            header: "Graphic3d_ShaderVariable.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Releases
                                                                                                    ## resources
                                                                                                    ## of
                                                                                                    ## shader
                                                                                                    ## variable.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## new
                                                                                                    ## uninitialized
                                                                                                    ## shader
                                                                                                    ## variable.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## The
                                                                                                    ## name
                                                                                                    ## of
                                                                                                    ## uniform
                                                                                                    ## shader
                                                                                                    ## variable.
    ## ! The generic value of shader variable.

type
  Graphic3dStructure* {.importcpp: "Graphic3d_Structure",
                       header: "Graphic3d_Structure.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## a
                                                                                          ## graphic
                                                                                          ## object
                                                                                          ## in
                                                                                          ## the
                                                                                          ## manager
                                                                                          ## theManager.
                                                                                          ##
                                                                                          ## !
                                                                                          ## It
                                                                                          ## will
                                                                                          ## appear
                                                                                          ## in
                                                                                          ## all
                                                                                          ## the
                                                                                          ## views
                                                                                          ## of
                                                                                          ## the
                                                                                          ## visualiser.
                                                                                          ##
                                                                                          ## !
                                                                                          ## The
                                                                                          ## structure
                                                                                          ## is
                                                                                          ## not
                                                                                          ## displayed
                                                                                          ## when
                                                                                          ## it
                                                                                          ## is
                                                                                          ## created.
                                                                                          ##
                                                                                          ## !
                                                                                          ## @param
                                                                                          ## theManager
                                                                                          ## structure
                                                                                          ## manager
                                                                                          ## holding
                                                                                          ## this
                                                                                          ## structure
                                                                                          ##
                                                                                          ## !
                                                                                          ## @param
                                                                                          ## theLinkPrs
                                                                                          ## another
                                                                                          ## structure
                                                                                          ## for
                                                                                          ## creating
                                                                                          ## a
                                                                                          ## shadow
                                                                                          ## (linked)
                                                                                          ## structure
                                                                                          ##
                                                                                          ## !
                                                                                          ## Transforms
                                                                                          ## boundaries
                                                                                          ## with
                                                                                          ## <theTrsf>
                                                                                          ## transformation.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Suppress
                                                                                          ## in
                                                                                          ## the
                                                                                          ## structure
                                                                                          ## <me>,
                                                                                          ## the
                                                                                          ## group
                                                                                          ## theGroup.
                                                                                          ##
                                                                                          ## !
                                                                                          ## It
                                                                                          ## will
                                                                                          ## be
                                                                                          ## erased
                                                                                          ## at
                                                                                          ## the
                                                                                          ## next
                                                                                          ## screen
                                                                                          ## update.
#proc newGraphic3dStructure*(theManager: Handle[Graphic3dStructureManager];
#    theLinkPrs: Handle[Graphic3dStructure] = handle[Graphic3dStructure]()): Graphic3dStructure {.
#    cdecl, constructor, importcpp: "Graphic3d_Structure(@)", header: "Graphic3d_Structure.hxx".}

type
  Graphic3dStructureManager* {.importcpp: "Graphic3d_StructureManager",
                              header: "Graphic3d_StructureManager.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Initializes
                                                                                                        ## the
                                                                                                        ## ViewManager.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Currently
                                                                                                        ## creating
                                                                                                        ## of
                                                                                                        ## more
                                                                                                        ## than
                                                                                                        ## 100
                                                                                                        ## viewer
                                                                                                        ## instances
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## is
                                                                                                        ## not
                                                                                                        ## supported
                                                                                                        ## and
                                                                                                        ## leads
                                                                                                        ## to
                                                                                                        ## InitializationError
                                                                                                        ## and
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## initialization
                                                                                                        ## failure.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## This
                                                                                                        ## limitation
                                                                                                        ## might
                                                                                                        ## be
                                                                                                        ## addressed
                                                                                                        ## in
                                                                                                        ## some
                                                                                                        ## future
                                                                                                        ## OCCT
                                                                                                        ## releases.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Warning:
                                                                                                        ## Raises
                                                                                                        ## InitialisationError
                                                                                                        ## if
                                                                                                        ## the
                                                                                                        ## initialization
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## of
                                                                                                        ## the
                                                                                                        ## ViewManager
                                                                                                        ## failed.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## the
                                                                                                        ## number
                                                                                                        ## of
                                                                                                        ## structures
                                                                                                        ## displayed
                                                                                                        ## in
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## visualizer
                                                                                                        ## <me>.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## the
                                                                                                        ## structure
                                                                                                        ## displayed
                                                                                                        ## in
                                                                                                        ## visualizer
                                                                                                        ## <me>.

type
  Graphic3dText* {.importcpp: "Graphic3d_Text", header: "Graphic3d_Text.hxx", bycopy.} = object of StandardTransient ##
                                                                                                           ## !
                                                                                                           ## Creates
                                                                                                           ## default
                                                                                                           ## text
                                                                                                           ## parameters.
    ## !< text formatter
    ## !< text value
    ## !< Text orientation in 3D space.
    ## !< height of text
    ## !< horizontal alignment
    ## !< vertical alignment
    ## !< Check if text have orientation in 3D space.
    ## !< flag if text uses position as point of attach

type
  Graphic3dTexture1D* {.importcpp: "Graphic3d_Texture1D",
                       header: "Graphic3d_Texture1D.hxx", bycopy.} = object of Graphic3dTextureMap ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## the
                                                                                            ## name
                                                                                            ## of
                                                                                            ## the
                                                                                            ## predefined
                                                                                            ## textures
                                                                                            ## or
                                                                                            ## NOT_1D_UNKNOWN
                                                                                            ##
                                                                                            ## !
                                                                                            ## when
                                                                                            ## the
                                                                                            ## name
                                                                                            ## is
                                                                                            ## given
                                                                                            ## as
                                                                                            ## a
                                                                                            ## filename.

type
  Graphic3dTexture1Dmanual* {.importcpp: "Graphic3d_Texture1Dmanual",
                             header: "Graphic3d_Texture1Dmanual.hxx", bycopy.} = object of Graphic3dTexture1D ##
                                                                                                       ## !
                                                                                                       ## Creates
                                                                                                       ## a
                                                                                                       ## texture
                                                                                                       ## from
                                                                                                       ## the
                                                                                                       ## file
                                                                                                       ## FileName.

type
  Graphic3dTexture1Dsegment* {.importcpp: "Graphic3d_Texture1Dsegment",
                              header: "Graphic3d_Texture1Dsegment.hxx", bycopy.} = object of Graphic3dTexture1D ##
                                                                                                         ## !
                                                                                                         ## Creates
                                                                                                         ## a
                                                                                                         ## texture
                                                                                                         ## from
                                                                                                         ## a
                                                                                                         ## file

type
  Graphic3dTexture2D* {.importcpp: "Graphic3d_Texture2D",
                       header: "Graphic3d_Texture2D.hxx", bycopy.} = object of Graphic3dTextureMap ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## the
                                                                                            ## number
                                                                                            ## of
                                                                                            ## predefined
                                                                                            ## textures.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## the
                                                                                            ## name
                                                                                            ## of
                                                                                            ## the
                                                                                            ## predefined
                                                                                            ## textures
                                                                                            ## or
                                                                                            ## NOT_2D_UNKNOWN
                                                                                            ##
                                                                                            ## !
                                                                                            ## when
                                                                                            ## the
                                                                                            ## name
                                                                                            ## is
                                                                                            ## given
                                                                                            ## as
                                                                                            ## a
                                                                                            ## filename.

type
  Graphic3dTexture2Dmanual* {.importcpp: "Graphic3d_Texture2Dmanual",
                             header: "Graphic3d_Texture2Dmanual.hxx", bycopy.} = object of Graphic3dTexture2D ##
                                                                                                       ## !
                                                                                                       ## Creates
                                                                                                       ## a
                                                                                                       ## texture
                                                                                                       ## from
                                                                                                       ## a
                                                                                                       ## file.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## MipMaps
                                                                                                       ## levels
                                                                                                       ## will
                                                                                                       ## be
                                                                                                       ## automatically
                                                                                                       ## generated
                                                                                                       ## if
                                                                                                       ## needed.

type
  Graphic3dTexture2Dplane* {.importcpp: "Graphic3d_Texture2Dplane",
                            header: "Graphic3d_Texture2Dplane.hxx", bycopy.} = object of Graphic3dTexture2D ##
                                                                                                     ## !
                                                                                                     ## Creates
                                                                                                     ## a
                                                                                                     ## texture
                                                                                                     ## from
                                                                                                     ## a
                                                                                                     ## file

type
  Graphic3dTextureEnv* {.importcpp: "Graphic3d_TextureEnv",
                        header: "Graphic3d_TextureEnv.hxx", bycopy.} = object of Graphic3dTextureRoot ##
                                                                                               ## !
                                                                                               ## Creates
                                                                                               ## an
                                                                                               ## environment
                                                                                               ## texture
                                                                                               ## from
                                                                                               ## a
                                                                                               ## file.

type
  Graphic3dTextureMap* {.importcpp: "Graphic3d_TextureMap",
                        header: "Graphic3d_TextureMap.hxx", bycopy.} = object of Graphic3dTextureRoot ##
                                                                                               ## !
                                                                                               ## enable
                                                                                               ## texture
                                                                                               ## smoothing

type
  Graphic3dTextureParams* {.importcpp: "Graphic3d_TextureParams",
                           header: "Graphic3d_TextureParams.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Default
                                                                                                  ## constructor.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Increment
                                                                                                  ## revision.
    ## !< texture coordinates generation plane S
    ## !< texture coordinates generation plane T
    ## !< texture coordinates scale factor vector; (1,1) by default
    ## !< texture coordinates translation vector;  (0,0) by default
    ## !< modification counter of parameters related to sampler state
    ## !< default texture unit to bind texture; Graphic3d_TextureUnit_BaseColor by default
    ## !< texture filter, Graphic3d_TOTF_NEAREST by default
    ## !< level of anisotropy filter, Graphic3d_LOTA_OFF by default
    ## !< texture coordinates generation mode, Graphic3d_TOTM_MANUAL by default
    ## !< base texture mipmap level (0 by default)
    ## !< maximum texture mipmap array level (1000 by default)
    ## !< texture coordinates rotation angle in degrees, 0 by default
    ## !< flag to modulate texture with material color, FALSE by default
    ## !< flag to repeat (true) or wrap (false) texture coordinates out of [0,1] range

type
  Graphic3dTextureRoot* {.importcpp: "Graphic3d_TextureRoot",
                         header: "Graphic3d_TextureRoot.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## The
                                                                                              ## path
                                                                                              ## to
                                                                                              ## textures
                                                                                              ## determined
                                                                                              ## from
                                                                                              ## CSF_MDTVTexturesDirectory
                                                                                              ## or
                                                                                              ## CASROOT
                                                                                              ## environment
                                                                                              ## variables.
                                                                                              ##
                                                                                              ## !
                                                                                              ## @return
                                                                                              ## the
                                                                                              ## root
                                                                                              ## folder
                                                                                              ## with
                                                                                              ## default
                                                                                              ## textures.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Destructor.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## a
                                                                                              ## texture
                                                                                              ## from
                                                                                              ## a
                                                                                              ## file
                                                                                              ##
                                                                                              ## !
                                                                                              ## Warning:
                                                                                              ## Note
                                                                                              ## that
                                                                                              ## if
                                                                                              ## <FileName>
                                                                                              ## is
                                                                                              ## NULL
                                                                                              ## the
                                                                                              ## texture
                                                                                              ## must
                                                                                              ## be
                                                                                              ## realized
                                                                                              ##
                                                                                              ## !
                                                                                              ## using
                                                                                              ## LoadTexture(image)
                                                                                              ## method.
    ## !< associated texture parameters
    ## !< unique identifier of this resource (for sharing graphic resource); should never be modified outside constructor
    ## !< image pixmap - as one of the ways for defining the texture source
    ## !< image file path - as one of the ways for defining the texture source
    ## !< image revision - for signaling changes in the texture source (e.g. file update, pixmap update)
    ## !< texture type
    ## !< flag indicating color nature of values within the texture
    ## !< Stores rows's memory layout

type
  Graphic3dTransformPers* {.importcpp: "Graphic3d_TransformPers",
                           header: "Graphic3d_TransformPers.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Return
                                                                                                  ## true
                                                                                                  ## if
                                                                                                  ## specified
                                                                                                  ## mode
                                                                                                  ## is
                                                                                                  ## zoom/rotate
                                                                                                  ## transformation
                                                                                                  ## persistence.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Set
                                                                                                  ## transformation
                                                                                                  ## persistence.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Return
                                                                                                  ## the
                                                                                                  ## anchor
                                                                                                  ## point
                                                                                                  ## for
                                                                                                  ## zoom/rotate
                                                                                                  ## transformation
                                                                                                  ## persistence.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Apply
                                                                                                  ## transformation
                                                                                                  ## to
                                                                                                  ## bounding
                                                                                                  ## box
                                                                                                  ## of
                                                                                                  ## presentation.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theCamera
                                                                                                  ## [in]
                                                                                                  ## camera
                                                                                                  ## definition
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theProjection
                                                                                                  ## [in]
                                                                                                  ## the
                                                                                                  ## projection
                                                                                                  ## transformation
                                                                                                  ## matrix.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theWorldView
                                                                                                  ## [in]
                                                                                                  ## the
                                                                                                  ## world
                                                                                                  ## view
                                                                                                  ## transformation
                                                                                                  ## matrix.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theViewportWidth
                                                                                                  ## [in]
                                                                                                  ## the
                                                                                                  ## width
                                                                                                  ## of
                                                                                                  ## viewport
                                                                                                  ## (for
                                                                                                  ## 2d
                                                                                                  ## persistence).
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theViewportHeight
                                                                                                  ## [in]
                                                                                                  ## the
                                                                                                  ## height
                                                                                                  ## of
                                                                                                  ## viewport
                                                                                                  ## (for
                                                                                                  ## 2d
                                                                                                  ## persistence).
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theBoundingBox
                                                                                                  ## [in/out]
                                                                                                  ## the
                                                                                                  ## bounding
                                                                                                  ## box
                                                                                                  ## to
                                                                                                  ## transform.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## 3D
                                                                                                  ## anchor
                                                                                                  ## point
                                                                                                  ## for
                                                                                                  ## zoom/rotate
                                                                                                  ## transformation
                                                                                                  ## persistence.
    ## !< Transformation persistence mode flags

type
  Graphic3dViewAffinity* {.importcpp: "Graphic3d_ViewAffinity",
                          header: "Graphic3d_ViewAffinity.hxx", bycopy.} = object of StandardTransient ##
                                                                                                ## !
                                                                                                ## Empty
                                                                                                ## constructor.
    ## !< affinity mask

