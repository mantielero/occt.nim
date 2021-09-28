##  Created on: 1996-12-18
##  Created by: Robert COUBLANC
##  Copyright (c) 1996-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _AIS_InteractiveContext_HeaderFile [NewLine] # _AIS_InteractiveContext_HeaderFile [NewLine] # < AIS_DataMapOfIOStatus . hxx > [NewLine] # < AIS_DisplayMode . hxx > [NewLine] # < AIS_DisplayStatus . hxx > [NewLine] # < AIS_ClearMode . hxx > [NewLine] # < AIS_KindOfInteractive . hxx > [NewLine] # < AIS_ListOfInteractive . hxx > [NewLine] # < AIS_Selection . hxx > [NewLine] # < AIS_SelectionModesConcurrency . hxx > [NewLine] # < AIS_StatusOfDetection . hxx > [NewLine] # < AIS_StatusOfPick . hxx > [NewLine] # < AIS_TypeOfIso . hxx > [NewLine] # < Aspect_TypeOfFacingModel . hxx > [NewLine] # < Prs3d_Drawer . hxx > [NewLine] # < Prs3d_TypeOfHighlight . hxx > [NewLine] # < PrsMgr_PresentationManager3d . hxx > [NewLine] # < SelectMgr_AndOrFilter . hxx > [NewLine] # < SelectMgr_IndexedMapOfOwner . hxx > [NewLine] # < SelectMgr_ListOfFilter . hxx > [NewLine] # < SelectMgr_PickingStrategy . hxx > [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < StdSelect_ViewerSelector3d . hxx > [NewLine] # < TCollection_AsciiString . hxx > [NewLine] # < TColgp_Array1OfPnt2d . hxx > [NewLine] # < TColStd_ListOfInteger . hxx > [NewLine] # < TopAbs_ShapeEnum . hxx > [NewLine] # < Quantity_Color . hxx > [NewLine] class SelectMgr_SelectionManager ;
## Error: expected ';'!!!

