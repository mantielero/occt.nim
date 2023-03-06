#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let packageName = "graphic3d"
let c2nimFile = packageName & ".c2nim"
#[ let beg = """
when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

""" ]#
proc genFiles*( infile:string;
               remove:seq[tuple[a,b:int]] = @[]; 
               comment:seq[tuple[a,b:int]] = @[]; 
               addSemiColon:seq[int] = @[];
               replaceAll:seq[tuple[sub,by:string]] = @[];
               removeFuncBody:seq[tuple[a,b:int]] = @[]) =
    var (dir, name, ext) = splitFile(infile)
    if dir == "":
      dir = lib
    if ext == "":
      ext = ".hxx"
    cpFile(dir & name & ext, name & ".hxx")
    var rem:seq[tuple[a,b:int]] = remove
    var semiColon = addSemiColon
    if removeFuncBody.len > 0:
      for item in removeFuncBody:
        rem &= item
        semiColon &= item.a - 1
    #echo semiColon
    # Replace text strings
    if replaceAll.len > 0:    
      for item in replaceAll:
        var txt = readFile(name & ".hxx")        
        txt = txt.replace(item.sub, item.by)
        writeFile(name & ".hxx", txt)


    # Colons to add at the end of line
    if semiColon.len > 0:
        for line in semiColon:
            var edit = "'" & $line & " s/$/;/i'"
            edit = "sed -e " & edit & " -i " & name & ".hxx"
            exec edit

    # Lines to remove from the header
    if rem.len > 0:
        var edit = ""
        var n = 0
        for item in rem:
            edit &= $item.a & "," & $item.b & "d"
            n += 1
            if n != rem.len:
                edit &= ";"
        exec "sed -e '" & edit & "' -i " & name & ".hxx"

    # Comment lines
    if comment.len > 0:
      var txt = readFile(name & ".hxx") 
      var lines = txt.splitLines()
      for rng in comment:
        for i in (rng.a - 1) .. (rng.b - 1):
          lines[i] = "// " & lines[i]
      writeFile(name & ".hxx", lines.join("\n"))
        
    # Search and comment


    exec "c2nim --cpp --header --strict --nep1 --out:" & name.toLower & ".nim " & c2nimFile & " " & name & ".hxx"
    let txt = readFile(name.toLower & ".nim")
    writeFile(name.toLower & ".nim", txt ) #beg & txt)
    rmFile(name & ".hxx")
    echo name


proc pp*(file:string,
        insert:seq[tuple[line:int;value:string]] = @[],
        replaceAll:seq[tuple[sub,by:string]] = @[];        
        comment:seq[int] = @[];
        commentRange:seq[tuple[a,b:int]] = @[] ) =
  # Reemplazar
  if replaceAll.len > 0:    
    for item in replaceAll:
      var txt = readFile(file)        
      txt = txt.replace(item.sub, item.by)
      writeFile(file, txt)

  var lines = file.readFile.splitLines

  # Comment lines
  for i in 0..<lines.len:
    if i+1 in comment:
      lines[i] = "#" & lines[i]


  for item in commentRange:
      for i in item.a .. item.b:
        lines[i-1] = "#" & lines[i-1]

  # Insert lines
  var n = 0
  for item in insert:
    var tmp1 = lines[0 .. item.line - 2 + n] 
    var tmp2 = lines[item.line - 1 + n .. lines.len-1]
    lines = tmp1 & item.value & tmp2
    n += 1
  writeFile( file, lines.join("\n"))
  
  

#=====================================================

# ls /usr/include/opencascade/Graphic3d*.hxx | cut -c 26-

genFiles("Graphic3d_AlphaMode")
genFiles("Graphic3d_ArrayFlags")
genFiles("Graphic3d_ArrayOfPoints")
genFiles("Graphic3d_ArrayOfPolygons")
genFiles("Graphic3d_ArrayOfPolylines")
genFiles("Graphic3d_ArrayOfPrimitives")
pp("graphic3d_arrayofprimitives.nim",
  commentRange = @[(223,225), (239, 243), (254, 257), (263,268)]
)
genFiles("Graphic3d_ArrayOfQuadrangles")
genFiles("Graphic3d_ArrayOfQuadrangleStrips")
genFiles("Graphic3d_ArrayOfSegments")
genFiles("Graphic3d_ArrayOfTriangleFans")
genFiles("Graphic3d_ArrayOfTriangles")
genFiles("Graphic3d_ArrayOfTriangleStrips")
genFiles("Graphic3d_AspectFillArea3d")
genFiles("Graphic3d_AspectLine3d")
pp("graphic3d_aspectline3d.nim",
  commentRange = @[(70,71)]
)
genFiles("Graphic3d_AspectMarker3d")
pp("graphic3d_aspectmarker3d.nim",
  commentRange = @[(73,74)]
)
genFiles("Graphic3d_Aspects")
pp("graphic3d_aspects.nim",
  replaceAll = @[("uint16T", "uint16")]
)
genFiles("Graphic3d_AspectText3d")
genFiles("Graphic3d_AttribBuffer")
genFiles("Graphic3d_BndBox3d")
genFiles("Graphic3d_BndBox4d")
genFiles("Graphic3d_BndBox4f")
genFiles("Graphic3d_BoundBuffer",
  comment = @[(67,74)]
)
genFiles("Graphic3d_BSDF")
genFiles("Graphic3d_Buffer")
pp("graphic3d_buffer.nim",
  commentRange = @[(89,90), (91,92)]
)
genFiles("Graphic3d_BufferRange")
genFiles("Graphic3d_BufferType")
genFiles("Graphic3d_BvhCStructureSet")
pp("graphic3d_bvhcstructureset.nim",
  commentRange = @[(52,54)]
)
genFiles("Graphic3d_BvhCStructureSetTrsfPers")
pp("graphic3d_bvhcstructuresettrsfpers.nim",
  commentRange = @[(56,58)]
)
genFiles("Graphic3d_Camera",
  comment = @[(85,96), (854,857)]
)
pp("graphic3d_camera.nim",
  #replaceAll = @[("graphic3dMat4d()", "newGraphic3dMat4d()")]
  commentRange = @[(304, 307)]
)
genFiles("Graphic3d_CameraTile")
genFiles("Graphic3d_CappingFlags")
pp("graphic3d_cappingflags.nim",
  replaceAll = @[("Graphic3dCappingFlags", "graphic3dCappingFlags"),
    ("graphic3dCappingFlags*", "Graphic3dCappingFlags*"),
    (""", ## !< use object GLSL program
    graphic3dCappingFlagsObjectAspect = graphic3dCappingFlagsObjectMaterial or
        graphic3dCappingFlagsObjectTexture or graphic3dCappingFlagsObjectShader""",
    """ ## !< use object GLSL program
