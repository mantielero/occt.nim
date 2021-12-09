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
                                                                                                 ## mouse
                                                                                                 ## picking
                                                                                                 ## logic
                                                                                                 ## (detection
                                                                                                 ## and
                                                                                                 ## dynamic
                                                                                                 ## highlighting
                                                                                                 ## of
                                                                                                 ## entities
                                                                                                 ## under
                                                                                                 ## cursor)
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Setup
                                                                                                 ## pixel
                                                                                                 ## tolerance
                                                                                                 ## for
                                                                                                 ## MoveTo()
                                                                                                 ## operation.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @sa
                                                                                                 ## MoveTo().
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


proc newAIS_InteractiveContext*(mainViewer: Handle[V3dViewer]): AIS_InteractiveContext {.
    cdecl, constructor, importcpp: "AIS_InteractiveContext(@)", header: "AIS_InteractiveContext.hxx".}
proc destroyAIS_InteractiveContext*(this: var AIS_InteractiveContext) {.cdecl,
    importcpp: "#.~AIS_InteractiveContext()", header: "AIS_InteractiveContext.hxx".}
proc displayStatus*(this: AIS_InteractiveContext;
                   anIobj: Handle[AIS_InteractiveObject]): AIS_DisplayStatus {.
    noSideEffect, cdecl, importcpp: "DisplayStatus", header: "AIS_InteractiveContext.hxx".}
proc status*(this: AIS_InteractiveContext; anObj: Handle[AIS_InteractiveObject];
            astatus: var TCollectionExtendedString) {.noSideEffect, cdecl,
    importcpp: "Status", header: "AIS_InteractiveContext.hxx".}
proc isDisplayed*(this: AIS_InteractiveContext;
                 anIobj: Handle[AIS_InteractiveObject]): bool {.noSideEffect, cdecl,
    importcpp: "IsDisplayed", header: "AIS_InteractiveContext.hxx".}
proc isDisplayed*(this: AIS_InteractiveContext;
                 aniobj: Handle[AIS_InteractiveObject]; aMode: cint): bool {.
    noSideEffect, cdecl, importcpp: "IsDisplayed", header: "AIS_InteractiveContext.hxx".}
proc setAutoActivateSelection*(this: var AIS_InteractiveContext; theIsAuto: bool) {.
    cdecl, importcpp: "SetAutoActivateSelection", header: "AIS_InteractiveContext.hxx".}
proc getAutoActivateSelection*(this: AIS_InteractiveContext): bool {.noSideEffect,
    cdecl, importcpp: "GetAutoActivateSelection", header: "AIS_InteractiveContext.hxx".}
proc display*(this: var AIS_InteractiveContext;
             theIObj: Handle[AIS_InteractiveObject]; theToUpdateViewer: bool) {.
    cdecl, importcpp: "Display", header: "AIS_InteractiveContext.hxx".}
proc display*(this: var AIS_InteractiveContext;
             theIObj: HandleAIS_InteractiveObject; theDispMode: cint;
             theSelectionMode: cint; theToUpdateViewer: bool;
             theDispStatus: AIS_DisplayStatus = aIS_DS_None) {.cdecl,
    importcpp: "Display", header: "AIS_InteractiveContext.hxx".}
proc display*(this: var HandleAIS_InteractiveContext;
             theIObj: HandleAIS_InteractiveObject; theDispMode: cint;
             theSelectionMode: cint; theToUpdateViewer: bool;
             theDispStatus: AIS_DisplayStatus = aIS_DS_None) {.cdecl,
    importcpp: "#->Display(@)", header: "AIS_InteractiveContext.hxx".}

proc load*(this: var AIS_InteractiveContext; theObj: Handle[AIS_InteractiveObject];
          theSelectionMode: cint = -1) {.cdecl, importcpp: "Load", header: "AIS_InteractiveContext.hxx".}
proc display*(this: var AIS_InteractiveContext;
             theIObj: Handle[AIS_InteractiveObject]; theDispMode: cint;
             theSelectionMode: cint; theToUpdateViewer: bool;
             theToAllowDecomposition: bool;
             theDispStatus: AIS_DisplayStatus = aIS_DS_None) {.cdecl,
    importcpp: "Display", header: "AIS_InteractiveContext.hxx".}
proc load*(this: var AIS_InteractiveContext; theObj: Handle[AIS_InteractiveObject];
          theSelectionMode: cint; a4: bool) {.cdecl, importcpp: "Load", header: "AIS_InteractiveContext.hxx".}
proc erase*(this: var AIS_InteractiveContext;
           theIObj: Handle[AIS_InteractiveObject]; theToUpdateViewer: bool) {.cdecl,
    importcpp: "Erase", header: "AIS_InteractiveContext.hxx".}
proc eraseAll*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.cdecl,
    importcpp: "EraseAll", header: "AIS_InteractiveContext.hxx".}
proc displayAll*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.cdecl,
    importcpp: "DisplayAll", header: "AIS_InteractiveContext.hxx".}
proc eraseSelected*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    cdecl, importcpp: "EraseSelected", header: "AIS_InteractiveContext.hxx".}
proc displaySelected*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    cdecl, importcpp: "DisplaySelected", header: "AIS_InteractiveContext.hxx".}
proc clearPrs*(this: var AIS_InteractiveContext;
              theIObj: Handle[AIS_InteractiveObject]; theMode: cint;
              theToUpdateViewer: bool) {.cdecl, importcpp: "ClearPrs", header: "AIS_InteractiveContext.hxx".}
proc remove*(this: var AIS_InteractiveContext;
            theIObj: Handle[AIS_InteractiveObject]; theToUpdateViewer: bool) {.
    cdecl, importcpp: "Remove", header: "AIS_InteractiveContext.hxx".}
proc removeAll*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.cdecl,
    importcpp: "RemoveAll", header: "AIS_InteractiveContext.hxx".}
proc redisplay*(this: var AIS_InteractiveContext;
               theIObj: Handle[AIS_InteractiveObject]; theToUpdateViewer: bool;
               theAllModes: bool = false) {.cdecl, importcpp: "Redisplay",
                                        header: "AIS_InteractiveContext.hxx".}
proc redisplay*(this: var AIS_InteractiveContext;
               theTypeOfObject: AIS_KindOfInteractive; theSignature: cint;
               theToUpdateViewer: bool) {.cdecl, importcpp: "Redisplay",
                                        header: "AIS_InteractiveContext.hxx".}
proc recomputePrsOnly*(this: var AIS_InteractiveContext;
                      theIObj: Handle[AIS_InteractiveObject];
                      theToUpdateViewer: bool; theAllModes: bool = false) {.cdecl,
    importcpp: "RecomputePrsOnly", header: "AIS_InteractiveContext.hxx".}
