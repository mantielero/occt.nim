##  Created on: 1993-07-22
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of Bnd_Box"
discard "forward decl of Bnd_OBB"
type
  BRepBndLib* {.importcpp: "BRepBndLib", header: "BRepBndLib.hxx", bycopy.} = object ## !
                                                                             ## Adds the
                                                                             ## shape S to the
                                                                             ## bounding box B.
                                                                             ## !
                                                                             ## More
                                                                             ## precisely are
                                                                             ## successively
                                                                             ## added to B:
                                                                             ## ! -
                                                                             ## each
                                                                             ## face of S; the
                                                                             ## triangulation of the
                                                                             ## face is
                                                                             ## used if it
                                                                             ## exists,
                                                                             ## ! -
                                                                             ## then
                                                                             ## each
                                                                             ## edge of S
                                                                             ## which
                                                                             ## does not
                                                                             ## belong to a
                                                                             ## face,
                                                                             ## ! the
                                                                             ## polygon of the
                                                                             ## edge is
                                                                             ## used if it
                                                                             ## exists
                                                                             ## ! -   and
                                                                             ## last
                                                                             ## each
                                                                             ## vertex of S
                                                                             ## which
                                                                             ## does not
                                                                             ## belong to an
                                                                             ## edge.
                                                                             ## !
                                                                             ## After
                                                                             ## each
                                                                             ## elementary
                                                                             ## operation, the
                                                                             ## bounding box B is
                                                                             ## !
                                                                             ## enlarged by the
                                                                             ## tolerance
                                                                             ## value of the
                                                                             ## relative
                                                                             ## sub-shape.
                                                                             ## !
                                                                             ## When
                                                                             ## working
                                                                             ## with the
                                                                             ## triangulation of a
                                                                             ## face
                                                                             ## this
                                                                             ## value of
                                                                             ## !
                                                                             ## enlargement is the sum of the
                                                                             ## triangulation
                                                                             ## deflection and
                                                                             ## ! the
                                                                             ## face
                                                                             ## tolerance.
                                                                             ## When
                                                                             ## working
                                                                             ## with the
                                                                             ## !
                                                                             ## polygon of an
                                                                             ## edge
                                                                             ## this
                                                                             ## value of
                                                                             ## enlargement is
                                                                             ## ! the sum of the
                                                                             ## polygon
                                                                             ## deflection and the
                                                                             ## edge
                                                                             ## tolerance.
                                                                             ## !
                                                                             ## Warning
                                                                             ## ! -
                                                                             ## This
                                                                             ## algorithm is
                                                                             ## time
                                                                             ## consuming if
                                                                             ## triangulation has not
                                                                             ## !
                                                                             ## been
                                                                             ## inserted
                                                                             ## inside the
                                                                             ## data
                                                                             ## structure of the
                                                                             ## shape S.
                                                                             ## ! -   The
                                                                             ## resulting
                                                                             ## bounding box may be
                                                                             ## somewhat
                                                                             ## larger
                                                                             ## than the
                                                                             ## object.


proc add*(s: TopoDS_Shape; b: var BndBox; useTriangulation: bool = true) {.
    importcpp: "BRepBndLib::Add(@)", header: "BRepBndLib.hxx".}
proc addClose*(s: TopoDS_Shape; b: var BndBox) {.importcpp: "BRepBndLib::AddClose(@)",
    header: "BRepBndLib.hxx".}
proc addOptimal*(s: TopoDS_Shape; b: var BndBox; useTriangulation: bool = true;
                useShapeTolerance: bool = false) {.
    importcpp: "BRepBndLib::AddOptimal(@)", header: "BRepBndLib.hxx".}
proc addOBB*(theS: TopoDS_Shape; theOBB: var BndOBB;
            theIsTriangulationUsed: bool = true; theIsOptimal: bool = false;
            theIsShapeToleranceUsed: bool = true) {.
    importcpp: "BRepBndLib::AddOBB(@)", header: "BRepBndLib.hxx".}

