const
  graphic3dCappingFlagsObjectAspect = (graphic3dCappingFlagsObjectMaterial.int or
        graphic3dCappingFlagsObjectTexture.int or graphic3dCappingFlagsObjectShader.int).Graphic3dCappingFlags""")
    ]
)
genFiles("Graphic3d_CLight")
genFiles("Graphic3d_ClipPlane")
genFiles("Graphic3d_CStructure")
pp("graphic3d_cstructure.nim",
  replaceAll = @[(""".} {.""", """, """)]
)
genFiles("Graphic3d_CTexture")
genFiles("Graphic3d_CubeMap")
pp("graphic3d_cubemap.nim",
  commentRange = @[(37,39)]
)
genFiles("Graphic3d_CubeMapOrder")
genFiles("Graphic3d_CubeMapPacked")
genFiles("Graphic3d_CubeMapSeparate")
genFiles("Graphic3d_CubeMapSide")
genFiles("Graphic3d_CullingTool")
pp("graphic3d_cullingtool.nim",
  commentRange = @[(97, 100)]
)
genFiles("Graphic3d_CView",
  comment = @[(492,497)]
)
genFiles("Graphic3d_DataStructureManager")
genFiles("Graphic3d_DiagnosticInfo")
pp("graphic3d_diagnosticinfo.nim",
  replaceAll = @[("Graphic3dDiagnosticInfo", "graphic3dDiagnosticInfo"),
    ("graphic3dDiagnosticInfo*", "Graphic3dDiagnosticInfo*"),
    (""", ## !< vendor extension list (usually very long)
                                            ##  groups
    graphic3dDiagnosticInfoShort = graphic3dDiagnosticInfoDevice or
        graphic3dDiagnosticInfoFrameBuffer or graphic3dDiagnosticInfoLimits, ## !< minimal information
    graphic3dDiagnosticInfoBasic = graphic3dDiagnosticInfoShort or
        graphic3dDiagnosticInfoNativePlatform or graphic3dDiagnosticInfoMemory, ## !< basic information, without extension list
    graphic3dDiagnosticInfoComplete = graphic3dDiagnosticInfoBasic or
        graphic3dDiagnosticInfoExtensions""",
    """ ## !< vendor extension list (usually very long)
                                            ##  groups
const
  graphic3dDiagnosticInfoShort = (graphic3dDiagnosticInfoDevice.int or
        graphic3dDiagnosticInfoFrameBuffer.int or graphic3dDiagnosticInfoLimits.int).Graphic3dDiagnosticInfo ## !< minimal information
  graphic3dDiagnosticInfoBasic = (graphic3dDiagnosticInfoShort.int or
        graphic3dDiagnosticInfoNativePlatform.int or graphic3dDiagnosticInfoMemory.int).Graphic3dDiagnosticInfo ## !< basic information, without extension list
  graphic3dDiagnosticInfoComplete = (graphic3dDiagnosticInfoBasic.int or
        graphic3dDiagnosticInfoExtensions.int).Graphic3dDiagnosticInfo"""    
    )
  ]
)
genFiles("Graphic3d_FrameStatsCounter")
pp("graphic3d_framestatscounter.nim",
  replaceAll = @[("Graphic3dFrameStatsCounter", "graphic3dFrameStatsCounter"),
    ("graphic3dFrameStatsCounter*", "Graphic3dFrameStatsCounter*"),
    ("""  graphic3dFrameStatsCounterNB* = graphic3dFrameStatsCounterNbPointsImmediate + 1
  graphic3dFrameStatsCounterSCENE_LOWER* = graphic3dFrameStatsCounterNbLayers
  graphic3dFrameStatsCounterSCENE_UPPER* = graphic3dFrameStatsCounterEstimatedBytesTextures
  graphic3dFrameStatsCounterRENDERED_LOWER* = graphic3dFrameStatsCounterNbLayersNotCulled
  graphic3dFrameStatsCounterRENDERED_UPPER* = graphic3dFrameStatsCounterNbPointsNotCulled
  graphic3dFrameStatsCounterIMMEDIATE_LOWER* = graphic3dFrameStatsCounterNbLayersImmediate
  graphic3dFrameStatsCounterIMMEDIATE_UPPER* = graphic3dFrameStatsCounterNbPointsImmediate""",
  """  graphic3dFrameStatsCounterNB* = (graphic3dFrameStatsCounterNbPointsImmediate.int + 1)#.Graphic3dFrameStatsCounter
  graphic3dFrameStatsCounterSCENE_LOWER* = graphic3dFrameStatsCounterNbLayers#.Graphic3dFrameStatsCounter
  graphic3dFrameStatsCounterSCENE_UPPER* = graphic3dFrameStatsCounterEstimatedBytesTextures#.Graphic3dFrameStatsCounter
  graphic3dFrameStatsCounterRENDERED_LOWER* = graphic3dFrameStatsCounterNbLayersNotCulled#.Graphic3dFrameStatsCounter
  graphic3dFrameStatsCounterRENDERED_UPPER* = graphic3dFrameStatsCounterNbPointsNotCulled#.Graphic3dFrameStatsCounter
  graphic3dFrameStatsCounterIMMEDIATE_LOWER* = graphic3dFrameStatsCounterNbLayersImmediate#.Graphic3dFrameStatsCounter
  graphic3dFrameStatsCounterIMMEDIATE_UPPER* = graphic3dFrameStatsCounterNbPointsImmediate#.Graphic3dFrameStatsCounter"""
  )
  ]
)
genFiles("Graphic3d_FrameStatsData")
pp("graphic3d_framestatsdata.nim",
  replaceAll = @[("= object ##", "= object of RootObj##")]
)
genFiles("Graphic3d_FrameStats")
#pp("graphic3d_framestats.nim",
  
