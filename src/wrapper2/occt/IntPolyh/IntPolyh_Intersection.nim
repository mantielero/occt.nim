##  Created on: 1999-03-03
##  Created by: Fabrice SERVANT
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of Adaptor3d_HSurface"
type
  IntPolyhIntersection* {.importcpp: "IntPolyh_Intersection",
                         header: "IntPolyh_Intersection.hxx", bycopy.} = object ## ! @name
                                                                           ## Constructors
                                                                           ## !
                                                                           ## Constructor for
                                                                           ## intersection of two
                                                                           ## surfaces with
                                                                           ## default
                                                                           ## parameters.
                                                                           ## !
                                                                           ## Performs
                                                                           ## intersection.
                                                                           ## ! @name
                                                                           ## Getting the
                                                                           ## results
                                                                           ## !
                                                                           ## Returns state of the
                                                                           ## operation
                                                                           ## ! @name
                                                                           ## Performing the
                                                                           ## intersection
                                                                           ## !
                                                                           ## Compute the
                                                                           ## intersection by first
                                                                           ## making the
                                                                           ## sampling of the
                                                                           ## surfaces.
                                                                           ## ! @name
                                                                           ## Fields
                                                                           ##
                                                                           ## Inputs
    ## !< First surface
    ## !< Second surface
    ## !< Number of samples in U direction for first surface
    ## !< Number of samples in V direction for first surface
    ## !< Number of samples in U direction for second surface
    ## !< Number of samples in V direction for second surface
    ##  Results
    ## !< State of the operation
    ## !< Section lines
    ## !< Tangent zones


proc constructIntPolyhIntersection*(theS1: Handle[Adaptor3dHSurface];
                                   theS2: Handle[Adaptor3dHSurface]): IntPolyhIntersection {.
    constructor, importcpp: "IntPolyh_Intersection(@)",
    header: "IntPolyh_Intersection.hxx".}
proc constructIntPolyhIntersection*(theS1: Handle[Adaptor3dHSurface];
                                   theNbSU1: StandardInteger;
                                   theNbSV1: StandardInteger;
                                   theS2: Handle[Adaptor3dHSurface];
                                   theNbSU2: StandardInteger;
                                   theNbSV2: StandardInteger): IntPolyhIntersection {.
    constructor, importcpp: "IntPolyh_Intersection(@)",
    header: "IntPolyh_Intersection.hxx".}
proc constructIntPolyhIntersection*(theS1: Handle[Adaptor3dHSurface];
                                   theUPars1: TColStdArray1OfReal;
                                   theVPars1: TColStdArray1OfReal;
                                   theS2: Handle[Adaptor3dHSurface];
                                   theUPars2: TColStdArray1OfReal;
                                   theVPars2: TColStdArray1OfReal): IntPolyhIntersection {.
    constructor, importcpp: "IntPolyh_Intersection(@)",
    header: "IntPolyh_Intersection.hxx".}
proc isDone*(this: IntPolyhIntersection): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "IntPolyh_Intersection.hxx".}
proc nbSectionLines*(this: IntPolyhIntersection): StandardInteger {.noSideEffect,
    importcpp: "NbSectionLines", header: "IntPolyh_Intersection.hxx".}
proc nbPointsInLine*(this: IntPolyhIntersection; indexLine: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "NbPointsInLine", header: "IntPolyh_Intersection.hxx".}
proc nbTangentZones*(this: IntPolyhIntersection): StandardInteger {.noSideEffect,
    importcpp: "NbTangentZones", header: "IntPolyh_Intersection.hxx".}
proc nbPointsInTangentZone*(this: IntPolyhIntersection; a2: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "NbPointsInTangentZone",
    header: "IntPolyh_Intersection.hxx".}
proc getLinePoint*(this: IntPolyhIntersection; indexLine: StandardInteger;
                  indexPoint: StandardInteger; x: var StandardReal;
                  y: var StandardReal; z: var StandardReal; u1: var StandardReal;
                  v1: var StandardReal; u2: var StandardReal; v2: var StandardReal;
                  incidence: var StandardReal) {.noSideEffect,
    importcpp: "GetLinePoint", header: "IntPolyh_Intersection.hxx".}
proc getTangentZonePoint*(this: IntPolyhIntersection; indexLine: StandardInteger;
                         indexPoint: StandardInteger; x: var StandardReal;
                         y: var StandardReal; z: var StandardReal;
                         u1: var StandardReal; v1: var StandardReal;
                         u2: var StandardReal; v2: var StandardReal) {.noSideEffect,
    importcpp: "GetTangentZonePoint", header: "IntPolyh_Intersection.hxx".}

