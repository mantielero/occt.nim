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

type
  Prs3dToolTorus* {.importcpp: "Prs3d_ToolTorus", header: "Prs3d_ToolTorus.hxx",
                   bycopy.} = object of Prs3dToolQuadric ## ! Generate primitives for 3D quadric surface (complete torus).
                                                    ## ! @param theMajorRad [in] distance from the center of the pipe to the center of the torus
                                                    ## ! @param theMinorRad [in] radius of the pipe
                                                    ## ! @param theNbSlices [in] number of slices within U parameter
                                                    ## ! @param theNbStacks [in] number of stacks within V parameter
                                                    ## ! @param theTrsf     [in] optional transformation to apply
                                                    ## ! @return generated triangulation
                                                    ## ! Initializes the algorithm creating a complete torus.
                                                    ## ! @param theMajorRad [in] distance from the center of the pipe to the center of the torus
                                                    ## ! @param theMinorRad [in] radius of the pipe
                                                    ## ! @param theNbSlices [in] number of slices within U parameter
                                                    ## ! @param theNbStacks [in] number of stacks within V parameter
                                                    ## ! Initialisation
                                                    ## ! @param theMajorRad [in] distance from the center of the pipe to the center of the torus
                                                    ## ! @param theMinorRad [in] radius of the pipe
                                                    ## ! @param theAngle1   [in] first  angle to create a torus ring segment
                                                    ## ! @param theAngle2   [in] second angle to create a torus ring segment
                                                    ## ! @param theAngle    [in] angle to create a torus pipe segment
                                                    ## ! @param theNbSlices [in] number of slices within U parameter
                                                    ## ! @param theNbStacks [in] number of stacks within V parameter
                                                    ## ! Computes vertex at given parameter location of the surface.
    ## !< distance from the center of the pipe to the center of the torus
    ## !< radius of the pipe
    ## !< angle to create a torus pipe segment
    ## !< first angle to create a torus ring segment
    ## !< second angle to create a torus ring segment


proc create*(theMajorRad: cfloat; theMinorRad: cfloat; theNbSlices: cint;
            theNbStacks: cint; theTrsf: Trsf): Handle[Graphic3dArrayOfTriangles] {.
    importcpp: "Prs3d_ToolTorus::Create(@)", header: "Prs3d_ToolTorus.hxx".}
proc create*(theMajorRad: cfloat; theMinorRad: cfloat; theAngle: cfloat;
            theNbSlices: cint; theNbStacks: cint; theTrsf: Trsf): Handle[
    Graphic3dArrayOfTriangles] {.importcpp: "Prs3d_ToolTorus::Create(@)",
                                header: "Prs3d_ToolTorus.hxx".}
proc create*(theMajorRad: cfloat; theMinorRad: cfloat; theAngle1: cfloat;
            theAngle2: cfloat; theNbSlices: cint; theNbStacks: cint; theTrsf: Trsf): Handle[
    Graphic3dArrayOfTriangles] {.importcpp: "Prs3d_ToolTorus::Create(@)",
                                header: "Prs3d_ToolTorus.hxx".}
proc create*(theMajorRad: cfloat; theMinorRad: cfloat; theAngle1: cfloat;
            theAngle2: cfloat; theAngle: cfloat; theNbSlices: cint; theNbStacks: cint;
            theTrsf: Trsf): Handle[Graphic3dArrayOfTriangles] {.
    importcpp: "Prs3d_ToolTorus::Create(@)", header: "Prs3d_ToolTorus.hxx".}
proc constructPrs3dToolTorus*(theMajorRad: cfloat; theMinorRad: cfloat;
                             theNbSlices: cint; theNbStacks: cint): Prs3dToolTorus {.
    constructor, importcpp: "Prs3d_ToolTorus(@)", header: "Prs3d_ToolTorus.hxx".}
proc constructPrs3dToolTorus*(theMajorRad: cfloat; theMinorRad: cfloat;
                             theAngle: cfloat; theNbSlices: cint; theNbStacks: cint): Prs3dToolTorus {.
    constructor, importcpp: "Prs3d_ToolTorus(@)", header: "Prs3d_ToolTorus.hxx".}
proc constructPrs3dToolTorus*(theMajorRad: cfloat; theMinorRad: cfloat;
                             theAngle1: cfloat; theAngle2: cfloat;
                             theNbSlices: cint; theNbStacks: cint): Prs3dToolTorus {.
    constructor, importcpp: "Prs3d_ToolTorus(@)", header: "Prs3d_ToolTorus.hxx".}
proc constructPrs3dToolTorus*(theMajorRad: cfloat; theMinorRad: cfloat;
                             theAngle1: cfloat; theAngle2: cfloat; theAngle: cfloat;
                             theNbSlices: cint; theNbStacks: cint): Prs3dToolTorus {.
    constructor, importcpp: "Prs3d_ToolTorus(@)", header: "Prs3d_ToolTorus.hxx".}

