#)
genFiles("Graphic3d_FrameStatsTimer")
pp("graphic3d_framestatstimer.nim",
  replaceAll = @[("Graphic3dFrameStatsTimer", "graphic3dFrameStatsTimer"), 
    ("graphic3dFrameStatsTimer*", "Graphic3dFrameStatsTimer*"),
    ("graphic3dFrameStatsTimerCpuDynamics + 1", "graphic3dFrameStatsTimerCpuDynamics.int + 1")]
)
genFiles("Graphic3d_GraduatedTrihedron")
pp("graphic3d_graduatedtrihedron.nim",
  replaceAll = @[("TCollectionExtendedString = \"\"", """TCollectionExtendedString = newTCollectionExtendedString("")"""),
    ("quantityNOC_BLACK", "newQuantityColor(quantityNOC_BLACK)")
  ],
  commentRange = @[(115,121)]
)
genFiles("Graphic3d_GraphicDriver")
genFiles("Graphic3d_GroupAspect")
genFiles("Graphic3d_GroupDefinitionError")
pp("graphic3d_groupdefinitionerror.nim",
  commentRange = @[(17,28)]
)
genFiles("Graphic3d_Group")
pp("graphic3d_group.nim",
  commentRange = @[(63,65)]
)
genFiles("Graphic3d_HatchStyle")
genFiles("Graphic3d_HighlightStyle")
genFiles("Graphic3d_HorizontalTextAlignment")
genFiles("Graphic3d_IndexBuffer",
  comment = @[(70,77), (83,84)]
)
genFiles("Graphic3d_Layer")
pp("graphic3d_layer.nim",
  commentRange = @[(16,17),(21,23), (93,96), (105,107)]
)
genFiles("Graphic3d_LevelOfTextureAnisotropy")
genFiles("Graphic3d_LightSet")
pp("graphic3d_lightset.nim",
  replaceAll = @[("IterationFilterNone", "iterationFilterNone"), ("IterationFilterExclude", "iterationFilterExclude"),
    (""", ## !< exclude disabled light sources
    iterationFilterExcludeDisabledAndAmbient = iterationFilterExcludeAmbient or
        iterationFilterExcludeDisabled""",
    """ ## !< exclude disabled light sources
const
  iterationFilterExcludeDisabledAndAmbient = (iterationFilterExcludeAmbient.int or
        iterationFilterExcludeDisabled.int).Graphic3dLightSetIterationFilter""")
  ]
)
genFiles("Graphic3d_MapIteratorOfMapOfStructure")
pp("graphic3d_mapiteratorofmapofstructure.nim",
  commentRange = @[(16,17)]
)
genFiles("Graphic3d_MapOfAspectsToAspects")
pp("graphic3d_mapofaspectstoaspects.nim",
  replaceAll = @[("""Graphic3dMapOfAspectsToAspects* = NCollectionDataMap[Handle[Graphic3dAspects],
      Handle[Graphic3dAspects]]""",
    """Graphic3dMapOfAspectsToAspects*[HandleGraphic3dAspects, HandleGraphic3dAspects] {.importcpp:"NCollection_DataMap<'0, '1>", header:"Graphic3d_MapOfAspectsToAspects.hxx", bycopy.} = object""")],
  commentRange = @[(15,16)]
)
genFiles("Graphic3d_MapOfObject")
pp("graphic3d_mapofobject.nim",
  commentRange = @[(16,18)]
)
genFiles("Graphic3d_MapOfStructure")
pp("graphic3d_mapofstructure.nim",
  replaceAll = @[("Graphic3dMapOfStructure* = NCollectionMap[Handle[Graphic3dStructure]]",
    """Graphic3dMapOfStructure*[HandleGraphic3dStructure] {.importcpp:"NCollection_Map<'0>", header:"Graphic3d_MapOfStructure.hxx", bycopy.} = object"""
  )],
)
genFiles("Graphic3d_MapOfZLayerSettings")
pp("graphic3d_mapofzlayersettings.nim",
  commentRange = @[(14,16)]
)
genFiles("Graphic3d_MarkerImage")
genFiles("Graphic3d_Mat4d")
genFiles("Graphic3d_Mat4")
genFiles("Graphic3d_MaterialAspect")
genFiles("Graphic3d_MaterialDefinitionError")
pp("graphic3d_materialdefinitionerror.nim",
  commentRange = @[(18,30)]
)
genFiles("Graphic3d_MediaTexture")
genFiles("Graphic3d_MediaTextureSet")
genFiles("Graphic3d_MutableIndexBuffer")
genFiles("Graphic3d_NameOfMaterial")
pp("graphic3d_nameofmaterial.nim",
  replaceAll = @[("Graphic3dNameOfMaterial", "graphic3dNameOfMaterial"),
    ("graphic3dNameOfMaterial*", "Graphic3dNameOfMaterial*"),
    ("""    graphic3dNameOfMaterialUserDefined, ## !< User-defined (Physic);
                                       ## !  used for any material with non-standard definition
                                       ##  old aliases""",
    """    graphic3dNameOfMaterialUserDefined ## !< User-defined (Physic);
                                       ## !  used for any material with non-standard definition
                                       ##  old aliases
const"""),
  ("""    Graphic3dNOM_BRASS = graphic3dNameOfMaterialBrass,
    Graphic3dNOM_BRONZE = graphic3dNameOfMaterialBronze,
    Graphic3dNOM_COPPER = graphic3dNameOfMaterialCopper,
    Graphic3dNOM_GOLD = graphic3dNameOfMaterialGold,
    Graphic3dNOM_PEWTER = graphic3dNameOfMaterialPewter,
    Graphic3dNOM_PLASTER = graphic3dNameOfMaterialPlastered,
    Graphic3dNOM_PLASTIC = graphic3dNameOfMaterialPlastified,
    Graphic3dNOM_SILVER = graphic3dNameOfMaterialSilver,
    Graphic3dNOM_STEEL = graphic3dNameOfMaterialSteel,
    Graphic3dNOM_STONE = graphic3dNameOfMaterialStone,
    Graphic3dNOM_SHINY_PLASTIC = graphic3dNameOfMaterialShinyPlastified,
    Graphic3dNOM_SATIN = graphic3dNameOfMaterialSatin,
    Graphic3dNOM_METALIZED = graphic3dNameOfMaterialMetalized,
    Graphic3dNOM_NEON_GNC = graphic3dNameOfMaterialIonized,
    Graphic3dNOM_CHROME = graphic3dNameOfMaterialChrome,
    Graphic3dNOM_ALUMINIUM = graphic3dNameOfMaterialAluminum,
    Graphic3dNOM_OBSIDIAN = graphic3dNameOfMaterialObsidian,
    Graphic3dNOM_NEON_PHC = graphic3dNameOfMaterialNeon,
    Graphic3dNOM_JADE = graphic3dNameOfMaterialJade,
    Graphic3dNOM_CHARCOAL = graphic3dNameOfMaterialCharcoal,
    Graphic3dNOM_WATER = graphic3dNameOfMaterialWater,
    Graphic3dNOM_GLASS = graphic3dNameOfMaterialGlass,
    Graphic3dNOM_DIAMOND = graphic3dNameOfMaterialDiamond,
    Graphic3dNOM_TRANSPARENT = graphic3dNameOfMaterialTransparent,
    Graphic3dNOM_DEFAULT = graphic3dNameOfMaterialDEFAULT,
    Graphic3dNOM_UserDefined = graphic3dNameOfMaterialUserDefined""",
    """  Graphic3dNOM_BRASS = graphic3dNameOfMaterialBrass
  Graphic3dNOM_BRONZE = graphic3dNameOfMaterialBronze
  Graphic3dNOM_COPPER = graphic3dNameOfMaterialCopper
  Graphic3dNOM_GOLD = graphic3dNameOfMaterialGold
  Graphic3dNOM_PEWTER = graphic3dNameOfMaterialPewter
  Graphic3dNOM_PLASTER = graphic3dNameOfMaterialPlastered
  Graphic3dNOM_PLASTIC = graphic3dNameOfMaterialPlastified
  Graphic3dNOM_SILVER = graphic3dNameOfMaterialSilver
  Graphic3dNOM_STEEL = graphic3dNameOfMaterialSteel
  Graphic3dNOM_STONE = graphic3dNameOfMaterialStone
  Graphic3dNOM_SHINY_PLASTIC = graphic3dNameOfMaterialShinyPlastified
  Graphic3dNOM_SATIN = graphic3dNameOfMaterialSatin
  Graphic3dNOM_METALIZED = graphic3dNameOfMaterialMetalized
  Graphic3dNOM_NEON_GNC = graphic3dNameOfMaterialIonized
  Graphic3dNOM_CHROME = graphic3dNameOfMaterialChrome
  Graphic3dNOM_ALUMINIUM = graphic3dNameOfMaterialAluminum
  Graphic3dNOM_OBSIDIAN = graphic3dNameOfMaterialObsidian
  Graphic3dNOM_NEON_PHC = graphic3dNameOfMaterialNeon
  Graphic3dNOM_JADE = graphic3dNameOfMaterialJade
  Graphic3dNOM_CHARCOAL = graphic3dNameOfMaterialCharcoal
  Graphic3dNOM_WATER = graphic3dNameOfMaterialWater
  Graphic3dNOM_GLASS = graphic3dNameOfMaterialGlass
  Graphic3dNOM_DIAMOND = graphic3dNameOfMaterialDiamond
  Graphic3dNOM_TRANSPARENT = graphic3dNameOfMaterialTransparent
  Graphic3dNOM_DEFAULT = graphic3dNameOfMaterialDEFAULT
  Graphic3dNOM_UserDefined = graphic3dNameOfMaterialUserDefined""")
  ]
)
genFiles("Graphic3d_NameOfTexture1D")
genFiles("Graphic3d_NameOfTexture2D")
genFiles("Graphic3d_NameOfTextureEnv")
genFiles("Graphic3d_NameOfTexturePlane")
genFiles("Graphic3d_NMapOfTransient")
pp("graphic3d_nmapoftransient.nim",
  replaceAll = @[("""Graphic3dNMapOfTransient* = NCollectionShared[
      NCollectionMap[ptr StandardTransient]]""",
      """Graphic3dNMapOfTransient* {.importcpp:"NCollection_Shared< NCollection_Map<const Standard_Transient* > >", header:"Graphic3d_NMapOfTransient.hxx",bycopy.} = object""")
    ]
)
genFiles("Graphic3d_PBRMaterial")
genFiles("Graphic3d_PolygonOffset")
genFiles("Graphic3d_PresentationAttributes")
genFiles("Graphic3d_PriorityDefinitionError")
pp("graphic3d_prioritydefinitionerror.nim",
  commentRange = @[(17,30)]
)
genFiles("Graphic3d_RenderingMode")
genFiles("Graphic3d_RenderingParams")
pp("graphic3d_renderingparams.nim",
  replaceAll = @[("PerfCountersNONE", "perfCountersNONE"),
    ("PerfCountersFrameRate", "perfCountersFrameRate"),
    ("PerfCountersCPU", "perfCountersCPU"),
    ("PerfCountersLayers", "perfCountersLayers"),
    ("PerfCountersStructures", "perfCountersStructures"),
    ("PerfCountersGroups", "perfCountersGroups"),
    ("PerfCountersGroupArrays", "perfCountersGroupArrays"),
    ("PerfCountersTriangles", "perfCountersTriangles"),
    ("PerfCountersPoints", "perfCountersPoints"),
    ("PerfCountersLines", "perfCountersLines"),
    ("PerfCountersEstimMem", "perfCountersEstimMem"),
    ("PerfCountersFrameTime", "perfCountersFrameTime"),
    ("PerfCountersFrameTimeMax", "perfCountersFrameTimeMax"),
    ("PerfCountersSkipImmediate", "perfCountersSkipImmediate"),
    ("PerfCountersBasic", "perfCountersBasic"),
    ("PerfCountersExtended", "perfCountersExtended"),
    ("PerfCountersAll", "perfCountersAll"),
    (""", ## !< do not include immediate viewer updates (e.g. lazy updates without redrawing entire view content)
                                     ## ! show basic statistics
    perfCountersBasic = perfCountersFrameRate or perfCountersCPU or
        perfCountersLayers or perfCountersStructures, ## ! extended (verbose) statistics
    perfCountersExtended = perfCountersBasic or perfCountersGroups or
        perfCountersGroupArrays or perfCountersTriangles or perfCountersPoints or
        perfCountersLines or perfCountersEstimMem, ## ! all counters
    perfCountersAll = perfCountersExtended or perfCountersFrameTime or
        perfCountersFrameTimeMax""",
    """ ## !< do not include immediate viewer updates (e.g. lazy updates without redrawing entire view content)
                                     ## ! show basic statistics
const
  perfCountersBasic = (perfCountersFrameRate.int or perfCountersCPU.int or
        perfCountersLayers.int or perfCountersStructures.int).Graphic3dRenderingParamsPerfCounters  ## ! extended (verbose) statistics
  perfCountersExtended = (perfCountersBasic.int or perfCountersGroups.int or
        perfCountersGroupArrays.int or perfCountersTriangles.int or perfCountersPoints.int or
        perfCountersLines.int or perfCountersEstimMem.int).Graphic3dRenderingParamsPerfCounters  ## ! all counters
  perfCountersAll = (perfCountersExtended.int or perfCountersFrameTime.int or
        perfCountersFrameTimeMax.int).Graphic3dRenderingParamsPerfCounters""")
  ]
)
genFiles("Graphic3d_RenderTransparentMethod")
genFiles("Graphic3d_SequenceOfGroup")
genFiles("Graphic3d_SequenceOfHClipPlane",
  replaceAll = @[("NCollection_Sequence<Handle(Graphic3d_ClipPlane)>::Iterator::Init (thePlanes.myItems);", "")],
  comment = @[(49,56)]
)
pp("graphic3d_sequenceofhclipplane.nim",
  replaceAll = @[("""= object of Graphic3dSequenceOfHClipPlaneIterator[
      Handle[Graphic3dClipPlane]]""",
    """= object of RootObj"""
      )]
)
genFiles("Graphic3d_SequenceOfStructure")
genFiles("Graphic3d_ShaderAttribute")
genFiles("Graphic3d_ShaderObject")
genFiles("Graphic3d_ShaderProgram")
pp("graphic3d_shaderprogram.nim",
  commentRange = @[(198,200)]
)
genFiles("Graphic3d_ShaderVariable",
  comment = @[(45,83)]
)
pp("graphic3d_shadervariable.nim",
  replaceAll = @[("""Graphic3dValueInterface* {.importcpp: "Graphic3d_ValueInterface",
                            header: "Graphic3d_ShaderVariable.hxx", bycopy.} = object""", 
    """Graphic3dValueInterface* {.importcpp: "Graphic3d_ValueInterface",
                            header: "Graphic3d_ShaderVariable.hxx", bycopy.} = object of RootObj""")]
)
genFiles("Graphic3d_StereoMode")
genFiles("Graphic3d_StructureDefinitionError")
pp("graphic3d_structuredefinitionerror.nim",
  commentRange = @[(17,30)]
)
genFiles("Graphic3d_Structure")
pp("graphic3d_structure.nim",
  commentRange = @[(114,116),(221,224)]
)
genFiles("Graphic3d_StructureManager")
pp("graphic3d_structuremanager.nim",
  replaceAll = @[("""Graphic3dIndexedMapOfView* = NCollectionIndexedMap[ptr Graphic3dCView]""",
    """Graphic3dIndexedMapOfView* {.importcpp:"NCollection_IndexedMap<ptr Graphic3dCView>", header:"Graphic3d_StructureManager.hxx", bycopy.} = object""")],
  commentRange = @[(181,183)]
)
genFiles("Graphic3d_Text")
genFiles("Graphic3d_TextPath")
genFiles("Graphic3d_Texture1D")
genFiles("Graphic3d_Texture1Dmanual")
genFiles("Graphic3d_Texture1Dsegment")
genFiles("Graphic3d_Texture2D")
pp("graphic3d_texture2d.nim",
  replaceAll = @[("numberOfTextures*", "texture2dNumberOfTextures*")]
)
genFiles("Graphic3d_Texture2Dmanual")
genFiles("Graphic3d_Texture2Dplane")
genFiles("Graphic3d_TextureEnv")
pp("graphic3d_textureenv.nim",
  replaceAll = @[("numberOfTextures*", "textureEnvNumberOfTextures*"),
    ("textureName*", "textureEnvTextureName*"),
  ]
)
genFiles("Graphic3d_TextureMap")
genFiles("Graphic3d_TextureParams")
genFiles("Graphic3d_TextureRoot")
genFiles("Graphic3d_TextureSetBits")
pp("graphic3d_texturesetbits.nim",
  replaceAll = @[("Graphic3dTextureSetBits", "graphic3dTextureSetBits"), ("Graphic3dTextureSetBits*", "graphic3dTextureSetBits*"),
    ("""    graphic3dTextureSetBitsNONE = 0, graphic3dTextureSetBitsBaseColor = cast[cuint]((
        1 shl int(graphic3dTextureUnitBaseColor))), graphic3dTextureSetBitsEmissive = cast[cuint]((
        1 shl int(graphic3dTextureUnitEmissive))), graphic3dTextureSetBitsOcclusion = cast[cuint]((
        1 shl int(graphic3dTextureUnitOcclusion))), graphic3dTextureSetBitsNormal = cast[cuint]((
        1 shl int(graphic3dTextureUnitNormal))), graphic3dTextureSetBitsMetallicRoughness = cast[cuint]((
        1 shl int(graphic3dTextureUnitMetallicRoughness)))""",
      """    graphic3dTextureSetBitsNONE = 0, 
    graphic3dTextureSetBitsBaseColor = cast[cuint]((1 shl 1))  # int(graphic3dTextureUnitBaseColor))), 
    graphic3dTextureSetBitsEmissive = cast[cuint]((1 shl 2))   #int(graphic3dTextureUnitEmissive))), 
    graphic3dTextureSetBitsOcclusion = cast[cuint]((1 shl 3))  #int(graphic3dTextureUnitOcclusion))), 
    graphic3dTextureSetBitsNormal = cast[cuint]((1 shl 4))     #int(graphic3dTextureUnitNormal))), 
    graphic3dTextureSetBitsMetallicRoughness = cast[cuint]((1 shl 5)) #int(graphic3dTextureUnitMetallicRoughness)))""")
  ]
)
genFiles("Graphic3d_TextureSet",
  comment = @[(39,39)]
)
pp("graphic3d_textureset.nim",
  replaceAll = @[("""object of Graphic3dTextureSetIterator[
      Handle[Graphic3dTextureMap]]""", """object of RootObj""")]
)
genFiles("Graphic3d_TextureUnit")
pp("graphic3d_textureunit.nim",
  replaceAll = @[("Graphic3dTextureUnit", "graphic3dTextureUnit"), ("graphic3dTextureUnit*", "Graphic3dTextureUnit*"),
    (""", ##  aliases
                                                                         ## ! sampler2D occSamplerBaseColor.
                                                                         ## ! RGB(A) base color of the material and alpha mask/opacity.
    graphic3dTextureUnitBaseColor = graphic3dTextureUnit0, ## ! sampler2D occSamplerEmissive.
                                                        ## ! RGB emissive map controls the color and intensity of the light being emitted by the material.
    graphic3dTextureUnitEmissive = graphic3dTextureUnit1, ## ! sampler2D occSamplerOcclusion.
                                                       ## ! Occlusion map indicating areas of indirect lighting.
                                                       ## ! Encoded into RED channel, with 1.0 meaning no occlusion (full color intensity) and 0.0 complete occlusion (black).
    graphic3dTextureUnitOcclusion = graphic3dTextureUnit2, ## ! sampler2D occSamplerNormal.
                                                        ## ! XYZ tangent space normal map.
    graphic3dTextureUnitNormal = graphic3dTextureUnit3, ## ! sampler2D
                                                     ## occSamplerMetallicRoughness.
                                                     ## ! Metalness + roughness of the material.
                                                     ## ! Encoded into GREEN (roughness) + BLUE (metallic) channels,
                                                     ## ! so that it can be optionally combined with occlusion texture (RED channel).
    graphic3dTextureUnitMetallicRoughness = graphic3dTextureUnit4, ## ! samplerCube occSampler0.
                                                                ## ! Environment cubemap for background. Rendered by dedicated program and normally occupies first texture unit.
    graphic3dTextureUnitEnvMap = graphic3dTextureUnit0, ## ! sampler2D occSamplerPointSprite.
                                                     ## ! Sprite alpha-mask or RGBA image mapped using point UV, additional to BaseColor (mapping using vertex UV).
                                                     ## ! This texture unit is set Graphic3d_TextureUnit_1, so that it can be combined with
                                                     ## Graphic3d_TextureUnit_BaseColor,
                                                     ## ! while other texture maps (normal map and others) are unexpected and unsupported for points.
                                                     ## ! Note that it can be overridden to Graphic3d_TextureUnit_0 for FFP fallback on hardware without multi-texturing.
    graphic3dTextureUnitPointSprite = graphic3dTextureUnit1 ## ! sampler2D occEnvLUT.
                                                         ## ! Lookup table for approximated PBR environment lighting.
                                                         ## ! Configured as index at the end of available texture units - 3.


const
  graphic3dTextureUnitNB* = graphic3dTextureUnit15 + 1""",
  """ ##  aliases
                                                                         ## ! sampler2D occSamplerBaseColor.
                                                                         ## ! RGB(A) base color of the material and alpha mask/opacity.
const
  graphic3dTextureUnitBaseColor* = graphic3dTextureUnit0.Graphic3dTextureUnit ## ! sampler2D occSamplerEmissive.
                                                        ## ! RGB emissive map controls the color and intensity of the light being emitted by the material.
  graphic3dTextureUnitEmissive* = graphic3dTextureUnit1.Graphic3dTextureUnit ## ! sampler2D occSamplerOcclusion.
                                                       ## ! Occlusion map indicating areas of indirect lighting.
                                                       ## ! Encoded into RED channel, with 1.0 meaning no occlusion (full color intensity) and 0.0 complete occlusion (black).
  graphic3dTextureUnitOcclusion* = graphic3dTextureUnit2.Graphic3dTextureUnit ## ! sampler2D occSamplerNormal.
                                                        ## ! XYZ tangent space normal map.
  graphic3dTextureUnitNormal* = graphic3dTextureUnit3.Graphic3dTextureUnit ## ! sampler2D
                                                     ## occSamplerMetallicRoughness.
                                                     ## ! Metalness + roughness of the material.
                                                     ## ! Encoded into GREEN (roughness) + BLUE (metallic) channels,
                                                     ## ! so that it can be optionally combined with occlusion texture (RED channel).
  graphic3dTextureUnitMetallicRoughness* = graphic3dTextureUnit4.Graphic3dTextureUnit ## ! samplerCube occSampler0.
                                                                ## ! Environment cubemap for background. Rendered by dedicated program and normally occupies first texture unit.
  graphic3dTextureUnitEnvMap* = graphic3dTextureUnit0.Graphic3dTextureUnit ## ! sampler2D occSamplerPointSprite.
                                                     ## ! Sprite alpha-mask or RGBA image mapped using point UV, additional to BaseColor (mapping using vertex UV).
                                                     ## ! This texture unit is set Graphic3d_TextureUnit_1, so that it can be combined with
                                                     ## Graphic3d_TextureUnit_BaseColor,
                                                     ## ! while other texture maps (normal map and others) are unexpected and unsupported for points.
                                                     ## ! Note that it can be overridden to Graphic3d_TextureUnit_0 for FFP fallback on hardware without multi-texturing.
  graphic3dTextureUnitPointSprite* = graphic3dTextureUnit1.Graphic3dTextureUnit ## ! sampler2D occEnvLUT.
                                                         ## ! Lookup table for approximated PBR environment lighting.
                                                         ## ! Configured as index at the end of available texture units - 3.
  graphic3dTextureUnitNB* = (graphic3dTextureUnit15.int + 1)#.Graphic3dTextureUnit"""  
)]
)
genFiles("Graphic3d_ToneMappingMethod")
genFiles("Graphic3d_TransformError")
pp("graphic3d_transformerror.nim",
  commentRange = @[(17,28)]
)
genFiles("Graphic3d_TransformPers",
  comment = @[(479,496), (511,538)]
)
pp("graphic3d_transformpers.nim",
  commentRange = @[(155,158), (216,249)]
)
genFiles("Graphic3d_TransformUtils",
  comment = @[(27, 29), (33,43), (131,152), (158,169), (174, 199), (205,225), (231, 344), (350, 374), (380,505)]
)
pp("graphic3d_transformutils.nim",
  commentRange = @[(17,19), (26,28), (44,81)]
)
genFiles("Graphic3d_TransModeFlags")
pp("graphic3d_transmodeflags.nim",
  replaceAll = @[("Graphic3dTMF_", "graphic3dTMF_"),
    (""",   ## !< object is defined in 2D screen coordinates (pixels) and does not resize, pan and rotate
    graphic3dTMF_ZoomRotatePers = graphic3dTMF_ZoomPers or
        graphic3dTMF_RotatePers""",
    """   ##  object is defined in 2D screen coordinates (pixels) and does not resize, pan and rotate
const
  graphic3dTMF_ZoomRotatePers = (graphic3dTMF_ZoomPers.int or graphic3dTMF_RotatePers.int).Graphic3dTransModeFlags"""    
        
    )
  ]
)
genFiles("Graphic3d_TypeOfAnswer")
genFiles("Graphic3d_TypeOfBackfacingModel")
genFiles("Graphic3d_TypeOfBackground")
pp("graphic3d_typeofbackground.nim",
  replaceAll = @[("Graphic3dTOB", "graphic3dTOB"),
    ("graphic3dTOB_CUBEMAP + 1", "graphic3dTOB_CUBEMAP.int + 1")
  ]
)
genFiles("Graphic3d_TypeOfComposition")
genFiles("Graphic3d_TypeOfConnection")
genFiles("Graphic3d_TypeOfLightSource")
pp("graphic3d_typeoflightsource.nim",
  replaceAll = @[ ("Graphic3dTOLS", "graphic3dTOLS"),
    (""",       ## !< spot light
                       ##  obsolete aliases
    V3dAMBIENT = graphic3dTOLS_AMBIENT, V3dDIRECTIONAL = graphic3dTOLS_DIRECTIONAL,
    V3dPOSITIONAL = graphic3dTOLS_POSITIONAL, V3dSPOT = graphic3dTOLS_SPOT""",
    """       ## !< spot light

#  obsolete aliases
const
  v3dAMBIENT     = graphic3dTOLS_AMBIENT
  v3dDIRECTIONAL = graphic3dTOLS_DIRECTIONAL
  v3dPOSITIONAL  = graphic3dTOLS_POSITIONAL
  v3dSPOT        = graphic3dTOLS_SPOT"""),
  ("graphic3dTOLS_SPOT + 1", "graphic3dTOLS_SPOT.int + 1")]

)
genFiles("Graphic3d_TypeOfLimit")
genFiles("Graphic3d_TypeOfMaterial")
pp("graphic3d_typeofmaterial.nim",
  replaceAll = @[("Graphic3dMATERIAL_", "graphic3dMATERIAL_")]
)
genFiles("Graphic3d_TypeOfPrimitiveArray")
genFiles("Graphic3d_TypeOfReflection")
genFiles("Graphic3d_TypeOfShaderObject")
genFiles("Graphic3d_TypeOfShadingModel")
pp("graphic3d_typeofshadingmodel.nim",
  replaceAll = @[("Graphic3dTOSM", "graphic3dTOSM"),
    (""",  ##  obsolete aliases
    graphic3dTOSM_NONE = graphic3dTOSM_UNLIT, V3dCOLOR = graphic3dTOSM_NONE,
    V3dFLAT = graphic3dTOSM_FACET, V3dGOURAUD = graphic3dTOSM_VERTEX,
    V3dPHONG = graphic3dTOSM_FRAGMENT""",
    """  ##  obsolete aliases

const
  graphic3dTOSM_NONE = graphic3dTOSM_UNLIT
  v3dCOLOR = graphic3dTOSM_NONE
  v3dFLAT = graphic3dTOSM_FACET
  v3dGOURAUD = graphic3dTOSM_VERTEX
  v3dPHONG = graphic3dTOSM_FRAGMENT"""),
  ("graphic3dTOSM_PBR_FACET + 1", "graphic3dTOSM_PBR_FACET.int + 1")
  ]
)
genFiles("Graphic3d_TypeOfStructure")
genFiles("Graphic3d_TypeOfTextureFilter")
genFiles("Graphic3d_TypeOfTexture")
genFiles("Graphic3d_TypeOfTextureMode")
genFiles("Graphic3d_TypeOfVisualization")
genFiles("Graphic3d_Vec2")
genFiles("Graphic3d_Vec3")
genFiles("Graphic3d_Vec4")
genFiles("Graphic3d_Vec")
genFiles("Graphic3d_Vertex")
pp("graphic3d_vertex.nim",
  commentRange = @[(26,28), (31,33), (36,38)]
)
genFiles("Graphic3d_VerticalTextAlignment")
genFiles("Graphic3d_ViewAffinity",
  comment = @[(44,44)]
)
genFiles("Graphic3d_WorldViewProjState")
genFiles("Graphic3d_ZLayerId")
pp("graphic3d_zlayerid.nim",
  replaceAll = @[("Graphic3dZLayerId", "graphic3dZLayerId"),
    ("graphic3dZLayerId*", "Graphic3dZLayerId*")
  ]
)
genFiles("Graphic3d_ZLayerSettings",
  comment = @[(216, 233)]
)






# Create the import/export file (to be modified manually)
var txt = ""
var files = listFiles("./")
files.sort()
for path in files:
  var (dir, name, ext) = splitFile(path)


  if ext == ".nim" and name != "gen" and name != packageName & "_includes":
    txt &= "include " & name & "\n"
    #exp &= name & ", "
  #txt &= exp


var beggining = "{.passL:\"-lTKMath\".}\n"
beggining &= "{.passC:\"-I" & lib & "\" .}\n"
beggining &= "{.experimental: \"codeReordering\".}\n\n"
#[ beggining &= """
when defined(windows):
  const tkmath* = "TKMath.dll"
elif defined(macosx):
  const tkmath* = "libTKMath.dylib"
else:
  const tkmath* = "libTKMath.so" 


""" ]#

writeFile(packageName & "_includes.nim", beggining & txt )#& exp)
pp(packageName & "_includes.nim")