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

import
  AIS_DataMapOfIOStatus, AIS_DisplayMode, AIS_DisplayStatus, AIS_ClearMode,
  AIS_KindOfInteractive, AIS_ListOfInteractive, AIS_Selection,
  AIS_SelectionModesConcurrency, AIS_StatusOfDetection, AIS_StatusOfPick,
  AIS_TypeOfIso, ../Aspect/Aspect_TypeOfFacingModel, ../Prs3d/Prs3d_Drawer,
  ../Prs3d/Prs3d_TypeOfHighlight, ../PrsMgr/PrsMgr_PresentationManager3d,
  ../SelectMgr/SelectMgr_AndOrFilter, ../SelectMgr/SelectMgr_IndexedMapOfOwner,
  ../SelectMgr/SelectMgr_ListOfFilter, ../SelectMgr/SelectMgr_PickingStrategy,
  ../Standard/Standard, ../Standard/Standard_Type,
  ../StdSelect/StdSelect_ViewerSelector3d,
  ../TCollection/TCollection_AsciiString, ../TColgp/TColgp_Array1OfPnt2d,
  ../TColStd/TColStd_ListOfInteger, ../TopAbs/TopAbs_ShapeEnum,
  ../Quantity/Quantity_Color

discard "forward decl of SelectMgr_SelectionManager"
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
                           header: "AIS_InteractiveContext.hxx", bycopy.} = object of Standard_Transient ##
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
                                                                                                  ## immediate
                                                                                                  ## mode
                                                                                                  ## rendering
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## initializes
                                                                                                  ## the
                                                                                                  ## list
                                                                                                  ## of
                                                                                                  ## presentations
                                                                                                  ## to
                                                                                                  ## be
                                                                                                  ## displayed
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## returns
                                                                                                  ## False
                                                                                                  ## if
                                                                                                  ## no
                                                                                                  ## local
                                                                                                  ## context
                                                                                                  ## is
                                                                                                  ## opened.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## management
                                                                                                  ## of
                                                                                                  ## active
                                                                                                  ## Selection
                                                                                                  ## Modes
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Activates
                                                                                                  ## or
                                                                                                  ## deactivates
                                                                                                  ## the
                                                                                                  ## selection
                                                                                                  ## mode
                                                                                                  ## for
                                                                                                  ## specified
                                                                                                  ## object.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Has
                                                                                                  ## no
                                                                                                  ## effect
                                                                                                  ## if
                                                                                                  ## selection
                                                                                                  ## mode
                                                                                                  ## was
                                                                                                  ## already
                                                                                                  ## active/deactivated.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theObj
                                                                                                  ## object
                                                                                                  ## to
                                                                                                  ## activate/deactivate
                                                                                                  ## selection
                                                                                                  ## mode
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theMode
                                                                                                  ## selection
                                                                                                  ## mode
                                                                                                  ## to
                                                                                                  ## activate/deactivate;
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## deactivation
                                                                                                  ## of
                                                                                                  ## -1
                                                                                                  ## selection
                                                                                                  ## mode
                                                                                                  ## will
                                                                                                  ## effectively
                                                                                                  ## deactivate
                                                                                                  ## all
                                                                                                  ## selection
                                                                                                  ## modes;
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## activation
                                                                                                  ## of
                                                                                                  ## -1
                                                                                                  ## selection
                                                                                                  ## mode
                                                                                                  ## with
                                                                                                  ## AIS_SelectionModesConcurrency_Single
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## will
                                                                                                  ## deactivate
                                                                                                  ## all
                                                                                                  ## selection
                                                                                                  ## modes,
                                                                                                  ## and
                                                                                                  ## will
                                                                                                  ## has
                                                                                                  ## no
                                                                                                  ## effect
                                                                                                  ## otherwise
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theToActivate
                                                                                                  ## activation/deactivation
                                                                                                  ## flag
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theConcurrency
                                                                                                  ## specifies
                                                                                                  ## how
                                                                                                  ## to
                                                                                                  ## handle
                                                                                                  ## already
                                                                                                  ## activated
                                                                                                  ## selection
                                                                                                  ## modes;
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## default
                                                                                                  ## value
                                                                                                  ## (AIS_SelectionModesConcurrency_Multiple)
                                                                                                  ## means
                                                                                                  ## active
                                                                                                  ## selection
                                                                                                  ## modes
                                                                                                  ## should
                                                                                                  ## be
                                                                                                  ## left
                                                                                                  ## as
                                                                                                  ## is,
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## AIS_SelectionModesConcurrency_Single
                                                                                                  ## can
                                                                                                  ## be
                                                                                                  ## used
                                                                                                  ## if
                                                                                                  ## only
                                                                                                  ## one
                                                                                                  ## selection
                                                                                                  ## mode
                                                                                                  ## is
                                                                                                  ## expected
                                                                                                  ## to
                                                                                                  ## be
                                                                                                  ## active
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## and
                                                                                                  ## AIS_SelectionModesConcurrency_GlobalOrLocal
                                                                                                  ## can
                                                                                                  ## be
                                                                                                  ## used
                                                                                                  ## if
                                                                                                  ## either
                                                                                                  ## AIS_InteractiveObject::GlobalSelectionMode()
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## or
                                                                                                  ## any
                                                                                                  ## combination
                                                                                                  ## of
                                                                                                  ## Local
                                                                                                  ## selection
                                                                                                  ## modes
                                                                                                  ## is
                                                                                                  ## acceptable;
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## this
                                                                                                  ## value
                                                                                                  ## is
                                                                                                  ## considered
                                                                                                  ## only
                                                                                                  ## if
                                                                                                  ## theToActivate
                                                                                                  ## set
                                                                                                  ## to
                                                                                                  ## TRUE
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theIsForce
                                                                                                  ## when
                                                                                                  ## set
                                                                                                  ## to
                                                                                                  ## TRUE,
                                                                                                  ## the
                                                                                                  ## display
                                                                                                  ## status
                                                                                                  ## will
                                                                                                  ## be
                                                                                                  ## ignored
                                                                                                  ## while
                                                                                                  ## activating
                                                                                                  ## selection
                                                                                                  ## mode
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
    ## !< context filter (the content active filters
    ## !  can be applied with AND or OR operation)
    ## !< picking strategy to be applied within MoveTo()

  AIS_InteractiveContextbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "AIS_InteractiveContext::get_type_name(@)",
                              header: "AIS_InteractiveContext.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_InteractiveContext::get_type_descriptor(@)",
    header: "AIS_InteractiveContext.hxx".}
proc DynamicType*(this: AIS_InteractiveContext): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "AIS_InteractiveContext.hxx".}
proc constructAIS_InteractiveContext*(MainViewer: handle[V3d_Viewer]): AIS_InteractiveContext {.
    constructor, importcpp: "AIS_InteractiveContext(@)",
    header: "AIS_InteractiveContext.hxx".}
proc destroyAIS_InteractiveContext*(this: var AIS_InteractiveContext) {.
    importcpp: "#.~AIS_InteractiveContext()", header: "AIS_InteractiveContext.hxx".}
proc DisplayStatus*(this: AIS_InteractiveContext;
                   anIobj: handle[AIS_InteractiveObject]): AIS_DisplayStatus {.
    noSideEffect, importcpp: "DisplayStatus", header: "AIS_InteractiveContext.hxx".}
proc Status*(this: AIS_InteractiveContext; anObj: handle[AIS_InteractiveObject];
            astatus: var TCollection_ExtendedString) {.noSideEffect,
    importcpp: "Status", header: "AIS_InteractiveContext.hxx".}
proc IsDisplayed*(this: AIS_InteractiveContext;
                 anIobj: handle[AIS_InteractiveObject]): Standard_Boolean {.
    noSideEffect, importcpp: "IsDisplayed", header: "AIS_InteractiveContext.hxx".}