proc recomputeSelectionOnly*(this: var AIS_InteractiveContext;
                            anIObj: Handle[AIS_InteractiveObject]) {.cdecl,
    importcpp: "RecomputeSelectionOnly", header: "AIS_InteractiveContext.hxx".}
proc update*(this: var AIS_InteractiveContext;
            theIObj: Handle[AIS_InteractiveObject]; theUpdateViewer: bool) {.cdecl,
    importcpp: "Update", header: "AIS_InteractiveContext.hxx".}
proc highlightStyle*(this: AIS_InteractiveContext;
                    theStyleType: Prs3dTypeOfHighlight): Handle[Prs3dDrawer] {.
    noSideEffect, cdecl, importcpp: "HighlightStyle", header: "AIS_InteractiveContext.hxx".}
proc setHighlightStyle*(this: var AIS_InteractiveContext;
                       theStyleType: Prs3dTypeOfHighlight;
                       theStyle: Handle[Prs3dDrawer]) {.cdecl,
    importcpp: "SetHighlightStyle", header: "AIS_InteractiveContext.hxx".}
proc highlightStyle*(this: AIS_InteractiveContext): Handle[Prs3dDrawer] {.
    noSideEffect, cdecl, importcpp: "HighlightStyle", header: "AIS_InteractiveContext.hxx".}
proc setHighlightStyle*(this: var AIS_InteractiveContext;
                       theStyle: Handle[Prs3dDrawer]) {.cdecl,
    importcpp: "SetHighlightStyle", header: "AIS_InteractiveContext.hxx".}
proc selectionStyle*(this: AIS_InteractiveContext): Handle[Prs3dDrawer] {.
    noSideEffect, cdecl, importcpp: "SelectionStyle", header: "AIS_InteractiveContext.hxx".}
proc setSelectionStyle*(this: var AIS_InteractiveContext;
                       theStyle: Handle[Prs3dDrawer]) {.cdecl,
    importcpp: "SetSelectionStyle", header: "AIS_InteractiveContext.hxx".}
proc highlightStyle*(this: AIS_InteractiveContext;
                    theObj: Handle[AIS_InteractiveObject];
                    theStyle: var Handle[Prs3dDrawer]): bool {.noSideEffect, cdecl,
    importcpp: "HighlightStyle", header: "AIS_InteractiveContext.hxx".}
proc highlightStyle*(this: AIS_InteractiveContext;
                    theOwner: Handle[SelectMgrEntityOwner];
                    theStyle: var Handle[Prs3dDrawer]): bool {.noSideEffect, cdecl,
    importcpp: "HighlightStyle", header: "AIS_InteractiveContext.hxx".}
proc isHilighted*(this: AIS_InteractiveContext;
                 theObj: Handle[AIS_InteractiveObject]): bool {.noSideEffect, cdecl,
    importcpp: "IsHilighted", header: "AIS_InteractiveContext.hxx".}
proc isHilighted*(this: AIS_InteractiveContext;
                 theOwner: Handle[SelectMgrEntityOwner]): bool {.noSideEffect,
    cdecl, importcpp: "IsHilighted", header: "AIS_InteractiveContext.hxx".}
proc hilight*(this: var AIS_InteractiveContext;
             theObj: Handle[AIS_InteractiveObject]; theIsToUpdateViewer: bool) {.
    cdecl, importcpp: "Hilight", header: "AIS_InteractiveContext.hxx".}
proc hilightWithColor*(this: var AIS_InteractiveContext;
                      theObj: Handle[AIS_InteractiveObject];
                      theStyle: Handle[Prs3dDrawer]; theToUpdateViewer: bool) {.
    cdecl, importcpp: "HilightWithColor", header: "AIS_InteractiveContext.hxx".}
proc unhilight*(this: var AIS_InteractiveContext;
               theIObj: Handle[AIS_InteractiveObject]; theToUpdateViewer: bool) {.
    cdecl, importcpp: "Unhilight", header: "AIS_InteractiveContext.hxx".}
proc displayPriority*(this: AIS_InteractiveContext;
                     theIObj: Handle[AIS_InteractiveObject]): cint {.noSideEffect,
    cdecl, importcpp: "DisplayPriority", header: "AIS_InteractiveContext.hxx".}
proc setDisplayPriority*(this: var AIS_InteractiveContext;
                        theIObj: Handle[AIS_InteractiveObject]; thePriority: cint) {.
    cdecl, importcpp: "SetDisplayPriority", header: "AIS_InteractiveContext.hxx".}
proc getZLayer*(this: AIS_InteractiveContext;
               theIObj: Handle[AIS_InteractiveObject]): Graphic3dZLayerId {.
    noSideEffect, cdecl, importcpp: "GetZLayer", header: "AIS_InteractiveContext.hxx".}
proc setZLayer*(this: var AIS_InteractiveContext;
               theIObj: Handle[AIS_InteractiveObject];
               theLayerId: Graphic3dZLayerId) {.cdecl, importcpp: "SetZLayer",
    header: "AIS_InteractiveContext.hxx".}
proc setViewAffinity*(this: var AIS_InteractiveContext;
                     theIObj: Handle[AIS_InteractiveObject];
                     theView: Handle[V3dView]; theIsVisible: bool) {.cdecl,
    importcpp: "SetViewAffinity", header: "AIS_InteractiveContext.hxx".}
proc displayMode*(this: AIS_InteractiveContext): cint {.noSideEffect, cdecl,
    importcpp: "DisplayMode", header: "AIS_InteractiveContext.hxx".}
proc setDisplayMode*(this: var AIS_InteractiveContext; theMode: cint;
                    theToUpdateViewer: bool) {.cdecl, importcpp: "SetDisplayMode",
    header: "AIS_InteractiveContext.hxx".}
proc setDisplayMode*(this: var AIS_InteractiveContext;
                    theIObj: Handle[AIS_InteractiveObject]; theMode: cint;
                    theToUpdateViewer: bool) {.cdecl, importcpp: "SetDisplayMode",
    header: "AIS_InteractiveContext.hxx".}
proc unsetDisplayMode*(this: var AIS_InteractiveContext;
                      theIObj: Handle[AIS_InteractiveObject];
                      theToUpdateViewer: bool) {.cdecl,
    importcpp: "UnsetDisplayMode", header: "AIS_InteractiveContext.hxx".}
proc setLocation*(this: var AIS_InteractiveContext;
                 theObject: Handle[AIS_InteractiveObject];
                 theLocation: TopLocLocation) {.cdecl, importcpp: "SetLocation",
    header: "AIS_InteractiveContext.hxx".}
