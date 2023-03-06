import ../quantity/quantity_types
import ../ncollection/ncollection_types
import ../standard/standard_types
import ../gp/gp_types
import ../tcollection/tcollection_types
#import ../ais/ais_types

when defined(linux):
  import x11/[xlib,x]
  export xlib
# type
#   GLXFBConfig* {.importcpp: "GLXFBConfig",
#                      header: "Aspect_FBConfig.hxx", bycopy.} = object 

#   #Aspect_FBConfig* = GLXFBConfig 
const
  aspectVKeyFlagsNONE* = 0      ##  reserve first 8 bits to combine value with Aspect_VKey
  aspectVKeyFlagsSHIFT* = 1 shl 8 ## !< Aspect_VKey_Shift
  aspectVKeyFlagsCTRL* = 1 shl 9  ## !< Aspect_VKey_Control
  aspectVKeyFlagsALT* = 1 shl 10  ## !< Aspect_VKey_Alt
  aspectVKeyFlagsMENU* = 1 shl 11 ## !< Aspect_VKey_Menu
  aspectVKeyFlagsMETA* = 1 shl 12 ## !< Aspect_VKey_Meta
  aspectVKeyFlagsALL* = aspectVKeyFlagsSHIFT or aspectVKeyFlagsCTRL or
      aspectVKeyFlagsALT or aspectVKeyFlagsMENU or aspectVKeyFlagsMETA

## ! Mouse buttons, for combining with Aspect_VKey and Aspect_VKeyFlags.





const
  AspectVKeyMouseNONE* = 0      ## !< no buttons
  AspectVKeyMouseLeftButton* = 1 shl 13 ## !< mouse left   button
  AspectVKeyMouseMiddleButton* = 1 shl 14 ## !< mouse middle button (scroll)
  AspectVKeyMouseRightButton* = 1 shl 15 ## !< mouse right  button
  AspectVKeyMouseMainButtons* = AspectVKeyMouseLeftButton or
      AspectVKeyMouseMiddleButton or AspectVKeyMouseRightButton


