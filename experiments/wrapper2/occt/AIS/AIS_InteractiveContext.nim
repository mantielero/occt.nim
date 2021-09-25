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

  AIS_InteractiveContextbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "AIS_InteractiveContext::get_type_name(@)",
                            header: "AIS_InteractiveContext.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_InteractiveContext::get_type_descriptor(@)",
    header: "AIS_InteractiveContext.hxx".}
proc dynamicType*(this: AIS_InteractiveContext): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "AIS_InteractiveContext.hxx".}
proc constructAIS_InteractiveContext*(mainViewer: Handle[V3dViewer]): AIS_InteractiveContext {.
    constructor, importcpp: "AIS_InteractiveContext(@)",
    header: "AIS_InteractiveContext.hxx".}
proc destroyAIS_InteractiveContext*(this: var AIS_InteractiveContext) {.
    importcpp: "#.~AIS_InteractiveContext()", header: "AIS_InteractiveContext.hxx".}
proc displayStatus*(this: AIS_InteractiveContext;
                   anIobj: Handle[AIS_InteractiveObject]): AIS_DisplayStatus {.
    noSideEffect, importcpp: "DisplayStatus", header: "AIS_InteractiveContext.hxx".}
proc status*(this: AIS_InteractiveContext; anObj: Handle[AIS_InteractiveObject];
            astatus: var TCollectionExtendedString) {.noSideEffect,
    importcpp: "Status", header: "AIS_InteractiveContext.hxx".}
proc isDisplayed*(this: AIS_InteractiveContext;
                 anIobj: Handle[AIS_InteractiveObject]): bool {.noSideEffect,
    importcpp: "IsDisplayed", header: "AIS_InteractiveContext.hxx".}
proc isDisplayed*(this: AIS_InteractiveContext;
                 aniobj: Handle[AIS_InteractiveObject]; aMode: int): bool {.
    noSideEffect, importcpp: "IsDisplayed", header: "AIS_InteractiveContext.hxx".}
proc setAutoActivateSelection*(this: var AIS_InteractiveContext; theIsAuto: bool) {.
    importcpp: "SetAutoActivateSelection", header: "AIS_InteractiveContext.hxx".}
proc getAutoActivateSelection*(this: AIS_InteractiveContext): bool {.noSideEffect,
    importcpp: "GetAutoActivateSelection", header: "AIS_InteractiveContext.hxx".}
proc display*(this: var AIS_InteractiveContext;
             theIObj: Handle[AIS_InteractiveObject]; theToUpdateViewer: bool) {.
    importcpp: "Display", header: "AIS_InteractiveContext.hxx".}
proc display*(this: var AIS_InteractiveContext;
             theIObj: Handle[AIS_InteractiveObject]; theDispMode: int;
             theSelectionMode: int; theToUpdateViewer: bool;
             theDispStatus: AIS_DisplayStatus = aIS_DS_None) {.importcpp: "Display",
    header: "AIS_InteractiveContext.hxx".}
proc load*(this: var AIS_InteractiveContext; theObj: Handle[AIS_InteractiveObject];
          theSelectionMode: int = -1) {.importcpp: "Load",
                                    header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  Standard_DEPRECATED ( Deprecated method Display() with obsolete argument theToAllowDecomposition ) void Display ( const opencascade :: handle < AIS_InteractiveObject > [end of template] & theIObj , const Standard_Integer theDispMode , const Standard_Integer theSelectionMode , const Standard_Boolean theToUpdateViewer , const Standard_Boolean theToAllowDecomposition , const AIS_DisplayStatus theDispStatus = AIS_DS_None ) { ( void ) theToAllowDecomposition ; Display ( theIObj , theDispMode , theSelectionMode , theToUpdateViewer , theDispStatus ) ; } Standard_DEPRECATED ( Deprecated method Load() with obsolete last argument theToAllowDecomposition ) void Load ( const opencascade :: handle < AIS_InteractiveObject > [end of template] & theObj , Standard_Integer theSelectionMode , Standard_Boolean ) { Load ( theObj , theSelectionMode ) ; } ! Hides the object. The object's presentations are simply flagged as invisible and therefore excluded from redrawing.
## ! To show hidden objects, use Display(). void Erase ( const opencascade :: handle < AIS_InteractiveObject > [end of template] & theIObj , const Standard_Boolean theToUpdateViewer ) ;
## Error: identifier expected, but got: Deprecated method Display() with obsolete argument theToAllowDecomposition!!!

proc eraseAll*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    importcpp: "EraseAll", header: "AIS_InteractiveContext.hxx".}
proc displayAll*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    importcpp: "DisplayAll", header: "AIS_InteractiveContext.hxx".}
proc eraseSelected*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    importcpp: "EraseSelected", header: "AIS_InteractiveContext.hxx".}
proc displaySelected*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    importcpp: "DisplaySelected", header: "AIS_InteractiveContext.hxx".}
proc clearPrs*(this: var AIS_InteractiveContext;
              theIObj: Handle[AIS_InteractiveObject]; theMode: int;
              theToUpdateViewer: bool) {.importcpp: "ClearPrs",
                                       header: "AIS_InteractiveContext.hxx".}
proc remove*(this: var AIS_InteractiveContext;
            theIObj: Handle[AIS_InteractiveObject]; theToUpdateViewer: bool) {.
    importcpp: "Remove", header: "AIS_InteractiveContext.hxx".}