proc resetLocation*(this: var AIS_InteractiveContext;
                   theObject: Handle[AIS_InteractiveObject]) {.cdecl,
    importcpp: "ResetLocation", header: "AIS_InteractiveContext.hxx".}
proc hasLocation*(this: AIS_InteractiveContext;
                 theObject: Handle[AIS_InteractiveObject]): bool {.noSideEffect,
    cdecl, importcpp: "HasLocation", header: "AIS_InteractiveContext.hxx".}
proc location*(this: AIS_InteractiveContext;
              theObject: Handle[AIS_InteractiveObject]): TopLocLocation {.
    noSideEffect, cdecl, importcpp: "Location", header: "AIS_InteractiveContext.hxx".}
proc setTransformPersistence*(this: var AIS_InteractiveContext;
                             theObject: Handle[AIS_InteractiveObject];
                             theTrsfPers: Handle[Graphic3dTransformPers]) {.cdecl,
    importcpp: "SetTransformPersistence", header: "AIS_InteractiveContext.hxx".}
proc setTransformPersistence*(this: var AIS_InteractiveContext;
                             theObj: Handle[AIS_InteractiveObject];
                             theFlag: Graphic3dTransModeFlags;
                             thePoint: Pnt = newPnt(0.0, 0.0, 0.0)) {.cdecl,
    importcpp: "SetTransformPersistence", header: "AIS_InteractiveContext.hxx".}
proc setPixelTolerance*(this: var AIS_InteractiveContext; thePrecision: cint = 2) {.
    cdecl, importcpp: "SetPixelTolerance", header: "AIS_InteractiveContext.hxx".}
proc pixelTolerance*(this: AIS_InteractiveContext): cint {.noSideEffect, cdecl,
    importcpp: "PixelTolerance", header: "AIS_InteractiveContext.hxx".}
proc setSelectionSensitivity*(this: var AIS_InteractiveContext;
                             theObject: Handle[AIS_InteractiveObject];
                             theMode: cint; theNewSensitivity: cint) {.cdecl,
    importcpp: "SetSelectionSensitivity", header: "AIS_InteractiveContext.hxx".}
proc lastActiveView*(this: AIS_InteractiveContext): Handle[V3dView] {.noSideEffect,
    cdecl, importcpp: "LastActiveView", header: "AIS_InteractiveContext.hxx".}
proc moveTo*(this: var AIS_InteractiveContext; theXPix: cint; theYPix: cint;
            theView: Handle[V3dView]; theToRedrawOnUpdate: bool): AIS_StatusOfDetection {.
    cdecl, importcpp: "MoveTo", header: "AIS_InteractiveContext.hxx".}
proc clearDetected*(this: var AIS_InteractiveContext;
                   theToRedrawImmediate: bool = false): bool {.cdecl,
    importcpp: "ClearDetected", header: "AIS_InteractiveContext.hxx".}
proc hasDetected*(this: AIS_InteractiveContext): bool {.noSideEffect, cdecl,
    importcpp: "HasDetected", header: "AIS_InteractiveContext.hxx".}
proc detectedOwner*(this: AIS_InteractiveContext): Handle[SelectMgrEntityOwner] {.
    noSideEffect, cdecl, importcpp: "DetectedOwner", header: "AIS_InteractiveContext.hxx".}
proc detectedInteractive*(this: AIS_InteractiveContext): Handle[
    AIS_InteractiveObject] {.noSideEffect, cdecl, importcpp: "DetectedInteractive",
                            header: "AIS_InteractiveContext.hxx".}
proc hasDetectedShape*(this: AIS_InteractiveContext): bool {.noSideEffect, cdecl,
    importcpp: "HasDetectedShape", header: "AIS_InteractiveContext.hxx".}
proc detectedShape*(this: AIS_InteractiveContext): TopoDS_Shape {.noSideEffect,
    cdecl, importcpp: "DetectedShape", header: "AIS_InteractiveContext.hxx".}
proc hasNextDetected*(this: AIS_InteractiveContext): bool {.noSideEffect, cdecl,
    importcpp: "HasNextDetected", header: "AIS_InteractiveContext.hxx".}
proc hilightNextDetected*(this: var AIS_InteractiveContext;
                         theView: Handle[V3dView];
                         theToRedrawImmediate: bool = true): cint {.cdecl,
    importcpp: "HilightNextDetected", header: "AIS_InteractiveContext.hxx".}
proc hilightPreviousDetected*(this: var AIS_InteractiveContext;
                             theView: Handle[V3dView];
                             theToRedrawImmediate: bool = true): cint {.cdecl,
    importcpp: "HilightPreviousDetected", header: "AIS_InteractiveContext.hxx".}
proc initDetected*(this: var AIS_InteractiveContext) {.cdecl,
    importcpp: "InitDetected", header: "AIS_InteractiveContext.hxx".}
proc moreDetected*(this: AIS_InteractiveContext): bool {.noSideEffect, cdecl,
    importcpp: "MoreDetected", header: "AIS_InteractiveContext.hxx".}
proc nextDetected*(this: var AIS_InteractiveContext) {.cdecl,
    importcpp: "NextDetected", header: "AIS_InteractiveContext.hxx".}
proc detectedCurrentOwner*(this: AIS_InteractiveContext): Handle[
    SelectMgrEntityOwner] {.noSideEffect, cdecl, importcpp: "DetectedCurrentOwner",
                           header: "AIS_InteractiveContext.hxx".}
proc setSelectedAspect*(this: var AIS_InteractiveContext;
                       theAspect: Handle[Prs3dBasicAspect];
                       theToUpdateViewer: bool) {.cdecl,
    importcpp: "SetSelectedAspect", header: "AIS_InteractiveContext.hxx".}
proc addSelect*(this: var AIS_InteractiveContext;
               theObject: Handle[SelectMgrEntityOwner]): AIS_StatusOfPick {.cdecl,
    importcpp: "AddSelect", header: "AIS_InteractiveContext.hxx".}
proc addSelect*(this: var AIS_InteractiveContext;
               theObject: Handle[AIS_InteractiveObject]): AIS_StatusOfPick {.cdecl,
    importcpp: "AddSelect", header: "AIS_InteractiveContext.hxx".}
proc select*(this: var AIS_InteractiveContext; theXPMin: cint; theYPMin: cint;
            theXPMax: cint; theYPMax: cint; theView: Handle[V3dView];
            theToUpdateViewer: bool): AIS_StatusOfPick {.cdecl, importcpp: "Select",
    header: "AIS_InteractiveContext.hxx".}
