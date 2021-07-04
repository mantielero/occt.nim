##  Created on: 2016-04-07
##  Copyright (c) 2016 OPEN CASCADE SAS
##  Created by: Oleg AGASHIN
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
  IMeshTools_MeshAlgoType, ../Precision/Precision

## ! Structure storing meshing parameters

type
  IMeshTools_Parameters* {.importcpp: "IMeshTools_Parameters",
                          header: "IMeshTools_Parameters.hxx", bycopy.} = object ## !
                                                                            ## Default
                                                                            ## constructor
    MeshAlgo* {.importc: "MeshAlgo".}: IMeshTools_MeshAlgoType ## ! Angular deflection used to tessellate the boundary edges
    Angle* {.importc: "Angle".}: Standard_Real ## !Linear deflection used to tessellate the boundary edges
    Deflection* {.importc: "Deflection".}: Standard_Real ## ! Angular deflection used to tessellate the face interior
    AngleInterior* {.importc: "AngleInterior".}: Standard_Real ## ! Linear deflection used to tessellate the face interior
    DeflectionInterior* {.importc: "DeflectionInterior".}: Standard_Real ## ! Minimum size parameter limiting size of triangle's edges to prevent
                                                                     ## ! sinking into
                                                                     ## amplification in case of distorted curves and surfaces.
    MinSize* {.importc: "MinSize".}: Standard_Real ## ! Switches on/off multi-thread computation
    InParallel* {.importc: "InParallel".}: Standard_Boolean ## ! Switches on/off relative computation of edge tolerance<br>
                                                        ## ! If true, deflection used for the polygonalisation of each edge will be
                                                        ## ! <defle> * Size of Edge. The deflection used for the faces will be the
                                                        ## ! maximum deflection of their edges.
    Relative* {.importc: "Relative".}: Standard_Boolean ## ! Mode to take or not to take internal face vertices into account
                                                    ## ! in triangulation process
    InternalVerticesMode* {.importc: "InternalVerticesMode".}: Standard_Boolean ## !
                                                                            ## Parameter to
                                                                            ## check the
                                                                            ## deviation of
                                                                            ## triangulation and
                                                                            ## interior of
                                                                            ## ! the face
    ControlSurfaceDeflection* {.importc: "ControlSurfaceDeflection".}: Standard_Boolean ##
                                                                                    ## !
                                                                                    ## Cleans
                                                                                    ## temporary
                                                                                    ## data
                                                                                    ## model
                                                                                    ## when
                                                                                    ## algorithm
                                                                                    ## is
                                                                                    ## finished.
    CleanModel* {.importc: "CleanModel".}: Standard_Boolean ## ! Enables/disables local adjustment of min size depending on edge size.
                                                        ## ! Disabled by default.
    AdjustMinSize* {.importc: "AdjustMinSize".}: Standard_Boolean ## ! Enables/disables usage of shape tolerances for computing face deflection.
                                                              ## ! Disabled by default.
    ForceFaceDeflection* {.importc: "ForceFaceDeflection".}: Standard_Boolean ## !
                                                                          ## Allows/forbids the
                                                                          ## decrease of the
                                                                          ## quality of the
                                                                          ## generated mesh
                                                                          ## ! over the
                                                                          ## existing one.
    AllowQualityDecrease* {.importc: "AllowQualityDecrease".}: Standard_Boolean


proc constructIMeshTools_Parameters*(): IMeshTools_Parameters {.constructor,
    importcpp: "IMeshTools_Parameters(@)", header: "IMeshTools_Parameters.hxx".}
proc RelMinSize*(): Standard_Real {.importcpp: "IMeshTools_Parameters::RelMinSize(@)",
                                 header: "IMeshTools_Parameters.hxx".}