discard "forward decl of V3d_Viewer"
discard "forward decl of V3d_View"
discard "forward decl of TopLoc_Location"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of Prs3d_LineAspect"
discard "forward decl of Prs3d_BasicAspect"
discard "forward decl of TopoDS_Shape"
discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of SelectMgr_Filter"
type
  AIS_InteractiveContext* {.importcpp: "AIS_InteractiveContext",
                           header: "AIS_InteractiveContext.hxx", bycopy.} = object of StandardTransient ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## object
                                                                                                 ## display
                                                                                                 ## management
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Constructs
                                                                                                 ## the
                                                                                                 ## interactive
                                                                                                 ## context
                                                                                                 ## object
                                                                                                 ## defined
                                                                                                 ## by
                                                                                                 ## the
                                                                                                 ## principal
                                                                                                 ## viewer
                                                                                                 ## MainViewer.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## highlighting
                                                                                                 ## management
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## highlight
                                                                                                 ## style
                                                                                                 ## settings.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## object
                                                                                                 ## presence
                                                                                                 ## management
                                                                                                 ## (View
                                                                                                 ## affinity,
                                                                                                 ## Layer,
                                                                                                 ## Priority)
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## the
                                                                                                 ## display
                                                                                                 ## priority
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## Object.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## Display
                                                                                                 ## Mode
                                                                                                 ## management
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## the
                                                                                                 ## Display
                                                                                                 ## Mode
                                                                                                 ## setting
                                                                                                 ## to
                                                                                                 ## be
                                                                                                 ## used
                                                                                                 ## by
                                                                                                 ## default.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## object
                                                                                                 ## local
                                                                                                 ## transformation
                                                                                                 ## management
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Puts
                                                                                                 ## the
                                                                                                 ## location
                                                                                                 ## on
                                                                                                 ## the
                                                                                                 ## initial
                                                                                                 ## graphic
                                                                                                 ## representation
                                                                                                 ## and
                                                                                                 ## the
                                                                                                 ## selection
                                                                                                 ## for
                                                                                                 ## the
                                                                                                 ## Object.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## iteration
                                                                                                 ## through
                                                                                                 ## detected
                                                                                                 ## entities
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Initialization
                                                                                                 ## for
                                                                                                 ## iteration
                                                                                                 ## through
                                                                                                 ## mouse-detected
                                                                                                 ## objects
                                                                                                 ## in
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## interactive
                                                                                                 ## context
                                                                                                 ## or
                                                                                                 ## in
                                                                                                 ## local
                                                                                                 ## context
                                                                                                 ## if
                                                                                                 ## it
                                                                                                 ## is
                                                                                                 ## opened.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @sa
                                                                                                 ## DetectedCurrentOwner()/MoreDetected()/NextDetected().
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## Selection
                                                                                                 ## management
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Sets
                                                                                                 ## the
                                                                                                 ## graphic
                                                                                                 ## basic
                                                                                                 ## aspect
                                                                                                 ## to
                                                                                                 ## the
                                                                                                 ## current
                                                                                                 ## presentation
                                                                                                 ## of
                                                                                                 ## ALL
                                                                                                 ## selected
                                                                                                 ## objects.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## Selection
                                                                                                 ## Filters
                                                                                                 ## management
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @return
                                                                                                 ## the
                                                                                                 ## context
                                                                                                 ## selection
                                                                                                 ## filter
                                                                                                 ## type.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## common
                                                                                                 ## properties
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## the
                                                                                                 ## default
                                                                                                 ## attribute
                                                                                                 ## manager.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## This
                                                                                                 ## contains
                                                                                                 ## all
                                                                                                 ## the
                                                                                                 ## color
                                                                                                 ## and
                                                                                                 ## line
                                                                                                 ## attributes
                                                                                                 ## which
                                                                                                 ## can
                                                                                                 ## be
                                                                                                 ## used
                                                                                                 ## by
                                                                                                 ## interactive
                                                                                                 ## objects
                                                                                                 ## which
                                                                                                 ## do
                                                                                                 ## not
                                                                                                 ## have
                                                                                                 ## their
                                                                                                 ## own
                                                                                                 ## attributes.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## debug
                                                                                                 ## visualization
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Visualization
                                                                                                 ## of
                                                                                                 ## sensitives
                                                                                                 ## -
                                                                                                 ## for
                                                                                                 ## debugging
                                                                                                 ## purposes!
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## common
                                                                                                 ## object
                                                                                                 ## display
                                                                                                 ## attributes
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Sets
                                                                                                 ## the
                                                                                                 ## graphic
                                                                                                 ## attributes
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## interactive
                                                                                                 ## object,
                                                                                                 ## such
                                                                                                 ## as
                                                                                                 ## visualization
                                                                                                 ## mode,
                                                                                                 ## color,
                                                                                                 ## and
                                                                                                 ## material.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## trihedron
                                                                                                 ## display
                                                                                                 ## attributes
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Sets
                                                                                                 ## the
                                                                                                 ## size
                                                                                                 ## aSize
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## trihedron.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Is
                                                                                                 ## used
                                                                                                 ## to
                                                                                                 ## change
                                                                                                 ## the
                                                                                                 ## default
                                                                                                 ## value
                                                                                                 ## 100
                                                                                                 ## mm
                                                                                                 ## for
                                                                                                 ## display
                                                                                                 ## of
                                                                                                 ## trihedra.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Use
                                                                                                 ## of
                                                                                                 ## this
                                                                                                 ## function
                                                                                                 ## in
                                                                                                 ## one
                                                                                                 ## of
                                                                                                 ## your
                                                                                                 ## own
                                                                                                 ## interactive
                                                                                                 ## objects
                                                                                                 ## requires
                                                                                                 ## a
                                                                                                 ## call
                                                                                                 ## to
                                                                                                 ## the
                                                                                                 ## Compute
                                                                                                 ## function
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## new
                                                                                                 ## class.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## This
                                                                                                 ## will
                                                                                                 ## recalculate
                                                                                                 ## the
                                                                                                 ## presentation
                                                                                                 ## for
                                                                                                 ## every
                                                                                                 ## trihedron
                                                                                                 ## displayed.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## plane
                                                                                                 ## display
                                                                                                 ## attributes
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Sets
                                                                                                 ## the
                                                                                                 ## plane
                                                                                                 ## size
                                                                                                 ## defined
                                                                                                 ## by
                                                                                                 ## the
                                                                                                 ## length
                                                                                                 ## in
                                                                                                 ## the
                                                                                                 ## X
                                                                                                 ## direction
                                                                                                 ## XSize
                                                                                                 ## and
                                                                                                 ## that
                                                                                                 ## in
                                                                                                 ## the
                                                                                                 ## Y
                                                                                                 ## direction
                                                                                                 ## YSize.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## tessellation
                                                                                                 ## deviation
                                                                                                 ## properties
                                                                                                 ## for
                                                                                                 ## automatic
                                                                                                 ## triangulation
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Sets
                                                                                                 ## the
                                                                                                 ## deviation
                                                                                                 ## coefficient
                                                                                                 ## theCoefficient.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Drawings
                                                                                                 ## of
                                                                                                 ## curves
                                                                                                 ## or
                                                                                                 ## patches
                                                                                                 ## are
                                                                                                 ## made
                                                                                                 ## with
                                                                                                 ## respect
                                                                                                 ## to
                                                                                                 ## a
                                                                                                 ## maximal
                                                                                                 ## chordal
                                                                                                 ## deviation.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## A
                                                                                                 ## Deviation
                                                                                                 ## coefficient
                                                                                                 ## is
                                                                                                 ## used
                                                                                                 ## in
                                                                                                 ## the
                                                                                                 ## shading
                                                                                                 ## display
                                                                                                 ## mode.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## The
                                                                                                 ## shape
                                                                                                 ## is
                                                                                                 ## seen
                                                                                                 ## decomposed
                                                                                                 ## into
                                                                                                 ## triangles.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## These
                                                                                                 ## are
                                                                                                 ## used
                                                                                                 ## to
                                                                                                 ## calculate
                                                                                                 ## reflection
                                                                                                 ## of
                                                                                                 ## light
                                                                                                 ## from
                                                                                                 ## the
                                                                                                 ## surface
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## object.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## The
                                                                                                 ## triangles
                                                                                                 ## are
                                                                                                 ## formed
                                                                                                 ## from
                                                                                                 ## chords
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## curves
                                                                                                 ## in
                                                                                                 ## the
                                                                                                 ## shape.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## The
                                                                                                 ## deviation
                                                                                                 ## coefficient
                                                                                                 ## theCoefficient
                                                                                                 ## gives
                                                                                                 ## the
                                                                                                 ## highest
                                                                                                 ## value
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## angle
                                                                                                 ## with
                                                                                                 ## which
                                                                                                 ## a
                                                                                                 ## chord
                                                                                                 ## can
                                                                                                 ## deviate
                                                                                                 ## from
                                                                                                 ## a
                                                                                                 ## tangent
                                                                                                 ## to
                                                                                                 ## a
                                                                                                 ## curve.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## If
                                                                                                 ## this
                                                                                                 ## limit
                                                                                                 ## is
                                                                                                 ## reached,
                                                                                                 ## a
                                                                                                 ## new
                                                                                                 ## triangle
                                                                                                 ## is
                                                                                                 ## begun.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## This
                                                                                                 ## deviation
                                                                                                 ## is
                                                                                                 ## absolute
                                                                                                 ## and
                                                                                                 ## is
                                                                                                 ## set
                                                                                                 ## through
                                                                                                 ## the
                                                                                                 ## method:
                                                                                                 ## SetMaximalChordialDeviation.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## The
                                                                                                 ## default
                                                                                                 ## value
                                                                                                 ## is
                                                                                                 ## 0.001.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## In
                                                                                                 ## drawing
                                                                                                 ## shapes,
                                                                                                 ## however,
                                                                                                 ## you
                                                                                                 ## are
                                                                                                 ## allowed
                                                                                                 ## to
                                                                                                 ## ask
                                                                                                 ## for
                                                                                                 ## a
                                                                                                 ## relative
                                                                                                 ## deviation.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## This
                                                                                                 ## deviation
                                                                                                 ## will
                                                                                                 ## be:
                                                                                                 ## SizeOfObject
                                                                                                 ## *
                                                                                                 ## DeviationCoefficient.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## HLR
                                                                                                 ## (Hidden
                                                                                                 ## Line
                                                                                                 ## Removal)
                                                                                                 ## display
                                                                                                 ## attributes
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Initializes
                                                                                                 ## hidden
                                                                                                 ## line
                                                                                                 ## aspect
                                                                                                 ## in
                                                                                                 ## the
                                                                                                 ## default
                                                                                                 ## drawing
                                                                                                 ## tool,
                                                                                                 ## or
                                                                                                 ## Drawer.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## The
                                                                                                 ## default
                                                                                                 ## values
                                                                                                 ## are:
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Color:
                                                                                                 ## Quantity_NOC_YELLOW
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Type
                                                                                                 ## of
                                                                                                 ## line:
                                                                                                 ## Aspect_TOL_DASH
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Width:
                                                                                                 ## 1.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## iso-line
                                                                                                 ## display
                                                                                                 ## attributes
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Sets
                                                                                                 ## the
                                                                                                 ## number
                                                                                                 ## of
                                                                                                 ## U
                                                                                                 ## and
                                                                                                 ## V
                                                                                                 ## isoparameters
                                                                                                 ## displayed.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Updates
                                                                                                 ## the
                                                                                                 ## view
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## current
                                                                                                 ## object
                                                                                                 ## in
                                                                                                 ## open
                                                                                                 ## context.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Objects
                                                                                                 ## selected
                                                                                                 ## when
                                                                                                 ## there
                                                                                                 ## is
                                                                                                 ## no
                                                                                                 ## open
                                                                                                 ## local
                                                                                                 ## context
                                                                                                 ## are
                                                                                                 ## called
                                                                                                 ## current
                                                                                                 ## objects;
                                                                                                 ## those
                                                                                                 ## selected
                                                                                                 ## in
                                                                                                 ## open
                                                                                                 ## local
                                                                                                 ## context,
                                                                                                 ## selected
                                                                                                 ## objects.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## sub-intensity
                                                                                                 ## management
                                                                                                 ## (deprecated)
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Sub-intensity
                                                                                                 ## allows
                                                                                                 ## temporary
                                                                                                 ## highlighting
                                                                                                 ## of
                                                                                                 ## particular
                                                                                                 ## objects
                                                                                                 ## with
                                                                                                 ## specified
                                                                                                 ## color
                                                                                                 ## in
                                                                                                 ## a
                                                                                                 ## manner
                                                                                                 ## of
                                                                                                 ## selection
                                                                                                 ## highlight,
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## but
                                                                                                 ## without
                                                                                                 ## actual
                                                                                                 ## selection
                                                                                                 ## (e.g.,
                                                                                                 ## global
                                                                                                 ## status
                                                                                                 ## and
                                                                                                 ## owner's
                                                                                                 ## selection
                                                                                                 ## state
                                                                                                 ## will
                                                                                                 ## not
                                                                                                 ## be
                                                                                                 ## updated).
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## The
                                                                                                 ## method
                                                                                                 ## returns
                                                                                                 ## the
                                                                                                 ## color
                                                                                                 ## of
                                                                                                 ## such
                                                                                                 ## highlighting.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## By
                                                                                                 ## default,
                                                                                                 ## it
                                                                                                 ## is
                                                                                                 ## Quantity_NOC_GRAY40.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## internal
                                                                                                 ## methods
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## internal
                                                                                                 ## fields
    standardType* {.importc: "Standard_Type".}: Handle
    prs3dDrawer* {.importc: "Prs3d_Drawer".}: Handle
    v3dView* {.importc: "V3d_View".}: Handle
    selectMgrEntityOwner* {.importc: "SelectMgr_EntityOwner".}: Handle
    selectMgrEntityOwner* {.importc: "SelectMgr_EntityOwner".}: Handle
    aIS_InteractiveObject* {.importc: "AIS_InteractiveObject".}: Handle
    selectMgrEntityOwner* {.importc: "SelectMgr_EntityOwner".}: Handle
    standardTransient* {.importc: "Standard_Transient".}: Handle
    prs3dDrawer* {.importc: "Prs3d_Drawer".}: Handle
    prs3dLineAspect* {.importc: "Prs3d_LineAspect".}: Handle
    aIS_Selection* {.importc: "AIS_Selection".}: Handle
    ## !< picking strategy to be applied within MoveTo()

  AIS_InteractiveContextbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "AIS_InteractiveContext::get_type_name(@)",
                            header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  & get_type_descriptor ( ) ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  & DynamicType ( ) const ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  public : ! @name object display management ! Constructs the interactive context object defined by the principal viewer MainViewer. AIS_InteractiveContext ( const Handle ( V3d_Viewer ) & MainViewer ) ;
## Error: token expected: ) but got: &!!!