proc select*(this: var AIS_InteractiveContext; thePolyline: TColgpArray1OfPnt2d;
            theView: Handle[V3dView]; theToUpdateViewer: bool): AIS_StatusOfPick {.
    cdecl, importcpp: "Select", header: "AIS_InteractiveContext.hxx".}
proc select*(this: var AIS_InteractiveContext; theToUpdateViewer: bool): AIS_StatusOfPick {.
    cdecl, importcpp: "Select", header: "AIS_InteractiveContext.hxx".}
proc shiftSelect*(this: var AIS_InteractiveContext; theToUpdateViewer: bool): AIS_StatusOfPick {.
    cdecl, importcpp: "ShiftSelect", header: "AIS_InteractiveContext.hxx".}
proc shiftSelect*(this: var AIS_InteractiveContext;
                 thePolyline: TColgpArray1OfPnt2d; theView: Handle[V3dView];
                 theToUpdateViewer: bool): AIS_StatusOfPick {.cdecl,
    importcpp: "ShiftSelect", header: "AIS_InteractiveContext.hxx".}
proc shiftSelect*(this: var AIS_InteractiveContext; theXPMin: cint; theYPMin: cint;
                 theXPMax: cint; theYPMax: cint; theView: Handle[V3dView];
                 theToUpdateViewer: bool): AIS_StatusOfPick {.cdecl,
    importcpp: "ShiftSelect", header: "AIS_InteractiveContext.hxx".}
proc boundingBoxOfSelection*(this: AIS_InteractiveContext): BndBox {.noSideEffect,
    cdecl, importcpp: "BoundingBoxOfSelection", header: "AIS_InteractiveContext.hxx".}
proc fitSelected*(this: var AIS_InteractiveContext; theView: Handle[V3dView];
                 theMargin: cfloat; theToUpdate: bool) {.cdecl,
    importcpp: "FitSelected", header: "AIS_InteractiveContext.hxx".}
proc fitSelected*(this: var AIS_InteractiveContext; theView: Handle[V3dView]) {.cdecl,
    importcpp: "FitSelected", header: "AIS_InteractiveContext.hxx".}
proc toHilightSelected*(this: AIS_InteractiveContext): bool {.noSideEffect, cdecl,
    importcpp: "ToHilightSelected", header: "AIS_InteractiveContext.hxx".}
proc setToHilightSelected*(this: var AIS_InteractiveContext; toHilight: bool) {.cdecl,
    importcpp: "SetToHilightSelected", header: "AIS_InteractiveContext.hxx".}
proc automaticHilight*(this: AIS_InteractiveContext): bool {.noSideEffect, cdecl,
    importcpp: "AutomaticHilight", header: "AIS_InteractiveContext.hxx".}
proc setAutomaticHilight*(this: var AIS_InteractiveContext; theStatus: bool) {.cdecl,
    importcpp: "SetAutomaticHilight", header: "AIS_InteractiveContext.hxx".}
proc setSelected*(this: var AIS_InteractiveContext;
                 theOwners: Handle[SelectMgrEntityOwner]; theToUpdateViewer: bool) {.
    cdecl, importcpp: "SetSelected", header: "AIS_InteractiveContext.hxx".}
proc setSelected*(this: var AIS_InteractiveContext;
                 theObject: Handle[AIS_InteractiveObject]; theToUpdateViewer: bool) {.
    cdecl, importcpp: "SetSelected", header: "AIS_InteractiveContext.hxx".}
proc addOrRemoveSelected*(this: var AIS_InteractiveContext;
                         theObject: Handle[AIS_InteractiveObject];
                         theToUpdateViewer: bool) {.cdecl,
    importcpp: "AddOrRemoveSelected", header: "AIS_InteractiveContext.hxx".}
proc setSelectedState*(this: var AIS_InteractiveContext;
                      theOwner: Handle[SelectMgrEntityOwner]; theIsSelected: bool): bool {.
    cdecl, importcpp: "SetSelectedState", header: "AIS_InteractiveContext.hxx".}
proc hilightSelected*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    cdecl, importcpp: "HilightSelected", header: "AIS_InteractiveContext.hxx".}
proc unhilightSelected*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    cdecl, importcpp: "UnhilightSelected", header: "AIS_InteractiveContext.hxx".}
proc updateSelected*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    cdecl, importcpp: "UpdateSelected", header: "AIS_InteractiveContext.hxx".}
proc clearSelected*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    cdecl, importcpp: "ClearSelected", header: "AIS_InteractiveContext.hxx".}
proc addOrRemoveSelected*(this: var AIS_InteractiveContext;
                         theOwner: Handle[SelectMgrEntityOwner];
                         theToUpdateViewer: bool) {.cdecl,
    importcpp: "AddOrRemoveSelected", header: "AIS_InteractiveContext.hxx".}
proc isSelected*(this: AIS_InteractiveContext;
                theOwner: Handle[SelectMgrEntityOwner]): bool {.noSideEffect, cdecl,
    importcpp: "IsSelected", header: "AIS_InteractiveContext.hxx".}
proc isSelected*(this: AIS_InteractiveContext;
                theObj: Handle[AIS_InteractiveObject]): bool {.noSideEffect, cdecl,
    importcpp: "IsSelected", header: "AIS_InteractiveContext.hxx".}
proc firstSelectedObject*(this: AIS_InteractiveContext): Handle[
    AIS_InteractiveObject] {.noSideEffect, cdecl, importcpp: "FirstSelectedObject",
                            header: "AIS_InteractiveContext.hxx".}
proc nbSelected*(this: var AIS_InteractiveContext): cint {.cdecl,
    importcpp: "NbSelected", header: "AIS_InteractiveContext.hxx".}
proc initSelected*(this: var AIS_InteractiveContext) {.cdecl,
    importcpp: "InitSelected", header: "AIS_InteractiveContext.hxx".}
proc moreSelected*(this: AIS_InteractiveContext): bool {.noSideEffect, cdecl,
    importcpp: "MoreSelected", header: "AIS_InteractiveContext.hxx".}
proc nextSelected*(this: var AIS_InteractiveContext) {.cdecl,
    importcpp: "NextSelected", header: "AIS_InteractiveContext.hxx".}
proc selectedOwner*(this: AIS_InteractiveContext): Handle[SelectMgrEntityOwner] {.
    noSideEffect, cdecl, importcpp: "SelectedOwner", header: "AIS_InteractiveContext.hxx".}
proc selectedInteractive*(this: AIS_InteractiveContext): Handle[
    AIS_InteractiveObject] {.noSideEffect, cdecl, importcpp: "SelectedInteractive",
                            header: "AIS_InteractiveContext.hxx".}
