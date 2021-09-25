##  Created on: 1992-02-14
##  Created by: Jean Claude VAUTHIER
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt"
type
  GPropPGProps* {.importcpp: "GProp_PGProps", header: "GProp_PGProps.hxx", bycopy.} = object of GPropGProps ##
                                                                                                  ## !
                                                                                                  ## Initializes
                                                                                                  ## a
                                                                                                  ## framework
                                                                                                  ## to
                                                                                                  ## compute
                                                                                                  ## global
                                                                                                  ## properties
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## on
                                                                                                  ## a
                                                                                                  ## set
                                                                                                  ## of
                                                                                                  ## points.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## The
                                                                                                  ## point
                                                                                                  ## relative
                                                                                                  ## to
                                                                                                  ## which
                                                                                                  ## the
                                                                                                  ## inertia
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## system
                                                                                                  ## is
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## computed
                                                                                                  ## will
                                                                                                  ## be
                                                                                                  ## the
                                                                                                  ## origin
                                                                                                  ## (0,
                                                                                                  ## 0,
                                                                                                  ## 0)
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## absolute
                                                                                                  ## Cartesian
                                                                                                  ## coordinate
                                                                                                  ## system.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## At
                                                                                                  ## initialization,
                                                                                                  ## the
                                                                                                  ## framework
                                                                                                  ## is
                                                                                                  ## empty,
                                                                                                  ## i.e.
                                                                                                  ## it
                                                                                                  ## retains
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## no
                                                                                                  ## dimensional
                                                                                                  ## information
                                                                                                  ## such
                                                                                                  ## as
                                                                                                  ## mass
                                                                                                  ## and
                                                                                                  ## inertia.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## It
                                                                                                  ## is,
                                                                                                  ## however,
                                                                                                  ## now
                                                                                                  ## able
                                                                                                  ## to
                                                                                                  ## keep
                                                                                                  ## global
                                                                                                  ## properties
                                                                                                  ## of
                                                                                                  ## a
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## set
                                                                                                  ## of
                                                                                                  ## points
                                                                                                  ## while
                                                                                                  ## new
                                                                                                  ## points
                                                                                                  ## are
                                                                                                  ## added
                                                                                                  ## using
                                                                                                  ## the
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## AddPoint
                                                                                                  ## function.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## The
                                                                                                  ## set
                                                                                                  ## of
                                                                                                  ## points
                                                                                                  ## whose
                                                                                                  ## global
                                                                                                  ## properties
                                                                                                  ## are
                                                                                                  ## brought
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## together
                                                                                                  ## by
                                                                                                  ## this
                                                                                                  ## framework
                                                                                                  ## will
                                                                                                  ## then
                                                                                                  ## be
                                                                                                  ## referred
                                                                                                  ## to
                                                                                                  ## as
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## the
                                                                                                  ## current
                                                                                                  ## system.
                                                                                                  ## The
                                                                                                  ## current
                                                                                                  ## system
                                                                                                  ## is,
                                                                                                  ## however,
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## not
                                                                                                  ## kept
                                                                                                  ## by
                                                                                                  ## this
                                                                                                  ## framework,
                                                                                                  ## which
                                                                                                  ## only
                                                                                                  ## keeps
                                                                                                  ## that
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## system's
                                                                                                  ## global
                                                                                                  ## properties.
                                                                                                  ## Note
                                                                                                  ## that
                                                                                                  ## the
                                                                                                  ## current
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## system
                                                                                                  ## may
                                                                                                  ## be
                                                                                                  ## more
                                                                                                  ## complex
                                                                                                  ## than
                                                                                                  ## a
                                                                                                  ## set
                                                                                                  ## of
                                                                                                  ## points.


proc constructGPropPGProps*(): GPropPGProps {.constructor,
    importcpp: "GProp_PGProps(@)", header: "GProp_PGProps.hxx".}
proc addPoint*(this: var GPropPGProps; p: Pnt) {.importcpp: "AddPoint",
    header: "GProp_PGProps.hxx".}
proc addPoint*(this: var GPropPGProps; p: Pnt; density: float) {.importcpp: "AddPoint",
    header: "GProp_PGProps.hxx".}
proc constructGPropPGProps*(pnts: TColgpArray1OfPnt): GPropPGProps {.constructor,
    importcpp: "GProp_PGProps(@)", header: "GProp_PGProps.hxx".}
proc constructGPropPGProps*(pnts: TColgpArray2OfPnt): GPropPGProps {.constructor,
    importcpp: "GProp_PGProps(@)", header: "GProp_PGProps.hxx".}
proc constructGPropPGProps*(pnts: TColgpArray1OfPnt; density: TColStdArray1OfReal): GPropPGProps {.
    constructor, importcpp: "GProp_PGProps(@)", header: "GProp_PGProps.hxx".}
proc constructGPropPGProps*(pnts: TColgpArray2OfPnt; density: TColStdArray2OfReal): GPropPGProps {.
    constructor, importcpp: "GProp_PGProps(@)", header: "GProp_PGProps.hxx".}
proc barycentre*(pnts: TColgpArray1OfPnt): Pnt {.
    importcpp: "GProp_PGProps::Barycentre(@)", header: "GProp_PGProps.hxx".}
proc barycentre*(pnts: TColgpArray2OfPnt): Pnt {.
    importcpp: "GProp_PGProps::Barycentre(@)", header: "GProp_PGProps.hxx".}
proc barycentre*(pnts: TColgpArray1OfPnt; density: TColStdArray1OfReal;
                mass: var float; g: var Pnt) {.
    importcpp: "GProp_PGProps::Barycentre(@)", header: "GProp_PGProps.hxx".}
proc barycentre*(pnts: TColgpArray2OfPnt; density: TColStdArray2OfReal;
                mass: var float; g: var Pnt) {.
    importcpp: "GProp_PGProps::Barycentre(@)", header: "GProp_PGProps.hxx".}