proc destroyAIS_InteractiveContext*(this: var AIS_InteractiveContext) {.
    importcpp: "#.~AIS_InteractiveContext()", header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  ! Returns the display status of the entity anIobj.
## ! This will be one of the following:
## ! - AIS_DS_Displayed displayed in main viewer
## ! - AIS_DS_Erased    hidden in main viewer
## ! - AIS_DS_Temporary temporarily displayed
## ! - AIS_DS_None      nowhere displayed. AIS_DisplayStatus DisplayStatus ( const Handle ( AIS_InteractiveObject ) & anIobj ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Returns the status of the Interactive Context for the view of the Interactive Object. void Status ( const Handle ( AIS_InteractiveObject ) & anObj , TCollection_ExtendedString & astatus ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Returns true if Object is displayed in the interactive context. Standard_Boolean IsDisplayed ( const Handle ( AIS_InteractiveObject ) & anIobj ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  Standard_Boolean IsDisplayed ( const Handle ( AIS_InteractiveObject ) & aniobj , const Standard_Integer aMode ) const ;
## Error: token expected: ) but got: &!!!

proc setAutoActivateSelection*(this: var AIS_InteractiveContext; theIsAuto: bool) {.
    importcpp: "SetAutoActivateSelection", header: "AIS_InteractiveContext.hxx".}
proc getAutoActivateSelection*(this: AIS_InteractiveContext): bool {.noSideEffect,
    importcpp: "GetAutoActivateSelection", header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  ! Displays the object in this Context using default Display Mode.
## ! This will be the object's default display mode, if there is one. Otherwise, it will be the context mode.
## ! The Interactive Object's default selection mode is activated if GetAutoActivateSelection() is TRUE. In general, this is 0. void Display ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Sets status, display mode and selection mode for specified Object
## ! If theSelectionMode equals -1, theIObj will not be activated: it will be displayed but will not be selectable. void Display ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Integer theDispMode , const Standard_Integer theSelectionMode , const Standard_Boolean theToUpdateViewer , const AIS_DisplayStatus theDispStatus = AIS_DS_None ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Allows you to load the Interactive Object with a given selection mode,
## ! and/or with the desired decomposition option, whether the object is visualized or not.
## ! The loaded objects will be selectable but displayable in highlighting only when detected by the Selector. void Load ( const Handle ( AIS_InteractiveObject ) & theObj , const Standard_Integer theSelectionMode = - 1 ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  Standard_DEPRECATED ( Deprecated method Display() with obsolete argument theToAllowDecomposition ) void Display ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Integer theDispMode , const Standard_Integer theSelectionMode , const Standard_Boolean theToUpdateViewer , const Standard_Boolean theToAllowDecomposition , const AIS_DisplayStatus theDispStatus = AIS_DS_None ) { ( void ) theToAllowDecomposition ; Display ( theIObj , theDispMode , theSelectionMode , theToUpdateViewer , theDispStatus ) ; } Standard_DEPRECATED ( Deprecated method Load() with obsolete last argument theToAllowDecomposition ) void Load ( const Handle ( AIS_InteractiveObject ) & theObj , Standard_Integer theSelectionMode , Standard_Boolean ) { Load ( theObj , theSelectionMode ) ; } ! Hides the object. The object's presentations are simply flagged as invisible and therefore excluded from redrawing.
## ! To show hidden objects, use Display(). void Erase ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Boolean theToUpdateViewer ) ;
## Error: identifier expected, but got: Deprecated method Display() with obsolete argument theToAllowDecomposition!!!

proc eraseAll*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    importcpp: "EraseAll", header: "AIS_InteractiveContext.hxx".}
proc displayAll*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    importcpp: "DisplayAll", header: "AIS_InteractiveContext.hxx".}
proc eraseSelected*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    importcpp: "EraseSelected", header: "AIS_InteractiveContext.hxx".}
proc displaySelected*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    importcpp: "DisplaySelected", header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  ! Empties the graphic presentation of the mode indexed by aMode.
## ! Warning! Removes theIObj. theIObj is still active if it was previously activated. void ClearPrs ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Integer theMode , const Standard_Boolean theToUpdateViewer ) { ClearGlobalPrs ( theIObj , theMode , theToUpdateViewer ) ; } ! Removes Object from every viewer. void Remove ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

proc removeAll*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    importcpp: "RemoveAll", header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  ! Recomputes the seen parts presentation of the Object.
## ! If theAllModes equals true, all presentations are present in the object even if unseen. void Redisplay ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Boolean theToUpdateViewer , const Standard_Boolean theAllModes = Standard_False ) ;
## Error: token expected: ) but got: &!!!

