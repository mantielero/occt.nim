##  Created on: 2016-02-04
##  Created by: Anastasia BORISOVA
##  Copyright (c) 2016 OPEN CASCADE SAS
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

## ! Standard presentation algorithm that outputs graphical primitives for spherical surface.

type
  Prs3dToolSphere* {.importcpp: "Prs3d_ToolSphere", header: "Prs3d_ToolSphere.hxx",
                    bycopy.} = object of Prs3dToolQuadric ## ! Generate primitives for 3D quadric surface.
                                                     ## ! @param theRadius   [in] sphere radius
                                                     ## ! @param theNbSlices [in] number of slices within U parameter
                                                     ## ! @param theNbStacks [in] number of stacks within V parameter
                                                     ## ! @param theTrsf     [in] optional transformation to apply
                                                     ## ! @return generated triangulation
                                                     ## ! Initializes the algorithm creating a sphere.
                                                     ## ! @param theRadius   [in] sphere radius
                                                     ## ! @param theNbSlices [in] number of slices within U parameter
                                                     ## ! @param theNbStacks [in] number of stacks within V parameter
                                                     ## ! Computes vertex at given parameter location of the surface.
    ## !< sphere radius


proc toolSphereCreate*(theRadius: cfloat; theNbSlices: cint; theNbStacks: cint; theTrsf: TrsfObj): Handle[
    Graphic3dArrayOfTriangles] {.cdecl, importcpp: "Prs3d_ToolSphere::Create(@)",
                                header: "Prs3d_ToolSphere.hxx".}
proc newPrs3dToolSphere*(theRadius: cfloat; theNbSlices: cint; theNbStacks: cint): Prs3dToolSphere {.
    cdecl, constructor, importcpp: "Prs3d_ToolSphere(@)", header: "Prs3d_ToolSphere.hxx".}