proc hasSelectedShape*(this: AIS_InteractiveContext): bool {.noSideEffect, cdecl,
    importcpp: "HasSelectedShape", header: "AIS_InteractiveContext.hxx".}
proc selectedShape*(this: AIS_InteractiveContext): TopoDS_Shape {.noSideEffect,
    cdecl, importcpp: "SelectedShape", header: "AIS_InteractiveContext.hxx".}
proc hasApplicative*(this: AIS_InteractiveContext): bool {.noSideEffect, cdecl,
    importcpp: "HasApplicative", header: "AIS_InteractiveContext.hxx".}
proc applicative*(this: AIS_InteractiveContext): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "Applicative", header: "AIS_InteractiveContext.hxx".}
proc beginImmediateDraw*(this: var AIS_InteractiveContext): bool {.cdecl,
    importcpp: "BeginImmediateDraw", header: "AIS_InteractiveContext.hxx".}
proc immediateAdd*(this: var AIS_InteractiveContext;
                  theObj: Handle[AIS_InteractiveObject]; theMode: cint = 0): bool {.
    cdecl, importcpp: "ImmediateAdd", header: "AIS_InteractiveContext.hxx".}
proc endImmediateDraw*(this: var AIS_InteractiveContext; theView: Handle[V3dView]): bool {.
    cdecl, importcpp: "EndImmediateDraw", header: "AIS_InteractiveContext.hxx".}
proc endImmediateDraw*(this: var AIS_InteractiveContext): bool {.cdecl,
    importcpp: "EndImmediateDraw", header: "AIS_InteractiveContext.hxx".}
proc isImmediateModeOn*(this: AIS_InteractiveContext): bool {.noSideEffect, cdecl,
    importcpp: "IsImmediateModeOn", header: "AIS_InteractiveContext.hxx".}
proc redrawImmediate*(this: var AIS_InteractiveContext; theViewer: Handle[V3dViewer]) {.
    cdecl, importcpp: "RedrawImmediate", header: "AIS_InteractiveContext.hxx".}
proc setSelectionModeActive*(this: var AIS_InteractiveContext;
                            theObj: Handle[AIS_InteractiveObject]; theMode: cint;
                            theToActivate: bool; theConcurrency: AIS_SelectionModesConcurrency = aIS_SelectionModesConcurrencyMultiple;
                            theIsForce: bool = false) {.cdecl,
    importcpp: "SetSelectionModeActive", header: "AIS_InteractiveContext.hxx".}
proc activate*(this: var AIS_InteractiveContext;
              theObj: Handle[AIS_InteractiveObject]; theMode: cint = 0;
              theIsForce: bool = false) {.cdecl, importcpp: "Activate", header: "AIS_InteractiveContext.hxx".}
proc activate*(this: var AIS_InteractiveContext; theMode: cint;
              theIsForce: bool = false) {.cdecl, importcpp: "Activate", header: "AIS_InteractiveContext.hxx".}
proc deactivate*(this: var AIS_InteractiveContext;
                theObj: Handle[AIS_InteractiveObject]) {.cdecl,
    importcpp: "Deactivate", header: "AIS_InteractiveContext.hxx".}
proc deactivate*(this: var AIS_InteractiveContext;
                theObj: Handle[AIS_InteractiveObject]; theMode: cint) {.cdecl,
    importcpp: "Deactivate", header: "AIS_InteractiveContext.hxx".}
proc deactivate*(this: var AIS_InteractiveContext; theMode: cint) {.cdecl,
    importcpp: "Deactivate", header: "AIS_InteractiveContext.hxx".}
proc deactivate*(this: var AIS_InteractiveContext) {.cdecl, importcpp: "Deactivate",
    header: "AIS_InteractiveContext.hxx".}
proc activatedModes*(this: AIS_InteractiveContext;
                    anIobj: Handle[AIS_InteractiveObject];
                    theList: var TColStdListOfInteger) {.noSideEffect, cdecl,
    importcpp: "ActivatedModes", header: "AIS_InteractiveContext.hxx".}
proc entityOwners*(this: AIS_InteractiveContext;
                  theOwners: var Handle[SelectMgrIndexedMapOfOwner];
                  theIObj: Handle[AIS_InteractiveObject]; theMode: cint = -1) {.
    noSideEffect, cdecl, importcpp: "EntityOwners", header: "AIS_InteractiveContext.hxx".}
proc filterType*(this: AIS_InteractiveContext): SelectMgrFilterType {.noSideEffect,
    cdecl, importcpp: "FilterType", header: "AIS_InteractiveContext.hxx".}
proc setFilterType*(this: var AIS_InteractiveContext;
                   theFilterType: SelectMgrFilterType) {.cdecl,
    importcpp: "SetFilterType", header: "AIS_InteractiveContext.hxx".}
proc filters*(this: AIS_InteractiveContext): SelectMgrListOfFilter {.noSideEffect,
    cdecl, importcpp: "Filters", header: "AIS_InteractiveContext.hxx".}
proc addFilter*(this: var AIS_InteractiveContext; theFilter: Handle[SelectMgrFilter]) {.
    cdecl, importcpp: "AddFilter", header: "AIS_InteractiveContext.hxx".}
proc removeFilter*(this: var AIS_InteractiveContext;
                  theFilter: Handle[SelectMgrFilter]) {.cdecl,
    importcpp: "RemoveFilter", header: "AIS_InteractiveContext.hxx".}
proc removeFilters*(this: var AIS_InteractiveContext) {.cdecl,
    importcpp: "RemoveFilters", header: "AIS_InteractiveContext.hxx".}
proc pickingStrategy*(this: AIS_InteractiveContext): SelectMgrPickingStrategy {.
    noSideEffect, cdecl, importcpp: "PickingStrategy", header: "AIS_InteractiveContext.hxx".}
proc setPickingStrategy*(this: var AIS_InteractiveContext;
                        theStrategy: SelectMgrPickingStrategy) {.cdecl,
    importcpp: "SetPickingStrategy", header: "AIS_InteractiveContext.hxx".}
proc defaultDrawer*(this: AIS_InteractiveContext): Handle[Prs3dDrawer] {.
    noSideEffect, cdecl, importcpp: "DefaultDrawer", header: "AIS_InteractiveContext.hxx".}
proc currentViewer*(this: AIS_InteractiveContext): Handle[V3dViewer] {.noSideEffect,
    cdecl, importcpp: "CurrentViewer", header: "AIS_InteractiveContext.hxx".}
proc selectionManager*(this: AIS_InteractiveContext): Handle[
    SelectMgrSelectionManager] {.noSideEffect, cdecl,
                                importcpp: "SelectionManager", header: "AIS_InteractiveContext.hxx".}