proc IsDisplayed*(this: AIS_InteractiveContext;
                 aniobj: handle[AIS_InteractiveObject]; aMode: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsDisplayed", header: "AIS_InteractiveContext.hxx".}
proc SetAutoActivateSelection*(this: var AIS_InteractiveContext;
                              theIsAuto: Standard_Boolean) {.
    importcpp: "SetAutoActivateSelection", header: "AIS_InteractiveContext.hxx".}
proc GetAutoActivateSelection*(this: AIS_InteractiveContext): Standard_Boolean {.
    noSideEffect, importcpp: "GetAutoActivateSelection",
    header: "AIS_InteractiveContext.hxx".}
proc Display*(this: var AIS_InteractiveContext;
             theIObj: handle[AIS_InteractiveObject];
             theToUpdateViewer: Standard_Boolean) {.importcpp: "Display",
    header: "AIS_InteractiveContext.hxx".}
proc Display*(this: var AIS_InteractiveContext;
             theIObj: handle[AIS_InteractiveObject];
             theDispMode: Standard_Integer; theSelectionMode: Standard_Integer;
             theToUpdateViewer: Standard_Boolean;
             theDispStatus: AIS_DisplayStatus = AIS_DS_None) {.importcpp: "Display",
    header: "AIS_InteractiveContext.hxx".}
proc Load*(this: var AIS_InteractiveContext; theObj: handle[AIS_InteractiveObject];
          theSelectionMode: Standard_Integer = -1) {.importcpp: "Load",
    header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  Standard_DEPRECATED ( Deprecated method Display() with obsolete argument theToAllowDecomposition ) void Display ( const opencascade :: handle < AIS_InteractiveObject > [end of template] & theIObj , const Standard_Integer theDispMode , const Standard_Integer theSelectionMode , const Standard_Boolean theToUpdateViewer , const Standard_Boolean theToAllowDecomposition , const AIS_DisplayStatus theDispStatus = AIS_DS_None ) { ( void ) theToAllowDecomposition ; Display ( theIObj , theDispMode , theSelectionMode , theToUpdateViewer , theDispStatus ) ; } Standard_DEPRECATED ( Deprecated method Load() with obsolete last argument theToAllowDecomposition ) void Load ( const opencascade :: handle < AIS_InteractiveObject > [end of template] & theObj , Standard_Integer theSelectionMode , Standard_Boolean ) { Load ( theObj , theSelectionMode ) ; } ! Hides the object. The object's presentations are simply flagged as invisible and therefore excluded from redrawing.
## ! To show hidden objects, use Display(). void Erase ( const opencascade :: handle < AIS_InteractiveObject > [end of template] & theIObj , const Standard_Boolean theToUpdateViewer ) ;
## Error: identifier expected, but got: Deprecated method Display() with obsolete argument theToAllowDecomposition!!!

proc EraseAll*(this: var AIS_InteractiveContext; theToUpdateViewer: Standard_Boolean) {.
    importcpp: "EraseAll", header: "AIS_InteractiveContext.hxx".}
proc DisplayAll*(this: var AIS_InteractiveContext;
                theToUpdateViewer: Standard_Boolean) {.importcpp: "DisplayAll",
    header: "AIS_InteractiveContext.hxx".}
proc EraseSelected*(this: var AIS_InteractiveContext;
                   theToUpdateViewer: Standard_Boolean) {.
    importcpp: "EraseSelected", header: "AIS_InteractiveContext.hxx".}
proc DisplaySelected*(this: var AIS_InteractiveContext;
                     theToUpdateViewer: Standard_Boolean) {.
    importcpp: "DisplaySelected", header: "AIS_InteractiveContext.hxx".}
proc ClearPrs*(this: var AIS_InteractiveContext;
              theIObj: handle[AIS_InteractiveObject]; theMode: Standard_Integer;
              theToUpdateViewer: Standard_Boolean) {.importcpp: "ClearPrs",
    header: "AIS_InteractiveContext.hxx".}
proc Remove*(this: var AIS_InteractiveContext;
            theIObj: handle[AIS_InteractiveObject];
            theToUpdateViewer: Standard_Boolean) {.importcpp: "Remove",
    header: "AIS_InteractiveContext.hxx".}
proc RemoveAll*(this: var AIS_InteractiveContext;
               theToUpdateViewer: Standard_Boolean) {.importcpp: "RemoveAll",
    header: "AIS_InteractiveContext.hxx".}
proc Redisplay*(this: var AIS_InteractiveContext;
               theIObj: handle[AIS_InteractiveObject];
               theToUpdateViewer: Standard_Boolean;
               theAllModes: Standard_Boolean = Standard_False) {.
    importcpp: "Redisplay", header: "AIS_InteractiveContext.hxx".}
proc Redisplay*(this: var AIS_InteractiveContext;
               theTypeOfObject: AIS_KindOfInteractive;
               theSignature: Standard_Integer; theToUpdateViewer: Standard_Boolean) {.
    importcpp: "Redisplay", header: "AIS_InteractiveContext.hxx".}
proc RecomputePrsOnly*(this: var AIS_InteractiveContext;
                      theIObj: handle[AIS_InteractiveObject];
                      theToUpdateViewer: Standard_Boolean;
                      theAllModes: Standard_Boolean = Standard_False) {.
    importcpp: "RecomputePrsOnly", header: "AIS_InteractiveContext.hxx".}
proc RecomputeSelectionOnly*(this: var AIS_InteractiveContext;
                            anIObj: handle[AIS_InteractiveObject]) {.
    importcpp: "RecomputeSelectionOnly", header: "AIS_InteractiveContext.hxx".}
proc Update*(this: var AIS_InteractiveContext;
            theIObj: handle[AIS_InteractiveObject];
            theUpdateViewer: Standard_Boolean) {.importcpp: "Update",
    header: "AIS_InteractiveContext.hxx".}
proc HighlightStyle*(this: AIS_InteractiveContext;
                    theStyleType: Prs3d_TypeOfHighlight): handle[Prs3d_Drawer] {.
    noSideEffect, importcpp: "HighlightStyle", header: "AIS_InteractiveContext.hxx".}
proc SetHighlightStyle*(this: var AIS_InteractiveContext;
                       theStyleType: Prs3d_TypeOfHighlight;
                       theStyle: handle[Prs3d_Drawer]) {.
    importcpp: "SetHighlightStyle", header: "AIS_InteractiveContext.hxx".}
proc HighlightStyle*(this: AIS_InteractiveContext): handle[Prs3d_Drawer] {.
    noSideEffect, importcpp: "HighlightStyle", header: "AIS_InteractiveContext.hxx".}
proc SetHighlightStyle*(this: var AIS_InteractiveContext;
                       theStyle: handle[Prs3d_Drawer]) {.
    importcpp: "SetHighlightStyle", header: "AIS_InteractiveContext.hxx".}
proc SelectionStyle*(this: AIS_InteractiveContext): handle[Prs3d_Drawer] {.
    noSideEffect, importcpp: "SelectionStyle", header: "AIS_InteractiveContext.hxx".}
proc SetSelectionStyle*(this: var AIS_InteractiveContext;
                       theStyle: handle[Prs3d_Drawer]) {.
    importcpp: "SetSelectionStyle", header: "AIS_InteractiveContext.hxx".}
proc HighlightStyle*(this: AIS_InteractiveContext;
                    theObj: handle[AIS_InteractiveObject];
                    theStyle: var handle[Prs3d_Drawer]): Standard_Boolean {.
    noSideEffect, importcpp: "HighlightStyle", header: "AIS_InteractiveContext.hxx".}
proc HighlightStyle*(this: AIS_InteractiveContext;
                    theOwner: handle[SelectMgr_EntityOwner];
                    theStyle: var handle[Prs3d_Drawer]): Standard_Boolean {.
    noSideEffect, importcpp: "HighlightStyle", header: "AIS_InteractiveContext.hxx".}
proc IsHilighted*(this: AIS_InteractiveContext;
                 theObj: handle[AIS_InteractiveObject]): Standard_Boolean {.
    noSideEffect, importcpp: "IsHilighted", header: "AIS_InteractiveContext.hxx".}
proc IsHilighted*(this: AIS_InteractiveContext;
                 theOwner: handle[SelectMgr_EntityOwner]): Standard_Boolean {.
    noSideEffect, importcpp: "IsHilighted", header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  ! Updates the display in the viewer to take dynamic detection into account.
## ! On dynamic detection by the mouse cursor, sensitive primitives are highlighted.
## ! The highlight color of entities detected by mouse movement is white by default. Standard_DEPRECATED ( Deprecated method Hilight() ) void Hilight ( const opencascade :: handle < AIS_InteractiveObject > [end of template] & theObj , const Standard_Boolean theIsToUpdateViewer ) { return HilightWithColor ( theObj , myStyles [ Prs3d_TypeOfHighlight_Dynamic ] , theIsToUpdateViewer ) ; } ! Changes the color of all the lines of the object in view. void HilightWithColor ( const opencascade :: handle < AIS_InteractiveObject > [end of template] & theObj , const opencascade :: handle < Prs3d_Drawer > [end of template] & theStyle , const Standard_Boolean theToUpdateViewer ) ;
## Error: identifier expected, but got: Deprecated method Hilight()!!!

proc Unhilight*(this: var AIS_InteractiveContext;
               theIObj: handle[AIS_InteractiveObject];
               theToUpdateViewer: Standard_Boolean) {.importcpp: "Unhilight",
    header: "AIS_InteractiveContext.hxx".}
proc DisplayPriority*(this: AIS_InteractiveContext;
                     theIObj: handle[AIS_InteractiveObject]): Standard_Integer {.
    noSideEffect, importcpp: "DisplayPriority",
    header: "AIS_InteractiveContext.hxx".}
proc SetDisplayPriority*(this: var AIS_InteractiveContext;
                        theIObj: handle[AIS_InteractiveObject];
                        thePriority: Standard_Integer) {.
    importcpp: "SetDisplayPriority", header: "AIS_InteractiveContext.hxx".}
proc GetZLayer*(this: AIS_InteractiveContext;
               theIObj: handle[AIS_InteractiveObject]): Graphic3d_ZLayerId {.
    noSideEffect, importcpp: "GetZLayer", header: "AIS_InteractiveContext.hxx".}
proc SetZLayer*(this: var AIS_InteractiveContext;
               theIObj: handle[AIS_InteractiveObject];
               theLayerId: Graphic3d_ZLayerId) {.importcpp: "SetZLayer",
    header: "AIS_InteractiveContext.hxx".}
proc SetViewAffinity*(this: var AIS_InteractiveContext;
                     theIObj: handle[AIS_InteractiveObject];
                     theView: handle[V3d_View]; theIsVisible: Standard_Boolean) {.
    importcpp: "SetViewAffinity", header: "AIS_InteractiveContext.hxx".}
proc DisplayMode*(this: AIS_InteractiveContext): Standard_Integer {.noSideEffect,
    importcpp: "DisplayMode", header: "AIS_InteractiveContext.hxx".}
proc SetDisplayMode*(this: var AIS_InteractiveContext; theMode: Standard_Integer;
                    theToUpdateViewer: Standard_Boolean) {.
    importcpp: "SetDisplayMode", header: "AIS_InteractiveContext.hxx".}
proc SetDisplayMode*(this: var AIS_InteractiveContext;
                    theIObj: handle[AIS_InteractiveObject];
                    theMode: Standard_Integer; theToUpdateViewer: Standard_Boolean) {.
    importcpp: "SetDisplayMode", header: "AIS_InteractiveContext.hxx".}
proc UnsetDisplayMode*(this: var AIS_InteractiveContext;
                      theIObj: handle[AIS_InteractiveObject];
                      theToUpdateViewer: Standard_Boolean) {.
    importcpp: "UnsetDisplayMode", header: "AIS_InteractiveContext.hxx".}
proc SetLocation*(this: var AIS_InteractiveContext;
                 theObject: handle[AIS_InteractiveObject];
                 theLocation: TopLoc_Location) {.importcpp: "SetLocation",
    header: "AIS_InteractiveContext.hxx".}
proc ResetLocation*(this: var AIS_InteractiveContext;
                   theObject: handle[AIS_InteractiveObject]) {.
    importcpp: "ResetLocation", header: "AIS_InteractiveContext.hxx".}
proc HasLocation*(this: AIS_InteractiveContext;
                 theObject: handle[AIS_InteractiveObject]): Standard_Boolean {.
    noSideEffect, importcpp: "HasLocation", header: "AIS_InteractiveContext.hxx".}
proc Location*(this: AIS_InteractiveContext;
              theObject: handle[AIS_InteractiveObject]): TopLoc_Location {.
    noSideEffect, importcpp: "Location", header: "AIS_InteractiveContext.hxx".}
proc SetTransformPersistence*(this: var AIS_InteractiveContext;
                             theObject: handle[AIS_InteractiveObject];
                             theTrsfPers: handle[Graphic3d_TransformPers]) {.
    importcpp: "SetTransformPersistence", header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  Standard_DEPRECATED ( This method is deprecated - SetTransformPersistence() taking Graphic3d_TransformPers should be called instead ) void SetTransformPersistence ( const opencascade :: handle < AIS_InteractiveObject > [end of template] & theObj , const Graphic3d_TransModeFlags & theFlag , const gp_Pnt & thePoint = gp_Pnt ( 0.0 , 0.0 , 0.0 ) ) { SetTransformPersistence ( theObj , Graphic3d_TransformPers :: FromDeprecatedParams ( theFlag , thePoint ) ) ; } public : ! @name mouse picking logic (detection and dynamic highlighting of entities under cursor) ! Setup pixel tolerance for MoveTo() operation.
## ! @sa MoveTo(). void SetPixelTolerance ( const Standard_Integer thePrecision = 2 ) ;
## Error: identifier expected, but got: This method is deprecated - SetTransformPersistence() taking Graphic3d_TransformPers should be called instead!!!

proc PixelTolerance*(this: AIS_InteractiveContext): Standard_Integer {.noSideEffect,
    importcpp: "PixelTolerance", header: "AIS_InteractiveContext.hxx".}
proc SetSelectionSensitivity*(this: var AIS_InteractiveContext;
                             theObject: handle[AIS_InteractiveObject];
                             theMode: Standard_Integer;
                             theNewSensitivity: Standard_Integer) {.
    importcpp: "SetSelectionSensitivity", header: "AIS_InteractiveContext.hxx".}
proc LastActiveView*(this: AIS_InteractiveContext): handle[V3d_View] {.noSideEffect,
    importcpp: "LastActiveView", header: "AIS_InteractiveContext.hxx".}
proc MoveTo*(this: var AIS_InteractiveContext; theXPix: Standard_Integer;
            theYPix: Standard_Integer; theView: handle[V3d_View];
            theToRedrawOnUpdate: Standard_Boolean): AIS_StatusOfDetection {.
    importcpp: "MoveTo", header: "AIS_InteractiveContext.hxx".}
proc ClearDetected*(this: var AIS_InteractiveContext;
                   theToRedrawImmediate: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "ClearDetected", header: "AIS_InteractiveContext.hxx".}
proc HasDetected*(this: AIS_InteractiveContext): Standard_Boolean {.noSideEffect,
    importcpp: "HasDetected", header: "AIS_InteractiveContext.hxx".}
proc DetectedOwner*(this: AIS_InteractiveContext): handle[SelectMgr_EntityOwner] {.
    noSideEffect, importcpp: "DetectedOwner", header: "AIS_InteractiveContext.hxx".}
proc DetectedInteractive*(this: AIS_InteractiveContext): handle[
    AIS_InteractiveObject] {.noSideEffect, importcpp: "DetectedInteractive",
                            header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  ! Returns true if there is a detected shape in local context.
## ! @sa HasDetected()/DetectedShape() Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) Standard_Boolean HasDetectedShape ( ) const ;
## Error: identifier expected, but got: Local Context is deprecated - local selection should be used without Local Context!!!

## !!!Ignored construct:  ! Returns the shape detected in local context.
## ! @sa DetectedOwner() Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) const TopoDS_Shape & DetectedShape ( ) const ;
## Error: identifier expected, but got: Local Context is deprecated - local selection should be used without Local Context!!!

proc HasNextDetected*(this: AIS_InteractiveContext): Standard_Boolean {.
    noSideEffect, importcpp: "HasNextDetected",
    header: "AIS_InteractiveContext.hxx".}
proc HilightNextDetected*(this: var AIS_InteractiveContext;
                         theView: handle[V3d_View];
                         theToRedrawImmediate: Standard_Boolean = Standard_True): Standard_Integer {.
    importcpp: "HilightNextDetected", header: "AIS_InteractiveContext.hxx".}
proc HilightPreviousDetected*(this: var AIS_InteractiveContext;
                             theView: handle[V3d_View]; theToRedrawImmediate: Standard_Boolean = Standard_True): Standard_Integer {.
    importcpp: "HilightPreviousDetected", header: "AIS_InteractiveContext.hxx".}
proc InitDetected*(this: var AIS_InteractiveContext) {.importcpp: "InitDetected",
    header: "AIS_InteractiveContext.hxx".}
proc MoreDetected*(this: AIS_InteractiveContext): Standard_Boolean {.noSideEffect,
    importcpp: "MoreDetected", header: "AIS_InteractiveContext.hxx".}
proc NextDetected*(this: var AIS_InteractiveContext) {.importcpp: "NextDetected",
    header: "AIS_InteractiveContext.hxx".}
proc DetectedCurrentOwner*(this: AIS_InteractiveContext): handle[
    SelectMgr_EntityOwner] {.noSideEffect, importcpp: "DetectedCurrentOwner",
                            header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  public : ! @name Selection management ! Sets the graphic basic aspect to the current presentation of ALL selected objects. Standard_DEPRECATED ( Deprecated method - presentation attributes should be assigned directly to object ) void SetSelectedAspect ( const opencascade :: handle < Prs3d_BasicAspect > [end of template] & theAspect , const Standard_Boolean theToUpdateViewer ) ;
## Error: identifier expected, but got: Deprecated method - presentation attributes should be assigned directly to object!!!

proc AddSelect*(this: var AIS_InteractiveContext;
               theObject: handle[SelectMgr_EntityOwner]): AIS_StatusOfPick {.
    importcpp: "AddSelect", header: "AIS_InteractiveContext.hxx".}
proc AddSelect*(this: var AIS_InteractiveContext;
               theObject: handle[AIS_InteractiveObject]): AIS_StatusOfPick {.
    importcpp: "AddSelect", header: "AIS_InteractiveContext.hxx".}
proc Select*(this: var AIS_InteractiveContext; theXPMin: Standard_Integer;
            theYPMin: Standard_Integer; theXPMax: Standard_Integer;
            theYPMax: Standard_Integer; theView: handle[V3d_View];
            theToUpdateViewer: Standard_Boolean): AIS_StatusOfPick {.
    importcpp: "Select", header: "AIS_InteractiveContext.hxx".}
proc Select*(this: var AIS_InteractiveContext; thePolyline: TColgp_Array1OfPnt2d;
            theView: handle[V3d_View]; theToUpdateViewer: Standard_Boolean): AIS_StatusOfPick {.
    importcpp: "Select", header: "AIS_InteractiveContext.hxx".}
proc Select*(this: var AIS_InteractiveContext; theToUpdateViewer: Standard_Boolean): AIS_StatusOfPick {.
    importcpp: "Select", header: "AIS_InteractiveContext.hxx".}
proc ShiftSelect*(this: var AIS_InteractiveContext;
                 theToUpdateViewer: Standard_Boolean): AIS_StatusOfPick {.
    importcpp: "ShiftSelect", header: "AIS_InteractiveContext.hxx".}
proc ShiftSelect*(this: var AIS_InteractiveContext;
                 thePolyline: TColgp_Array1OfPnt2d; theView: handle[V3d_View];
                 theToUpdateViewer: Standard_Boolean): AIS_StatusOfPick {.
    importcpp: "ShiftSelect", header: "AIS_InteractiveContext.hxx".}
proc ShiftSelect*(this: var AIS_InteractiveContext; theXPMin: Standard_Integer;
                 theYPMin: Standard_Integer; theXPMax: Standard_Integer;
                 theYPMax: Standard_Integer; theView: handle[V3d_View];
                 theToUpdateViewer: Standard_Boolean): AIS_StatusOfPick {.
    importcpp: "ShiftSelect", header: "AIS_InteractiveContext.hxx".}
proc BoundingBoxOfSelection*(this: AIS_InteractiveContext): Bnd_Box {.noSideEffect,
    importcpp: "BoundingBoxOfSelection", header: "AIS_InteractiveContext.hxx".}
proc FitSelected*(this: var AIS_InteractiveContext; theView: handle[V3d_View];
                 theMargin: Standard_Real; theToUpdate: Standard_Boolean) {.
    importcpp: "FitSelected", header: "AIS_InteractiveContext.hxx".}
proc FitSelected*(this: var AIS_InteractiveContext; theView: handle[V3d_View]) {.
    importcpp: "FitSelected", header: "AIS_InteractiveContext.hxx".}
proc ToHilightSelected*(this: AIS_InteractiveContext): Standard_Boolean {.
    noSideEffect, importcpp: "ToHilightSelected",
    header: "AIS_InteractiveContext.hxx".}
proc SetToHilightSelected*(this: var AIS_InteractiveContext;
                          toHilight: Standard_Boolean) {.
    importcpp: "SetToHilightSelected", header: "AIS_InteractiveContext.hxx".}
proc AutomaticHilight*(this: AIS_InteractiveContext): Standard_Boolean {.
    noSideEffect, importcpp: "AutomaticHilight",
    header: "AIS_InteractiveContext.hxx".}
proc SetAutomaticHilight*(this: var AIS_InteractiveContext;
                         theStatus: Standard_Boolean) {.
    importcpp: "SetAutomaticHilight", header: "AIS_InteractiveContext.hxx".}
proc SetSelected*(this: var AIS_InteractiveContext;
                 theOwners: handle[SelectMgr_EntityOwner];
                 theToUpdateViewer: Standard_Boolean) {.importcpp: "SetSelected",
    header: "AIS_InteractiveContext.hxx".}
proc SetSelected*(this: var AIS_InteractiveContext;
                 theObject: handle[AIS_InteractiveObject];
                 theToUpdateViewer: Standard_Boolean) {.importcpp: "SetSelected",
    header: "AIS_InteractiveContext.hxx".}
proc AddOrRemoveSelected*(this: var AIS_InteractiveContext;
                         theObject: handle[AIS_InteractiveObject];
                         theToUpdateViewer: Standard_Boolean) {.
    importcpp: "AddOrRemoveSelected", header: "AIS_InteractiveContext.hxx".}
proc SetSelectedState*(this: var AIS_InteractiveContext;
                      theOwner: handle[SelectMgr_EntityOwner];
                      theIsSelected: Standard_Boolean): Standard_Boolean {.
    importcpp: "SetSelectedState", header: "AIS_InteractiveContext.hxx".}
proc HilightSelected*(this: var AIS_InteractiveContext;
                     theToUpdateViewer: Standard_Boolean) {.
    importcpp: "HilightSelected", header: "AIS_InteractiveContext.hxx".}
proc UnhilightSelected*(this: var AIS_InteractiveContext;
                       theToUpdateViewer: Standard_Boolean) {.
    importcpp: "UnhilightSelected", header: "AIS_InteractiveContext.hxx".}
proc UpdateSelected*(this: var AIS_InteractiveContext;
                    theToUpdateViewer: Standard_Boolean) {.
    importcpp: "UpdateSelected", header: "AIS_InteractiveContext.hxx".}
proc ClearSelected*(this: var AIS_InteractiveContext;
                   theToUpdateViewer: Standard_Boolean) {.
    importcpp: "ClearSelected", header: "AIS_InteractiveContext.hxx".}
proc AddOrRemoveSelected*(this: var AIS_InteractiveContext;
                         theOwner: handle[SelectMgr_EntityOwner];
                         theToUpdateViewer: Standard_Boolean) {.
    importcpp: "AddOrRemoveSelected", header: "AIS_InteractiveContext.hxx".}
proc IsSelected*(this: AIS_InteractiveContext;
                theOwner: handle[SelectMgr_EntityOwner]): Standard_Boolean {.
    noSideEffect, importcpp: "IsSelected", header: "AIS_InteractiveContext.hxx".}
proc IsSelected*(this: AIS_InteractiveContext;
                theObj: handle[AIS_InteractiveObject]): Standard_Boolean {.
    noSideEffect, importcpp: "IsSelected", header: "AIS_InteractiveContext.hxx".}
proc FirstSelectedObject*(this: AIS_InteractiveContext): handle[
    AIS_InteractiveObject] {.noSideEffect, importcpp: "FirstSelectedObject",
                            header: "AIS_InteractiveContext.hxx".}
proc NbSelected*(this: var AIS_InteractiveContext): Standard_Integer {.
    importcpp: "NbSelected", header: "AIS_InteractiveContext.hxx".}
proc InitSelected*(this: var AIS_InteractiveContext) {.importcpp: "InitSelected",
    header: "AIS_InteractiveContext.hxx".}
proc MoreSelected*(this: AIS_InteractiveContext): Standard_Boolean {.noSideEffect,
    importcpp: "MoreSelected", header: "AIS_InteractiveContext.hxx".}
proc NextSelected*(this: var AIS_InteractiveContext) {.importcpp: "NextSelected",
    header: "AIS_InteractiveContext.hxx".}
proc SelectedOwner*(this: AIS_InteractiveContext): handle[SelectMgr_EntityOwner] {.
    noSideEffect, importcpp: "SelectedOwner", header: "AIS_InteractiveContext.hxx".}
proc SelectedInteractive*(this: AIS_InteractiveContext): handle[
    AIS_InteractiveObject] {.noSideEffect, importcpp: "SelectedInteractive",
                            header: "AIS_InteractiveContext.hxx".}
proc HasSelectedShape*(this: AIS_InteractiveContext): Standard_Boolean {.
    noSideEffect, importcpp: "HasSelectedShape",
    header: "AIS_InteractiveContext.hxx".}
proc SelectedShape*(this: AIS_InteractiveContext): TopoDS_Shape {.noSideEffect,
    importcpp: "SelectedShape", header: "AIS_InteractiveContext.hxx".}
proc HasApplicative*(this: AIS_InteractiveContext): Standard_Boolean {.noSideEffect,
    importcpp: "HasApplicative", header: "AIS_InteractiveContext.hxx".}
proc Applicative*(this: AIS_InteractiveContext): handle[Standard_Transient] {.
    noSideEffect, importcpp: "Applicative", header: "AIS_InteractiveContext.hxx".}
proc BeginImmediateDraw*(this: var AIS_InteractiveContext): Standard_Boolean {.
    importcpp: "BeginImmediateDraw", header: "AIS_InteractiveContext.hxx".}
proc ImmediateAdd*(this: var AIS_InteractiveContext;
                  theObj: handle[AIS_InteractiveObject];
                  theMode: Standard_Integer = 0): Standard_Boolean {.
    importcpp: "ImmediateAdd", header: "AIS_InteractiveContext.hxx".}
proc EndImmediateDraw*(this: var AIS_InteractiveContext; theView: handle[V3d_View]): Standard_Boolean {.
    importcpp: "EndImmediateDraw", header: "AIS_InteractiveContext.hxx".}
proc EndImmediateDraw*(this: var AIS_InteractiveContext): Standard_Boolean {.
    importcpp: "EndImmediateDraw", header: "AIS_InteractiveContext.hxx".}
proc IsImmediateModeOn*(this: AIS_InteractiveContext): Standard_Boolean {.
    noSideEffect, importcpp: "IsImmediateModeOn",
    header: "AIS_InteractiveContext.hxx".}
proc RedrawImmediate*(this: var AIS_InteractiveContext;
                     theViewer: handle[V3d_Viewer]) {.
    importcpp: "RedrawImmediate", header: "AIS_InteractiveContext.hxx".}
proc SetSelectionModeActive*(this: var AIS_InteractiveContext;
                            theObj: handle[AIS_InteractiveObject];
                            theMode: Standard_Integer;
                            theToActivate: Standard_Boolean; theConcurrency: AIS_SelectionModesConcurrency = AIS_SelectionModesConcurrency_Multiple;
                            theIsForce: Standard_Boolean = Standard_False) {.
    importcpp: "SetSelectionModeActive", header: "AIS_InteractiveContext.hxx".}
proc Activate*(this: var AIS_InteractiveContext;
              theObj: handle[AIS_InteractiveObject];
              theMode: Standard_Integer = 0;
              theIsForce: Standard_Boolean = Standard_False) {.
    importcpp: "Activate", header: "AIS_InteractiveContext.hxx".}
proc Activate*(this: var AIS_InteractiveContext; theMode: Standard_Integer;
              theIsForce: Standard_Boolean = Standard_False) {.
    importcpp: "Activate", header: "AIS_InteractiveContext.hxx".}
proc Deactivate*(this: var AIS_InteractiveContext;
                theObj: handle[AIS_InteractiveObject]) {.importcpp: "Deactivate",
    header: "AIS_InteractiveContext.hxx".}
proc Deactivate*(this: var AIS_InteractiveContext;
                theObj: handle[AIS_InteractiveObject]; theMode: Standard_Integer) {.
    importcpp: "Deactivate", header: "AIS_InteractiveContext.hxx".}
proc Deactivate*(this: var AIS_InteractiveContext; theMode: Standard_Integer) {.
    importcpp: "Deactivate", header: "AIS_InteractiveContext.hxx".}
proc Deactivate*(this: var AIS_InteractiveContext) {.importcpp: "Deactivate",
    header: "AIS_InteractiveContext.hxx".}
proc ActivatedModes*(this: AIS_InteractiveContext;
                    anIobj: handle[AIS_InteractiveObject];
                    theList: var TColStd_ListOfInteger) {.noSideEffect,
    importcpp: "ActivatedModes", header: "AIS_InteractiveContext.hxx".}
proc EntityOwners*(this: AIS_InteractiveContext;
                  theOwners: var handle[SelectMgr_IndexedMapOfOwner];
                  theIObj: handle[AIS_InteractiveObject];
                  theMode: Standard_Integer = -1) {.noSideEffect,
    importcpp: "EntityOwners", header: "AIS_InteractiveContext.hxx".}
proc FilterType*(this: AIS_InteractiveContext): SelectMgr_FilterType {.noSideEffect,
    importcpp: "FilterType", header: "AIS_InteractiveContext.hxx".}
proc SetFilterType*(this: var AIS_InteractiveContext;
                   theFilterType: SelectMgr_FilterType) {.
    importcpp: "SetFilterType", header: "AIS_InteractiveContext.hxx".}
proc Filters*(this: AIS_InteractiveContext): SelectMgr_ListOfFilter {.noSideEffect,
    importcpp: "Filters", header: "AIS_InteractiveContext.hxx".}
proc AddFilter*(this: var AIS_InteractiveContext;
               theFilter: handle[SelectMgr_Filter]) {.importcpp: "AddFilter",
    header: "AIS_InteractiveContext.hxx".}
proc RemoveFilter*(this: var AIS_InteractiveContext;
                  theFilter: handle[SelectMgr_Filter]) {.
    importcpp: "RemoveFilter", header: "AIS_InteractiveContext.hxx".}
proc RemoveFilters*(this: var AIS_InteractiveContext) {.importcpp: "RemoveFilters",
    header: "AIS_InteractiveContext.hxx".}
proc PickingStrategy*(this: AIS_InteractiveContext): SelectMgr_PickingStrategy {.
    noSideEffect, importcpp: "PickingStrategy",
    header: "AIS_InteractiveContext.hxx".}
proc SetPickingStrategy*(this: var AIS_InteractiveContext;
                        theStrategy: SelectMgr_PickingStrategy) {.
    importcpp: "SetPickingStrategy", header: "AIS_InteractiveContext.hxx".}
proc DefaultDrawer*(this: AIS_InteractiveContext): handle[Prs3d_Drawer] {.
    noSideEffect, importcpp: "DefaultDrawer", header: "AIS_InteractiveContext.hxx".}
proc CurrentViewer*(this: AIS_InteractiveContext): handle[V3d_Viewer] {.
    noSideEffect, importcpp: "CurrentViewer", header: "AIS_InteractiveContext.hxx".}
proc SelectionManager*(this: AIS_InteractiveContext): handle[
    SelectMgr_SelectionManager] {.noSideEffect, importcpp: "SelectionManager",
                                 header: "AIS_InteractiveContext.hxx".}
proc MainPrsMgr*(this: AIS_InteractiveContext): handle[PrsMgr_PresentationManager3d] {.
    noSideEffect, importcpp: "MainPrsMgr", header: "AIS_InteractiveContext.hxx".}
proc MainSelector*(this: AIS_InteractiveContext): handle[StdSelect_ViewerSelector3d] {.
    noSideEffect, importcpp: "MainSelector", header: "AIS_InteractiveContext.hxx".}
proc UpdateCurrentViewer*(this: var AIS_InteractiveContext) {.
    importcpp: "UpdateCurrentViewer", header: "AIS_InteractiveContext.hxx".}
proc DisplayedObjects*(this: AIS_InteractiveContext;
                      aListOfIO: var AIS_ListOfInteractive) {.noSideEffect,
    importcpp: "DisplayedObjects", header: "AIS_InteractiveContext.hxx".}
proc DisplayedObjects*(this: AIS_InteractiveContext;
                      theWhichKind: AIS_KindOfInteractive;
                      theWhichSignature: Standard_Integer;
                      theListOfIO: var AIS_ListOfInteractive) {.noSideEffect,
    importcpp: "DisplayedObjects", header: "AIS_InteractiveContext.hxx".}
proc ErasedObjects*(this: AIS_InteractiveContext;
                   theListOfIO: var AIS_ListOfInteractive) {.noSideEffect,
    importcpp: "ErasedObjects", header: "AIS_InteractiveContext.hxx".}
proc ErasedObjects*(this: AIS_InteractiveContext;
                   theWhichKind: AIS_KindOfInteractive;
                   theWhichSignature: Standard_Integer;
                   theListOfIO: var AIS_ListOfInteractive) {.noSideEffect,
    importcpp: "ErasedObjects", header: "AIS_InteractiveContext.hxx".}
proc ObjectsByDisplayStatus*(this: AIS_InteractiveContext;
                            theStatus: AIS_DisplayStatus;
                            theListOfIO: var AIS_ListOfInteractive) {.noSideEffect,
    importcpp: "ObjectsByDisplayStatus", header: "AIS_InteractiveContext.hxx".}
proc ObjectsByDisplayStatus*(this: AIS_InteractiveContext;
                            WhichKind: AIS_KindOfInteractive;
                            WhichSignature: Standard_Integer;
                            theStatus: AIS_DisplayStatus;
                            theListOfIO: var AIS_ListOfInteractive) {.noSideEffect,
    importcpp: "ObjectsByDisplayStatus", header: "AIS_InteractiveContext.hxx".}
proc ObjectsInside*(this: AIS_InteractiveContext;
                   aListOfIO: var AIS_ListOfInteractive;
                   WhichKind: AIS_KindOfInteractive = AIS_KOI_None;
                   WhichSignature: Standard_Integer = -1) {.noSideEffect,
    importcpp: "ObjectsInside", header: "AIS_InteractiveContext.hxx".}
proc RebuildSelectionStructs*(this: var AIS_InteractiveContext) {.
    importcpp: "RebuildSelectionStructs", header: "AIS_InteractiveContext.hxx".}
proc Disconnect*(this: var AIS_InteractiveContext;
                theAssembly: handle[AIS_InteractiveObject];
                theObjToDisconnect: handle[AIS_InteractiveObject] = nil) {.
    importcpp: "Disconnect", header: "AIS_InteractiveContext.hxx".}
proc ObjectsForView*(this: AIS_InteractiveContext;
                    theListOfIO: var AIS_ListOfInteractive;
                    theView: handle[V3d_View];
                    theIsVisibleInView: Standard_Boolean;
                    theStatus: AIS_DisplayStatus = AIS_DS_None) {.noSideEffect,
    importcpp: "ObjectsForView", header: "AIS_InteractiveContext.hxx".}
proc PurgeDisplay*(this: var AIS_InteractiveContext): Standard_Integer {.
    importcpp: "PurgeDisplay", header: "AIS_InteractiveContext.hxx".}
proc GravityPoint*(this: AIS_InteractiveContext; theView: handle[V3d_View]): gp_Pnt {.
    noSideEffect, importcpp: "GravityPoint", header: "AIS_InteractiveContext.hxx".}
proc DisplayActiveSensitive*(this: var AIS_InteractiveContext;
                            aView: handle[V3d_View]) {.
    importcpp: "DisplayActiveSensitive", header: "AIS_InteractiveContext.hxx".}
proc ClearActiveSensitive*(this: var AIS_InteractiveContext; aView: handle[V3d_View]) {.
    importcpp: "ClearActiveSensitive", header: "AIS_InteractiveContext.hxx".}
proc DisplayActiveSensitive*(this: var AIS_InteractiveContext;
                            anObject: handle[AIS_InteractiveObject];
                            aView: handle[V3d_View]) {.
    importcpp: "DisplayActiveSensitive", header: "AIS_InteractiveContext.hxx".}
proc SetLocalAttributes*(this: var AIS_InteractiveContext;
                        theIObj: handle[AIS_InteractiveObject];
                        theDrawer: handle[Prs3d_Drawer];
                        theToUpdateViewer: Standard_Boolean) {.
    importcpp: "SetLocalAttributes", header: "AIS_InteractiveContext.hxx".}
proc UnsetLocalAttributes*(this: var AIS_InteractiveContext;
                          theIObj: handle[AIS_InteractiveObject];
                          theToUpdateViewer: Standard_Boolean) {.
    importcpp: "UnsetLocalAttributes", header: "AIS_InteractiveContext.hxx".}
proc SetCurrentFacingModel*(this: var AIS_InteractiveContext;
                           aniobj: handle[AIS_InteractiveObject]; aModel: Aspect_TypeOfFacingModel = Aspect_TOFM_BOTH_SIDE) {.
    importcpp: "SetCurrentFacingModel", header: "AIS_InteractiveContext.hxx".}
proc HasColor*(this: AIS_InteractiveContext; aniobj: handle[AIS_InteractiveObject]): Standard_Boolean {.
    noSideEffect, importcpp: "HasColor", header: "AIS_InteractiveContext.hxx".}
proc Color*(this: AIS_InteractiveContext; aniobj: handle[AIS_InteractiveObject];
           acolor: var Quantity_Color) {.noSideEffect, importcpp: "Color",
                                      header: "AIS_InteractiveContext.hxx".}
proc SetColor*(this: var AIS_InteractiveContext;
              theIObj: handle[AIS_InteractiveObject]; theColor: Quantity_Color;
              theToUpdateViewer: Standard_Boolean) {.importcpp: "SetColor",
    header: "AIS_InteractiveContext.hxx".}
proc UnsetColor*(this: var AIS_InteractiveContext;
                theIObj: handle[AIS_InteractiveObject];
                theToUpdateViewer: Standard_Boolean) {.importcpp: "UnsetColor",
    header: "AIS_InteractiveContext.hxx".}
proc Width*(this: AIS_InteractiveContext; aniobj: handle[AIS_InteractiveObject]): Standard_Real {.
    noSideEffect, importcpp: "Width", header: "AIS_InteractiveContext.hxx".}
proc SetWidth*(this: var AIS_InteractiveContext;
              theIObj: handle[AIS_InteractiveObject]; theValue: Standard_Real;
              theToUpdateViewer: Standard_Boolean) {.importcpp: "SetWidth",
    header: "AIS_InteractiveContext.hxx".}
proc UnsetWidth*(this: var AIS_InteractiveContext;
                theIObj: handle[AIS_InteractiveObject];
                theToUpdateViewer: Standard_Boolean) {.importcpp: "UnsetWidth",
    header: "AIS_InteractiveContext.hxx".}
proc SetMaterial*(this: var AIS_InteractiveContext;
                 theIObj: handle[AIS_InteractiveObject];
                 theMaterial: Graphic3d_MaterialAspect;
                 theToUpdateViewer: Standard_Boolean) {.importcpp: "SetMaterial",
    header: "AIS_InteractiveContext.hxx".}
proc UnsetMaterial*(this: var AIS_InteractiveContext;
                   theIObj: handle[AIS_InteractiveObject];
                   theToUpdateViewer: Standard_Boolean) {.
    importcpp: "UnsetMaterial", header: "AIS_InteractiveContext.hxx".}
proc SetTransparency*(this: var AIS_InteractiveContext;
                     theIObj: handle[AIS_InteractiveObject];
                     theValue: Standard_Real; theToUpdateViewer: Standard_Boolean) {.
    importcpp: "SetTransparency", header: "AIS_InteractiveContext.hxx".}
proc UnsetTransparency*(this: var AIS_InteractiveContext;
                       theIObj: handle[AIS_InteractiveObject];
                       theToUpdateViewer: Standard_Boolean) {.
    importcpp: "UnsetTransparency", header: "AIS_InteractiveContext.hxx".}
proc SetPolygonOffsets*(this: var AIS_InteractiveContext;
                       theIObj: handle[AIS_InteractiveObject];
                       theMode: Standard_Integer; theFactor: Standard_ShortReal;
                       theUnits: Standard_ShortReal;
                       theToUpdateViewer: Standard_Boolean) {.
    importcpp: "SetPolygonOffsets", header: "AIS_InteractiveContext.hxx".}
proc HasPolygonOffsets*(this: AIS_InteractiveContext;
                       anObj: handle[AIS_InteractiveObject]): Standard_Boolean {.
    noSideEffect, importcpp: "HasPolygonOffsets",
    header: "AIS_InteractiveContext.hxx".}
proc PolygonOffsets*(this: AIS_InteractiveContext;
                    anObj: handle[AIS_InteractiveObject];
                    aMode: var Standard_Integer; aFactor: var Standard_ShortReal;
                    aUnits: var Standard_ShortReal) {.noSideEffect,
    importcpp: "PolygonOffsets", header: "AIS_InteractiveContext.hxx".}
proc SetTrihedronSize*(this: var AIS_InteractiveContext; theSize: Standard_Real;
                      theToUpdateViewer: Standard_Boolean) {.
    importcpp: "SetTrihedronSize", header: "AIS_InteractiveContext.hxx".}
proc TrihedronSize*(this: AIS_InteractiveContext): Standard_Real {.noSideEffect,
    importcpp: "TrihedronSize", header: "AIS_InteractiveContext.hxx".}
proc SetPlaneSize*(this: var AIS_InteractiveContext; theSizeX: Standard_Real;
                  theSizeY: Standard_Real; theToUpdateViewer: Standard_Boolean) {.
    importcpp: "SetPlaneSize", header: "AIS_InteractiveContext.hxx".}
proc SetPlaneSize*(this: var AIS_InteractiveContext; theSize: Standard_Real;
                  theToUpdateViewer: Standard_Boolean) {.
    importcpp: "SetPlaneSize", header: "AIS_InteractiveContext.hxx".}
proc PlaneSize*(this: AIS_InteractiveContext; XSize: var Standard_Real;
               YSize: var Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "PlaneSize", header: "AIS_InteractiveContext.hxx".}
proc SetDeviationCoefficient*(this: var AIS_InteractiveContext;
                             theIObj: handle[AIS_InteractiveObject];
                             theCoefficient: Standard_Real;
                             theToUpdateViewer: Standard_Boolean) {.
    importcpp: "SetDeviationCoefficient", header: "AIS_InteractiveContext.hxx".}
proc SetDeviationAngle*(this: var AIS_InteractiveContext;
                       theIObj: handle[AIS_InteractiveObject];
                       theAngle: Standard_Real;
                       theToUpdateViewer: Standard_Boolean) {.
    importcpp: "SetDeviationAngle", header: "AIS_InteractiveContext.hxx".}
proc SetAngleAndDeviation*(this: var AIS_InteractiveContext;
                          theIObj: handle[AIS_InteractiveObject];
                          theAngle: Standard_Real;
                          theToUpdateViewer: Standard_Boolean) {.
    importcpp: "SetAngleAndDeviation", header: "AIS_InteractiveContext.hxx".}
proc SetDeviationCoefficient*(this: var AIS_InteractiveContext;
                             theCoefficient: Standard_Real) {.
    importcpp: "SetDeviationCoefficient", header: "AIS_InteractiveContext.hxx".}
proc DeviationCoefficient*(this: AIS_InteractiveContext): Standard_Real {.
    noSideEffect, importcpp: "DeviationCoefficient",
    header: "AIS_InteractiveContext.hxx".}
proc SetDeviationAngle*(this: var AIS_InteractiveContext; anAngle: Standard_Real) {.
    importcpp: "SetDeviationAngle", header: "AIS_InteractiveContext.hxx".}
proc DeviationAngle*(this: AIS_InteractiveContext): Standard_Real {.noSideEffect,
    importcpp: "DeviationAngle", header: "AIS_InteractiveContext.hxx".}
proc HiddenLineAspect*(this: AIS_InteractiveContext): handle[Prs3d_LineAspect] {.
    noSideEffect, importcpp: "HiddenLineAspect",
    header: "AIS_InteractiveContext.hxx".}
proc SetHiddenLineAspect*(this: AIS_InteractiveContext;
                         anAspect: handle[Prs3d_LineAspect]) {.noSideEffect,
    importcpp: "SetHiddenLineAspect", header: "AIS_InteractiveContext.hxx".}
proc DrawHiddenLine*(this: AIS_InteractiveContext): Standard_Boolean {.noSideEffect,
    importcpp: "DrawHiddenLine", header: "AIS_InteractiveContext.hxx".}
proc EnableDrawHiddenLine*(this: AIS_InteractiveContext) {.noSideEffect,
    importcpp: "EnableDrawHiddenLine", header: "AIS_InteractiveContext.hxx".}
proc DisableDrawHiddenLine*(this: AIS_InteractiveContext) {.noSideEffect,
    importcpp: "DisableDrawHiddenLine", header: "AIS_InteractiveContext.hxx".}
proc SetIsoNumber*(this: var AIS_InteractiveContext; NbIsos: Standard_Integer;
                  WhichIsos: AIS_TypeOfIso = AIS_TOI_Both) {.
    importcpp: "SetIsoNumber", header: "AIS_InteractiveContext.hxx".}
proc IsoNumber*(this: var AIS_InteractiveContext;
               WhichIsos: AIS_TypeOfIso = AIS_TOI_Both): Standard_Integer {.
    importcpp: "IsoNumber", header: "AIS_InteractiveContext.hxx".}
proc IsoOnPlane*(this: var AIS_InteractiveContext; SwitchOn: Standard_Boolean) {.
    importcpp: "IsoOnPlane", header: "AIS_InteractiveContext.hxx".}
proc IsoOnPlane*(this: AIS_InteractiveContext): Standard_Boolean {.noSideEffect,
    importcpp: "IsoOnPlane", header: "AIS_InteractiveContext.hxx".}
proc IsoOnTriangulation*(this: var AIS_InteractiveContext;
                        theIsEnabled: Standard_Boolean;
                        theObject: handle[AIS_InteractiveObject]) {.
    importcpp: "IsoOnTriangulation", header: "AIS_InteractiveContext.hxx".}
proc IsoOnTriangulation*(this: var AIS_InteractiveContext;
                        theToSwitchOn: Standard_Boolean) {.
    importcpp: "IsoOnTriangulation", header: "AIS_InteractiveContext.hxx".}
proc IsoOnTriangulation*(this: AIS_InteractiveContext): Standard_Boolean {.
    noSideEffect, importcpp: "IsoOnTriangulation",
    header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  ! @name obsolete methods public : ! Updates the view of the current object in open context.
## ! Objects selected when there is no open local context are called current objects; those selected in open local context, selected objects. Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) void SetCurrentObject ( const opencascade :: handle < AIS_InteractiveObject > [end of template] & theIObj , const Standard_Boolean theToUpdateViewer ) { SetSelected ( theIObj , theToUpdateViewer ) ; } ! Allows to add or remove the object given to the list of current and highlight/unhighlight it correspondingly.
## ! Is valid for global context only; for local context use method AddOrRemoveSelected.
## ! Since this method makes sence only for neutral point selection of a whole object,
## ! if 0 selection of the object is empty this method simply does nothing. Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) void AddOrRemoveCurrentObject ( const opencascade :: handle < AIS_InteractiveObject > [end of template] & theObj , const Standard_Boolean theIsToUpdateViewer ) { AddOrRemoveSelected ( theObj , theIsToUpdateViewer ) ; } ! Updates the list of current objects, i.e. hilights new current objects, removes hilighting from former current objects.
## ! Objects selected when there is no open local context are called current objects; those selected in open local context, selected objects. Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) void UpdateCurrent ( ) { UpdateSelected ( Standard_True ) ; } ! Returns true if there is a non-null interactive object in Neutral Point.
## ! Objects selected when there is no open local context are called current objects;
## ! those selected in open local context, selected objects. Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) Standard_Boolean IsCurrent ( const opencascade :: handle < AIS_InteractiveObject > [end of template] & theObject ) const { return IsSelected ( theObject ) ; } ! Initializes a scan of the current selected objects in Neutral Point.
## ! Objects selected when there is no open local context are called current objects; those selected in open local context, selected objects. Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) void InitCurrent ( ) { InitSelected ( ) ; } ! Returns true if there is another object found by the scan of the list of current objects.
## ! Objects selected when there is no open local context are called current objects; those selected in open local context, selected objects. Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) Standard_Boolean MoreCurrent ( ) const { return MoreSelected ( ) ; } ! Continues the scan to the next object in the list of current objects.
## ! Objects selected when there is no open local context are called current objects; those selected in open local context, selected objects. Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) void NextCurrent ( ) { NextSelected ( ) ; } ! Returns the current interactive object.
## ! Objects selected when there is no open local context are called current objects; those selected in open local context, selected objects. Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) opencascade :: handle < AIS_InteractiveObject > [end of template] Current ( ) const { return SelectedInteractive ( ) ; } Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) Standard_Integer NbCurrents ( ) { return NbSelected ( ) ; } ! Highlights current objects.
## ! Objects selected when there is no open local context are called current objects; those selected in open local context, selected objects. Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) void HilightCurrents ( const Standard_Boolean theToUpdateViewer ) { HilightSelected ( theToUpdateViewer ) ; } ! Removes highlighting from current objects.
## ! Objects selected when there is no open local context are called current objects; those selected in open local context, selected objects. Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) void UnhilightCurrents ( const Standard_Boolean theToUpdateViewer ) { UnhilightSelected ( theToUpdateViewer ) ; } ! Empties previous current objects in order to get the current objects detected by the selector using UpdateCurrent.
## ! Objects selected when there is no open local context are called current objects; those selected in open local context, selected objects. Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) void ClearCurrents ( const Standard_Boolean theToUpdateViewer ) { ClearSelected ( theToUpdateViewer ) ; } ! @return current mouse-detected shape or empty (null) shape, if current interactive object
## ! is not a shape (AIS_Shape) or there is no current mouse-detected interactive object at all.
## ! @sa DetectedCurrentOwner()/InitDetected()/MoreDetected()/NextDetected(). Standard_DEPRECATED ( Local Context is deprecated - ::DetectedCurrentOwner() should be called instead ) const TopoDS_Shape & DetectedCurrentShape ( ) const ;
## Error: identifier expected, but got: Local Context is deprecated - local selection should be used without Local Context!!!

## !!!Ignored construct:  ! @return current mouse-detected interactive object or null object, if there is no currently detected interactives
## ! @sa DetectedCurrentOwner()/InitDetected()/MoreDetected()/NextDetected(). Standard_DEPRECATED ( Local Context is deprecated - ::DetectedCurrentOwner() should be called instead ) opencascade :: handle < AIS_InteractiveObject > [end of template] DetectedCurrentObject ( ) const ;
## Error: identifier expected, but got: Local Context is deprecated - ::DetectedCurrentOwner() should be called instead!!!

proc SubIntensityColor*(this: AIS_InteractiveContext): Quantity_Color {.
    noSideEffect, importcpp: "SubIntensityColor",
    header: "AIS_InteractiveContext.hxx".}
proc SetSubIntensityColor*(this: var AIS_InteractiveContext;
                          theColor: Quantity_Color) {.
    importcpp: "SetSubIntensityColor", header: "AIS_InteractiveContext.hxx".}
proc SubIntensityOn*(this: var AIS_InteractiveContext;
                    theIObj: handle[AIS_InteractiveObject];
                    theToUpdateViewer: Standard_Boolean) {.
    importcpp: "SubIntensityOn", header: "AIS_InteractiveContext.hxx".}
proc SubIntensityOff*(this: var AIS_InteractiveContext;
                     theIObj: handle[AIS_InteractiveObject];
                     theToUpdateViewer: Standard_Boolean) {.
    importcpp: "SubIntensityOff", header: "AIS_InteractiveContext.hxx".}
proc Selection*(this: AIS_InteractiveContext): handle[AIS_Selection] {.noSideEffect,
    importcpp: "Selection", header: "AIS_InteractiveContext.hxx".}
proc SetSelection*(this: var AIS_InteractiveContext;
                  theSelection: handle[AIS_Selection]) {.
    importcpp: "SetSelection", header: "AIS_InteractiveContext.hxx".}
proc DumpJson*(this: AIS_InteractiveContext; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "AIS_InteractiveContext.hxx".}
discard "forward decl of AIS_InteractiveContext"
type
  Handle_AIS_InteractiveContext* = handle[AIS_InteractiveContext]