proc removeAll*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    importcpp: "RemoveAll", header: "AIS_InteractiveContext.hxx".}
proc redisplay*(this: var AIS_InteractiveContext;
               theIObj: Handle[AIS_InteractiveObject]; theToUpdateViewer: bool;
               theAllModes: bool = false) {.importcpp: "Redisplay",
                                        header: "AIS_InteractiveContext.hxx".}
proc redisplay*(this: var AIS_InteractiveContext;
               theTypeOfObject: AIS_KindOfInteractive; theSignature: int;
               theToUpdateViewer: bool) {.importcpp: "Redisplay",
                                        header: "AIS_InteractiveContext.hxx".}
proc recomputePrsOnly*(this: var AIS_InteractiveContext;
                      theIObj: Handle[AIS_InteractiveObject];
                      theToUpdateViewer: bool; theAllModes: bool = false) {.
    importcpp: "RecomputePrsOnly", header: "AIS_InteractiveContext.hxx".}
proc recomputeSelectionOnly*(this: var AIS_InteractiveContext;
                            anIObj: Handle[AIS_InteractiveObject]) {.
    importcpp: "RecomputeSelectionOnly", header: "AIS_InteractiveContext.hxx".}
proc update*(this: var AIS_InteractiveContext;
            theIObj: Handle[AIS_InteractiveObject]; theUpdateViewer: bool) {.
    importcpp: "Update", header: "AIS_InteractiveContext.hxx".}
proc highlightStyle*(this: AIS_InteractiveContext;
                    theStyleType: Prs3dTypeOfHighlight): Handle[Prs3dDrawer] {.
    noSideEffect, importcpp: "HighlightStyle", header: "AIS_InteractiveContext.hxx".}
proc setHighlightStyle*(this: var AIS_InteractiveContext;
                       theStyleType: Prs3dTypeOfHighlight;
                       theStyle: Handle[Prs3dDrawer]) {.
    importcpp: "SetHighlightStyle", header: "AIS_InteractiveContext.hxx".}
proc highlightStyle*(this: AIS_InteractiveContext): Handle[Prs3dDrawer] {.
    noSideEffect, importcpp: "HighlightStyle", header: "AIS_InteractiveContext.hxx".}
proc setHighlightStyle*(this: var AIS_InteractiveContext;
                       theStyle: Handle[Prs3dDrawer]) {.
    importcpp: "SetHighlightStyle", header: "AIS_InteractiveContext.hxx".}
proc selectionStyle*(this: AIS_InteractiveContext): Handle[Prs3dDrawer] {.
    noSideEffect, importcpp: "SelectionStyle", header: "AIS_InteractiveContext.hxx".}
proc setSelectionStyle*(this: var AIS_InteractiveContext;
                       theStyle: Handle[Prs3dDrawer]) {.
    importcpp: "SetSelectionStyle", header: "AIS_InteractiveContext.hxx".}
proc highlightStyle*(this: AIS_InteractiveContext;
                    theObj: Handle[AIS_InteractiveObject];
                    theStyle: var Handle[Prs3dDrawer]): bool {.noSideEffect,
    importcpp: "HighlightStyle", header: "AIS_InteractiveContext.hxx".}
proc highlightStyle*(this: AIS_InteractiveContext;
                    theOwner: Handle[SelectMgrEntityOwner];
                    theStyle: var Handle[Prs3dDrawer]): bool {.noSideEffect,
    importcpp: "HighlightStyle", header: "AIS_InteractiveContext.hxx".}
proc isHilighted*(this: AIS_InteractiveContext;
                 theObj: Handle[AIS_InteractiveObject]): bool {.noSideEffect,
    importcpp: "IsHilighted", header: "AIS_InteractiveContext.hxx".}
