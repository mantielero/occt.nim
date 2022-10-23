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

## ! Standard presentation algorithm that outputs graphical primitives for cylindrical surface.

type
  Prs3dToolCylinder* {.importcpp: "Prs3d_ToolCylinder",
                      header: "Prs3d_ToolCylinder.hxx", bycopy.} = object of Prs3dToolQuadric ##
                                                                                       ## !
                                                                                       ## Generate
                                                                                       ## primitives
                                                                                       ## for
                                                                                       ## 3D
                                                                                       ## quadric
                                                                                       ## surface
                                                                                       ## and
                                                                                       ## return
                                                                                       ## a
                                                                                       ## filled
                                                                                       ## array.
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theBottomRad
                                                                                       ## [in]
                                                                                       ## cylinder
                                                                                       ## bottom
                                                                                       ## radius
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theTopRad
                                                                                       ## [in]
                                                                                       ## cylinder
                                                                                       ## top
                                                                                       ## radius
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theHeight
                                                                                       ## [in]
                                                                                       ## cylinder
                                                                                       ## height
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
                                                                                       ## cylinder.
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theBottomRad
                                                                                       ## [in]
                                                                                       ## cylinder
                                                                                       ## bottom
                                                                                       ## radius
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theTopRad
                                                                                       ## [in]
                                                                                       ## cylinder
                                                                                       ## top
                                                                                       ## radius
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theHeight
                                                                                       ## [in]
                                                                                       ## cylinder
                                                                                       ## height
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
    ## !< cylinder bottom radius
    ## !< cylinder top radius
    ## !< cylinder height


proc create*(theBottomRad: cfloat; theTopRad: cfloat; theHeight: cfloat;
            theNbSlices: cint; theNbStacks: cint; theTrsf: TrsfObj): Handle[
    Graphic3dArrayOfTriangles] {.cdecl,
                                importcpp: "Prs3d_ToolCylinder::Create(@)",
                                header: "Prs3d_ToolCylinder.hxx".}
proc newPrs3dToolCylinder*(theBottomRad: cfloat; theTopRad: cfloat;
                          theHeight: cfloat; theNbSlices: cint; theNbStacks: cint): Prs3dToolCylinder {.
    cdecl, constructor, importcpp: "Prs3d_ToolCylinder(@)", header: "Prs3d_ToolCylinder.hxx".}