##  Created on: 1996-12-05
##  Created by: Flore Lantheaume/Odile Olivier
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

discard "forward decl of Geom_Plane"
type
  HandlePrsDimConcentricRelation* = Handle[PrsDimConcentricRelation]

## ! A framework to define a constraint by a relation of
## ! concentricity between two or more interactive datums.
## ! The display of this constraint is also defined.
## ! A plane is used to create an axis along which the
## ! relation of concentricity can be extended.

type
  PrsDimConcentricRelation* {.importcpp: "PrsDim_ConcentricRelation",
                             header: "PrsDim_ConcentricRelation.hxx", bycopy.} = object of PrsDimRelation ##
                                                                                                   ## !
                                                                                                   ## Constructs
                                                                                                   ## the
                                                                                                   ## display
                                                                                                   ## object
                                                                                                   ## for
                                                                                                   ## concentric
                                                                                                   ## relations
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## between
                                                                                                   ## shapes.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## This
                                                                                                   ## object
                                                                                                   ## is
                                                                                                   ## defined
                                                                                                   ## by
                                                                                                   ## the
                                                                                                   ## two
                                                                                                   ## shapes,
                                                                                                   ## aFShape
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## and
                                                                                                   ## aSShape
                                                                                                   ## and
                                                                                                   ## the
                                                                                                   ## plane
                                                                                                   ## aPlane.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## aPlane
                                                                                                   ## is
                                                                                                   ## provided
                                                                                                   ## to
                                                                                                   ## create
                                                                                                   ## an
                                                                                                   ## axis
                                                                                                   ## along
                                                                                                   ## which
                                                                                                   ## the
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## relation
                                                                                                   ## of
                                                                                                   ## concentricity
                                                                                                   ## can
                                                                                                   ## be
                                                                                                   ## extended.


proc newPrsDimConcentricRelation*(aFShape: TopoDS_Shape; aSShape: TopoDS_Shape;
                                 aPlane: Handle[GeomPlane]): PrsDimConcentricRelation {.
    cdecl, constructor, importcpp: "PrsDim_ConcentricRelation(@)", header: "PrsDim_ConcentricRelation.hxx".}