proc isHilighted*(this: AIS_InteractiveContext;
                 theOwner: Handle[SelectMgrEntityOwner]): bool {.noSideEffect,
    importcpp: "IsHilighted", header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  ! Updates the display in the viewer to take dynamic detection into account.
## ! On dynamic detection by the mouse cursor, sensitive primitives are highlighted.
## ! The highlight color of entities detected by mouse movement is white by default. Standard_DEPRECATED ( Deprecated method Hilight() ) void Hilight ( const opencascade :: handle < AIS_InteractiveObject > [end of template] & theObj , const Standard_Boolean theIsToUpdateViewer ) { return HilightWithColor ( theObj , myStyles [ Prs3d_TypeOfHighlight_Dynamic ] , theIsToUpdateViewer ) ; } ! Changes the color of all the lines of the object in view. void HilightWithColor ( const opencascade :: handle < AIS_InteractiveObject > [end of template] & theObj , const opencascade :: handle < Prs3d_Drawer > [end of template] & theStyle , const Standard_Boolean theToUpdateViewer ) ;
## Error: identifier expected, but got: Deprecated method Hilight()!!!

proc unhilight*(this: var AIS_InteractiveContext;
               theIObj: Handle[AIS_InteractiveObject]; theToUpdateViewer: bool) {.
    importcpp: "Unhilight", header: "AIS_InteractiveContext.hxx".}
proc displayPriority*(this: AIS_InteractiveContext;
                     theIObj: Handle[AIS_InteractiveObject]): int {.noSideEffect,
    importcpp: "DisplayPriority", header: "AIS_InteractiveContext.hxx".}
proc setDisplayPriority*(this: var AIS_InteractiveContext;
                        theIObj: Handle[AIS_InteractiveObject]; thePriority: int) {.
    importcpp: "SetDisplayPriority", header: "AIS_InteractiveContext.hxx".}
proc getZLayer*(this: AIS_InteractiveContext;
               theIObj: Handle[AIS_InteractiveObject]): Graphic3dZLayerId {.
    noSideEffect, importcpp: "GetZLayer", header: "AIS_InteractiveContext.hxx".}
proc setZLayer*(this: var AIS_InteractiveContext;
               theIObj: Handle[AIS_InteractiveObject];
               theLayerId: Graphic3dZLayerId) {.importcpp: "SetZLayer",
    header: "AIS_InteractiveContext.hxx".}
proc setViewAffinity*(this: var AIS_InteractiveContext;
                     theIObj: Handle[AIS_InteractiveObject];
                     theView: Handle[V3dView]; theIsVisible: bool) {.
    importcpp: "SetViewAffinity", header: "AIS_InteractiveContext.hxx".}
proc displayMode*(this: AIS_InteractiveContext): int {.noSideEffect,
    importcpp: "DisplayMode", header: "AIS_InteractiveContext.hxx".}
proc setDisplayMode*(this: var AIS_InteractiveContext; theMode: int;
                    theToUpdateViewer: bool) {.importcpp: "SetDisplayMode",
    header: "AIS_InteractiveContext.hxx".}
proc setDisplayMode*(this: var AIS_InteractiveContext;
                    theIObj: Handle[AIS_InteractiveObject]; theMode: int;
                    theToUpdateViewer: bool) {.importcpp: "SetDisplayMode",
    header: "AIS_InteractiveContext.hxx".}
proc unsetDisplayMode*(this: var AIS_InteractiveContext;
                      theIObj: Handle[AIS_InteractiveObject];
                      theToUpdateViewer: bool) {.importcpp: "UnsetDisplayMode",
    header: "AIS_InteractiveContext.hxx".}
proc setLocation*(this: var AIS_InteractiveContext;
                 theObject: Handle[AIS_InteractiveObject];
                 theLocation: TopLocLocation) {.importcpp: "SetLocation",
    header: "AIS_InteractiveContext.hxx".}
proc resetLocation*(this: var AIS_InteractiveContext;
                   theObject: Handle[AIS_InteractiveObject]) {.
    importcpp: "ResetLocation", header: "AIS_InteractiveContext.hxx".}
proc hasLocation*(this: AIS_InteractiveContext;
                 theObject: Handle[AIS_InteractiveObject]): bool {.noSideEffect,
    importcpp: "HasLocation", header: "AIS_InteractiveContext.hxx".}
proc location*(this: AIS_InteractiveContext;
              theObject: Handle[AIS_InteractiveObject]): TopLocLocation {.
    noSideEffect, importcpp: "Location", header: "AIS_InteractiveContext.hxx".}
proc setTransformPersistence*(this: var AIS_InteractiveContext;
                             theObject: Handle[AIS_InteractiveObject];
                             theTrsfPers: Handle[Graphic3dTransformPers]) {.
    importcpp: "SetTransformPersistence", header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  Standard_DEPRECATED ( This method is deprecated - SetTransformPersistence() taking Graphic3d_TransformPers should be called instead ) void SetTransformPersistence ( const opencascade :: handle < AIS_InteractiveObject > [end of template] & theObj , const Graphic3d_TransModeFlags & theFlag , const gp_Pnt & thePoint = gp_Pnt ( 0.0 , 0.0 , 0.0 ) ) { SetTransformPersistence ( theObj , Graphic3d_TransformPers :: FromDeprecatedParams ( theFlag , thePoint ) ) ; } public : ! @name mouse picking logic (detection and dynamic highlighting of entities under cursor) ! Setup pixel tolerance for MoveTo() operation.
## ! @sa MoveTo(). void SetPixelTolerance ( const Standard_Integer thePrecision = 2 ) ;
## Error: identifier expected, but got: This method is deprecated - SetTransformPersistence() taking Graphic3d_TransformPers should be called instead!!!

proc pixelTolerance*(this: AIS_InteractiveContext): int {.noSideEffect,
    importcpp: "PixelTolerance", header: "AIS_InteractiveContext.hxx".}
proc setSelectionSensitivity*(this: var AIS_InteractiveContext;
                             theObject: Handle[AIS_InteractiveObject];
                             theMode: int; theNewSensitivity: int) {.
    importcpp: "SetSelectionSensitivity", header: "AIS_InteractiveContext.hxx".}
proc lastActiveView*(this: AIS_InteractiveContext): Handle[V3dView] {.noSideEffect,
    importcpp: "LastActiveView", header: "AIS_InteractiveContext.hxx".}
proc moveTo*(this: var AIS_InteractiveContext; theXPix: int; theYPix: int;
            theView: Handle[V3dView]; theToRedrawOnUpdate: bool): AIS_StatusOfDetection {.
    importcpp: "MoveTo", header: "AIS_InteractiveContext.hxx".}
proc clearDetected*(this: var AIS_InteractiveContext;
                   theToRedrawImmediate: bool = false): bool {.
    importcpp: "ClearDetected", header: "AIS_InteractiveContext.hxx".}
proc hasDetected*(this: AIS_InteractiveContext): bool {.noSideEffect,
    importcpp: "HasDetected", header: "AIS_InteractiveContext.hxx".}
proc detectedOwner*(this: AIS_InteractiveContext): Handle[SelectMgrEntityOwner] {.
    noSideEffect, importcpp: "DetectedOwner", header: "AIS_InteractiveContext.hxx".}
proc detectedInteractive*(this: AIS_InteractiveContext): Handle[
    AIS_InteractiveObject] {.noSideEffect, importcpp: "DetectedInteractive",
                            header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  ! Returns true if there is a detected shape in local context.
## ! @sa HasDetected()/DetectedShape() Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) Standard_Boolean HasDetectedShape ( ) const ;
## Error: identifier expected, but got: Local Context is deprecated - local selection should be used without Local Context!!!

## !!!Ignored construct:  ! Returns the shape detected in local context.
## ! @sa DetectedOwner() Standard_DEPRECATED ( Local Context is deprecated - local selection should be used without Local Context ) const TopoDS_Shape & DetectedShape ( ) const ;
## Error: identifier expected, but got: Local Context is deprecated - local selection should be used without Local Context!!!

proc hasNextDetected*(this: AIS_InteractiveContext): bool {.noSideEffect,
    importcpp: "HasNextDetected", header: "AIS_InteractiveContext.hxx".}
proc hilightNextDetected*(this: var AIS_InteractiveContext;
                         theView: Handle[V3dView];
                         theToRedrawImmediate: bool = true): int {.
    importcpp: "HilightNextDetected", header: "AIS_InteractiveContext.hxx".}
proc hilightPreviousDetected*(this: var AIS_InteractiveContext;
                             theView: Handle[V3dView];
                             theToRedrawImmediate: bool = true): int {.
    importcpp: "HilightPreviousDetected", header: "AIS_InteractiveContext.hxx".}
proc initDetected*(this: var AIS_InteractiveContext) {.importcpp: "InitDetected",
    header: "AIS_InteractiveContext.hxx".}
proc moreDetected*(this: AIS_InteractiveContext): bool {.noSideEffect,
    importcpp: "MoreDetected", header: "AIS_InteractiveContext.hxx".}
proc nextDetected*(this: var AIS_InteractiveContext) {.importcpp: "NextDetected",
    header: "AIS_InteractiveContext.hxx".}
proc detectedCurrentOwner*(this: AIS_InteractiveContext): Handle[
    SelectMgrEntityOwner] {.noSideEffect, importcpp: "DetectedCurrentOwner",
                           header: "AIS_InteractiveContext.hxx".}
## !!!Ignored construct:  public : ! @name Selection management ! Sets the graphic basic aspect to the current presentation of ALL selected objects. Standard_DEPRECATED ( Deprecated method - presentation attributes should be assigned directly to object ) void SetSelectedAspect ( const opencascade :: handle < Prs3d_BasicAspect > [end of template] & theAspect , const Standard_Boolean theToUpdateViewer ) ;
## Error: identifier expected, but got: Deprecated method - presentation attributes should be assigned directly to object!!!

proc addSelect*(this: var AIS_InteractiveContext;
               theObject: Handle[SelectMgrEntityOwner]): AIS_StatusOfPick {.
    importcpp: "AddSelect", header: "AIS_InteractiveContext.hxx".}
proc addSelect*(this: var AIS_InteractiveContext;
               theObject: Handle[AIS_InteractiveObject]): AIS_StatusOfPick {.
    importcpp: "AddSelect", header: "AIS_InteractiveContext.hxx".}
proc select*(this: var AIS_InteractiveContext; theXPMin: int; theYPMin: int;
            theXPMax: int; theYPMax: int; theView: Handle[V3dView];
            theToUpdateViewer: bool): AIS_StatusOfPick {.importcpp: "Select",
    header: "AIS_InteractiveContext.hxx".}
proc select*(this: var AIS_InteractiveContext; thePolyline: TColgpArray1OfPnt2d;
            theView: Handle[V3dView]; theToUpdateViewer: bool): AIS_StatusOfPick {.
    importcpp: "Select", header: "AIS_InteractiveContext.hxx".}
proc select*(this: var AIS_InteractiveContext; theToUpdateViewer: bool): AIS_StatusOfPick {.
    importcpp: "Select", header: "AIS_InteractiveContext.hxx".}
proc shiftSelect*(this: var AIS_InteractiveContext; theToUpdateViewer: bool): AIS_StatusOfPick {.
    importcpp: "ShiftSelect", header: "AIS_InteractiveContext.hxx".}
proc shiftSelect*(this: var AIS_InteractiveContext;
                 thePolyline: TColgpArray1OfPnt2d; theView: Handle[V3dView];
                 theToUpdateViewer: bool): AIS_StatusOfPick {.
    importcpp: "ShiftSelect", header: "AIS_InteractiveContext.hxx".}
proc shiftSelect*(this: var AIS_InteractiveContext; theXPMin: int; theYPMin: int;
                 theXPMax: int; theYPMax: int; theView: Handle[V3dView];
                 theToUpdateViewer: bool): AIS_StatusOfPick {.
    importcpp: "ShiftSelect", header: "AIS_InteractiveContext.hxx".}
proc boundingBoxOfSelection*(this: AIS_InteractiveContext): BndBox {.noSideEffect,
    importcpp: "BoundingBoxOfSelection", header: "AIS_InteractiveContext.hxx".}
proc fitSelected*(this: var AIS_InteractiveContext; theView: Handle[V3dView];
                 theMargin: float; theToUpdate: bool) {.importcpp: "FitSelected",
    header: "AIS_InteractiveContext.hxx".}
proc fitSelected*(this: var AIS_InteractiveContext; theView: Handle[V3dView]) {.
    importcpp: "FitSelected", header: "AIS_InteractiveContext.hxx".}
proc toHilightSelected*(this: AIS_InteractiveContext): bool {.noSideEffect,
    importcpp: "ToHilightSelected", header: "AIS_InteractiveContext.hxx".}
proc setToHilightSelected*(this: var AIS_InteractiveContext; toHilight: bool) {.
    importcpp: "SetToHilightSelected", header: "AIS_InteractiveContext.hxx".}
proc automaticHilight*(this: AIS_InteractiveContext): bool {.noSideEffect,
    importcpp: "AutomaticHilight", header: "AIS_InteractiveContext.hxx".}
proc setAutomaticHilight*(this: var AIS_InteractiveContext; theStatus: bool) {.
    importcpp: "SetAutomaticHilight", header: "AIS_InteractiveContext.hxx".}
proc setSelected*(this: var AIS_InteractiveContext;
                 theOwners: Handle[SelectMgrEntityOwner]; theToUpdateViewer: bool) {.
    importcpp: "SetSelected", header: "AIS_InteractiveContext.hxx".}
proc setSelected*(this: var AIS_InteractiveContext;
                 theObject: Handle[AIS_InteractiveObject]; theToUpdateViewer: bool) {.
    importcpp: "SetSelected", header: "AIS_InteractiveContext.hxx".}
proc addOrRemoveSelected*(this: var AIS_InteractiveContext;
                         theObject: Handle[AIS_InteractiveObject];
                         theToUpdateViewer: bool) {.
    importcpp: "AddOrRemoveSelected", header: "AIS_InteractiveContext.hxx".}
proc setSelectedState*(this: var AIS_InteractiveContext;
                      theOwner: Handle[SelectMgrEntityOwner]; theIsSelected: bool): bool {.
    importcpp: "SetSelectedState", header: "AIS_InteractiveContext.hxx".}
proc hilightSelected*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    importcpp: "HilightSelected", header: "AIS_InteractiveContext.hxx".}
proc unhilightSelected*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    importcpp: "UnhilightSelected", header: "AIS_InteractiveContext.hxx".}
proc updateSelected*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    importcpp: "UpdateSelected", header: "AIS_InteractiveContext.hxx".}
proc clearSelected*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    importcpp: "ClearSelected", header: "AIS_InteractiveContext.hxx".}
proc addOrRemoveSelected*(this: var AIS_InteractiveContext;
                         theOwner: Handle[SelectMgrEntityOwner];
                         theToUpdateViewer: bool) {.
    importcpp: "AddOrRemoveSelected", header: "AIS_InteractiveContext.hxx".}