proc mainPrsMgr*(this: AIS_InteractiveContext): Handle[PrsMgrPresentationManager3d] {.
    noSideEffect, cdecl, importcpp: "MainPrsMgr", header: "AIS_InteractiveContext.hxx".}
proc mainSelector*(this: AIS_InteractiveContext): Handle[StdSelectViewerSelector3d] {.
    noSideEffect, cdecl, importcpp: "MainSelector", header: "AIS_InteractiveContext.hxx".}
proc updateCurrentViewer*(this: var AIS_InteractiveContext) {.cdecl,
    importcpp: "UpdateCurrentViewer", header: "AIS_InteractiveContext.hxx".}
proc displayedObjects*(this: AIS_InteractiveContext;
                      aListOfIO: var AIS_ListOfInteractive) {.noSideEffect, cdecl,
    importcpp: "DisplayedObjects", header: "AIS_InteractiveContext.hxx".}
proc displayedObjects*(this: AIS_InteractiveContext;
                      theWhichKind: AIS_KindOfInteractive;
                      theWhichSignature: cint;
                      theListOfIO: var AIS_ListOfInteractive) {.noSideEffect, cdecl,
    importcpp: "DisplayedObjects", header: "AIS_InteractiveContext.hxx".}
proc erasedObjects*(this: AIS_InteractiveContext;
                   theListOfIO: var AIS_ListOfInteractive) {.noSideEffect, cdecl,
    importcpp: "ErasedObjects", header: "AIS_InteractiveContext.hxx".}
proc erasedObjects*(this: AIS_InteractiveContext;
                   theWhichKind: AIS_KindOfInteractive; theWhichSignature: cint;
                   theListOfIO: var AIS_ListOfInteractive) {.noSideEffect, cdecl,
    importcpp: "ErasedObjects", header: "AIS_InteractiveContext.hxx".}
proc objectsByDisplayStatus*(this: AIS_InteractiveContext;
                            theStatus: AIS_DisplayStatus;
                            theListOfIO: var AIS_ListOfInteractive) {.noSideEffect,
    cdecl, importcpp: "ObjectsByDisplayStatus", header: "AIS_InteractiveContext.hxx".}
proc objectsByDisplayStatus*(this: AIS_InteractiveContext;
                            whichKind: AIS_KindOfInteractive;
                            whichSignature: cint; theStatus: AIS_DisplayStatus;
                            theListOfIO: var AIS_ListOfInteractive) {.noSideEffect,
    cdecl, importcpp: "ObjectsByDisplayStatus", header: "AIS_InteractiveContext.hxx".}
proc objectsInside*(this: AIS_InteractiveContext;
                   aListOfIO: var AIS_ListOfInteractive;
                   whichKind: AIS_KindOfInteractive = aIS_KOI_None;
                   whichSignature: cint = -1) {.noSideEffect, cdecl,
    importcpp: "ObjectsInside", header: "AIS_InteractiveContext.hxx".}
proc rebuildSelectionStructs*(this: var AIS_InteractiveContext) {.cdecl,
    importcpp: "RebuildSelectionStructs", header: "AIS_InteractiveContext.hxx".}
proc disconnect*(this: var AIS_InteractiveContext;
                theAssembly: Handle[AIS_InteractiveObject];
                theObjToDisconnect: HandleAIS_InteractiveObject = cast[HandleAIS_InteractiveObject](nil)) {.cdecl,
    importcpp: "Disconnect", header: "AIS_InteractiveContext.hxx".}
proc objectsForView*(this: AIS_InteractiveContext;
                    theListOfIO: var AIS_ListOfInteractive;
                    theView: Handle[V3dView]; theIsVisibleInView: bool;
                    theStatus: AIS_DisplayStatus = aIS_DS_None) {.noSideEffect,
    cdecl, importcpp: "ObjectsForView", header: "AIS_InteractiveContext.hxx".}
proc purgeDisplay*(this: var AIS_InteractiveContext): cint {.cdecl,
    importcpp: "PurgeDisplay", header: "AIS_InteractiveContext.hxx".}
proc gravityPoint*(this: AIS_InteractiveContext; theView: Handle[V3dView]): Pnt {.
    noSideEffect, cdecl, importcpp: "GravityPoint", header: "AIS_InteractiveContext.hxx".}
proc displayActiveSensitive*(this: var AIS_InteractiveContext;
                            aView: Handle[V3dView]) {.cdecl,
    importcpp: "DisplayActiveSensitive", header: "AIS_InteractiveContext.hxx".}
proc clearActiveSensitive*(this: var AIS_InteractiveContext; aView: Handle[V3dView]) {.
    cdecl, importcpp: "ClearActiveSensitive", header: "AIS_InteractiveContext.hxx".}
proc displayActiveSensitive*(this: var AIS_InteractiveContext;
                            anObject: Handle[AIS_InteractiveObject];
                            aView: Handle[V3dView]) {.cdecl,
    importcpp: "DisplayActiveSensitive", header: "AIS_InteractiveContext.hxx".}
proc setLocalAttributes*(this: var AIS_InteractiveContext;
                        theIObj: Handle[AIS_InteractiveObject];
                        theDrawer: Handle[Prs3dDrawer]; theToUpdateViewer: bool) {.
    cdecl, importcpp: "SetLocalAttributes", header: "AIS_InteractiveContext.hxx".}
proc unsetLocalAttributes*(this: var AIS_InteractiveContext;
                          theIObj: Handle[AIS_InteractiveObject];
                          theToUpdateViewer: bool) {.cdecl,
    importcpp: "UnsetLocalAttributes", header: "AIS_InteractiveContext.hxx".}
proc setCurrentFacingModel*(this: var AIS_InteractiveContext;
                           aniobj: Handle[AIS_InteractiveObject]; aModel: AspectTypeOfFacingModel = aspectTOFM_BOTH_SIDE) {.
    cdecl, importcpp: "SetCurrentFacingModel", header: "AIS_InteractiveContext.hxx".}
proc hasColor*(this: AIS_InteractiveContext; aniobj: Handle[AIS_InteractiveObject]): bool {.
    noSideEffect, cdecl, importcpp: "HasColor", header: "AIS_InteractiveContext.hxx".}
proc color*(this: AIS_InteractiveContext; aniobj: Handle[AIS_InteractiveObject];
           acolor: var QuantityColor) {.noSideEffect, cdecl, importcpp: "Color",
                                     header: "AIS_InteractiveContext.hxx".}
proc setColor*(this: var AIS_InteractiveContext;
              theIObj: Handle[AIS_InteractiveObject]; theColor: QuantityColor;
              theToUpdateViewer: bool) {.cdecl, importcpp: "SetColor", header: "AIS_InteractiveContext.hxx".}
