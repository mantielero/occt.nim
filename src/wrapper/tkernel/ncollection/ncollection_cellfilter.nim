##  Created on: 2007-05-26
##  Created by: Andrey BETENEV
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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

## ! Auxiliary enumeration serving as responce from method Inspect

type
  NCollectionCellFilterAction* {.size: sizeof(cint),
                                importcpp: "NCollection_CellFilter_Action",
                                header: "NCollection_CellFilter.hxx".} = enum
    CellFilterKeep = 0,         ## !< Target is needed and should be kept
    CellFilterPurge = 1


## *
##  A data structure for sorting geometric objects (called targets) in
##  n-dimensional space into cells, with associated algorithm for fast checking
##  of coincidence (overlapping, intersection, etc.) with other objects
##  (called here bullets).
##
##  Description
##
##  The algorithm is based on hash map, thus it has linear time of initialization
##  (O(N) where N is number of cells covered by added targets) and constant-time
##  search for one bullet (more precisely, O(M) where M is number of cells covered
##  by the bullet).
##
##  The idea behind the algorithm is to separate each co-ordinate of the space
##  into equal-size cells. Note that this works well when cell size is
##  approximately equal to the characteristic size of the involved objects
##  (targets and bullets; including tolerance eventually used for coincidence
##  check).
##
##  Usage
##
##  The target objects to be searched are added to the tool by methods Add();
##  each target is classified as belonging to some cell(s). The data on cells
##  (list of targets found in each one) are stored in the hash map with key being
##  cumulative index of the cell by all co-ordinates.
##  Thus the time needed to find targets in some cell is O(1) * O(number of
##  targets in the cell).
##
##  As soon as all the targets are added, the algorithm is ready to check for
##  coincidence.
##  To find the targets coincident with any given bullet, it checks all the
##  candidate targets in the cell(s) covered by the bullet object
##  (methods Inspect()).
##
##  The methods Add() and Inspect() have two flavours each: one accepts
##  single point identifying one cell, another accept two points specifying
##  the range of cells. It should be noted that normally at least one of these
##  methods is called as for range of cells: either due to objects having non-
##  zero size, or in order to account for the tolerance when objects are points.
##
##  The set of targets can be modified during the process: new targets can be
##  added by Add(), existing targets can be removed by Remove().
##
##  Implementation
##
##  The algorithm is implemented as template class, thus it is capable to
##  work with objects of any type. The only argument of the template should be
##  the specific class providing all necessary features required by the
##  algorithm:
##
##  - typedef "Target" defining type of target objects.
##    This type must have copy constructor
##
##  - typedef "Point" defining type of geometrical points used
##
##  - enum Dimension whose value must be dimension of the point
##
##  - method Coord() returning value of the i-th coordinate of the point:
##
##    static Standard_Real Coord (int i, const Point& thePnt);
##
##    Note that index i is from 0 to Dimension-1.
##
##  - method IsEqual() used by Remove() to identify objects to be removed:
##
##    Standard_Boolean IsEqual (const Target& theT1, const Target& theT2);
##
##  - method Inspect() performing necessary actions on the candidate target
##    object (usially comparison with the currently checked bullet object):
##
##    NCollection_CellFilter_Action Inspect (const Target& theObject);
##
##    The returned value can be used to command CellFilter
##    to remove the inspected item from the current cell; this allows
##    to exclude the items that has been processed and are not needed any
##    more in further search (for better performance).
##
##    Note that method Inspect() can be const and/or virtual.
##

