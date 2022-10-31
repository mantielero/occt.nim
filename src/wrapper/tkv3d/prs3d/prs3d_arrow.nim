import prs3d_types
import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import ../graphic3d/graphic3d_types





##  Created on: 1993-04-15
##  Created by: Jean-Louis Frenkel
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



proc drawShaded*(theAxis: Ax1Obj; theTubeRadius: cfloat; theAxisLength: cfloat;
                theConeRadius: cfloat; theConeLength: cfloat; theNbFacettes: cint): Handle[
    Graphic3dArrayOfTriangles] {.cdecl, importcpp: "Prs3d_Arrow::DrawShaded(@)",
                                header: "Prs3d_Arrow.hxx".}
proc drawSegments*(theLocation: PntObj; theDir: DirObj; theAngle: cfloat; theLength: cfloat;
                  theNbSegments: cint): Handle[Graphic3dArrayOfSegments] {.cdecl,
    importcpp: "Prs3d_Arrow::DrawSegments(@)", header: "Prs3d_Arrow.hxx".}
proc draw*(theGroup: Handle[Graphic3dGroup]; theLocation: PntObj; theDirection: DirObj;
          theAngle: cfloat; theLength: cfloat) {.cdecl,
    importcpp: "Prs3d_Arrow::Draw(@)", header: "Prs3d_Arrow.hxx".}
proc draw*(thePrs: Handle[Prs3dPresentation]; theLocation: PntObj; theDirection: DirObj;
          theAngle: cfloat; theLength: cfloat) {.cdecl,
    importcpp: "Prs3d_Arrow::Draw(@)", header: "Prs3d_Arrow.hxx".}


