type
  AspectBackground* {.importcpp: "Aspect_Background",
                     header: "Aspect_Background.hxx", bycopy.} = object of RootObj ## ! Creates a window background.
                                                                   ## ! Default color :
                                                                   ## NOC_MATRAGRAY.
type
  AspectCircularGrid* {.importcpp: "Aspect_CircularGrid",
                       header: "Aspect_CircularGrid.hxx", bycopy.} = object of AspectGrid ##
                                                                                   ## !
                                                                                   ## creates
                                                                                   ## a
                                                                                   ## new
                                                                                   ## grid.
                                                                                   ## By
                                                                                   ## default
                                                                                   ## this
                                                                                   ## grid
                                                                                   ## is
                                                                                   ## not
                                                                                   ##
                                                                                   ## !
                                                                                   ## active.
type
  AspectDisplayConnection* {.importcpp: "Aspect_DisplayConnection",
                            header: "Aspect_DisplayConnection.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Default
                                                                                                    ## constructor.
                                                                                                    ## Creates
                                                                                                    ## connection
                                                                                                    ## with
                                                                                                    ## display
                                                                                                    ## name
                                                                                                    ## taken
                                                                                                    ## from
                                                                                                    ## "DISPLAY"
                                                                                                    ## environment
                                                                                                    ## variable
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## To
                                                                                                    ## protect
                                                                                                    ## the
                                                                                                    ## connection
                                                                                                    ## from
                                                                                                    ## closing
                                                                                                    ## copying
                                                                                                    ## allowed
                                                                                                    ## only
                                                                                                    ## through
                                                                                                    ## the
                                                                                                    ## handles.
                                                                                                    ##
                                                                                                    ## Type
                                                                                                    ## definition
    ##  #endif
type
  AspectFrustumLRBT*[ElemT] {.importcpp: "Aspect_FrustumLRBT<\'0>",
                             header: "Aspect_FrustumLRBT.hxx", bycopy.} = object
    left* {.importc: "Left".}: ElemT
    right* {.importc: "Right".}: ElemT
    bottom* {.importc: "Bottom".}: ElemT
    top* {.importc: "Top".}: ElemT ## ! Empty constructor.
type
  AspectGenId* {.importcpp: "Aspect_GenId", header: "Aspect_GenId.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Creates
                                                                                  ## an
                                                                                  ## available
                                                                                  ## set
                                                                                  ## of
                                                                                  ## identifiers
                                                                                  ## with
                                                                                  ## the
                                                                                  ## lower
                                                                                  ## bound
                                                                                  ## 0
                                                                                  ## and
                                                                                  ## the
                                                                                  ## upper
                                                                                  ## bound
                                                                                  ## INT_MAX
                                                                                  ## /
                                                                                  ## 2.
type
  AspectGradientBackground* {.importcpp: "Aspect_GradientBackground",
                             header: "Aspect_GradientBackground.hxx", bycopy.} = object of AspectBackground ##
                                                                                                     ## !
                                                                                                     ## Creates
                                                                                                     ## a
                                                                                                     ## window
                                                                                                     ## gradient
                                                                                                     ## background.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Default
                                                                                                     ## colors
                                                                                                     ## :
                                                                                                     ## Quantity_NOC_BLACK.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Default
                                                                                                     ## fill
                                                                                                     ## method
                                                                                                     ## :
                                                                                                     ## Aspect_GFM_NONE
type
  AspectGrid* {.importcpp: "Aspect_Grid", header: "Aspect_Grid.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## defines
                                                                                                  ## the
                                                                                                  ## x
                                                                                                  ## Origin
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## grid.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## a
                                                                                                  ## new
                                                                                                  ## grid.
                                                                                                  ## By
                                                                                                  ## default
                                                                                                  ## this
                                                                                                  ## grid
                                                                                                  ## is
                                                                                                  ## not
                                                                                                  ## active.
type
  AspectInteriorStyle* {.size: sizeof(cint), importcpp: "Aspect_InteriorStyle",
                        header: "Aspect_InteriorStyle.hxx".} = enum
    aspectIS_EMPTY = -1,        ## !< no interior
    aspectIS_SOLID = 0,         ## !< normally filled surface interior
    aspectIS_HATCH,           ## !< hatched surface interior
    aspectIS_HIDDENLINE,      ## !< interior is filled with viewer background color
    aspectIS_POINT           ## !< display only vertices of surface (obsolete)
                   ##  obsolete aliases
type
  AspectNeutralWindow* {.importcpp: "Aspect_NeutralWindow",
                        header: "Aspect_NeutralWindow.hxx", bycopy.} = object of AspectWindow ##
                                                                                       ## !
                                                                                       ## Empty
                                                                                       ## constructor.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Note
                                                                                       ## that
                                                                                       ## window
                                                                                       ## is
                                                                                       ## considered
                                                                                       ## "mapped"
                                                                                       ## by
                                                                                       ## default.
type
  AspectOpenVRSession* {.importcpp: "Aspect_OpenVRSession",
                        header: "Aspect_OpenVRSession.hxx", bycopy.} = object of AspectXRSession ##
                                                                                          ## !
                                                                                          ## Return
                                                                                          ## TRUE
                                                                                          ## if
                                                                                          ## an
                                                                                          ## HMD
                                                                                          ## may
                                                                                          ## be
                                                                                          ## presented
                                                                                          ## on
                                                                                          ## the
                                                                                          ## system
                                                                                          ## (e.g.
                                                                                          ## to
                                                                                          ## show
                                                                                          ## VR
                                                                                          ## checkbox
                                                                                          ## in
                                                                                          ## application
                                                                                          ## GUI).
                                                                                          ##
                                                                                          ## !
                                                                                          ## This
                                                                                          ## is
                                                                                          ## fast
                                                                                          ## check,
                                                                                          ## and
                                                                                          ## even
                                                                                          ## if
                                                                                          ## it
                                                                                          ## returns
                                                                                          ## TRUE,
                                                                                          ## opening
                                                                                          ## session
                                                                                          ## may
                                                                                          ## fail.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Empty
                                                                                          ## constructor.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Find
                                                                                          ## location
                                                                                          ## of
                                                                                          ## default
                                                                                          ## actions
                                                                                          ## manifest
                                                                                          ## file
                                                                                          ## (based
                                                                                          ## on
                                                                                          ## CSF_OCCTResourcePath
                                                                                          ## or
                                                                                          ## CASROOT
                                                                                          ## variables).
                                                                                          ##
                                                                                          ## !
                                                                                          ## Access
                                                                                          ## vr::IVRSystem*
                                                                                          ## -
                                                                                          ## OpenVR
                                                                                          ## session
                                                                                          ## object.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Internal
                                                                                          ## fields
type
  AspectPolygonOffsetMode* {.size: sizeof(cint),
                            importcpp: "Aspect_PolygonOffsetMode",
                            header: "Aspect_PolygonOffsetMode.hxx".} = enum
    aspectPOM_Off = 0x00,       ##  all polygon offset modes disabled
    aspectPOM_Fill = 0x01,      ##  GL_POLYGON_OFFSET_FILL enabled (shaded polygons)
    aspectPOM_Line = 0x02,      ##  GL_POLYGON_OFFSET_LINE enabled (polygons as outlines)
    aspectPOM_Point = 0x04,     ##  GL_POLYGON_OFFSET_POINT enabled (polygons as vertices)
type
  AspectRectangularGrid* {.importcpp: "Aspect_RectangularGrid",
                          header: "Aspect_RectangularGrid.hxx", bycopy.} = object of AspectGrid ##
                                                                                         ## !
                                                                                         ## creates
                                                                                         ## a
                                                                                         ## new
                                                                                         ## grid.
                                                                                         ## By
                                                                                         ## default
                                                                                         ## this
                                                                                         ## grid
                                                                                         ## is
                                                                                         ## not
                                                                                         ##
                                                                                         ## !
                                                                                         ## active.
                                                                                         ##
                                                                                         ## !
                                                                                         ## The
                                                                                         ## first
                                                                                         ## angle
                                                                                         ## is
                                                                                         ## given
                                                                                         ## relatively
                                                                                         ## to
                                                                                         ## the
                                                                                         ## horizontal.
                                                                                         ##
                                                                                         ## !
                                                                                         ## The
                                                                                         ## second
                                                                                         ## angle
                                                                                         ## is
                                                                                         ## given
                                                                                         ## relatively
                                                                                         ## to
                                                                                         ## the
                                                                                         ## vertical.
type
  AspectScrollDelta* {.importcpp: "Aspect_ScrollDelta",
                      header: "Aspect_ScrollDelta.hxx", bycopy.} = object
    point* {.importc: "Point".}: NCollectionVec2[cint] ## !< scale position
    delta* {.importc: "Delta".}: cfloat ## !< delta in pixels
    flags* {.importc: "Flags".}: AspectVKeyFlags ## !< key flags
                                             ## ! Return true if action has point defined.
type
  AspectTouch* {.importcpp: "Aspect_Touch", header: "Aspect_Touch.hxx", bycopy.} = object
    `from`* {.importc: "From".}: NCollectionVec2[cfloat] ## !< original touch position
    to* {.importc: "To".}: NCollectionVec2[cfloat] ## !< current  touch position
    isPreciseDevice* {.importc: "IsPreciseDevice".}: bool ## !< precise device input (e.g. mouse cursor, NOT emulated from touch screen)
                                                      ## ! Return values delta.
type
  AspectTrackedDevicePose* {.importcpp: "Aspect_TrackedDevicePose",
                            header: "Aspect_TrackedDevicePose.hxx", bycopy.} = object
    orientation* {.importc: "Orientation".}: TrsfObj ## !< device to absolute transformation
    velocity* {.importc: "Velocity".}: VecObj ## !< velocity in tracker space in m/s
    angularVelocity* {.importc: "AngularVelocity".}: VecObj ## !< angular velocity in radians/s
    isValidPose* {.importc: "IsValidPose".}: bool ## !< indicates valid pose
    isConnectedDevice* {.importc: "IsConnectedDevice".}: bool ## !< indicates connected state
                                                          ## ! Empty constructor.
type
  AspectTypeOfTriedronPosition* {.size: sizeof(cint),
                                 importcpp: "Aspect_TypeOfTriedronPosition",
                                 header: "Aspect_TypeOfTriedronPosition.hxx".} = enum
    aspectTOTP_CENTER = 0x0000, ## !< at the center of the view
    aspectTOTP_TOP = 0x0001,    ## !< at the middle of the top    side
    aspectTOTP_BOTTOM = 0x0002, ## !< at the middle of the bottom side
    aspectTOTP_LEFT = 0x0004,   ## !< at the middle of the left   side
    aspectTOTP_RIGHT = 0x0008  ## !< at the middle of the right  side
type
  AspectVKey* = cuint
## ! Enumeration defining virtual keys irrelevant to current keyboard layout for simplified hot-keys management logic.
type
  AspectVKeyBasic* {.size: sizeof(cint), importcpp: "Aspect_VKeyBasic",
                    header: "Aspect_VKey.hxx".} = enum
    aspectVKeyUNKNOWN = 0,      ##  main latin alphabet keys
    aspectVKeyA = 1, aspectVKeyB, aspectVKeyC, aspectVKeyD, aspectVKeyE, aspectVKeyF,
    aspectVKeyG, aspectVKeyH, aspectVKeyI, aspectVKeyJ, aspectVKeyK, aspectVKeyL,
    aspectVKeyM, aspectVKeyN, aspectVKeyO, aspectVKeyP, aspectVKeyQ, aspectVKeyR,
    aspectVKeyS, aspectVKeyT, aspectVKeyU, aspectVKeyV, aspectVKeyW, aspectVKeyX,
    aspectVKeyY, aspectVKeyZ, aspectVKey0, aspectVKey1, aspectVKey2, aspectVKey3,
    aspectVKey4, aspectVKey5, aspectVKey6, aspectVKey7, aspectVKey8, aspectVKey9,
    aspectVKeyF1, aspectVKeyF2, aspectVKeyF3, aspectVKeyF4, aspectVKeyF5,
    aspectVKeyF6, aspectVKeyF7, aspectVKeyF8, aspectVKeyF9, aspectVKeyF10,
    aspectVKeyF11, aspectVKeyF12, ##  standard keys
    aspectVKeyUp, aspectVKeyDown, aspectVKeyLeft, aspectVKeyRight, aspectVKeyPlus, ## !< '+'
    aspectVKeyMinus,          ## !< '-'
    aspectVKeyEqual,          ## !< '=+'
    aspectVKeyPageUp, aspectVKeyPageDown, aspectVKeyHome, aspectVKeyEnd,
    aspectVKeyEscape, aspectVKeyBack, aspectVKeyEnter, aspectVKeyBackspace,
    aspectVKeySpace, aspectVKeyDelete, aspectVKeyTilde, aspectVKeyTab, aspectVKeyComma, ## !< ','
    aspectVKeyPeriod,         ## !< '.'
    aspectVKeySemicolon,      ## !< ';:'
    aspectVKeySlash,          ## !< '/?'
    aspectVKeyBracketLeft,    ## !< '[{'
    aspectVKeyBackslash,      ## !< '\|'
    aspectVKeyBracketRight,   ## !< ']}'
    aspectVKeyApostrophe,     ## !< ''"'
    aspectVKeyNumlock,        ## !< Num Lock key
    aspectVKeyScroll,         ## !< Scroll Lock key
                     ##  numpad keys
    aspectVKeyNumpad0, aspectVKeyNumpad1, aspectVKeyNumpad2, aspectVKeyNumpad3,
    aspectVKeyNumpad4, aspectVKeyNumpad5, aspectVKeyNumpad6, aspectVKeyNumpad7,
    aspectVKeyNumpad8, aspectVKeyNumpad9, aspectVKeyNumpadMultiply, ## !< numpad '*'
    aspectVKeyNumpadAdd,      ## !< numpad '+'
    aspectVKeyNumpadSubtract, ## !< numpad '-'
    aspectVKeyNumpadDivide,   ## !< numpad '/'
                           ##  Multimedia keys
    aspectVKeyMediaNextTrack, aspectVKeyMediaPreviousTrack, aspectVKeyMediaStop,
    aspectVKeyMediaPlayPause, aspectVKeyVolumeMute, aspectVKeyVolumeDown,
    aspectVKeyVolumeUp, aspectVKeyBrowserBack, aspectVKeyBrowserForward,
    aspectVKeyBrowserRefresh, aspectVKeyBrowserStop, aspectVKeyBrowserSearch,
    aspectVKeyBrowserFavorites, aspectVKeyBrowserHome, ##  3d view keys
    aspectVKeyViewTop, aspectVKeyViewBottom, aspectVKeyViewLeft,
    aspectVKeyViewRight, aspectVKeyViewFront, aspectVKeyViewBack,
    aspectVKeyViewAxoLeftProj, aspectVKeyViewAxoRightProj, aspectVKeyViewFitAll,
    aspectVKeyViewRoll90CW, aspectVKeyViewRoll90CCW, aspectVKeyViewSwitchRotate, ##  modifier keys, @sa Aspect_VKey_ModifiersLower and Aspect_VKey_ModifiersUpper below
    aspectVKeyShift, aspectVKeyControl, aspectVKeyAlt, aspectVKeyMenu, aspectVKeyMeta, ##  virtual navigation keys, @sa Aspect_VKey_NavigationKeysLower and Aspect_VKey_NavigationKeysUpper below
    aspectVKeyNavInteract,    ## !< interact
    aspectVKeyNavForward,     ## !< go forward
    aspectVKeyNavBackward,    ## !< go backward
    aspectVKeyNavSlideLeft,   ## !< sidewalk, left
    aspectVKeyNavSlideRight,  ## !< sidewalk, right
    aspectVKeyNavSlideUp,     ## !< lift up
    aspectVKeyNavSlideDown,   ## !< fall down
    aspectVKeyNavRollCCW,     ## !< bank left  (roll counter-clockwise)
    aspectVKeyNavRollCW,      ## !< bank right (roll clockwise)
    aspectVKeyNavLookLeft,    ## !< look left  (yaw counter-clockwise)
    aspectVKeyNavLookRight,   ## !< look right (yaw clockwise)
    aspectVKeyNavLookUp,      ## !< look up    (pitch clockwise)
    aspectVKeyNavLookDown,    ## !< look down  (pitch counter-clockwise)
    aspectVKeyNavCrouch,      ## !< crouch walking
    aspectVKeyNavJump,        ## !< jump
    aspectVKeyNavThrustForward, ## !< increase continuous velocity in forward  direction
    aspectVKeyNavThrustBackward, ## !< increase continuous velocity in reversed direction
    aspectVKeyNavThrustStop,  ## !< reset continuous velocity
    aspectVKeyNavSpeedIncrease, ## !< increase navigation speed
    aspectVKeyNavSpeedDecrease ## !< decrease navigation speed
## ! Auxiliary ranges.
type
  AspectVKeyFlags* = cuint
## ! Key modifier, for combining with general key from Aspect_VKey.
type
  AspectVKeyMouse* = cuint
## ! Mouse button bitmask
type
  AspectVKeySet* {.importcpp: "Aspect_VKeySet", header: "Aspect_VKeySet.hxx", bycopy.} = object of StandardTransient ##
                                                                                                           ## !
                                                                                                           ## Main
                                                                                                           ## constructor.
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## Reset
                                                                                                           ## the
                                                                                                           ## key
                                                                                                           ## state
                                                                                                           ## into
                                                                                                           ## unpressed
                                                                                                           ## state.
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## Key
                                                                                                           ## state.
    ## !< keys state
    ## !< mutex for thread-safe updates
    ## !< active modifiers
type
  HandleAspectWindow* = Handle[AspectWindow]
## ! Defines a window.
type
  AspectWindow* {.importcpp: "Aspect_Window", header: "Aspect_Window.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Modifies
                                                                                                        ## the
                                                                                                        ## window
                                                                                                        ## background.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Initializes
                                                                                                        ## the
                                                                                                        ## datas
                                                                                                        ## of
                                                                                                        ## a
                                                                                                        ## Window.
type
  AspectXRAction* {.importcpp: "Aspect_XRAction", header: "Aspect_XRAction.hxx",
                   bycopy.} = object of StandardTransient ## ! Return action id.
    ## !< action id
    ## !< action handle
    ## !< action type
type
  AspectXRActionSet* {.importcpp: "Aspect_XRActionSet",
                      header: "Aspect_XRActionSet.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Return
                                                                                        ## action
                                                                                        ## id.
    ## !< action set id
    ## !< action set handle
    ## !< map of actions
type
  AspectXRAnalogActionData* {.importcpp: "Aspect_XRAnalogActionData",
                             header: "Aspect_XRAnalogActionData.hxx", bycopy.} = object
    activeOrigin* {.importc: "ActiveOrigin".}: uint64 ## !< The origin that caused this action's current state
    updateTime* {.importc: "UpdateTime".}: cfloat ## !< Time relative to now when this event happened. Will be negative to indicate a past time
    vecXYZ* {.importc: "VecXYZ".}: NCollectionVec3[cfloat] ## !< the current state of this action
    deltaXYZ* {.importc: "DeltaXYZ".}: NCollectionVec3[cfloat] ## !< deltas since the previous update
    isActive* {.importc: "IsActive".}: bool ## !< whether or not this action is currently available to be bound in the active action set
                                        ## ! Return TRUE if delta is non-zero.
type
  AspectXRDigitalActionData* {.importcpp: "Aspect_XRDigitalActionData",
                              header: "Aspect_XRDigitalActionData.hxx", bycopy.} = object
    activeOrigin* {.importc: "ActiveOrigin".}: uint64 ## !< The origin that caused this action's current state
    updateTime* {.importc: "UpdateTime".}: cfloat ## !< Time relative to now when this event happened. Will be negative to indicate a past time
    isActive* {.importc: "IsActive".}: bool ## !< whether or not this action is currently available to be bound in the active action set
    isPressed* {.importc: "IsPressed".}: bool ## !< Aspect_InputActionType_Digital state - The current state of this action; will be true if currently pressed
    isChanged* {.importc: "IsChanged".}: bool ## !< Aspect_InputActionType_Digital state - this is true if the state has changed since the last frame
                                          ## ! Empty constructor.
type
  AspectXRGenericAction* {.size: sizeof(cint), importcpp: "Aspect_XRGenericAction",
                          header: "Aspect_XRGenericAction.hxx".} = enum
    aspectXRGenericActionIsHeadsetOn, ## !< headset is on/off head
    aspectXRGenericActionInputAppMenu, ## !< application menu button pressed/released
    aspectXRGenericActionInputSysMenu, ## !< system menu button pressed/released
    aspectXRGenericActionInputTriggerPull, ## !< trigger squeezing [0..1], 1 to click
    aspectXRGenericActionInputTriggerClick, ## !< trigger clicked/released
    aspectXRGenericActionInputGripClick, ## !< grip state on/off
    aspectXRGenericActionInputTrackPadPosition, ## !< trackpad 2D position [-1,+1] with X and Y axes
    aspectXRGenericActionInputTrackPadTouch, ## !< trackpad touched/untouched
    aspectXRGenericActionInputTrackPadClick, ## !< trackpad clicked/released
    aspectXRGenericActionInputThumbstickPosition, ## !< thumbstick 2D position [-1,+1] with X and Y axes
    aspectXRGenericActionInputThumbstickTouch, ## !< thumbstick touched/untouched
    aspectXRGenericActionInputThumbstickClick, ## !< thumbstick clicked/released
    aspectXRGenericActionInputPoseBase, ## !< base position of hand
    aspectXRGenericActionInputPoseFront, ## !< front position of hand
    aspectXRGenericActionInputPoseHandGrip, ## !< position of main handgrip
    aspectXRGenericActionInputPoseFingerTip, ## !< position of main fingertip
    aspectXRGenericActionOutputHaptic ## !< haptic output (vibration)
type
  AspectXRHapticActionData* {.importcpp: "Aspect_XRHapticActionData",
                             header: "Aspect_XRHapticActionData.hxx", bycopy.} = object
    delay* {.importc: "Delay".}: cfloat ## !< delay in seconds before start
    duration* {.importc: "Duration".}: cfloat ## !< duration in seconds
    frequency* {.importc: "Frequency".}: cfloat ## !< vibration frequency
    amplitude* {.importc: "Amplitude".}: cfloat ## !< vibration amplitude
                                            ## ! Return TRUE if data is not empty.
type
  AspectXRPoseActionData* {.importcpp: "Aspect_XRPoseActionData",
                           header: "Aspect_XRPoseActionData.hxx", bycopy.} = object
    pose* {.importc: "Pose".}: AspectTrackedDevicePose ## !< pose state
    activeOrigin* {.importc: "ActiveOrigin".}: uint64 ## !< The origin that caused this action's current state
    isActive* {.importc: "IsActive".}: bool ## !< whether or not this action is currently available to be bound in the active action set
                                        ## ! Empty constructor.
type
  AspectXRSession* {.importcpp: "Aspect_XRSession", header: "Aspect_XRSession.hxx",
                    bycopy.} = object of StandardTransient ## ! Identifies which style of tracking origin the application wants to use for the poses it is requesting.
                                                      ## ! Return TRUE if session is opened.
                                                      ## ! Info string enumeration.
                                                      ## ! Empty constructor.
    ## !< generic actions
    ## !< actions sets
    ## !< tracking origin
    ## !< array of tracked poses
    ## !< head orientation
    ## !< viewport Width x Height for rendering into VR
    ## !< left  eye projection frustum
    ## !< right eye projection frustum
    ## !< unit scale factor defined as scale factor for m (meters)
    ## !< aspect ratio
    ## !< field of view
    ## !< intra-ocular distance in meters
    ## !< display frequency
  AspectXRSessionTrackingUniverseOrigin* {.size: sizeof(cint),
      importcpp: "Aspect_XRSession::TrackingUniverseOrigin",
      header: "Aspect_XRSession.hxx".} = enum
    TrackingUniverseOriginSeated, ## ! poses are provided relative to the seated zero pose
    TrackingUniverseOriginStanding ## ! poses are provided relative to the safe bounds configured by the user
type
  AspectXRSessionInfoString* {.size: sizeof(cint),
                              importcpp: "Aspect_XRSession::InfoString",
                              header: "Aspect_XRSession.hxx".} = enum
    InfoStringVendor, InfoStringDevice, InfoStringTracker, InfoStringSerialNumber
type
  AspectXRTrackedDeviceRole* {.size: sizeof(cint),
                              importcpp: "Aspect_XRTrackedDeviceRole",
                              header: "Aspect_XRTrackedDeviceRole.hxx".} = enum
    aspectXRTrackedDeviceRoleHead, ## !< head
    aspectXRTrackedDeviceRoleLeftHand, ## !< left hand
    aspectXRTrackedDeviceRoleRightHand, ## !< right hand
    aspectXRTrackedDeviceRoleOther ## !< other devices