proc isSelected*(this: AIS_InteractiveContext;
                theOwner: Handle[SelectMgrEntityOwner]): bool {.noSideEffect,
    importcpp: "IsSelected", header: "AIS_InteractiveContext.hxx".}
proc isSelected*(this: AIS_InteractiveContext;
                theObj: Handle[AIS_InteractiveObject]): bool {.noSideEffect,
    importcpp: "IsSelected", header: "AIS_InteractiveContext.hxx".}
proc firstSelectedObject*(this: AIS_InteractiveContext): Handle[
    AIS_InteractiveObject] {.noSideEffect, importcpp: "FirstSelectedObject",
                            header: "AIS_InteractiveContext.hxx".}
proc nbSelected*(this: var AIS_InteractiveContext): int {.importcpp: "NbSelected",
    header: "AIS_InteractiveContext.hxx".}
proc initSelected*(this: var AIS_InteractiveContext) {.importcpp: "InitSelected",
    header: "AIS_InteractiveContext.hxx".}
proc moreSelected*(this: AIS_InteractiveContext): bool {.noSideEffect,
    importcpp: "MoreSelected", header: "AIS_InteractiveContext.hxx".}
proc nextSelected*(this: var AIS_InteractiveContext) {.importcpp: "NextSelected",
    header: "AIS_InteractiveContext.hxx".}
