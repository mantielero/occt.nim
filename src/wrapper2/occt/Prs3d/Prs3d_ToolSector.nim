##  Created on: 2019-02-25
##  Created by: Artem NOVIKOV
##  Copyright (c) 2019 OPEN CASCADE SAS
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
  Prs3d_ToolQuadric

## ! Standard presentation algorithm that outputs graphical primitives for disk surface.

type
  Prs3d_ToolSector* {.importcpp: "Prs3d_ToolSector",
                     header: "Prs3d_ToolSector.hxx", bycopy.} = object of Prs3d_ToolQuadric ##
                                                                                     ## !
                                                                                     ## Generate
                                                                                     ## primitives
                                                                                     ## for
                                                                                     ## 3D
                                                                                     ## quadric
                                                                                     ## surface.
                                                                                     ##
                                                                                     ## !
                                                                                     ## @param
                                                                                     ## theRadius
                                                                                     ## [in]
                                                                                     ## sector
                                                                                     ## radius
                                                                                     ##
                                                                                     ## !
                                                                                     ## @param
                                                                                     ## theNbSlices
                                                                                     ## [in]
                                                                                     ## number
                                                                                     ## of
                                                                                     ## slices
                                                                                     ## within
                                                                                     ## U
                                                                                     ## parameter
                                                                                     ##
                                                                                     ## !
                                                                                     ## @param
                                                                                     ## theNbStacks
                                                                                     ## [in]
                                                                                     ## number
                                                                                     ## of
                                                                                     ## stacks
                                                                                     ## within
                                                                                     ## V
                                                                                     ## parameter
                                                                                     ##
                                                                                     ## !
                                                                                     ## @param
                                                                                     ## theTrsf
                                                                                     ## [in]
                                                                                     ## optional
                                                                                     ## transformation
                                                                                     ## to
                                                                                     ## apply
                                                                                     ##
                                                                                     ## !
                                                                                     ## @return
                                                                                     ## generated
                                                                                     ## triangulation
                                                                                     ##
                                                                                     ## !
                                                                                     ## Initializes
                                                                                     ## the
                                                                                     ## algorithm
                                                                                     ## creating
                                                                                     ## a
                                                                                     ## sector
                                                                                     ## (quadrant).
                                                                                     ##
                                                                                     ## !
                                                                                     ## @param
                                                                                     ## theRadius
                                                                                     ## [in]
                                                                                     ## sector
                                                                                     ## radius
                                                                                     ##
                                                                                     ## !
                                                                                     ## @param
                                                                                     ## theNbSlices
                                                                                     ## [in]
                                                                                     ## number
                                                                                     ## of
                                                                                     ## slices
                                                                                     ## within
                                                                                     ## U
                                                                                     ## parameter
                                                                                     ##
                                                                                     ## !
                                                                                     ## @param
                                                                                     ## theNbStacks
                                                                                     ## [in]
                                                                                     ## number
                                                                                     ## of
                                                                                     ## stacks
                                                                                     ## within
                                                                                     ## V
                                                                                     ## parameter
                                                                                     ##
                                                                                     ## !
                                                                                     ## Computes
                                                                                     ## vertex
                                                                                     ## at
                                                                                     ## given
                                                                                     ## parameter
                                                                                     ## location
                                                                                     ## of
                                                                                     ## the
                                                                                     ## surface.
    ## !< sector radius


proc Create*(theRadius: Standard_Real; theNbSlices: Standard_Integer;
            theNbStacks: Standard_Integer; theTrsf: gp_Trsf): handle[
    Graphic3d_ArrayOfTriangles] {.importcpp: "Prs3d_ToolSector::Create(@)",
                                 header: "Prs3d_ToolSector.hxx".}
proc constructPrs3d_ToolSector*(theRadius: Standard_Real;
                               theNbSlices: Standard_Integer;
                               theNbStacks: Standard_Integer): Prs3d_ToolSector {.
    constructor, importcpp: "Prs3d_ToolSector(@)", header: "Prs3d_ToolSector.hxx".}