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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, GProp_GProps, ../Standard/Standard_Real,
  ../TColgp/TColgp_Array1OfPnt, ../TColgp/TColgp_Array2OfPnt,
  ../TColStd/TColStd_Array1OfReal, ../TColStd/TColStd_Array2OfReal

discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt"
type
  GProp_PGProps* {.importcpp: "GProp_PGProps", header: "GProp_PGProps.hxx", bycopy.} = object of GProp_GProps ##
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


proc constructGProp_PGProps*(): GProp_PGProps {.constructor,
    importcpp: "GProp_PGProps(@)", header: "GProp_PGProps.hxx".}
proc AddPoint*(this: var GProp_PGProps; P: gp_Pnt) {.importcpp: "AddPoint",
    header: "GProp_PGProps.hxx".}
proc AddPoint*(this: var GProp_PGProps; P: gp_Pnt; Density: Standard_Real) {.
    importcpp: "AddPoint", header: "GProp_PGProps.hxx".}
proc constructGProp_PGProps*(Pnts: TColgp_Array1OfPnt): GProp_PGProps {.constructor,
    importcpp: "GProp_PGProps(@)", header: "GProp_PGProps.hxx".}
proc constructGProp_PGProps*(Pnts: TColgp_Array2OfPnt): GProp_PGProps {.constructor,
    importcpp: "GProp_PGProps(@)", header: "GProp_PGProps.hxx".}
proc constructGProp_PGProps*(Pnts: TColgp_Array1OfPnt;
                            Density: TColStd_Array1OfReal): GProp_PGProps {.
    constructor, importcpp: "GProp_PGProps(@)", header: "GProp_PGProps.hxx".}
proc constructGProp_PGProps*(Pnts: TColgp_Array2OfPnt;
                            Density: TColStd_Array2OfReal): GProp_PGProps {.
    constructor, importcpp: "GProp_PGProps(@)", header: "GProp_PGProps.hxx".}
proc Barycentre*(Pnts: TColgp_Array1OfPnt): gp_Pnt {.
    importcpp: "GProp_PGProps::Barycentre(@)", header: "GProp_PGProps.hxx".}
proc Barycentre*(Pnts: TColgp_Array2OfPnt): gp_Pnt {.
    importcpp: "GProp_PGProps::Barycentre(@)", header: "GProp_PGProps.hxx".}
proc Barycentre*(Pnts: TColgp_Array1OfPnt; Density: TColStd_Array1OfReal;
                Mass: var Standard_Real; G: var gp_Pnt) {.
    importcpp: "GProp_PGProps::Barycentre(@)", header: "GProp_PGProps.hxx".}
proc Barycentre*(Pnts: TColgp_Array2OfPnt; Density: TColStd_Array2OfReal;
                Mass: var Standard_Real; G: var gp_Pnt) {.
    importcpp: "GProp_PGProps::Barycentre(@)", header: "GProp_PGProps.hxx".}