proc unsetColor*(this: var AIS_InteractiveContext;
                theIObj: Handle[AIS_InteractiveObject]; theToUpdateViewer: bool) {.
    cdecl, importcpp: "UnsetColor", header: "AIS_InteractiveContext.hxx".}
proc width*(this: AIS_InteractiveContext; aniobj: Handle[AIS_InteractiveObject]): cfloat {.
    noSideEffect, cdecl, importcpp: "Width", header: "AIS_InteractiveContext.hxx".}
proc setWidth*(this: var AIS_InteractiveContext;
              theIObj: Handle[AIS_InteractiveObject]; theValue: cfloat;
              theToUpdateViewer: bool) {.cdecl, importcpp: "SetWidth", header: "AIS_InteractiveContext.hxx".}
proc unsetWidth*(this: var AIS_InteractiveContext;
                theIObj: Handle[AIS_InteractiveObject]; theToUpdateViewer: bool) {.
    cdecl, importcpp: "UnsetWidth", header: "AIS_InteractiveContext.hxx".}
proc setMaterial*(this: var AIS_InteractiveContext;
                 theIObj: Handle[AIS_InteractiveObject];
                 theMaterial: Graphic3dMaterialAspect; theToUpdateViewer: bool) {.
    cdecl, importcpp: "SetMaterial", header: "AIS_InteractiveContext.hxx".}
proc unsetMaterial*(this: var AIS_InteractiveContext;
                   theIObj: Handle[AIS_InteractiveObject]; theToUpdateViewer: bool) {.
    cdecl, importcpp: "UnsetMaterial", header: "AIS_InteractiveContext.hxx".}
proc setTransparency*(this: var AIS_InteractiveContext;
                     theIObj: Handle[AIS_InteractiveObject]; theValue: cfloat;
                     theToUpdateViewer: bool) {.cdecl,
    importcpp: "SetTransparency", header: "AIS_InteractiveContext.hxx".}
proc unsetTransparency*(this: var AIS_InteractiveContext;
                       theIObj: Handle[AIS_InteractiveObject];
                       theToUpdateViewer: bool) {.cdecl,
    importcpp: "UnsetTransparency", header: "AIS_InteractiveContext.hxx".}
proc setPolygonOffsets*(this: var AIS_InteractiveContext;
                       theIObj: Handle[AIS_InteractiveObject]; theMode: cint;
                       theFactor: StandardShortReal; theUnits: StandardShortReal;
                       theToUpdateViewer: bool) {.cdecl,
    importcpp: "SetPolygonOffsets", header: "AIS_InteractiveContext.hxx".}
proc hasPolygonOffsets*(this: AIS_InteractiveContext;
                       anObj: Handle[AIS_InteractiveObject]): bool {.noSideEffect,
    cdecl, importcpp: "HasPolygonOffsets", header: "AIS_InteractiveContext.hxx".}
proc polygonOffsets*(this: AIS_InteractiveContext;
                    anObj: Handle[AIS_InteractiveObject]; aMode: var cint;
                    aFactor: var StandardShortReal; aUnits: var StandardShortReal) {.
    noSideEffect, cdecl, importcpp: "PolygonOffsets", header: "AIS_InteractiveContext.hxx".}
proc setTrihedronSize*(this: var AIS_InteractiveContext; theSize: cfloat;
                      theToUpdateViewer: bool) {.cdecl,
    importcpp: "SetTrihedronSize", header: "AIS_InteractiveContext.hxx".}
proc trihedronSize*(this: AIS_InteractiveContext): cfloat {.noSideEffect, cdecl,
    importcpp: "TrihedronSize", header: "AIS_InteractiveContext.hxx".}
proc setPlaneSize*(this: var AIS_InteractiveContext; theSizeX: cfloat;
                  theSizeY: cfloat; theToUpdateViewer: bool) {.cdecl,
    importcpp: "SetPlaneSize", header: "AIS_InteractiveContext.hxx".}
proc setPlaneSize*(this: var AIS_InteractiveContext; theSize: cfloat;
                  theToUpdateViewer: bool) {.cdecl, importcpp: "SetPlaneSize",
    header: "AIS_InteractiveContext.hxx".}
proc planeSize*(this: AIS_InteractiveContext; xSize: var cfloat; ySize: var cfloat): bool {.
    noSideEffect, cdecl, importcpp: "PlaneSize", header: "AIS_InteractiveContext.hxx".}
proc setDeviationCoefficient*(this: var AIS_InteractiveContext;
                             theIObj: Handle[AIS_InteractiveObject];
                             theCoefficient: cfloat; theToUpdateViewer: bool) {.
    cdecl, importcpp: "SetDeviationCoefficient", header: "AIS_InteractiveContext.hxx".}
proc setDeviationAngle*(this: var AIS_InteractiveContext;
                       theIObj: Handle[AIS_InteractiveObject]; theAngle: cfloat;
                       theToUpdateViewer: bool) {.cdecl,
    importcpp: "SetDeviationAngle", header: "AIS_InteractiveContext.hxx".}
proc setAngleAndDeviation*(this: var AIS_InteractiveContext;
                          theIObj: Handle[AIS_InteractiveObject];
                          theAngle: cfloat; theToUpdateViewer: bool) {.cdecl,
    importcpp: "SetAngleAndDeviation", header: "AIS_InteractiveContext.hxx".}
proc setDeviationCoefficient*(this: var AIS_InteractiveContext;
                             theCoefficient: cfloat) {.cdecl,
    importcpp: "SetDeviationCoefficient", header: "AIS_InteractiveContext.hxx".}
proc deviationCoefficient*(this: AIS_InteractiveContext): cfloat {.noSideEffect,
    cdecl, importcpp: "DeviationCoefficient", header: "AIS_InteractiveContext.hxx".}
proc setDeviationAngle*(this: var AIS_InteractiveContext; anAngle: cfloat) {.cdecl,
    importcpp: "SetDeviationAngle", header: "AIS_InteractiveContext.hxx".}
proc deviationAngle*(this: AIS_InteractiveContext): cfloat {.noSideEffect, cdecl,
    importcpp: "DeviationAngle", header: "AIS_InteractiveContext.hxx".}
proc hiddenLineAspect*(this: AIS_InteractiveContext): Handle[Prs3dLineAspect] {.
    noSideEffect, cdecl, importcpp: "HiddenLineAspect", header: "AIS_InteractiveContext.hxx".}
proc setHiddenLineAspect*(this: AIS_InteractiveContext;
                         anAspect: Handle[Prs3dLineAspect]) {.noSideEffect, cdecl,
    importcpp: "SetHiddenLineAspect", header: "AIS_InteractiveContext.hxx".}