proc selectedOwner*(this: AIS_InteractiveContext): Handle[SelectMgrEntityOwner] {.
    noSideEffect, importcpp: "SelectedOwner", header: "AIS_InteractiveContext.hxx".}
proc selectedInteractive*(this: AIS_InteractiveContext): Handle[
    AIS_InteractiveObject] {.noSideEffect, importcpp: "SelectedInteractive",
                            header: "AIS_InteractiveContext.hxx".}
proc hasSelectedShape*(this: AIS_InteractiveContext): bool {.noSideEffect,
    importcpp: "HasSelectedShape", header: "AIS_InteractiveContext.hxx".}
proc selectedShape*(this: AIS_InteractiveContext): TopoDS_Shape {.noSideEffect,
    importcpp: "SelectedShape", header: "AIS_InteractiveContext.hxx".}
proc hasApplicative*(this: AIS_InteractiveContext): bool {.noSideEffect,
    importcpp: "HasApplicative", header: "AIS_InteractiveContext.hxx".}
proc applicative*(this: AIS_InteractiveContext): Handle[StandardTransient] {.
    noSideEffect, importcpp: "Applicative", header: "AIS_InteractiveContext.hxx".}
proc beginImmediateDraw*(this: var AIS_InteractiveContext): bool {.
    importcpp: "BeginImmediateDraw", header: "AIS_InteractiveContext.hxx".}
proc immediateAdd*(this: var AIS_InteractiveContext;
                  theObj: Handle[AIS_InteractiveObject]; theMode: int = 0): bool {.
    importcpp: "ImmediateAdd", header: "AIS_InteractiveContext.hxx".}
proc endImmediateDraw*(this: var AIS_InteractiveContext; theView: Handle[V3dView]): bool {.
    importcpp: "EndImmediateDraw", header: "AIS_InteractiveContext.hxx".}
