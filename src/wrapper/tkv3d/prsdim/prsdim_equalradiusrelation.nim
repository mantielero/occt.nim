##  Created on: 1998-01-17
##  Created by: Julia GERASIMOVA
##  Copyright (c) 1998-1999 Matra Datavision
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
  HandlePrsDimEqualRadiusRelation* = Handle[PrsDimEqualRadiusRelation]
  PrsDimEqualRadiusRelation* {.importcpp: "PrsDim_EqualRadiusRelation",
                              header: "PrsDim_EqualRadiusRelation.hxx", bycopy.} = object of PrsDimRelation ##
                                                                                                     ## !
                                                                                                     ## Creates
                                                                                                     ## equal
                                                                                                     ## relation
                                                                                                     ## of
                                                                                                     ## two
                                                                                                     ## arc's
                                                                                                     ## radiuses.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## If
                                                                                                     ## one
                                                                                                     ## of
                                                                                                     ## edges
                                                                                                     ## is
                                                                                                     ## not
                                                                                                     ## in
                                                                                                     ## the
                                                                                                     ## given
                                                                                                     ## plane,
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## the
                                                                                                     ## presentation
                                                                                                     ## method
                                                                                                     ## projects
                                                                                                     ## it
                                                                                                     ## onto
                                                                                                     ## the
                                                                                                     ## plane.


proc newPrsDimEqualRadiusRelation*(aFirstEdge: TopoDS_Edge;
                                  aSecondEdge: TopoDS_Edge;
                                  aPlane: Handle[GeomPlane]): PrsDimEqualRadiusRelation {.
    cdecl, constructor, importcpp: "PrsDim_EqualRadiusRelation(@)", header: "PrsDim_EqualRadiusRelation.hxx".}