type          
  AspectXDisplay*    {.importcpp: "Aspect_XDisplay",
                     header: "Aspect_DisplayConnection.hxx", bycopy.}= object#Display  # FIXME
  NSOpenGLContext*   = object # FIXME
  AspectXVisualInfo* = object # FIXME
  XVisualInfo*       = object # FIXME
  Atom* = object # FIXME
  #AspectDrawable* = object # FIXME
  AspectDrawable* = Window # FIXME
  InfoString* = object # FIXME
  TrackingUniverseOrigin* = object # FIXME
  #AspectWindow_InputListener* = object # FIXME
  StandardSize* = object # FIXME
  StandardBoolean* = object # FIXME
  #WNT_HIDSpaceMouse* = object  # FIXME
  AspectBackground* {.importcpp: "Aspect_Background",
                     header: "Aspect_Background.hxx", bycopy.} = object of RootObj 

  AspectColorSpace* {.size: sizeof(cint), importcpp: "Aspect_ColorSpace",
                     header: "Aspect_ColorSpace.hxx".} = enum
    AspectColorSpaceSRGB = 0,   
    AspectColorSpaceLinear = 1  

  AspectDisplay* = pointer
  AspectWindowInputListener* {.importcpp: "Aspect_WindowInputListener",
                              header: "Aspect_WindowInputListener.hxx", bycopy.} = object #of AIS_ViewController## /DEFINE_STANDARD_ALLOC

  AspectDisplayConnection* {.importcpp: "Aspect_DisplayConnection",
                            header: "Aspect_DisplayConnection.hxx", bycopy.} = object of StandardTransient 

  HandleAspectDisplayConnection* = Handle[AspectDisplayConnection]

  AspectEye* {.size: sizeof(cint), importcpp: "Aspect_Eye", header: "Aspect_Eye.hxx".} = enum
    AspectEyeLeft, AspectEyeRight

  GLXFBConfig* {.importcpp: "GLXFBConfig",
                     header: "Aspect_FBConfig.hxx", bycopy.} = object 
  #GLXFBConfig* = ptr gLXFBConfigRec

  AspectFBConfig* = GLXFBConfig

  AspectFillMethod* {.size: sizeof(cint), importcpp: "Aspect_FillMethod",
                     header: "Aspect_FillMethod.hxx".} = enum
    AspectFM_NONE, AspectFM_CENTERED, AspectFM_TILED, AspectFM_STRETCH

  AspectFrustumLRBT*[ElemT] {.importcpp: "Aspect_FrustumLRBT<\'0>",
                             header: "Aspect_FrustumLRBT.hxx", bycopy.} = object
    left* {.importc: "Left".}: ElemT
    right* {.importc: "Right".}: ElemT
    bottom* {.importc: "Bottom".}: ElemT
    top* {.importc: "Top".}: ElemT 

  AspectGenId* {.importcpp: "Aspect_GenId", header: "Aspect_GenId.hxx", bycopy.} = object 

  AspectGradientBackground* {.importcpp: "Aspect_GradientBackground",
                             header: "Aspect_GradientBackground.hxx", bycopy.} = object of AspectBackground 

  AspectGradientFillMethod* {.size: sizeof(cint),
                             importcpp: "Aspect_GradientFillMethod",
                             header: "Aspect_GradientFillMethod.hxx".} = enum
    aspectGradientFillMethodNone, 
    aspectGradientFillMethodHorizontal, 
    aspectGradientFillMethodVertical, 
    aspectGradientFillMethodDiagonal1, 
    aspectGradientFillMethodDiagonal2, 
    aspectGradientFillMethodCorner1, 
    aspectGradientFillMethodCorner2, 
    aspectGradientFillMethodCorner3, 
    aspectGradientFillMethodCorner4, 
    # aspectGradientFillMethodElliptical, 
    # aspectGFM_NONE = aspectGradientFillMethodNone,
    # aspectGFM_HOR = aspectGradientFillMethodHorizontal,
    # aspectGFM_VER = aspectGradientFillMethodVertical,
    # aspectGFM_DIAG1 = aspectGradientFillMethodDiagonal1,
    # aspectGFM_DIAG2 = aspectGradientFillMethodDiagonal2,
    # aspectGFM_CORNER1 = aspectGradientFillMethodCorner1,
    # aspectGFM_CORNER2 = aspectGradientFillMethodCorner2,
    # aspectGFM_CORNER3 = aspectGradientFillMethodCorner3,
    # aspectGFM_CORNER4 = aspectGradientFillMethodCorner4

  AspectGraphicsLibrary* {.size: sizeof(cint), importcpp: "Aspect_GraphicsLibrary",
                          header: "Aspect_GraphicsLibrary.hxx".} = enum
    AspectGraphicsLibraryOpenGL, AspectGraphicsLibraryOpenGLES

  AspectGrid* {.importcpp: "Aspect_Grid", header: "Aspect_Grid.hxx", bycopy.} = object of StandardTransient 

  AspectCircularGrid* {.importcpp: "Aspect_CircularGrid",
                       header: "Aspect_CircularGrid.hxx", bycopy.} = object of AspectGrid 

  HandleAspectCircularGrid* = Handle[AspectCircularGrid]

  HandleAspectGrid* = Handle[AspectGrid]

  AspectGridDrawMode* {.size: sizeof(cint), importcpp: "Aspect_GridDrawMode",
                       header: "Aspect_GridDrawMode.hxx".} = enum
    AspectGDM_Lines, AspectGDM_Points, AspectGDM_None

  AspectGridType* {.size: sizeof(cint), importcpp: "Aspect_GridType",
                   header: "Aspect_GridType.hxx".} = enum
    AspectGT_Rectangular, AspectGT_Circular

  AspectHatchStyle* {.size: sizeof(cint), importcpp: "Aspect_HatchStyle",
                     header: "Aspect_HatchStyle.hxx".} = enum
    AspectHS_SOLID = 0,         
    AspectHS_GRID_DIAGONAL = 1, 
    AspectHS_GRID_DIAGONAL_WIDE = 2, 
    AspectHS_GRID = 3,          
    AspectHS_GRID_WIDE = 4,     
    AspectHS_DIAGONAL_45 = 5,   
    AspectHS_DIAGONAL_135 = 6,  
    AspectHS_HORIZONTAL = 7,    
    AspectHS_VERTICAL = 8,      
    AspectHS_DIAGONAL_45WIDE = 9, 
    AspectHS_DIAGONAL_135WIDE = 10, 
    AspectHS_HORIZONTAL_WIDE = 11, 
    AspectHS_VERTICAL_WIDE = 12, 
    AspectHS_NB = 13

  AspectInteriorStyle* {.size: sizeof(cint), importcpp: "Aspect_InteriorStyle",
                        header: "Aspect_InteriorStyle.hxx".} = enum
    aspectIS_EMPTY = -1,        
    aspectIS_SOLID = 0,         
    aspectIS_HATCH,           
    aspectIS_HIDDENLINE,      
    aspectIS_POINT           

  AspectPolygonOffsetMode* {.size: sizeof(cint),
                            importcpp: "Aspect_PolygonOffsetMode",
                            header: "Aspect_PolygonOffsetMode.hxx".} = enum
    aspectPOM_Off = 0x00,       
    aspectPOM_Fill = 0x01,      
    aspectPOM_Line = 0x02,      
    aspectPOM_Point = 0x04,     

  AspectRectangularGrid* {.importcpp: "Aspect_RectangularGrid",
                          header: "Aspect_RectangularGrid.hxx", bycopy.} = object of AspectGrid 

  HandleAspectRectangularGrid* = Handle[AspectRectangularGrid]

  AspectRenderingContext* = ptr NSOpenGLContext

  AspectScrollDelta* {.importcpp: "Aspect_ScrollDelta",
                      header: "Aspect_ScrollDelta.hxx", bycopy.} = object
    point* {.importc: "Point".}: NCollectionVec2[cint] 
    delta* {.importc: "Delta".}: cfloat 
    flags* {.importc: "Flags".}: AspectVKeyFlags 

  AspectSequenceOfColor* = NCollectionSequence[QuantityColor]

  AspectTouch* {.importcpp: "Aspect_Touch", header: "Aspect_Touch.hxx", bycopy.} = object
    `from`* {.importc: "From".}: NCollectionVec2[cfloat] 
    to* {.importc: "To".}: NCollectionVec2[cfloat] 
    isPreciseDevice* {.importc: "IsPreciseDevice".}: bool 

  AspectTouchMap* {.importcpp:"NCollection_IndexedDataMap<Standard_Size, Aspect_Touch>", header:"Aspect_TouchMap.hxx", bycopy.}= object

  AspectTrackedDevicePose* {.importcpp: "Aspect_TrackedDevicePose",
                            header: "Aspect_TrackedDevicePose.hxx", bycopy.} = object
    orientation* {.importc: "Orientation".}: TrsfObj 
    velocity* {.importc: "Velocity".}: VecObj 
    angularVelocity* {.importc: "AngularVelocity".}: VecObj 
    isValidPose* {.importc: "IsValidPose".}: bool 
    isConnectedDevice* {.importc: "IsConnectedDevice".}: bool 

  AspectTrackedDevicePoseArray* = NCollectionArray1[AspectTrackedDevicePose]

  AspectTypeOfColorScaleData* {.size: sizeof(cint),
                               importcpp: "Aspect_TypeOfColorScaleData",
                               header: "Aspect_TypeOfColorScaleData.hxx".} = enum
    AspectTOCSD_AUTO, AspectTOCSD_USER

  AspectTypeOfColorScaleOrientation* {.size: sizeof(cint), importcpp: "Aspect_TypeOfColorScaleOrientation", header: "Aspect_TypeOfColorScaleOrientation.hxx".} = enum
    AspectTOCSO_NONE, AspectTOCSO_LEFT, AspectTOCSO_RIGHT, AspectTOCSO_CENTER

  AspectTypeOfColorScalePosition* {.size: sizeof(cint), importcpp: "Aspect_TypeOfColorScalePosition", header: "Aspect_TypeOfColorScalePosition.hxx".} = enum
    AspectTOCSP_NONE, AspectTOCSP_LEFT, AspectTOCSP_RIGHT, AspectTOCSP_CENTER

  AspectTypeOfDeflection* {.size: sizeof(cint),
                           importcpp: "Aspect_TypeOfDeflection",
                           header: "Aspect_TypeOfDeflection.hxx".} = enum
    AspectTOD_RELATIVE, AspectTOD_ABSOLUTE

  AspectTypeOfDisplayText* {.size: sizeof(cint),
                            importcpp: "Aspect_TypeOfDisplayText",
                            header: "Aspect_TypeOfDisplayText.hxx".} = enum
    aspectTODT_NORMAL,        
    aspectTODT_SUBTITLE,      
    aspectTODT_DEKALE,        
    aspectTODT_BLEND,         
    aspectTODT_DIMENSION,     
    aspectTODT_SHADOW         

  AspectTypeOfFacingModel* {.size: sizeof(cint),
                            importcpp: "Aspect_TypeOfFacingModel",
                            header: "Aspect_TypeOfFacingModel.hxx".} = enum
    aspectTOFM_BOTH_SIDE, aspectTOFM_BACK_SIDE, aspectTOFM_FRONT_SIDE

  AspectTypeOfHighlightMethod* {.size: sizeof(cint),
                                importcpp: "Aspect_TypeOfHighlightMethod",
                                header: "Aspect_TypeOfHighlightMethod.hxx".} = enum
    AspectTOHM_COLOR, AspectTOHM_BOUNDBOX

  AspectTypeOfLine* {.size: sizeof(cint), importcpp: "Aspect_TypeOfLine",
                     header: "Aspect_TypeOfLine.hxx".} = enum
    aspectTOL_EMPTY = -1,       
    aspectTOL_SOLID = 0,        
    aspectTOL_DASH,           
    aspectTOL_DOT,            
    aspectTOL_DOTDASH,        
    aspectTOL_USERDEFINED     

  AspectTypeOfMarker* {.size: sizeof(cint), importcpp: "Aspect_TypeOfMarker",
                       header: "Aspect_TypeOfMarker.hxx".} = enum
    aspectTOM_EMPTY = -1,       
    aspectTOM_POINT = 0,        
    aspectTOM_PLUS,           
    aspectTOM_STAR,           
    aspectTOM_X,              
    aspectTOM_O,              
    aspectTOM_O_POINT,        
    aspectTOM_O_PLUS,         
    aspectTOM_O_STAR,         
    aspectTOM_O_X,            
    aspectTOM_RING1,          
    aspectTOM_RING2,          
    aspectTOM_RING3,          
    aspectTOM_BALL,           
    aspectTOM_USERDEFINED     

  AspectTypeOfResize* {.size: sizeof(cint), importcpp: "Aspect_TypeOfResize",
                       header: "Aspect_TypeOfResize.hxx".} = enum
    AspectTOR_UNKNOWN, AspectTOR_NO_BORDER, AspectTOR_TOP_BORDER,
    AspectTOR_RIGHT_BORDER, AspectTOR_BOTTOM_BORDER, AspectTOR_LEFT_BORDER,
    AspectTOR_TOP_AND_RIGHT_BORDER, AspectTOR_RIGHT_AND_BOTTOM_BORDER,
    AspectTOR_BOTTOM_AND_LEFT_BORDER, AspectTOR_LEFT_AND_TOP_BORDER

  AspectTypeOfStyleText* {.size: sizeof(cint), importcpp: "Aspect_TypeOfStyleText",
                          header: "Aspect_TypeOfStyleText.hxx".} = enum
    aspectTOST_NORMAL, aspectTOST_ANNOTATION

  AspectTypeOfTriedronPosition* {.size: sizeof(cint),
                                 importcpp: "Aspect_TypeOfTriedronPosition",
                                 header: "Aspect_TypeOfTriedronPosition.hxx".} = enum
    aspectTOTP_CENTER = 0x0000, 
    aspectTOTP_TOP = 0x0001,    
    aspectTOTP_BOTTOM = 0x0002, 
    aspectTOTP_LEFT = 0x0004,   
    aspectTOTP_RIGHT = 0x0008  

  AspectVKey* = cuint

  AspectVKeyBasic* {.size: sizeof(cint), importcpp: "Aspect_VKeyBasic",
                    header: "Aspect_VKey.hxx".} = enum
    aspectVKeyUNKNOWN = 0,      
    aspectVKeyA = 1, aspectVKeyB, aspectVKeyC, aspectVKeyD, aspectVKeyE, aspectVKeyF,
    aspectVKeyG, aspectVKeyH, aspectVKeyI, aspectVKeyJ, aspectVKeyK, aspectVKeyL,
    aspectVKeyM, aspectVKeyN, aspectVKeyO, aspectVKeyP, aspectVKeyQ, aspectVKeyR,
    aspectVKeyS, aspectVKeyT, aspectVKeyU, aspectVKeyV, aspectVKeyW, aspectVKeyX,
    aspectVKeyY, aspectVKeyZ, aspectVKey0, aspectVKey1, aspectVKey2, aspectVKey3,
    aspectVKey4, aspectVKey5, aspectVKey6, aspectVKey7, aspectVKey8, aspectVKey9,
    aspectVKeyF1, aspectVKeyF2, aspectVKeyF3, aspectVKeyF4, aspectVKeyF5,
    aspectVKeyF6, aspectVKeyF7, aspectVKeyF8, aspectVKeyF9, aspectVKeyF10,
    aspectVKeyF11, aspectVKeyF12, 
    aspectVKeyUp, aspectVKeyDown, aspectVKeyLeft, aspectVKeyRight, aspectVKeyPlus, 
    aspectVKeyMinus,          
    aspectVKeyEqual,          
    aspectVKeyPageUp, aspectVKeyPageDown, aspectVKeyHome, aspectVKeyEnd,
    aspectVKeyEscape, aspectVKeyBack, aspectVKeyEnter, aspectVKeyBackspace,
    aspectVKeySpace, aspectVKeyDelete, aspectVKeyTilde, aspectVKeyTab, aspectVKeyComma, 
    aspectVKeyPeriod,         
    aspectVKeySemicolon,      
    aspectVKeySlash,          
    aspectVKeyBracketLeft,    
    aspectVKeyBackslash,      
    aspectVKeyBracketRight,   
    aspectVKeyApostrophe,     
    aspectVKeyNumlock,        
    aspectVKeyScroll,         
    aspectVKeyNumpad0, aspectVKeyNumpad1, aspectVKeyNumpad2, aspectVKeyNumpad3,
    aspectVKeyNumpad4, aspectVKeyNumpad5, aspectVKeyNumpad6, aspectVKeyNumpad7,
    aspectVKeyNumpad8, aspectVKeyNumpad9, aspectVKeyNumpadMultiply, 
    aspectVKeyNumpadAdd,      
    aspectVKeyNumpadSubtract, 
    aspectVKeyNumpadDivide,   
    aspectVKeyMediaNextTrack, aspectVKeyMediaPreviousTrack, aspectVKeyMediaStop,
    aspectVKeyMediaPlayPause, aspectVKeyVolumeMute, aspectVKeyVolumeDown,
    aspectVKeyVolumeUp, aspectVKeyBrowserBack, aspectVKeyBrowserForward,
    aspectVKeyBrowserRefresh, aspectVKeyBrowserStop, aspectVKeyBrowserSearch,
    aspectVKeyBrowserFavorites, aspectVKeyBrowserHome, 
    aspectVKeyViewTop, aspectVKeyViewBottom, aspectVKeyViewLeft,
    aspectVKeyViewRight, aspectVKeyViewFront, aspectVKeyViewBack,
    aspectVKeyViewAxoLeftProj, aspectVKeyViewAxoRightProj, aspectVKeyViewFitAll,
    aspectVKeyViewRoll90CW, aspectVKeyViewRoll90CCW, aspectVKeyViewSwitchRotate, 
    aspectVKeyShift, aspectVKeyControl, aspectVKeyAlt, aspectVKeyMenu, aspectVKeyMeta, 
    aspectVKeyNavInteract,    
    aspectVKeyNavForward,     
    aspectVKeyNavBackward,    
    aspectVKeyNavSlideLeft,   
    aspectVKeyNavSlideRight,  
    aspectVKeyNavSlideUp,     
    aspectVKeyNavSlideDown,   
    aspectVKeyNavRollCCW,     
    aspectVKeyNavRollCW,      
    aspectVKeyNavLookLeft,    
    aspectVKeyNavLookRight,   
    aspectVKeyNavLookUp,      
    aspectVKeyNavLookDown,    
    aspectVKeyNavCrouch,      
    aspectVKeyNavJump,        
    aspectVKeyNavThrustForward, 
    aspectVKeyNavThrustBackward, 
    aspectVKeyNavThrustStop,  
    aspectVKeyNavSpeedIncrease, 
    aspectVKeyNavSpeedDecrease 

  AspectVKeyFlags* = cuint

  AspectVKeyMouse* = cuint

  AspectVKeySet* {.importcpp: "Aspect_VKeySet", header: "Aspect_VKeySet.hxx", bycopy.} = object of StandardTransient 

  AspectWidthOfLine* {.size: sizeof(cint), importcpp: "Aspect_WidthOfLine",
                      header: "Aspect_WidthOfLine.hxx".} = enum
    AspectWOL_THIN, AspectWOL_MEDIUM, AspectWOL_THICK, AspectWOL_VERYTHICK,
    AspectWOL_USERDEFINED

  AspectWindow* {.importcpp: "Aspect_Window", header: "Aspect_Window.hxx", bycopy.} = object of StandardTransient 

  HandleAspectWindow* = Handle[AspectWindow]

  AspectNeutralWindow* {.importcpp: "Aspect_NeutralWindow",
                        header: "Aspect_NeutralWindow.hxx", bycopy.} = object of AspectWindow 

  HandleAspectNeutralWindow* = Handle[AspectNeutralWindow]

  AspectXAtom* {.size: sizeof(cint), importcpp: "Aspect_XAtom",
                header: "Aspect_XAtom.hxx".} = enum
    AspectXA_DELETE_WINDOW

  AspectXRAction* {.importcpp: "Aspect_XRAction", header: "Aspect_XRAction.hxx",
                   bycopy.} = object of StandardTransient 

  AspectXRActionMap* = NCollectionIndexedDataMap[TCollectionAsciiString,
      Handle[AspectXRAction], TCollectionAsciiString]

  AspectXRActionSet* {.importcpp: "Aspect_XRActionSet",
                      header: "Aspect_XRActionSet.hxx", bycopy.} = object of StandardTransient 

  AspectXRActionSetMap* = NCollectionIndexedDataMap[TCollectionAsciiString,
      Handle[AspectXRActionSet], TCollectionAsciiString]

  AspectXRActionType* {.size: sizeof(cint), importcpp: "Aspect_XRActionType",
                       header: "Aspect_XRActionType.hxx".} = enum
    AspectXRActionTypeInputDigital, 
    AspectXRActionTypeInputAnalog, 
    AspectXRActionTypeInputPose, 
    AspectXRActionTypeInputSkeletal, 
    AspectXRActionTypeOutputHaptic 

  AspectXRAnalogActionData* {.importcpp: "Aspect_XRAnalogActionData",
                             header: "Aspect_XRAnalogActionData.hxx", bycopy.} = object
    activeOrigin* {.importc: "ActiveOrigin".}: uint64 
    updateTime* {.importc: "UpdateTime".}: cfloat 
    vecXYZ* {.importc: "VecXYZ".}: NCollectionVec3[cfloat] 
    deltaXYZ* {.importc: "DeltaXYZ".}: NCollectionVec3[cfloat] 
    isActive* {.importc: "IsActive".}: bool 

  AspectXRDigitalActionData* {.importcpp: "Aspect_XRDigitalActionData",
                              header: "Aspect_XRDigitalActionData.hxx", bycopy.} = object
    activeOrigin* {.importc: "ActiveOrigin".}: uint64 
    updateTime* {.importc: "UpdateTime".}: cfloat 
    isActive* {.importc: "IsActive".}: bool 
    isPressed* {.importc: "IsPressed".}: bool 
    isChanged* {.importc: "IsChanged".}: bool 

  AspectXRGenericAction* {.size: sizeof(cint), importcpp: "Aspect_XRGenericAction",
                          header: "Aspect_XRGenericAction.hxx".} = enum
    aspectXRGenericActionIsHeadsetOn, 
    aspectXRGenericActionInputAppMenu, 
    aspectXRGenericActionInputSysMenu, 
    aspectXRGenericActionInputTriggerPull, 
    aspectXRGenericActionInputTriggerClick, 
    aspectXRGenericActionInputGripClick, 
    aspectXRGenericActionInputTrackPadPosition, 
    aspectXRGenericActionInputTrackPadTouch, 
    aspectXRGenericActionInputTrackPadClick, 
    aspectXRGenericActionInputThumbstickPosition, 
    aspectXRGenericActionInputThumbstickTouch, 
    aspectXRGenericActionInputThumbstickClick, 
    aspectXRGenericActionInputPoseBase, 
    aspectXRGenericActionInputPoseFront, 
    aspectXRGenericActionInputPoseHandGrip, 
    aspectXRGenericActionInputPoseFingerTip, 
    aspectXRGenericActionOutputHaptic 

  AspectXRHapticActionData* {.importcpp: "Aspect_XRHapticActionData",
                             header: "Aspect_XRHapticActionData.hxx", bycopy.} = object
    delay* {.importc: "Delay".}: cfloat 
    duration* {.importc: "Duration".}: cfloat 
    frequency* {.importc: "Frequency".}: cfloat 
    amplitude* {.importc: "Amplitude".}: cfloat 

  AspectXRPoseActionData* {.importcpp: "Aspect_XRPoseActionData",
                           header: "Aspect_XRPoseActionData.hxx", bycopy.} = object
    pose* {.importc: "Pose".}: AspectTrackedDevicePose 
    activeOrigin* {.importc: "ActiveOrigin".}: uint64 
    isActive* {.importc: "IsActive".}: bool 

  AspectXRSession* {.importcpp: "Aspect_XRSession", header: "Aspect_XRSession.hxx",
                    bycopy.} = object of StandardTransient 

  AspectOpenVRSession* {.importcpp: "Aspect_OpenVRSession",
                        header: "Aspect_OpenVRSession.hxx", bycopy.} = object of AspectXRSession 

  AspectXRSessionTrackingUniverseOrigin* {.size: sizeof(cint),
      importcpp: "Aspect_XRSession::TrackingUniverseOrigin",
      header: "Aspect_XRSession.hxx".} = enum
    TrackingUniverseOriginSeated, 
    TrackingUniverseOriginStanding 

  AspectXRSessionInfoString* {.size: sizeof(cint),
                              importcpp: "Aspect_XRSession::InfoString",
                              header: "Aspect_XRSession.hxx".} = enum
    InfoStringVendor, InfoStringDevice, InfoStringTracker, InfoStringSerialNumber

  AspectXRTrackedDeviceRole* {.size: sizeof(cint),
                              importcpp: "Aspect_XRTrackedDeviceRole",
                              header: "Aspect_XRTrackedDeviceRole.hxx".} = enum
    aspectXRTrackedDeviceRoleHead, 
    aspectXRTrackedDeviceRoleLeftHand, 
    aspectXRTrackedDeviceRoleRightHand, 
    aspectXRTrackedDeviceRoleOther 


const
  aspectTOTP_LEFT_LOWER*  = (aspectTOTP_BOTTOM.int or aspectTOTP_LEFT.int).AspectTypeOfTriedronPosition  ## at the left lower corner
  aspectTOTP_LEFT_UPPER*  = (aspectTOTP_TOP.int or aspectTOTP_LEFT.int).AspectTypeOfTriedronPosition     ## at the left upper corner
  aspectTOTP_RIGHT_LOWER* = (aspectTOTP_BOTTOM.int or aspectTOTP_RIGHT.int).AspectTypeOfTriedronPosition ## at the right lower corner
  aspectTOTP_RIGHT_UPPER* = (aspectTOTP_TOP.int or aspectTOTP_RIGHT.int).AspectTypeOfTriedronPosition    ## at the right upper corner