proc endImmediateDraw*(this: var AIS_InteractiveContext): bool {.
    importcpp: "EndImmediateDraw", header: "AIS_InteractiveContext.hxx".}
proc isImmediateModeOn*(this: AIS_InteractiveContext): bool {.noSideEffect,
    importcpp: "IsImmediateModeOn", header: "AIS_InteractiveContext.hxx".}
proc redrawImmediate*(this: var AIS_InteractiveContext; theViewer: Handle[V3dViewer]) {.
    importcpp: "RedrawImmediate", header: "AIS_InteractiveContext.hxx".}
proc setSelectionModeActive*(this: var AIS_InteractiveContext;
                            theObj: Handle[AIS_InteractiveObject]; theMode: int;
                            theToActivate: bool; theConcurrency: AIS_SelectionModesConcurrency = aIS_SelectionModesConcurrencyMultiple;
                            theIsForce: bool = false) {.
    importcpp: "SetSelectionModeActive", header: "AIS_InteractiveContext.hxx".}
proc activate*(this: var AIS_InteractiveContext;
              theObj: Handle[AIS_InteractiveObject]; theMode: int = 0;
              theIsForce: bool = false) {.importcpp: "Activate",
                                      header: "AIS_InteractiveContext.hxx".}
proc activate*(this: var AIS_InteractiveContext; theMode: int;
              theIsForce: bool = false) {.importcpp: "Activate",
                                      header: "AIS_InteractiveContext.hxx".}
proc deactivate*(this: var AIS_InteractiveContext;
                theObj: Handle[AIS_InteractiveObject]) {.importcpp: "Deactivate",
    header: "AIS_InteractiveContext.hxx".}
proc deactivate*(this: var AIS_InteractiveContext;
                theObj: Handle[AIS_InteractiveObject]; theMode: int) {.
    importcpp: "Deactivate", header: "AIS_InteractiveContext.hxx".}
proc deactivate*(this: var AIS_InteractiveContext; theMode: int) {.
    importcpp: "Deactivate", header: "AIS_InteractiveContext.hxx".}
proc deactivate*(this: var AIS_InteractiveContext) {.importcpp: "Deactivate",
    header: "AIS_InteractiveContext.hxx".}
proc activatedModes*(this: AIS_InteractiveContext;
                    anIobj: Handle[AIS_InteractiveObject];
                    theList: var TColStdListOfInteger) {.noSideEffect,
    importcpp: "ActivatedModes", header: "AIS_InteractiveContext.hxx".}
proc entityOwners*(this: AIS_InteractiveContext;
                  theOwners: var Handle[SelectMgrIndexedMapOfOwner];
                  theIObj: Handle[AIS_InteractiveObject]; theMode: int = -1) {.
    noSideEffect, importcpp: "EntityOwners", header: "AIS_InteractiveContext.hxx".}
proc filterType*(this: AIS_InteractiveContext): SelectMgrFilterType {.noSideEffect,
    importcpp: "FilterType", header: "AIS_InteractiveContext.hxx".}
proc setFilterType*(this: var AIS_InteractiveContext;
                   theFilterType: SelectMgrFilterType) {.
    importcpp: "SetFilterType", header: "AIS_InteractiveContext.hxx".}
proc filters*(this: AIS_InteractiveContext): SelectMgrListOfFilter {.noSideEffect,
    importcpp: "Filters", header: "AIS_InteractiveContext.hxx".}
proc addFilter*(this: var AIS_InteractiveContext; theFilter: Handle[SelectMgrFilter]) {.
    importcpp: "AddFilter", header: "AIS_InteractiveContext.hxx".}
proc removeFilter*(this: var AIS_InteractiveContext;
                  theFilter: Handle[SelectMgrFilter]) {.importcpp: "RemoveFilter",
    header: "AIS_InteractiveContext.hxx".}
proc removeFilters*(this: var AIS_InteractiveContext) {.importcpp: "RemoveFilters",
    header: "AIS_InteractiveContext.hxx".}
proc pickingStrategy*(this: AIS_InteractiveContext): SelectMgrPickingStrategy {.
    noSideEffect, importcpp: "PickingStrategy",
    header: "AIS_InteractiveContext.hxx".}
proc setPickingStrategy*(this: var AIS_InteractiveContext;
                        theStrategy: SelectMgrPickingStrategy) {.
    importcpp: "SetPickingStrategy", header: "AIS_InteractiveContext.hxx".}
proc defaultDrawer*(this: AIS_InteractiveContext): Handle[Prs3dDrawer] {.
    noSideEffect, importcpp: "DefaultDrawer", header: "AIS_InteractiveContext.hxx".}
proc currentViewer*(this: AIS_InteractiveContext): Handle[V3dViewer] {.noSideEffect,
    importcpp: "CurrentViewer", header: "AIS_InteractiveContext.hxx".}
proc selectionManager*(this: AIS_InteractiveContext): Handle[
    SelectMgrSelectionManager] {.noSideEffect, importcpp: "SelectionManager",
                                header: "AIS_InteractiveContext.hxx".}
proc mainPrsMgr*(this: AIS_InteractiveContext): Handle[PrsMgrPresentationManager3d] {.
    noSideEffect, importcpp: "MainPrsMgr", header: "AIS_InteractiveContext.hxx".}
proc mainSelector*(this: AIS_InteractiveContext): Handle[StdSelectViewerSelector3d] {.
    noSideEffect, importcpp: "MainSelector", header: "AIS_InteractiveContext.hxx".}