proc drawHiddenLine*(this: AIS_InteractiveContext): bool {.noSideEffect, cdecl,
    importcpp: "DrawHiddenLine", header: "AIS_InteractiveContext.hxx".}
proc enableDrawHiddenLine*(this: AIS_InteractiveContext) {.noSideEffect, cdecl,
    importcpp: "EnableDrawHiddenLine", header: "AIS_InteractiveContext.hxx".}
proc disableDrawHiddenLine*(this: AIS_InteractiveContext) {.noSideEffect, cdecl,
    importcpp: "DisableDrawHiddenLine", header: "AIS_InteractiveContext.hxx".}
proc setIsoNumber*(this: var AIS_InteractiveContext; nbIsos: cint;
                  whichIsos: AIS_TypeOfIso = aIS_TOI_Both) {.cdecl,
    importcpp: "SetIsoNumber", header: "AIS_InteractiveContext.hxx".}
proc isoNumber*(this: var AIS_InteractiveContext;
               whichIsos: AIS_TypeOfIso = aIS_TOI_Both): cint {.cdecl,
    importcpp: "IsoNumber", header: "AIS_InteractiveContext.hxx".}
proc isoOnPlane*(this: var AIS_InteractiveContext; switchOn: bool) {.cdecl,
    importcpp: "IsoOnPlane", header: "AIS_InteractiveContext.hxx".}
proc isoOnPlane*(this: AIS_InteractiveContext): bool {.noSideEffect, cdecl,
    importcpp: "IsoOnPlane", header: "AIS_InteractiveContext.hxx".}
proc isoOnTriangulation*(this: var AIS_InteractiveContext; theIsEnabled: bool;
                        theObject: Handle[AIS_InteractiveObject]) {.cdecl,
    importcpp: "IsoOnTriangulation", header: "AIS_InteractiveContext.hxx".}
proc isoOnTriangulation*(this: var AIS_InteractiveContext; theToSwitchOn: bool) {.
    cdecl, importcpp: "IsoOnTriangulation", header: "AIS_InteractiveContext.hxx".}
proc isoOnTriangulation*(this: AIS_InteractiveContext): bool {.noSideEffect, cdecl,
    importcpp: "IsoOnTriangulation", header: "AIS_InteractiveContext.hxx".}
proc setCurrentObject*(this: var AIS_InteractiveContext;
                      theIObj: Handle[AIS_InteractiveObject];
                      theToUpdateViewer: bool) {.cdecl,
    importcpp: "SetCurrentObject", header: "AIS_InteractiveContext.hxx".}
proc addOrRemoveCurrentObject*(this: var AIS_InteractiveContext;
                              theObj: Handle[AIS_InteractiveObject];
                              theIsToUpdateViewer: bool) {.cdecl,
    importcpp: "AddOrRemoveCurrentObject", header: "AIS_InteractiveContext.hxx".}
proc updateCurrent*(this: var AIS_InteractiveContext) {.cdecl,
    importcpp: "UpdateCurrent", header: "AIS_InteractiveContext.hxx".}
proc isCurrent*(this: AIS_InteractiveContext;
               theObject: Handle[AIS_InteractiveObject]): bool {.noSideEffect,
    cdecl, importcpp: "IsCurrent", header: "AIS_InteractiveContext.hxx".}
proc initCurrent*(this: var AIS_InteractiveContext) {.cdecl,
    importcpp: "InitCurrent", header: "AIS_InteractiveContext.hxx".}
proc moreCurrent*(this: AIS_InteractiveContext): bool {.noSideEffect, cdecl,
    importcpp: "MoreCurrent", header: "AIS_InteractiveContext.hxx".}
proc nextCurrent*(this: var AIS_InteractiveContext) {.cdecl,
    importcpp: "NextCurrent", header: "AIS_InteractiveContext.hxx".}
proc current*(this: AIS_InteractiveContext): Handle[AIS_InteractiveObject] {.
    noSideEffect, cdecl, importcpp: "Current", header: "AIS_InteractiveContext.hxx".}
proc nbCurrents*(this: var AIS_InteractiveContext): cint {.cdecl,
    importcpp: "NbCurrents", header: "AIS_InteractiveContext.hxx".}
proc hilightCurrents*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    cdecl, importcpp: "HilightCurrents", header: "AIS_InteractiveContext.hxx".}
proc unhilightCurrents*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    cdecl, importcpp: "UnhilightCurrents", header: "AIS_InteractiveContext.hxx".}
proc clearCurrents*(this: var AIS_InteractiveContext; theToUpdateViewer: bool) {.
    cdecl, importcpp: "ClearCurrents", header: "AIS_InteractiveContext.hxx".}
proc detectedCurrentShape*(this: AIS_InteractiveContext): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "DetectedCurrentShape", header: "AIS_InteractiveContext.hxx".}
proc detectedCurrentObject*(this: AIS_InteractiveContext): Handle[
    AIS_InteractiveObject] {.noSideEffect, cdecl,
                            importcpp: "DetectedCurrentObject", header: "AIS_InteractiveContext.hxx".}
proc subIntensityColor*(this: AIS_InteractiveContext): QuantityColor {.noSideEffect,
    cdecl, importcpp: "SubIntensityColor", header: "AIS_InteractiveContext.hxx".}
proc setSubIntensityColor*(this: var AIS_InteractiveContext; theColor: QuantityColor) {.
    cdecl, importcpp: "SetSubIntensityColor", header: "AIS_InteractiveContext.hxx".}
proc subIntensityOn*(this: var AIS_InteractiveContext;
                    theIObj: Handle[AIS_InteractiveObject];
                    theToUpdateViewer: bool) {.cdecl, importcpp: "SubIntensityOn",
    header: "AIS_InteractiveContext.hxx".}
proc subIntensityOff*(this: var AIS_InteractiveContext;
                     theIObj: Handle[AIS_InteractiveObject];
                     theToUpdateViewer: bool) {.cdecl,
    importcpp: "SubIntensityOff", header: "AIS_InteractiveContext.hxx".}
proc selection*(this: AIS_InteractiveContext): Handle[AIS_Selection] {.noSideEffect,
    cdecl, importcpp: "Selection", header: "AIS_InteractiveContext.hxx".}
proc setSelection*(this: var AIS_InteractiveContext;
                  theSelection: Handle[AIS_Selection]) {.cdecl,
    importcpp: "SetSelection", header: "AIS_InteractiveContext.hxx".}
proc dumpJson*(this: AIS_InteractiveContext; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "AIS_InteractiveContext.hxx".}
type
  HandleAIS_InteractiveContext* = Handle[AIS_InteractiveContext]
