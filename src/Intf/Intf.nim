##  Created on: 1991-05-23
##  Created by: Didier PIFFAULT
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of gp_Pnt"
discard "forward decl of gp_XYZ"
discard "forward decl of Intf_Polygon2d"
discard "forward decl of Intf_SectionPoint"
discard "forward decl of Intf_SectionLine"
discard "forward decl of Intf_TangentZone"
discard "forward decl of Intf_Interference"
discard "forward decl of Intf_Tool"
discard "forward decl of Intf_InterferencePolygon2d"
discard "forward decl of Intf_InterferencePolygonPolyhedron"
type
  Intf* {.importcpp: "Intf", header: "Intf.hxx", bycopy.} = object ## ! Computes   the  interference between   two polygons in  2d.
                                                           ## ! Result : points of intersections and zones of tangence.
                                                           ## ! Computes the interference  between a polygon or  a straight
                                                           ## ! line and a polyhedron.   Points of intersection  and zones
                                                           ## ! of tangence.
                                                           ## ! Give the plane equation of the triangle <P1> <P2> <P3>.


proc planeEquation*(p1: Pnt; p2: Pnt; p3: Pnt; normalVector: var Xyz;
                   polarDistance: var cfloat) {.
    importcpp: "Intf::PlaneEquation(@)", header: "Intf.hxx".}
proc contain*(p1: Pnt; p2: Pnt; p3: Pnt; thePnt: Pnt): bool {.
    importcpp: "Intf::Contain(@)", header: "Intf.hxx".}

