proc updateCurrentViewer*(this: var AIS_InteractiveContext) {.
    importcpp: "UpdateCurrentViewer", header: "AIS_InteractiveContext.hxx".}
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
proc disconnect*(this: var AIS_InteractiveContext;
                theAssembly: Handle[AIS_InteractiveObject];
                theObjToDisconnect: Handle[AIS_InteractiveObject] = nil) {.
    importcpp: "Disconnect", header: "AIS_InteractiveContext.hxx".}
proc objectsForView*(this: AIS_InteractiveContext;
                    theListOfIO: var AIS_ListOfInteractive;
                    theView: Handle[V3dView]; theIsVisibleInView: bool;
                    theStatus: AIS_DisplayStatus = aIS_DS_None) {.noSideEffect,
    importcpp: "ObjectsForView", header: "AIS_InteractiveContext.hxx".}
proc purgeDisplay*(this: var AIS_InteractiveContext): int {.
    importcpp: "PurgeDisplay", header: "AIS_InteractiveContext.hxx".}
proc gravityPoint*(this: AIS_InteractiveContext; theView: Handle[V3dView]): Pnt {.
    noSideEffect, importcpp: "GravityPoint", header: "AIS_InteractiveContext.hxx".}
proc displayActiveSensitive*(this: var AIS_InteractiveContext;
                            aView: Handle[V3dView]) {.
    importcpp: "DisplayActiveSensitive", header: "AIS_InteractiveContext.hxx".}
proc clearActiveSensitive*(this: var AIS_InteractiveContext; aView: Handle[V3dView]) {.
    importcpp: "ClearActiveSensitive", header: "AIS_InteractiveContext.hxx".}
proc displayActiveSensitive*(this: var AIS_InteractiveContext;
                            anObject: Handle[AIS_InteractiveObject];
                            aView: Handle[V3dView]) {.
    importcpp: "DisplayActiveSensitive", header: "AIS_InteractiveContext.hxx".}
proc setLocalAttributes*(this: var AIS_InteractiveContext;
                        theIObj: Handle[AIS_InteractiveObject];
                        theDrawer: Handle[Prs3dDrawer]; theToUpdateViewer: bool) {.
    importcpp: "SetLocalAttributes", header: "AIS_InteractiveContext.hxx".}
proc unsetLocalAttributes*(this: var AIS_InteractiveContext;
                          theIObj: Handle[AIS_InteractiveObject];
                          theToUpdateViewer: bool) {.
    importcpp: "UnsetLocalAttributes", header: "AIS_InteractiveContext.hxx".}
proc setCurrentFacingModel*(this: var AIS_InteractiveContext;
                           aniobj: Handle[AIS_InteractiveObject]; aModel: AspectTypeOfFacingModel = aspectTOFM_BOTH_SIDE) {.
    importcpp: "SetCurrentFacingModel", header: "AIS_InteractiveContext.hxx".}
proc hasColor*(this: AIS_InteractiveContext; aniobj: Handle[AIS_InteractiveObject]): bool {.
    noSideEffect, importcpp: "HasColor", header: "AIS_InteractiveContext.hxx".}
proc color*(this: AIS_InteractiveContext; aniobj: Handle[AIS_InteractiveObject];
           acolor: var QuantityColor) {.noSideEffect, importcpp: "Color",
                                     header: "AIS_InteractiveContext.hxx".}
proc setColor*(this: var AIS_InteractiveContext;
              theIObj: Handle[AIS_InteractiveObject]; theColor: QuantityColor;
              theToUpdateViewer: bool) {.importcpp: "SetColor",
                                       header: "AIS_InteractiveContext.hxx".}
proc unsetColor*(this: var AIS_InteractiveContext;
                theIObj: Handle[AIS_InteractiveObject]; theToUpdateViewer: bool) {.
    importcpp: "UnsetColor", header: "AIS_InteractiveContext.hxx".}
proc width*(this: AIS_InteractiveContext; aniobj: Handle[AIS_InteractiveObject]): float {.
    noSideEffect, importcpp: "Width", header: "AIS_InteractiveContext.hxx".}
proc setWidth*(this: var AIS_InteractiveContext;
              theIObj: Handle[AIS_InteractiveObject]; theValue: float;
              theToUpdateViewer: bool) {.importcpp: "SetWidth",
                                       header: "AIS_InteractiveContext.hxx".}
proc unsetWidth*(this: var AIS_InteractiveContext;
                theIObj: Handle[AIS_InteractiveObject]; theToUpdateViewer: bool) {.
    importcpp: "UnsetWidth", header: "AIS_InteractiveContext.hxx".}
proc setMaterial*(this: var AIS_InteractiveContext;
                 theIObj: Handle[AIS_InteractiveObject];
                 theMaterial: Graphic3dMaterialAspect; theToUpdateViewer: bool) {.
    importcpp: "SetMaterial", header: "AIS_InteractiveContext.hxx".}
proc unsetMaterial*(this: var AIS_InteractiveContext;
                   theIObj: Handle[AIS_InteractiveObject]; theToUpdateViewer: bool) {.
    importcpp: "UnsetMaterial", header: "AIS_InteractiveContext.hxx".}
proc setTransparency*(this: var AIS_InteractiveContext;
                     theIObj: Handle[AIS_InteractiveObject]; theValue: float;
                     theToUpdateViewer: bool) {.importcpp: "SetTransparency",
    header: "AIS_InteractiveContext.hxx".}
