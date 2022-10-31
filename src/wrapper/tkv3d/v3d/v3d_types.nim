import ../../tkservice/aspect/aspect_types
import ../tkv3d/graphic3d/graphic3d_types
import ../../tkernel/ncollection/ncollection_types
import ../../tkernel/standard/standard_types
type
  V3dCoordinate* = cfloat

  V3dLight* = Graphic3dCLight

  HandleV3dLight* = HandleGraphic3dCLight

  V3dListOfLightIterator* {.importcpp:"V3d_ListOfLight::Iterator", bycopy, header:"V3d_ListOfLight.hxx".} = object

  V3dListOfViewIterator* {.importcpp:"V3d_ListOfView::Iterator", bycopy, header:"V3d_ListOfView.hxx".} = object

  V3dParameter* = cfloat

  V3dStereoDumpOptions* {.size: sizeof(cint), importcpp: "V3d_StereoDumpOptions",
                         header: "V3d_StereoDumpOptions.hxx".} = enum
    V3dSDO_MONO,              
    V3dSDO_LEFT_EYE,          
    V3dSDO_RIGHT_EYE,         
    V3dSDO_BLENDED            

  V3dTypeOfAxe* {.size: sizeof(cint), importcpp: "V3d_TypeOfAxe",
                 header: "V3d_TypeOfAxe.hxx".} = enum
    V3dX, V3dY, V3dZ

  V3dTypeOfBackfacingModel* {.size: sizeof(cint),
                             importcpp: "V3d_TypeOfBackfacingModel",
                             header: "V3d_TypeOfBackfacingModel.hxx".} = enum
    V3dTOBM_AUTOMATIC, V3dTOBM_ALWAYS_DISPLAYED, V3dTOBM_NEVER_DISPLAYED

  V3dTypeOfLight* = Graphic3dTypeOfLightSource

  V3dTypeOfPickCamera* {.size: sizeof(cint), importcpp: "V3d_TypeOfPickCamera",
                        header: "V3d_TypeOfPickCamera.hxx".} = enum
    V3dPOSITIONCAMERA, V3dSPACECAMERA, V3dRADIUSTEXTCAMERA, V3dExtRADIUSCAMERA,
    V3dIntRADIUSCAMERA, V3dNOTHINGCAMERA

  V3dTypeOfPickLight* {.size: sizeof(cint), importcpp: "V3d_TypeOfPickLight",
                       header: "V3d_TypeOfPickLight.hxx".} = enum
    v3dPOSITIONLIGHT, v3dSPACELIGHT, v3dRADIUSTEXTLIGHT, v3dExtRADIUSLIGHT,
    v3dIntRADIUSLIGHT, v3dNOTHING

  V3dTypeOfRepresentation* {.size: sizeof(cint),
                            importcpp: "V3d_TypeOfRepresentation",
                            header: "V3d_TypeOfRepresentation.hxx".} = enum
    V3dSIMPLE, V3dCOMPLETE, V3dPARTIAL, V3dSAMELAST

  V3dTypeOfShadingModel* = Graphic3dTypeOfShadingModel

  V3dTypeOfView* {.size: sizeof(cint), importcpp: "V3d_TypeOfView",
                  header: "V3d_TypeOfView.hxx".} = enum
    v3dORTHOGRAPHIC, v3dPERSPECTIVE

  V3dTypeOfVisualization* {.size: sizeof(cint),
                           importcpp: "V3d_TypeOfVisualization",
                           header: "V3d_TypeOfVisualization.hxx".} = enum
    V3dWIREFRAME, V3dZBUFFER

  V3d* {.importcpp: "V3d", header: "V3d.hxx", bycopy.} = object 

  V3dImageDumpOptions* {.importcpp: "V3d_ImageDumpOptions",
                        header: "V3d_ImageDumpOptions.hxx", bycopy.} = object 
    width* {.importc: "Width".}: cint 
    height* {.importc: "Height".}: cint 
    bufferType* {.importc: "BufferType".}: Graphic3dBufferType 
    stereoOptions* {.importc: "StereoOptions".}: V3dStereoDumpOptions 
    tileSize* {.importc: "TileSize".}: cint 
    toAdjustAspect* {.importc: "ToAdjustAspect".}: bool 

  V3dTypeOfOrientation* {.size: sizeof(cint), importcpp: "V3d_TypeOfOrientation",
                         header: "V3d_TypeOfOrientation.hxx".} = enum
    v3dXpos,                  
    v3dYpos,                  
    v3dZpos,                  
    v3dXneg,                  
    v3dYneg,                  
    v3dZneg,                  
    v3dXposYpos, v3dXposZpos, v3dYposZpos, v3dXnegYneg, v3dXnegYpos, v3dXnegZneg,
    v3dXnegZpos, v3dYnegZneg, v3dYnegZpos, v3dXposYneg, v3dXposZneg, v3dYposZneg,
    v3dXposYposZpos, v3dXposYnegZpos, v3dXposYposZneg, v3dXnegYposZpos,
    v3dXposYnegZneg, v3dXnegYposZneg, v3dXnegYnegZpos, v3dXnegYnegZneg 

  V3dViewerPointer* = ptr V3dViewer

  V3dViewPointer* = ptr V3dView

  V3dListOfLight* = NCollectionList[Handle[Graphic3dCLight]]

  V3dListOfView* = NCollectionList[Handle[V3dView]]

  V3dAmbientLight* {.importcpp: "V3d_AmbientLight", header: "V3d_AmbientLight.hxx",
                    bycopy.} = object of Graphic3dCLight 

  V3dCircularGrid* {.importcpp: "V3d_CircularGrid", header: "V3d_CircularGrid.hxx",
                    bycopy.} = object of AspectCircularGrid 

  V3dPlane* {.importcpp: "V3d_Plane", header: "V3d_Plane.hxx", bycopy.} = object of StandardTransient 

  HandleV3dPlane* = Handle[V3dPlane]

  V3dPositionLight* {.importcpp: "V3d_PositionLight",
                     header: "V3d_PositionLight.hxx", bycopy.} = object of Graphic3dCLight 

  V3dPositionalLight* {.importcpp: "V3d_PositionalLight",
                       header: "V3d_PositionalLight.hxx", bycopy.} = object of V3dPositionLight 

  V3dDirectionalLight* {.importcpp: "V3d_DirectionalLight",
                        header: "V3d_DirectionalLight.hxx", bycopy.} = object of V3dPositionLight 

  V3dRectangularGrid* {.importcpp: "V3d_RectangularGrid",
                       header: "V3d_RectangularGrid.hxx", bycopy.} = object of AspectRectangularGrid 

  V3dSpotLight* {.importcpp: "V3d_SpotLight", header: "V3d_SpotLight.hxx", bycopy.} = object of V3dPositionLight 

  V3dTrihedron* {.importcpp: "V3d_Trihedron", header: "V3d_Trihedron.hxx", bycopy.} = object of StandardTransient 

  V3dView* {.importcpp: "V3d_View", header: "V3d_View.hxx", bycopy.} = object of StandardTransient 

  HandleV3dView* = Handle[V3dView]

  V3dViewer* {.importcpp: "V3d_Viewer", header: "V3d_Viewer.hxx", byref, pure,inheritable.} = object of StandardTransient 

