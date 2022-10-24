import prs3d_types

##  Created on: 2020-09-17
##  Created by: Marina ZERNOVA
##  Copyright (c) 2020 OPEN CASCADE SAS
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

## ! Standard presentation algorithm that outputs graphical primitives for torus surface.



proc create*(theMajorRad: cfloat; theMinorRad: cfloat; theNbSlices: cint;
            theNbStacks: cint; theTrsf: TrsfObj): Handle[Graphic3dArrayOfTriangles] {.
    cdecl, importcpp: "Prs3d_ToolTorus::Create(@)", header: "Prs3d_ToolTorus.hxx".}
proc create*(theMajorRad: cfloat; theMinorRad: cfloat; theAngle: cfloat;
            theNbSlices: cint; theNbStacks: cint; theTrsf: TrsfObj): Handle[
    Graphic3dArrayOfTriangles] {.cdecl, importcpp: "Prs3d_ToolTorus::Create(@)",
                                header: "Prs3d_ToolTorus.hxx".}
proc create*(theMajorRad: cfloat; theMinorRad: cfloat; theAngle1: cfloat;
            theAngle2: cfloat; theNbSlices: cint; theNbStacks: cint; theTrsf: TrsfObj): Handle[
    Graphic3dArrayOfTriangles] {.cdecl, importcpp: "Prs3d_ToolTorus::Create(@)",
                                header: "Prs3d_ToolTorus.hxx".}
proc create*(theMajorRad: cfloat; theMinorRad: cfloat; theAngle1: cfloat;
            theAngle2: cfloat; theAngle: cfloat; theNbSlices: cint; theNbStacks: cint;
            theTrsf: TrsfObj): Handle[Graphic3dArrayOfTriangles] {.cdecl,
    importcpp: "Prs3d_ToolTorus::Create(@)", header: "Prs3d_ToolTorus.hxx".}
proc newPrs3dToolTorus*(theMajorRad: cfloat; theMinorRad: cfloat; theNbSlices: cint;
                       theNbStacks: cint): Prs3dToolTorus {.cdecl, constructor,
    importcpp: "Prs3d_ToolTorus(@)", header: "Prs3d_ToolTorus.hxx".}
proc newPrs3dToolTorus*(theMajorRad: cfloat; theMinorRad: cfloat; theAngle: cfloat;
                       theNbSlices: cint; theNbStacks: cint): Prs3dToolTorus {.cdecl,
    constructor, importcpp: "Prs3d_ToolTorus(@)", header: "Prs3d_ToolTorus.hxx".}
proc newPrs3dToolTorus*(theMajorRad: cfloat; theMinorRad: cfloat; theAngle1: cfloat;
                       theAngle2: cfloat; theNbSlices: cint; theNbStacks: cint): Prs3dToolTorus {.
    cdecl, constructor, importcpp: "Prs3d_ToolTorus(@)", header: "Prs3d_ToolTorus.hxx".}
proc newPrs3dToolTorus*(theMajorRad: cfloat; theMinorRad: cfloat; theAngle1: cfloat;
                       theAngle2: cfloat; theAngle: cfloat; theNbSlices: cint;
                       theNbStacks: cint): Prs3dToolTorus {.cdecl, constructor,
    importcpp: "Prs3d_ToolTorus(@)", header: "Prs3d_ToolTorus.hxx".}