proc redisplay*(this: var AIS_InteractiveContext;
               theTypeOfObject: AIS_KindOfInteractive; theSignature: int;
               theToUpdateViewer: bool) {.importcpp: "Redisplay",
                                        header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  ! Recomputes the displayed presentations, flags the others.
## ! Doesn't update presentations. void RecomputePrsOnly ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Boolean theToUpdateViewer , const Standard_Boolean theAllModes = Standard_False ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Recomputes the active selections, flags the others.
## ! Doesn't update presentations. void RecomputeSelectionOnly ( const Handle ( AIS_InteractiveObject ) & anIObj ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Updates displayed interactive object by checking and recomputing its flagged as "to be recomputed" presentation and selection structures.
## ! This method does not force any recomputation on its own.
## ! The method recomputes selections even if they are loaded without activation in particular selector. void Update ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Boolean theUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  & HighlightStyle ( const Prs3d_TypeOfHighlight theStyleType ) const { return myStyles [ theStyleType ] ; } ! Setup highlight style settings.
## ! It is preferred modifying existing style returned by method HighlightStyle()
## ! instead of creating a new drawer.
## !
## ! If a new highlight style is created, its presentation Zlayer should be checked,
## ! otherwise highlighting might not work as expected.
## ! Default values are:
## !  - Prs3d_TypeOfHighlight_Dynamic:      Graphic3d_ZLayerId_Top,
## !    object highlighting is drawn on top of main scene within Immediate Layers,
## !    so that V3d_View::RedrawImmediate() will be enough to see update;
## !  - Prs3d_TypeOfHighlight_LocalDynamic: Graphic3d_ZLayerId_Topmost,
## !    object parts highlighting is drawn on top of main scene within Immediate Layers
## !    with depth cleared (even overlapped geometry will be revealed);
## !  - Prs3d_TypeOfHighlight_Selected:     Graphic3d_ZLayerId_UNKNOWN,
## !    object highlighting is drawn on top of main scene within the same layer
## !    as object itself (e.g. Graphic3d_ZLayerId_Default by default) and increased priority. void SetHighlightStyle ( const Prs3d_TypeOfHighlight theStyleType , const Handle ( Prs3d_Drawer ) & theStyle ) { myStyles [ theStyleType ] = theStyle ; } ! Returns current dynamic highlight style settings.
## ! By default:
## !   - the color of dynamic highlight is Quantity_NOC_CYAN1;
## !   - the presentation for dynamic highlight is completely opaque;
## !   - the type of highlight is Aspect_TOHM_COLOR. const Handle ( Prs3d_Drawer ) & HighlightStyle ( ) const { return myStyles [ Prs3d_TypeOfHighlight_Dynamic ] ; } ! Setup the style of dynamic highlighting.
## ! It is preferred modifying existing style returned by method HighlightStyle()
## ! instead of creating a new drawer.
## !
## ! If a new highlight style is created, its presentation Zlayer should be checked,
## ! otherwise highlighting might not work as expected.
## ! Default value is Graphic3d_ZLayerId_Top,
## ! object highlighting is drawn on top of main scene within Immediate Layers,
## ! so that V3d_View::RedrawImmediate() will be enough to see update; void SetHighlightStyle ( const Handle ( Prs3d_Drawer ) & theStyle ) { myStyles [ Prs3d_TypeOfHighlight_Dynamic ] = theStyle ; } ! Returns current selection style settings.
## ! By default:
## !   - the color of selection is Quantity_NOC_GRAY80;
## !   - the presentation for selection is completely opaque;
## !   - the type of highlight is Aspect_TOHM_COLOR. const Handle ( Prs3d_Drawer ) & SelectionStyle ( ) const { return myStyles [ Prs3d_TypeOfHighlight_Selected ] ; } ! Setup the style of selection highlighting. void SetSelectionStyle ( const Handle ( Prs3d_Drawer ) & theStyle ) { myStyles [ Prs3d_TypeOfHighlight_Selected ] = theStyle ; } ! Returns highlight style of the object if it is marked as highlighted via global status
## ! @param theObj [in] the object to check Standard_Boolean HighlightStyle ( const Handle ( AIS_InteractiveObject ) & theObj , Handle ( Prs3d_Drawer ) & theStyle ) const ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  ! Returns highlight style of the owner if it is selected
## ! @param theOwner [in] the owner to check Standard_Boolean HighlightStyle ( const Handle ( SelectMgr_EntityOwner ) & theOwner , Handle ( Prs3d_Drawer ) & theStyle ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Returns true if the object is marked as highlighted via its global status
## ! @param theObj [in] the object to check Standard_Boolean IsHilighted ( const Handle ( AIS_InteractiveObject ) & theObj ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Returns true if the owner is marked as selected
## ! @param theOwner [in] the owner to check Standard_Boolean IsHilighted ( const Handle ( SelectMgr_EntityOwner ) & theOwner ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Updates the display in the viewer to take dynamic detection into account.
## ! On dynamic detection by the mouse cursor, sensitive primitives are highlighted.
## ! The highlight color of entities detected by mouse movement is white by default. Standard_DEPRECATED ( Deprecated method Hilight() ) void Hilight ( const Handle ( AIS_InteractiveObject ) & theObj , const Standard_Boolean theIsToUpdateViewer ) { return HilightWithColor ( theObj , myStyles [ Prs3d_TypeOfHighlight_Dynamic ] , theIsToUpdateViewer ) ; } ! Changes the color of all the lines of the object in view. void HilightWithColor ( const Handle ( AIS_InteractiveObject ) & theObj , const Handle ( Prs3d_Drawer ) & theStyle , const Standard_Boolean theToUpdateViewer ) ;
## Error: identifier expected, but got: Deprecated method Hilight()!!!

## !!!Ignored construct:  ! Removes hilighting from the Object. void Unhilight ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  public : ! @name object presence management (View affinity, Layer, Priority) ! Returns the display priority of the Object. Standard_Integer DisplayPriority ( const Handle ( AIS_InteractiveObject ) & theIObj ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Sets the display priority of the seen parts presentation of the Object. void SetDisplayPriority ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Integer thePriority ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Get Z layer id set for displayed interactive object. Graphic3d_ZLayerId GetZLayer ( const Handle ( AIS_InteractiveObject ) & theIObj ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Set Z layer id for interactive object.
## ! The Z layers can be used to display temporarily presentations of some object in front of the other objects in the scene.
## ! The ids for Z layers are generated by V3d_Viewer. void SetZLayer ( const Handle ( AIS_InteractiveObject ) & theIObj , const Graphic3d_ZLayerId theLayerId ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Setup object visibility in specified view.
## ! Has no effect if object is not displayed in this context. void SetViewAffinity ( const Handle ( AIS_InteractiveObject ) & theIObj , const Handle ( V3d_View ) & theView , const Standard_Boolean theIsVisible ) ;
## Error: token expected: ) but got: &!!!

proc displayMode*(this: AIS_InteractiveContext): int {.noSideEffect,
    importcpp: "DisplayMode", header: "AIS_InteractiveContext.hxx".}
proc setDisplayMode*(this: var AIS_InteractiveContext; theMode: int;
                    theToUpdateViewer: bool) {.importcpp: "SetDisplayMode",
    header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  ! Sets the display mode of seen Interactive Objects.
## ! theMode provides the display mode index of the entity theIObj. void SetDisplayMode ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Integer theMode , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Unsets the display mode of seen Interactive Objects. void UnsetDisplayMode ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  public : ! @name object local transformation management ! Puts the location on the initial graphic representation and the selection for the Object. void SetLocation ( const Handle ( AIS_InteractiveObject ) & theObject , const TopLoc_Location & theLocation ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Puts the Object back into its initial position. void ResetLocation ( const Handle ( AIS_InteractiveObject ) & theObject ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Returns true if the Object has a location. Standard_Boolean HasLocation ( const Handle ( AIS_InteractiveObject ) & theObject ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Returns the location of the Object. TopLoc_Location Location ( const Handle ( AIS_InteractiveObject ) & theObject ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Sets transform persistence. void SetTransformPersistence ( const Handle ( AIS_InteractiveObject ) & theObject , const Handle ( Graphic3d_TransformPers ) & theTrsfPers ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  Standard_DEPRECATED ( This method is deprecated - SetTransformPersistence() taking Graphic3d_TransformPers should be called instead ) void SetTransformPersistence ( const Handle ( AIS_InteractiveObject ) & theObj , const Graphic3d_TransModeFlags & theFlag , const gp_Pnt & thePoint = gp_Pnt ( 0.0 , 0.0 , 0.0 ) ) { SetTransformPersistence ( theObj , Graphic3d_TransformPers :: FromDeprecatedParams ( theFlag , thePoint ) ) ; } public : ! @name mouse picking logic (detection and dynamic highlighting of entities under cursor) ! Setup pixel tolerance for MoveTo() operation.
## ! @sa MoveTo(). void SetPixelTolerance ( const Standard_Integer thePrecision = 2 ) ;
## Error: identifier expected, but got: This method is deprecated - SetTransformPersistence() taking Graphic3d_TransformPers should be called instead!!!

proc pixelTolerance*(this: AIS_InteractiveContext): int {.noSideEffect,
    importcpp: "PixelTolerance", header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  ! Allows to manage sensitivity of a particular selection of interactive object theObject
## ! and changes previous sensitivity value of all sensitive entities in selection with theMode
## ! to the given theNewSensitivity. void SetSelectionSensitivity ( const Handle ( AIS_InteractiveObject ) & theObject , const Standard_Integer theMode , const Standard_Integer theNewSensitivity ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  LastActiveView ( ) const ;
## Error: identifier expected, but got: )!!!

## !!!Ignored construct:  ! Relays mouse position in pixels theXPix and theYPix to the interactive context selectors.
## ! This is done by the view theView passing this position to the main viewer and updating it.
## ! If theToRedrawOnUpdate is set to false, callee should call RedrawImmediate() to highlight detected object.
## ! @sa PickingStrategy() AIS_StatusOfDetection MoveTo ( const Standard_Integer theXPix , const Standard_Integer theYPix , const Handle ( V3d_View ) & theView , const Standard_Boolean theToRedrawOnUpdate ) ;
## Error: token expected: ) but got: &!!!

proc clearDetected*(this: var AIS_InteractiveContext;
                   theToRedrawImmediate: bool = false): bool {.
    importcpp: "ClearDetected", header: "AIS_InteractiveContext.hxx".}
proc hasDetected*(this: AIS_InteractiveContext): bool {.noSideEffect,
    importcpp: "HasDetected", header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  & DetectedOwner ( ) const { return myLastPicked ; } ! Returns the interactive objects last detected in context.
## ! In general this is just a wrapper for Handle(AIS_InteractiveObject)::DownCast(DetectedOwner()->Selectable()).
## ! @sa DetectedOwner() Handle ( AIS_InteractiveObject ) DetectedInteractive ( ) const { return Handle ( AIS_InteractiveObject ) :: DownCast ( myLastPicked -> Selectable ( ) ) ; } ! Returns true if there is a detected shape in local context.
## ! @sa HasDetected()/DetectedShape() Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) Standard_Boolean HasDetectedShape ( ) const ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  ! Returns the shape detected in local context.
## ! @sa DetectedOwner() Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) const TopoDS_Shape & DetectedShape ( ) const ;
## Error: identifier expected, but got: Local Context is deprecated - local selection should be used without Local Context!!!

proc hasNextDetected*(this: AIS_InteractiveContext): bool {.noSideEffect,
    importcpp: "HasNextDetected", header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  ! If more than 1 object is detected by the selector, only the "best" owner is hilighted at the mouse position.
## ! This Method allows the user to hilight one after another the other detected entities.
## ! If The method select is called, the selected entity will be the hilighted one!
## ! WARNING: Loop Method. When all the detected entities have been hilighted, the next call will hilight the first one again.
## ! @return the Rank of hilighted entity
## ! @sa HasNextDetected()/HilightPreviousDetected(). Standard_Integer HilightNextDetected ( const Handle ( V3d_View ) & theView , const Standard_Boolean theToRedrawImmediate = Standard_True ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Same as previous methods in reverse direction.
## ! @sa HasNextDetected()/HilightNextDetected(). Standard_Integer HilightPreviousDetected ( const Handle ( V3d_View ) & theView , const Standard_Boolean theToRedrawImmediate = Standard_True ) ;
## Error: token expected: ) but got: &!!!

proc initDetected*(this: var AIS_InteractiveContext) {.importcpp: "InitDetected",
    header: "AIS_InteractiveContext.hxx".}
proc moreDetected*(this: AIS_InteractiveContext): bool {.noSideEffect,
    importcpp: "MoreDetected", header: "AIS_InteractiveContext.hxx".}
proc nextDetected*(this: var AIS_InteractiveContext) {.importcpp: "NextDetected",
    header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  DetectedCurrentOwner ( ) const ;
## Error: identifier expected, but got: )!!!

## !!!Ignored construct:  public : ! @name Selection management ! Sets the graphic basic aspect to the current presentation of ALL selected objects. Standard_DEPRECATED ( Deprecated method - presentation attributes should be assigned directly to object ) void SetSelectedAspect ( const Handle ( Prs3d_BasicAspect ) & theAspect , const Standard_Boolean theToUpdateViewer ) ;
## Error: identifier expected, but got: Deprecated method - presentation attributes should be assigned directly to object!!!

## !!!Ignored construct:  ! Adds object in the selection. AIS_StatusOfPick AddSelect ( const Handle ( SelectMgr_EntityOwner ) & theObject ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Adds object in the selection. AIS_StatusOfPick AddSelect ( const Handle ( AIS_InteractiveObject ) & theObject ) { return AddSelect ( theObject -> GlobalSelOwner ( ) ) ; } ! Selects everything found in the bounding rectangle defined by the pixel minima and maxima, XPMin, YPMin, XPMax, and YPMax in the view.
## ! The objects detected are passed to the main viewer, which is then updated. AIS_StatusOfPick Select ( const Standard_Integer theXPMin , const Standard_Integer theYPMin , const Standard_Integer theXPMax , const Standard_Integer theYPMax , const Handle ( V3d_View ) & theView , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! polyline selection; clears the previous picked list AIS_StatusOfPick Select ( const TColgp_Array1OfPnt2d & thePolyline , const Handle ( V3d_View ) & theView , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

proc select*(this: var AIS_InteractiveContext; theToUpdateViewer: bool): AIS_StatusOfPick {.
    importcpp: "Select", header: "AIS_InteractiveContext.hxx".}
proc shiftSelect*(this: var AIS_InteractiveContext; theToUpdateViewer: bool): AIS_StatusOfPick {.
    importcpp: "ShiftSelect", header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  ! Adds the last detected to the list of previous picked.
## ! If the last detected was already declared as picked, removes it from the Picked List. AIS_StatusOfPick ShiftSelect ( const TColgp_Array1OfPnt2d & thePolyline , const Handle ( V3d_View ) & theView , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Rectangle of selection; adds new detected entities into the picked list,
## ! removes the detected entities that were already stored. AIS_StatusOfPick ShiftSelect ( const Standard_Integer theXPMin , const Standard_Integer theYPMin , const Standard_Integer theXPMax , const Standard_Integer theYPMax , const Handle ( V3d_View ) & theView , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

proc boundingBoxOfSelection*(this: AIS_InteractiveContext): BndBox {.noSideEffect,
    importcpp: "BoundingBoxOfSelection", header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  ! Fits the view correspondingly to the bounds of selected objects.
## ! Infinite objects are ignored if infinite state of AIS_InteractiveObject is set to true. void FitSelected ( const Handle ( V3d_View ) & theView , const Standard_Real theMargin , const Standard_Boolean theToUpdate ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Fits the view correspondingly to the bounds of selected objects.
## ! Infinite objects are ignored if infinite state of AIS_InteractiveObject is set to true. void FitSelected ( const Handle ( V3d_View ) & theView ) ;
## Error: token expected: ) but got: &!!!

proc toHilightSelected*(this: AIS_InteractiveContext): bool {.noSideEffect,
    importcpp: "ToHilightSelected", header: "AIS_InteractiveContext.hxx".}
proc setToHilightSelected*(this: var AIS_InteractiveContext; toHilight: bool) {.
    importcpp: "SetToHilightSelected", header: "AIS_InteractiveContext.hxx".}
proc automaticHilight*(this: AIS_InteractiveContext): bool {.noSideEffect,
    importcpp: "AutomaticHilight", header: "AIS_InteractiveContext.hxx".}
proc setAutomaticHilight*(this: var AIS_InteractiveContext; theStatus: bool) {.
    importcpp: "SetAutomaticHilight", header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  ! Unhighlights previously selected owners and marks them as not selected.
## ! Marks owner given as selected and highlights it.
## ! Performs selection filters check. void SetSelected ( const Handle ( SelectMgr_EntityOwner ) & theOwners , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Puts the interactive object aniObj in the list of selected objects.
## ! Performs selection filters check. void SetSelected ( const Handle ( AIS_InteractiveObject ) & theObject , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Allows to highlight or unhighlight the owner given depending on its selection status void AddOrRemoveSelected ( const Handle ( AIS_InteractiveObject ) & theObject , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Updates Selected state of specified owner without calling HilightSelected().
## ! Has no effect if Selected state is not changed, and redirects to AddOrRemoveSelected() otherwise.
## ! @param theOwner owner object to set selected state
## ! @param theIsSelected new selected state
## ! @return TRUE if Selected state has been changed Standard_Boolean SetSelectedState ( const Handle ( SelectMgr_EntityOwner ) & theOwner , const Standard_Boolean theIsSelected ) ;
## Error: token expected: ) but got: &!!!

proc hilightSelected*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    importcpp: "HilightSelected", header: "AIS_InteractiveContext.hxx".}
proc unhilightSelected*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    importcpp: "UnhilightSelected", header: "AIS_InteractiveContext.hxx".}
proc updateSelected*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    importcpp: "UpdateSelected", header: "AIS_InteractiveContext.hxx".}
proc clearSelected*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    importcpp: "ClearSelected", header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  ! Allows to highlight or unhighlight the owner given depending on its selection status void AddOrRemoveSelected ( const Handle ( SelectMgr_EntityOwner ) & theOwner , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Returns true is the owner given is selected Standard_Boolean IsSelected ( const Handle ( SelectMgr_EntityOwner ) & theOwner ) const { return ! theOwner . IsNull ( ) && theOwner -> IsSelected ( ) ; } ! Returns true is the object given is selected Standard_Boolean IsSelected ( const Handle ( AIS_InteractiveObject ) & theObj ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  FirstSelectedObject ( ) const ;
## Error: identifier expected, but got: )!!!

proc nbSelected*(this: var AIS_InteractiveContext): int {.importcpp: "NbSelected",
    header: "AIS_InteractiveContext.hxx".}
proc initSelected*(this: var AIS_InteractiveContext) {.importcpp: "InitSelected",
    header: "AIS_InteractiveContext.hxx".}
proc moreSelected*(this: AIS_InteractiveContext): bool {.noSideEffect,
    importcpp: "MoreSelected", header: "AIS_InteractiveContext.hxx".}
proc nextSelected*(this: var AIS_InteractiveContext) {.importcpp: "NextSelected",
    header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  SelectedOwner ( ) const { return ! mySelection -> More ( ) ? Handle ( SelectMgr_EntityOwner ) ( ) : mySelection -> Value ( ) ; } ! Return Handle(AIS_InteractiveObject)::DownCast (SelectedOwner()->Selectable()).
## ! @sa SelectedOwner(). Handle ( AIS_InteractiveObject ) SelectedInteractive ( ) const { return ! mySelection -> More ( ) ? Handle ( AIS_InteractiveObject ) ( ) : Handle ( AIS_InteractiveObject ) :: DownCast ( mySelection -> Value ( ) -> Selectable ( ) ) ; } ! Returns TRUE if the interactive context has a shape selected.
## ! @sa SelectedShape(). Standard_Boolean HasSelectedShape ( ) const ;
## Error: identifier expected, but got: )!!!

proc selectedShape*(this: AIS_InteractiveContext): TopoDS_Shape {.noSideEffect,
    importcpp: "SelectedShape", header: "AIS_InteractiveContext.hxx".}
proc hasApplicative*(this: AIS_InteractiveContext): bool {.noSideEffect,
    importcpp: "HasApplicative", header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  Applicative ( ) const { return SelectedInteractive ( ) -> GetOwner ( ) ; } public : ! @name immediate mode rendering ! initializes the list of presentations to be displayed
## ! returns False if no local context is opened. Standard_Boolean BeginImmediateDraw ( ) ;
## Error: identifier expected, but got: )!!!

## !!!Ignored construct:  ! returns True if <anIObj> has been stored in the list. Standard_Boolean ImmediateAdd ( const Handle ( AIS_InteractiveObject ) & theObj , const Standard_Integer theMode = 0 ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! returns True if the immediate display has been done. Standard_Boolean EndImmediateDraw ( const Handle ( V3d_View ) & theView ) ;
## Error: token expected: ) but got: &!!!

proc endImmediateDraw*(this: var AIS_InteractiveContext): bool {.
    importcpp: "EndImmediateDraw", header: "AIS_InteractiveContext.hxx".}
proc isImmediateModeOn*(this: AIS_InteractiveContext): bool {.noSideEffect,
    importcpp: "IsImmediateModeOn", header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  ! Redraws immediate structures in all views of the viewer given taking into account its visibility. void RedrawImmediate ( const Handle ( V3d_Viewer ) & theViewer ) { myMainPM -> RedrawImmediate ( theViewer ) ; } public : ! @name management of active Selection Modes ! Activates or deactivates the selection mode for specified object.
## ! Has no effect if selection mode was already active/deactivated.
## ! @param theObj         object to activate/deactivate selection mode
## ! @param theMode        selection mode to activate/deactivate;
## !                       deactivation of -1 selection mode will effectively deactivate all selection modes;
## !                       activation of -1 selection mode with AIS_SelectionModesConcurrency_Single
## !                       will deactivate all selection modes, and will has no effect otherwise
## ! @param theToActivate  activation/deactivation flag
## ! @param theConcurrency specifies how to handle already activated selection modes;
## !                       default value (AIS_SelectionModesConcurrency_Multiple) means active selection modes should be left as is,
## !                       AIS_SelectionModesConcurrency_Single can be used if only one selection mode is expected to be active
## !                       and AIS_SelectionModesConcurrency_GlobalOrLocal can be used if either AIS_InteractiveObject::GlobalSelectionMode()
## !                       or any combination of Local selection modes is acceptable;
## !                       this value is considered only if theToActivate set to TRUE
## ! @param theIsForce     when set to TRUE, the display status will be ignored while activating selection mode void SetSelectionModeActive ( const Handle ( AIS_InteractiveObject ) & theObj , const Standard_Integer theMode , const Standard_Boolean theToActivate , const AIS_SelectionModesConcurrency theConcurrency = AIS_SelectionModesConcurrency_Multiple , const Standard_Boolean theIsForce = Standard_False ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Activates the selection mode aMode whose index is given, for the given interactive entity anIobj. void Activate ( const Handle ( AIS_InteractiveObject ) & theObj , const Standard_Integer theMode = 0 , const Standard_Boolean theIsForce = Standard_False ) { SetSelectionModeActive ( theObj , theMode , Standard_True , AIS_SelectionModesConcurrency_GlobalOrLocal , theIsForce ) ; } ! Activates the given selection mode for the all displayed objects. void Activate ( const Standard_Integer theMode , const Standard_Boolean theIsForce = Standard_False ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Deactivates all the activated selection modes of an object. void Deactivate ( const Handle ( AIS_InteractiveObject ) & theObj ) { SetSelectionModeActive ( theObj , - 1 , Standard_False , AIS_SelectionModesConcurrency_Single ) ; } ! Deactivates all the activated selection modes of the interactive object anIobj with a given selection mode aMode. void Deactivate ( const Handle ( AIS_InteractiveObject ) & theObj , const Standard_Integer theMode ) { SetSelectionModeActive ( theObj , theMode , Standard_False ) ; } ! Deactivates the given selection mode for all displayed objects. void Deactivate ( const Standard_Integer theMode ) ;
## Error: token expected: ) but got: &!!!

proc deactivate*(this: var AIS_InteractiveContext) {.importcpp: "Deactivate",
    header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  ! Returns the list of activated selection modes. void ActivatedModes ( const Handle ( AIS_InteractiveObject ) & anIobj , TColStd_ListOfInteger & theList ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Returns a collection containing all entity owners created for the interactive object in specified selection mode (in all active modes if the Mode == -1) void EntityOwners ( Handle ( SelectMgr_IndexedMapOfOwner ) & theOwners , const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Integer theMode = - 1 ) const ;
## Error: token expected: ) but got: &!!!

proc filterType*(this: AIS_InteractiveContext): SelectMgrFilterType {.noSideEffect,
    importcpp: "FilterType", header: "AIS_InteractiveContext.hxx".}
proc setFilterType*(this: var AIS_InteractiveContext;
                   theFilterType: SelectMgrFilterType) {.
    importcpp: "SetFilterType", header: "AIS_InteractiveContext.hxx".}
proc filters*(this: AIS_InteractiveContext): SelectMgrListOfFilter {.noSideEffect,
    importcpp: "Filters", header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  ! Allows you to add the filter. void AddFilter ( const Handle ( SelectMgr_Filter ) & theFilter ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Removes a filter from context. void RemoveFilter ( const Handle ( SelectMgr_Filter ) & theFilter ) ;
## Error: token expected: ) but got: &!!!

proc removeFilters*(this: var AIS_InteractiveContext) {.importcpp: "RemoveFilters",
    header: "AIS_InteractiveContext.hxx".}
proc pickingStrategy*(this: AIS_InteractiveContext): SelectMgrPickingStrategy {.
    noSideEffect, importcpp: "PickingStrategy",
    header: "AIS_InteractiveContext.hxx".}
proc setPickingStrategy*(this: var AIS_InteractiveContext;
                        theStrategy: SelectMgrPickingStrategy) {.
    importcpp: "SetPickingStrategy", header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  & DefaultDrawer ( ) const { return myDefaultDrawer ; } ! Returns the current viewer. const Handle ( V3d_Viewer ) & CurrentViewer ( ) const { return myMainVwr ; } const Handle ( SelectMgr_SelectionManager ) & SelectionManager ( ) const { return mgrSelector ; } const Handle ( PrsMgr_PresentationManager3d ) & MainPrsMgr ( ) const { return myMainPM ; } const Handle ( StdSelect_ViewerSelector3d ) & MainSelector ( ) const { return myMainSel ; } ! Updates the current viewer. void UpdateCurrentViewer ( ) ;
## Error: identifier expected, but got: &!!!

proc displayedObjects*(this: AIS_InteractiveContext;
                      aListOfIO: var AIS_ListOfInteractive) {.noSideEffect,
    importcpp: "DisplayedObjects", header: "AIS_InteractiveContext.hxx".}
proc displayedObjects*(this: AIS_InteractiveContext;
                      theWhichKind: AIS_KindOfInteractive; theWhichSignature: int;
                      theListOfIO: var AIS_ListOfInteractive) {.noSideEffect,
    importcpp: "DisplayedObjects", header: "AIS_InteractiveContext.hxx".}
proc erasedObjects*(this: AIS_InteractiveContext;
                   theListOfIO: var AIS_ListOfInteractive) {.noSideEffect,
    importcpp: "ErasedObjects", header: "AIS_InteractiveContext.hxx".}
proc erasedObjects*(this: AIS_InteractiveContext;
                   theWhichKind: AIS_KindOfInteractive; theWhichSignature: int;
                   theListOfIO: var AIS_ListOfInteractive) {.noSideEffect,
    importcpp: "ErasedObjects", header: "AIS_InteractiveContext.hxx".}
proc objectsByDisplayStatus*(this: AIS_InteractiveContext;
                            theStatus: AIS_DisplayStatus;
                            theListOfIO: var AIS_ListOfInteractive) {.noSideEffect,
    importcpp: "ObjectsByDisplayStatus", header: "AIS_InteractiveContext.hxx".}
proc objectsByDisplayStatus*(this: AIS_InteractiveContext;
                            whichKind: AIS_KindOfInteractive; whichSignature: int;
                            theStatus: AIS_DisplayStatus;
                            theListOfIO: var AIS_ListOfInteractive) {.noSideEffect,
    importcpp: "ObjectsByDisplayStatus", header: "AIS_InteractiveContext.hxx".}
proc objectsInside*(this: AIS_InteractiveContext;
                   aListOfIO: var AIS_ListOfInteractive;
                   whichKind: AIS_KindOfInteractive = aIS_KOI_None;
                   whichSignature: int = -1) {.noSideEffect,
    importcpp: "ObjectsInside", header: "AIS_InteractiveContext.hxx".}
proc rebuildSelectionStructs*(this: var AIS_InteractiveContext) {.
    importcpp: "RebuildSelectionStructs", header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  ! Disconnects theObjToDisconnect from theAssembly and removes dependent selection structures void Disconnect ( const Handle ( AIS_InteractiveObject ) & theAssembly , const Handle ( AIS_InteractiveObject ) & theObjToDisconnect = NULL ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Query objects visible or hidden in specified view due to affinity mask. void ObjectsForView ( AIS_ListOfInteractive & theListOfIO , const Handle ( V3d_View ) & theView , const Standard_Boolean theIsVisibleInView , const AIS_DisplayStatus theStatus = AIS_DS_None ) const ;
## Error: token expected: ) but got: &!!!

proc purgeDisplay*(this: var AIS_InteractiveContext): int {.
    importcpp: "PurgeDisplay", header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  ! Return rotation gravity point. virtual gp_Pnt GravityPoint ( const Handle ( V3d_View ) & theView ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  public : ! @name debug visualization ! Visualization of sensitives - for debugging purposes! void DisplayActiveSensitive ( const Handle ( V3d_View ) & aView ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Clear visualization of sensitives. void ClearActiveSensitive ( const Handle ( V3d_View ) & aView ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Visualization of sensitives - for debugging purposes! void DisplayActiveSensitive ( const Handle ( AIS_InteractiveObject ) & anObject , const Handle ( V3d_View ) & aView ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  public : ! @name common object display attributes ! Sets the graphic attributes of the interactive object, such as visualization mode, color, and material. void SetLocalAttributes ( const Handle ( AIS_InteractiveObject ) & theIObj , const Handle ( Prs3d_Drawer ) & theDrawer , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Removes the settings for local attributes of the Object and returns to defaults. void UnsetLocalAttributes ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! change the current facing model apply on polygons for SetColor(), SetTransparency(), SetMaterial() methods default facing model is Aspect_TOFM_TWO_SIDE.
## ! This mean that attributes is applying both on the front and back face. void SetCurrentFacingModel ( const Handle ( AIS_InteractiveObject ) & aniobj , const Aspect_TypeOfFacingModel aModel = Aspect_TOFM_BOTH_SIDE ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Returns true if a view of the Interactive Object has color. Standard_Boolean HasColor ( const Handle ( AIS_InteractiveObject ) & aniobj ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Returns the color of the Object in the interactive context. void Color ( const Handle ( AIS_InteractiveObject ) & aniobj , Quantity_Color & acolor ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Sets the color of the selected entity. void SetColor ( const Handle ( AIS_InteractiveObject ) & theIObj , const Quantity_Color & theColor , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Removes the color selection for the selected entity. void UnsetColor ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Returns the width of the Interactive Object in the interactive context. virtual Standard_Real Width ( const Handle ( AIS_InteractiveObject ) & aniobj ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Sets the width of the Object. virtual void SetWidth ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Real theValue , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Removes the width setting of the Object. virtual void UnsetWidth ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Provides the type of material setting for the view of the Object. void SetMaterial ( const Handle ( AIS_InteractiveObject ) & theIObj , const Graphic3d_MaterialAspect & theMaterial , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Removes the type of material setting for viewing the Object. void UnsetMaterial ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Provides the transparency settings for viewing the Object.
## ! The transparency value aValue may be between 0.0, opaque, and 1.0, fully transparent. void SetTransparency ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Real theValue , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Removes the transparency settings for viewing the Object. void UnsetTransparency ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Sets up polygon offsets for the given AIS_InteractiveObject.
## ! It simply calls AIS_InteractiveObject::SetPolygonOffsets(). void SetPolygonOffsets ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Integer theMode , const Standard_ShortReal theFactor , const Standard_ShortReal theUnits , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Simply calls AIS_InteractiveObject::HasPolygonOffsets(). Standard_Boolean HasPolygonOffsets ( const Handle ( AIS_InteractiveObject ) & anObj ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Retrieves current polygon offsets settings for Object. void PolygonOffsets ( const Handle ( AIS_InteractiveObject ) & anObj , Standard_Integer & aMode , Standard_ShortReal & aFactor , Standard_ShortReal & aUnits ) const ;
## Error: token expected: ) but got: &!!!

proc setTrihedronSize*(this: var AIS_InteractiveContext; theSize: float;
                      theToUpdateViewer: bool) {.importcpp: "SetTrihedronSize",
    header: "AIS_InteractiveContext.hxx".}
proc trihedronSize*(this: AIS_InteractiveContext): float {.noSideEffect,
    importcpp: "TrihedronSize", header: "AIS_InteractiveContext.hxx".}
proc setPlaneSize*(this: var AIS_InteractiveContext; theSizeX: float; theSizeY: float;
                  theToUpdateViewer: bool) {.importcpp: "SetPlaneSize",
    header: "AIS_InteractiveContext.hxx".}
proc setPlaneSize*(this: var AIS_InteractiveContext; theSize: float;
                  theToUpdateViewer: bool) {.importcpp: "SetPlaneSize",
    header: "AIS_InteractiveContext.hxx".}
proc planeSize*(this: AIS_InteractiveContext; xSize: var float; ySize: var float): bool {.
    noSideEffect, importcpp: "PlaneSize", header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  public : ! @name tessellation deviation properties for automatic triangulation ! Sets the deviation coefficient theCoefficient.
## ! Drawings of curves or patches are made with respect to a maximal chordal deviation.
## ! A Deviation coefficient is used in the shading display mode.
## ! The shape is seen decomposed into triangles.
## ! These are used to calculate reflection of light from the surface of the object.
## ! The triangles are formed from chords of the curves in the shape.
## ! The deviation coefficient theCoefficient gives the highest value of the angle with which a chord can deviate from a tangent to a curve.
## ! If this limit is reached, a new triangle is begun.
## ! This deviation is absolute and is set through the method: SetMaximalChordialDeviation.
## ! The default value is 0.001.
## ! In drawing shapes, however, you are allowed to ask for a relative deviation.
## ! This deviation will be: SizeOfObject * DeviationCoefficient. void SetDeviationCoefficient ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Real theCoefficient , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  void SetDeviationAngle ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Real theAngle , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Calls the AIS_Shape SetAngleAndDeviation to set both Angle and Deviation coefficients void SetAngleAndDeviation ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Real theAngle , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

proc setDeviationCoefficient*(this: var AIS_InteractiveContext;
                             theCoefficient: float) {.
    importcpp: "SetDeviationCoefficient", header: "AIS_InteractiveContext.hxx".}
proc deviationCoefficient*(this: AIS_InteractiveContext): float {.noSideEffect,
    importcpp: "DeviationCoefficient", header: "AIS_InteractiveContext.hxx".}
proc setDeviationAngle*(this: var AIS_InteractiveContext; anAngle: float) {.
    importcpp: "SetDeviationAngle", header: "AIS_InteractiveContext.hxx".}
proc deviationAngle*(this: AIS_InteractiveContext): float {.noSideEffect,
    importcpp: "DeviationAngle", header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  HiddenLineAspect ( ) const ;
## Error: identifier expected, but got: )!!!

## !!!Ignored construct:  ! Sets the hidden line aspect anAspect.
## ! Aspect defines display attributes for hidden lines in HLR projections. void SetHiddenLineAspect ( const Handle ( Prs3d_LineAspect ) & anAspect ) const ;
## Error: token expected: ) but got: &!!!

proc drawHiddenLine*(this: AIS_InteractiveContext): bool {.noSideEffect,
    importcpp: "DrawHiddenLine", header: "AIS_InteractiveContext.hxx".}
proc enableDrawHiddenLine*(this: AIS_InteractiveContext) {.noSideEffect,
    importcpp: "EnableDrawHiddenLine", header: "AIS_InteractiveContext.hxx".}
proc disableDrawHiddenLine*(this: AIS_InteractiveContext) {.noSideEffect,
    importcpp: "DisableDrawHiddenLine", header: "AIS_InteractiveContext.hxx".}
proc setIsoNumber*(this: var AIS_InteractiveContext; nbIsos: int;
                  whichIsos: AIS_TypeOfIso = aIS_TOI_Both) {.
    importcpp: "SetIsoNumber", header: "AIS_InteractiveContext.hxx".}
proc isoNumber*(this: var AIS_InteractiveContext;
               whichIsos: AIS_TypeOfIso = aIS_TOI_Both): int {.
    importcpp: "IsoNumber", header: "AIS_InteractiveContext.hxx".}
proc isoOnPlane*(this: var AIS_InteractiveContext; switchOn: bool) {.
    importcpp: "IsoOnPlane", header: "AIS_InteractiveContext.hxx".}
proc isoOnPlane*(this: AIS_InteractiveContext): bool {.noSideEffect,
    importcpp: "IsoOnPlane", header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  ! Enables or disables on-triangulation build for isolines for a particular object.
## ! In case if on-triangulation builder is disabled, default on-plane builder will compute isolines for the object given. void IsoOnTriangulation ( const Standard_Boolean theIsEnabled , const Handle ( AIS_InteractiveObject ) & theObject ) ;
## Error: token expected: ) but got: &!!!

proc isoOnTriangulation*(this: var AIS_InteractiveContext; theToSwitchOn: bool) {.
    importcpp: "IsoOnTriangulation", header: "AIS_InteractiveContext.hxx".}
proc isoOnTriangulation*(this: AIS_InteractiveContext): bool {.noSideEffect,
    importcpp: "IsoOnTriangulation", header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  ! @name obsolete methods public : ! Updates the view of the current object in open context.
## ! Objects selected when there is no open local context are called current objects; those selected in open local context, selected objects. Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) void SetCurrentObject ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Boolean theToUpdateViewer ) { SetSelected ( theIObj , theToUpdateViewer ) ; } ! Allows to add or remove the object given to the list of current and highlight/unhighlight it correspondingly.
## ! Is valid for global context only; for local context use method AddOrRemoveSelected.
## ! Since this method makes sence only for neutral point selection of a whole object,
## ! if 0 selection of the object is empty this method simply does nothing. Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) void AddOrRemoveCurrentObject ( const Handle ( AIS_InteractiveObject ) & theObj , const Standard_Boolean theIsToUpdateViewer ) { AddOrRemoveSelected ( theObj , theIsToUpdateViewer ) ; } ! Updates the list of current objects, i.e. hilights new current objects, removes hilighting from former current objects.
## ! Objects selected when there is no open local context are called current objects; those selected in open local context, selected objects. Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) void UpdateCurrent ( ) { UpdateSelected ( Standard_True ) ; } ! Returns true if there is a non-null interactive object in Neutral Point.
## ! Objects selected when there is no open local context are called current objects;
## ! those selected in open local context, selected objects. Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) Standard_Boolean IsCurrent ( const Handle ( AIS_InteractiveObject ) & theObject ) const { return IsSelected ( theObject ) ; } ! Initializes a scan of the current selected objects in Neutral Point.
## ! Objects selected when there is no open local context are called current objects; those selected in open local context, selected objects. Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) void InitCurrent ( ) { InitSelected ( ) ; } ! Returns true if there is another object found by the scan of the list of current objects.
## ! Objects selected when there is no open local context are called current objects; those selected in open local context, selected objects. Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) Standard_Boolean MoreCurrent ( ) const { return MoreSelected ( ) ; } ! Continues the scan to the next object in the list of current objects.
## ! Objects selected when there is no open local context are called current objects; those selected in open local context, selected objects. Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) void NextCurrent ( ) { NextSelected ( ) ; } ! Returns the current interactive object.
## ! Objects selected when there is no open local context are called current objects; those selected in open local context, selected objects. Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) Handle ( AIS_InteractiveObject ) Current ( ) const { return SelectedInteractive ( ) ; } Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) Standard_Integer NbCurrents ( ) { return NbSelected ( ) ; } ! Highlights current objects.
## ! Objects selected when there is no open local context are called current objects; those selected in open local context, selected objects. Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) void HilightCurrents ( const Standard_Boolean theToUpdateViewer ) { HilightSelected ( theToUpdateViewer ) ; } ! Removes highlighting from current objects.
## ! Objects selected when there is no open local context are called current objects; those selected in open local context, selected objects. Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) void UnhilightCurrents ( const Standard_Boolean theToUpdateViewer ) { UnhilightSelected ( theToUpdateViewer ) ; } ! Empties previous current objects in order to get the current objects detected by the selector using UpdateCurrent.
## ! Objects selected when there is no open local context are called current objects; those selected in open local context, selected objects. Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) void ClearCurrents ( const Standard_Boolean theToUpdateViewer ) { ClearSelected ( theToUpdateViewer ) ; } ! @return current mouse-detected shape or empty (null) shape, if current interactive object
## ! is not a shape (AIS_Shape) or there is no current mouse-detected interactive object at all.
## ! @sa DetectedCurrentOwner()/InitDetected()/MoreDetected()/NextDetected(). Standard_DEPRECATED ( Local Context is deprecated - ::DetectedCurrentOwner() should be called instead ) const TopoDS_Shape & DetectedCurrentShape ( ) const ;
## Error: identifier expected, but got: Local Context is deprecated - local selection should be used without Local Context!!!

## !!!Ignored construct:  ! @return current mouse-detected interactive object or null object, if there is no currently detected interactives
## ! @sa DetectedCurrentOwner()/InitDetected()/MoreDetected()/NextDetected(). Standard_DEPRECATED ( Local Context is deprecated - ::DetectedCurrentOwner() should be called instead ) Handle ( AIS_InteractiveObject ) DetectedCurrentObject ( ) const ;
## Error: identifier expected, but got: Local Context is deprecated - ::DetectedCurrentOwner() should be called instead!!!

proc subIntensityColor*(this: AIS_InteractiveContext): QuantityColor {.noSideEffect,
    importcpp: "SubIntensityColor", header: "AIS_InteractiveContext.hxx".}
proc setSubIntensityColor*(this: var AIS_InteractiveContext; theColor: QuantityColor) {.
    importcpp: "SetSubIntensityColor", header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  ! Highlights, and removes highlights from, the displayed object which is displayed at Neutral Point with subintensity color.
## ! Available only for active local context.
## ! There is no effect if there is no local context.
## ! If a local context is open, the presentation of the Interactive Object activates the selection mode. void SubIntensityOn ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Removes the subintensity option for the entity.
## ! If a local context is open, the presentation of the Interactive Object activates the selection mode. void SubIntensityOff ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  & Selection ( ) const { return mySelection ; } ! Sets selection instance to manipulate a container of selected owners
## ! @param theSelection an instance of the selection void SetSelection ( const Handle ( AIS_Selection ) & theSelection ) { mySelection = theSelection ; } ! Dumps the content of me into the stream virtual void DumpJson ( Standard_OStream & theOStream , Standard_Integer theDepth = - 1 ) const ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  protected : ! @name internal methods void GetDefModes ( const Handle ( AIS_InteractiveObject ) & anIobj , Standard_Integer & Dmode , Standard_Integer & HiMod , Standard_Integer & SelMode ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  void EraseGlobal ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  void ClearGlobal ( const Handle ( AIS_InteractiveObject ) & theIObj , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  void ClearGlobalPrs ( const Handle ( AIS_InteractiveObject ) & theObj , const Standard_Integer theMode , const Standard_Boolean theToUpdateViewer ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  Standard_Integer PurgeViewer ( const Handle ( V3d_Viewer ) & Vwr ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Helper function to unhighlight all entity owners currently highlighted with seleciton color. void unselectOwners ( const Handle ( AIS_InteractiveObject ) & theObject ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Helper function that highlights the owner given with <theStyle> without
## ! performing AutoHighlight checks, e.g. is used for dynamic highlight. void highlightWithColor ( const Handle ( SelectMgr_EntityOwner ) & theOwner , const Handle ( V3d_Viewer ) & theViewer = NULL ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Helper function that highlights the owner given with <theStyle> with check
## ! for AutoHighlight, e.g. is used for selection. void highlightSelected ( const Handle ( SelectMgr_EntityOwner ) & theOwner ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Helper function that highlights global owner of the object given with <theStyle> with check
## ! for AutoHighlight, e.g. is used for selection.
## ! If global owner is null, it simply highlights the whole object void highlightGlobal ( const Handle ( AIS_InteractiveObject ) & theObj , const Handle ( Prs3d_Drawer ) & theStyle , const Standard_Integer theDispMode ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Helper function that unhighlights global selection owner of given interactive.
## ! The function does not perform any updates of global or owner status void unhighlightGlobal ( const Handle ( AIS_InteractiveObject ) & theObj ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Helper function that turns on sub-intensity in global status and highlights
## ! given objects with sub-intensity color
## ! @param theObject [in] the object. If NULL is given, than sub-intensity will be turned on for
## ! all inveractive objects of the context
## ! @param theDispMode [in] display mode. If -1 is given, sub-intensity will be turned on for
## ! all display modes in global status's list of modes
## ! @param theIsDisplayedOnly [in] is true if sub-intensity should be applied only to objects with
## ! status AIS_DS_Displayed void turnOnSubintensity ( const Handle ( AIS_InteractiveObject ) & theObject = NULL , const Standard_Integer theDispMode = - 1 , const Standard_Boolean theIsDisplayedOnly = Standard_True ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Helper function that highlights the object with sub-intensity color without any checks
## ! @param theObject [in] the object that will be highlighted
## ! @param theMode [in] display mode void highlightWithSubintensity ( const Handle ( AIS_InteractiveObject ) & theObject , const Standard_Integer theMode ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Helper function that highlights the owner with sub-intensity color without any checks
## ! @param theOwner [in] the owner that will be highlighted
## ! @param theMode [in] display mode void highlightWithSubintensity ( const Handle ( SelectMgr_EntityOwner ) & theOwner , const Standard_Integer theMode ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  & getHiStyle ( const Handle ( AIS_InteractiveObject ) & theObj , const Handle ( SelectMgr_EntityOwner ) & theOwner ) const { const Handle ( Prs3d_Drawer ) & aHiDrawer = theObj -> DynamicHilightAttributes ( ) ; if ( ! aHiDrawer . IsNull ( ) ) { return aHiDrawer ; } return myStyles [ ! theOwner . IsNull ( ) && theOwner -> ComesFromDecomposition ( ) ? Prs3d_TypeOfHighlight_LocalDynamic : Prs3d_TypeOfHighlight_Dynamic ] ; } ! Return TRUE if highlight style of owner requires full viewer redraw. Standard_Boolean isSlowHiStyle ( const Handle ( SelectMgr_EntityOwner ) & theOwner , const Handle ( V3d_Viewer ) & theViewer ) const ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  & getSelStyle ( const Handle ( AIS_InteractiveObject ) & theObj , const Handle ( SelectMgr_EntityOwner ) & theOwner ) const { const Handle ( Prs3d_Drawer ) & aHiDrawer = theObj -> HilightAttributes ( ) ; if ( ! aHiDrawer . IsNull ( ) ) { return aHiDrawer ; } return myStyles [ ! theOwner . IsNull ( ) && theOwner -> ComesFromDecomposition ( ) ? Prs3d_TypeOfHighlight_LocalSelected : Prs3d_TypeOfHighlight_Selected ] ; } ! Assign the context to the object or throw exception if object was already assigned to another context. void setContextToObject ( const Handle ( AIS_InteractiveObject ) & theObj ) { if ( theObj -> HasInteractiveContext ( ) ) { if ( theObj -> myCTXPtr != this ) { throw Standard_ProgramError ( AIS_InteractiveContext - object has been already displayed in another context! ) ; } } else { theObj -> SetContext ( this ) ; } } ! Return display mode for highlighting. Standard_Integer getHilightMode ( const Handle ( AIS_InteractiveObject ) & theObj , const Handle ( Prs3d_Drawer ) & theStyle , const Standard_Integer theDispMode ) const { if ( ! theStyle . IsNull ( ) && theStyle -> DisplayMode ( ) != - 1 && theObj -> AcceptDisplayMode ( theStyle -> DisplayMode ( ) ) ) { return theStyle -> DisplayMode ( ) ; } else if ( theDispMode != - 1 ) { return theDispMode ; } else if ( theObj -> HasDisplayMode ( ) ) { return theObj -> DisplayMode ( ) ; } return myDefaultDrawer -> DisplayMode ( ) ; } ! Removes dynamic highlight draw void clearDynamicHighlight ( ) const { if ( myLastPicked . IsNull ( ) ) return ; myLastPicked -> Selectable ( ) -> ClearDynamicHighlight ( myMainPM ) ; } ! Bind/Unbind status to object and its children
## ! @param theObj [in] the object to change status
## ! @param theStatus status, if NULL, unbind object void setObjectStatus ( const Handle ( AIS_InteractiveObject ) & theIObj , const AIS_DisplayStatus theStatus , const Standard_Integer theDispyMode , const Standard_Integer theSelectionMode ) ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  mgrSelector ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myMainPM ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myMainVwr ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myMainSel ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myLastPicked ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  mySelection ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myFilters ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myDefaultDrawer ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myStyles [ Prs3d_TypeOfHighlight_NB ] ;
## Error: identifier expected, but got: [!!!

## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( AIS_InteractiveContext , Standard_Transient ) #  _AIS_InteractiveContext_HeaderFile
## Error: expected ';'!!!














































