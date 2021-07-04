##  Created on: 1992-08-26
##  Created by: Jean Louis FRENKEL
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
  ../Bnd/Bnd_Box, ../Graphic3d/Graphic3d_ArrayOfPrimitives,
  ../Standard/Standard_DefineAlloc, Prs3d_Drawer, Prs3d_NListOfSequenceOfPnt,
  Prs3d_Presentation

discard "forward decl of Poly_Triangulation"
type
  Prs3d* {.importcpp: "Prs3d", header: "Prs3d.hxx", bycopy.} = object ## ! draws an arrow at a given location, with respect
                                                              ## ! to a given direction.


proc MatchSegment*(X: Standard_Real; Y: Standard_Real; Z: Standard_Real;
                  aDistance: Standard_Real; p1: gp_Pnt; p2: gp_Pnt;
                  dist: var Standard_Real): Standard_Boolean {.
    importcpp: "Prs3d::MatchSegment(@)", header: "Prs3d.hxx".}
proc GetDeflection*(theBndMin: Graphic3d_Vec3d; theBndMax: Graphic3d_Vec3d;
                   theDeviationCoefficient: Standard_Real): Standard_Real {.
    importcpp: "Prs3d::GetDeflection(@)", header: "Prs3d.hxx".}
proc GetDeflection*(theBndBox: Bnd_Box; theDeviationCoefficient: Standard_Real;
                   theMaximalChordialDeviation: Standard_Real): Standard_Real {.
    importcpp: "Prs3d::GetDeflection(@)", header: "Prs3d.hxx".}
proc PrimitivesFromPolylines*(thePoints: Prs3d_NListOfSequenceOfPnt): handle[
    Graphic3d_ArrayOfPrimitives] {.importcpp: "Prs3d::PrimitivesFromPolylines(@)",
                                  header: "Prs3d.hxx".}
proc AddPrimitivesGroup*(thePrs: handle[Prs3d_Presentation];
                        theAspect: handle[Prs3d_LineAspect];
                        thePolylines: var Prs3d_NListOfSequenceOfPnt) {.
    importcpp: "Prs3d::AddPrimitivesGroup(@)", header: "Prs3d.hxx".}
proc AddFreeEdges*(theSegments: var TColgp_SequenceOfPnt;
                  thePolyTri: handle[Poly_Triangulation]; theLocation: gp_Trsf) {.
    importcpp: "Prs3d::AddFreeEdges(@)", header: "Prs3d.hxx".}