proc unsetTransparency*(this: var AIS_InteractiveContext;
                       theIObj: Handle[AIS_InteractiveObject];
                       theToUpdateViewer: bool) {.importcpp: "UnsetTransparency",
    header: "AIS_InteractiveContext.hxx".}
proc setPolygonOffsets*(this: var AIS_InteractiveContext;
                       theIObj: Handle[AIS_InteractiveObject]; theMode: int;
                       theFactor: StandardShortReal; theUnits: StandardShortReal;
                       theToUpdateViewer: bool) {.importcpp: "SetPolygonOffsets",
    header: "AIS_InteractiveContext.hxx".}
proc hasPolygonOffsets*(this: AIS_InteractiveContext;
                       anObj: Handle[AIS_InteractiveObject]): bool {.noSideEffect,
    importcpp: "HasPolygonOffsets", header: "AIS_InteractiveContext.hxx".}
proc polygonOffsets*(this: AIS_InteractiveContext;
                    anObj: Handle[AIS_InteractiveObject]; aMode: var int;
                    aFactor: var StandardShortReal; aUnits: var StandardShortReal) {.
    noSideEffect, importcpp: "PolygonOffsets", header: "AIS_InteractiveContext.hxx".}
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
proc setDeviationCoefficient*(this: var AIS_InteractiveContext;
                             theIObj: Handle[AIS_InteractiveObject];
                             theCoefficient: float; theToUpdateViewer: bool) {.
    importcpp: "SetDeviationCoefficient", header: "AIS_InteractiveContext.hxx".}
proc setDeviationAngle*(this: var AIS_InteractiveContext;
                       theIObj: Handle[AIS_InteractiveObject]; theAngle: float;
                       theToUpdateViewer: bool) {.importcpp: "SetDeviationAngle",
    header: "AIS_InteractiveContext.hxx".}
proc setAngleAndDeviation*(this: var AIS_InteractiveContext;
                          theIObj: Handle[AIS_InteractiveObject]; theAngle: float;
                          theToUpdateViewer: bool) {.
    importcpp: "SetAngleAndDeviation", header: "AIS_InteractiveContext.hxx".}
proc setDeviationCoefficient*(this: var AIS_InteractiveContext;
                             theCoefficient: float) {.
    importcpp: "SetDeviationCoefficient", header: "AIS_InteractiveContext.hxx".}
proc deviationCoefficient*(this: AIS_InteractiveContext): float {.noSideEffect,
    importcpp: "DeviationCoefficient", header: "AIS_InteractiveContext.hxx".}
proc setDeviationAngle*(this: var AIS_InteractiveContext; anAngle: float) {.
    importcpp: "SetDeviationAngle", header: "AIS_InteractiveContext.hxx".}
proc deviationAngle*(this: AIS_InteractiveContext): float {.noSideEffect,
    importcpp: "DeviationAngle", header: "AIS_InteractiveContext.hxx".}
proc hiddenLineAspect*(this: AIS_InteractiveContext): Handle[Prs3dLineAspect] {.
    noSideEffect, importcpp: "HiddenLineAspect",
    header: "AIS_InteractiveContext.hxx".}
proc setHiddenLineAspect*(this: AIS_InteractiveContext;
                         anAspect: Handle[Prs3dLineAspect]) {.noSideEffect,
    importcpp: "SetHiddenLineAspect", header: "AIS_InteractiveContext.hxx".}
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
proc isoOnTriangulation*(this: var AIS_InteractiveContext; theIsEnabled: bool;
                        theObject: Handle[AIS_InteractiveObject]) {.
    importcpp: "IsoOnTriangulation", header: "AIS_InteractiveContext.hxx".}
proc isoOnTriangulation*(this: var AIS_InteractiveContext; theToSwitchOn: bool) {.
    importcpp: "IsoOnTriangulation", header: "AIS_InteractiveContext.hxx".}
proc isoOnTriangulation*(this: AIS_InteractiveContext): bool {.noSideEffect,
    importcpp: "IsoOnTriangulation", header: "AIS_InteractiveContext.hxx".}
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

proc subIntensityColor*(this: AIS_InteractiveContext): QuantityColor {.noSideEffect,
    importcpp: "SubIntensityColor", header: "AIS_InteractiveContext.hxx".}
proc setSubIntensityColor*(this: var AIS_InteractiveContext; theColor: QuantityColor) {.
    importcpp: "SetSubIntensityColor", header: "AIS_InteractiveContext.hxx".}
proc subIntensityOn*(this: var AIS_InteractiveContext;
                    theIObj: Handle[AIS_InteractiveObject];
                    theToUpdateViewer: bool) {.importcpp: "SubIntensityOn",
    header: "AIS_InteractiveContext.hxx".}
proc subIntensityOff*(this: var AIS_InteractiveContext;
                     theIObj: Handle[AIS_InteractiveObject];
                     theToUpdateViewer: bool) {.importcpp: "SubIntensityOff",
    header: "AIS_InteractiveContext.hxx".}
proc selection*(this: AIS_InteractiveContext): Handle[AIS_Selection] {.noSideEffect,
    importcpp: "Selection", header: "AIS_InteractiveContext.hxx".}
proc setSelection*(this: var AIS_InteractiveContext;
                  theSelection: Handle[AIS_Selection]) {.
    importcpp: "SetSelection", header: "AIS_InteractiveContext.hxx".}
proc dumpJson*(this: AIS_InteractiveContext; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "AIS_InteractiveContext.hxx".}
discard "forward decl of AIS_InteractiveContext"
type
  HandleAIS_InteractiveContext* = Handle[AIS_InteractiveContext]