type
  NCollectionCellFilter*[Inspector] {.importcpp: "NCollection_CellFilter<\'0>",
                                     header: "NCollection_CellFilter.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Constructor;
                                                                                        ## initialized
                                                                                        ## by
                                                                                        ## dimension
                                                                                        ## count
                                                                                        ## and
                                                                                        ## cell
                                                                                        ## size.
                                                                                        ##
                                                                                        ## !
                                                                                        ##
                                                                                        ## !
                                                                                        ## Note:
                                                                                        ## the
                                                                                        ## cell
                                                                                        ## size
                                                                                        ## must
                                                                                        ## be
                                                                                        ## ensured
                                                                                        ## to
                                                                                        ## be
                                                                                        ## greater
                                                                                        ## than
                                                                                        ##
                                                                                        ## !
                                                                                        ## maximal
                                                                                        ## co-ordinate
                                                                                        ## of
                                                                                        ## the
                                                                                        ## involved
                                                                                        ## points
                                                                                        ## divided
                                                                                        ## by
                                                                                        ## INT_MAX,
                                                                                        ##
                                                                                        ## !
                                                                                        ## in
                                                                                        ## order
                                                                                        ## to
                                                                                        ## avoid
                                                                                        ## integer
                                                                                        ## overflow
                                                                                        ## of
                                                                                        ## cell
                                                                                        ## index.
                                                                                        ##
                                                                                        ## !
                                                                                        ##
                                                                                        ## !
                                                                                        ## By
                                                                                        ## default
                                                                                        ## cell
                                                                                        ## size
                                                                                        ## is
                                                                                        ## 0,
                                                                                        ## which
                                                                                        ## is
                                                                                        ## invalid;
                                                                                        ## thus
                                                                                        ## if
                                                                                        ## default
                                                                                        ##
                                                                                        ## !
                                                                                        ## constructor
                                                                                        ## is
                                                                                        ## used,
                                                                                        ## the
                                                                                        ## tool
                                                                                        ## must
                                                                                        ## be
                                                                                        ## initialized
                                                                                        ## later
                                                                                        ## with
                                                                                        ##
                                                                                        ## !
                                                                                        ## appropriate
                                                                                        ## cell
                                                                                        ## size
                                                                                        ## by
                                                                                        ## call
                                                                                        ## to
                                                                                        ## Reset()
                                                                                        ##
                                                                                        ## !
                                                                                        ## Constructor
                                                                                        ## when
                                                                                        ## dimension
                                                                                        ## count
                                                                                        ## is
                                                                                        ## unknown
                                                                                        ## at
                                                                                        ## compilation
                                                                                        ## time.
                                                                                        ##
                                                                                        ## *
                                                                                        ##
                                                                                        ## Auxiliary
                                                                                        ## class
                                                                                        ## for
                                                                                        ## storing
                                                                                        ## points
                                                                                        ## belonging
                                                                                        ## to
                                                                                        ## the
                                                                                        ## cell
                                                                                        ## as
                                                                                        ## the
                                                                                        ## list
                                                                                        ##
                                                                                        ##
                                                                                        ## !
                                                                                        ## Reset
                                                                                        ## allocator
                                                                                        ## to
                                                                                        ## the
                                                                                        ## new
                                                                                        ## one

  NCollectionCellFilterTarget* {.importcpp:"typename Inspector::Target".} = object
  NCollectionCellFilterPoint* {.importcpp:"typename Inspector::Point".} = object

proc newNCollectionCellFilter*[Inspector](theDim: cint;
    theCellSize: StandardReal = 0; theAlloc: Handle[NCollectionIncAllocator] = cast[Handle[NCollectionIncAllocator]](0)): NCollectionCellFilter[
    Inspector] {.cdecl, constructor, importcpp: "NCollection_CellFilter<\'*0>(@)",
                header: "NCollection_CellFilter.hxx".}
proc newNCollectionCellFilter*[Inspector](theCellSize: StandardReal = 0;
    theAlloc: Handle[NCollectionIncAllocator] = cast[Handle[NCollectionIncAllocator]](0)): NCollectionCellFilter[Inspector] {.
    cdecl, constructor, importcpp: "NCollection_CellFilter<\'*0>(@)",
    header: "NCollection_CellFilter.hxx".}
proc reset*[Inspector](this: var NCollectionCellFilter[Inspector];
                      theCellSize: StandardReal;
                      theAlloc: Handle[NCollectionIncAllocator] = cast[Handle[NCollectionIncAllocator]](0)) {.cdecl,
    importcpp: "Reset", header: "NCollection_CellFilter.hxx".}
proc reset*[Inspector](this: var NCollectionCellFilter[Inspector];
                      theCellSize: var NCollectionArray1[StandardReal];
                      theAlloc: Handle[NCollectionIncAllocator] = cast[Handle[NCollectionIncAllocator]](0)) {.cdecl,
    importcpp: "Reset", header: "NCollection_CellFilter.hxx".}
proc add*[Inspector](this: var NCollectionCellFilter[Inspector];
                    theTarget: NCollectionCellFilterTarget;
                    thePnt: NCollectionCellFilterPoint) {.cdecl, importcpp: "Add",
    header: "NCollection_CellFilter.hxx".}
proc add*[Inspector](this: var NCollectionCellFilter[Inspector];
                    theTarget: NCollectionCellFilterTarget;
                    thePntMin: NCollectionCellFilterPoint;
                    thePntMax: NCollectionCellFilterPoint) {.cdecl,
    importcpp: "Add", header: "NCollection_CellFilter.hxx".}
proc remove*[Inspector](this: var NCollectionCellFilter[Inspector];
                       theTarget: NCollectionCellFilterTarget;
                       thePnt: NCollectionCellFilterPoint) {.cdecl,
    importcpp: "Remove", header: "NCollection_CellFilter.hxx".}
proc remove*[Inspector](this: var NCollectionCellFilter[Inspector];
                       theTarget: NCollectionCellFilterTarget;
                       thePntMin: NCollectionCellFilterPoint;
                       thePntMax: NCollectionCellFilterPoint) {.cdecl,
    importcpp: "Remove", header: "NCollection_CellFilter.hxx".}
proc inspect*[Inspector](this: var NCollectionCellFilter[Inspector];
                        thePnt: NCollectionCellFilterPoint;
                        theInspector: var Inspector) {.cdecl, importcpp: "Inspect",
    header: "NCollection_CellFilter.hxx".}
proc inspect*[Inspector](this: var NCollectionCellFilter[Inspector];
                        thePntMin: NCollectionCellFilterPoint;
                        thePntMax: NCollectionCellFilterPoint;
                        theInspector: var Inspector) {.cdecl, importcpp: "Inspect",
    header: "NCollection_CellFilter.hxx".}
## *
##  Base class defining part of the Inspector interface
##  for CellFilter algorithm, working with gp_XYZ points in 3d space
##

discard "forward decl of gp_XYZ"
type
  NCollectionCellFilterInspectorXYZ* {.importcpp: "NCollection_CellFilter_InspectorXYZ",
                                      header: "NCollection_CellFilter.hxx", bycopy.} = object of RootObj##
                                                                                         ## !
                                                                                         ## Points
                                                                                         ## dimension


const
  NCollectionCellFilterInspectorXYZDimension* = 3

type
  NCollectionCellFilterInspectorXYZPoint* = Xyz

proc coord*(i: cint; thePnt: NCollectionCellFilterInspectorXYZPoint): StandardReal {.
    cdecl, importcpp: "NCollection_CellFilter_InspectorXYZ::Coord(@)",
    header: "NCollection_CellFilter.hxx".}
proc shift*(this: NCollectionCellFilterInspectorXYZ;
           thePnt: NCollectionCellFilterInspectorXYZPoint; theTol: StandardReal): NCollectionCellFilterInspectorXYZPoint {.
    noSideEffect, cdecl, importcpp: "Shift", header: "NCollection_CellFilter.hxx".}
## *
##  Base class defining part of the Inspector interface
##  for CellFilter algorithm, working with gp_XY points in 2d space
##

discard "forward decl of gp_XY"
type
  NCollectionCellFilterInspectorXY* {.importcpp: "NCollection_CellFilter_InspectorXY",
                                     header: "NCollection_CellFilter.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Points
                                                                                        ## dimension


const
  NCollectionCellFilterInspectorXYDimension* = 2

type
  NCollectionCellFilterInspectorXYPoint* = Xy

proc coord*(i: cint; thePnt: NCollectionCellFilterInspectorXYPoint): StandardReal {.
    cdecl, importcpp: "NCollection_CellFilter_InspectorXY::Coord(@)",
    header: "NCollection_CellFilter.hxx".}
proc shift*(this: NCollectionCellFilterInspectorXY;
           thePnt: NCollectionCellFilterInspectorXYPoint; theTol: StandardReal): NCollectionCellFilterInspectorXYPoint {.
    noSideEffect, cdecl, importcpp: "Shift", header: "NCollection_CellFilter.hxx".}