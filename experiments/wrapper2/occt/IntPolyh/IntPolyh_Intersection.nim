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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, IntPolyh_ArrayOfPointNormal,
  IntPolyh_ArrayOfSectionLines, IntPolyh_ArrayOfTangentZones,
  IntPolyh_ListOfCouples, IntPolyh_PMaillageAffinage,
  ../TColStd/TColStd_Array1OfReal, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

discard "forward decl of Adaptor3d_HSurface"
type
  IntPolyh_Intersection* {.importcpp: "IntPolyh_Intersection",
                          header: "IntPolyh_Intersection.hxx", bycopy.} = object ## !
                                                                            ## @name
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
                                                                            ## !
                                                                            ## @name
                                                                            ## Getting the
                                                                            ## results
                                                                            ## !
                                                                            ## Returns
                                                                            ## state of the
                                                                            ## operation
                                                                            ## !
                                                                            ## @name
                                                                            ## Performing the
                                                                            ## intersection
                                                                            ## !
                                                                            ## Compute the
                                                                            ## intersection by
                                                                            ## first
                                                                            ## making the
                                                                            ## sampling of the
                                                                            ## surfaces.
                                                                            ## !
                                                                            ## @name
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


proc constructIntPolyh_Intersection*(theS1: handle[Adaptor3d_HSurface];
                                    theS2: handle[Adaptor3d_HSurface]): IntPolyh_Intersection {.
    constructor, importcpp: "IntPolyh_Intersection(@)",
    header: "IntPolyh_Intersection.hxx".}
proc constructIntPolyh_Intersection*(theS1: handle[Adaptor3d_HSurface];
                                    theNbSU1: Standard_Integer;
                                    theNbSV1: Standard_Integer;
                                    theS2: handle[Adaptor3d_HSurface];
                                    theNbSU2: Standard_Integer;
                                    theNbSV2: Standard_Integer): IntPolyh_Intersection {.
    constructor, importcpp: "IntPolyh_Intersection(@)",
    header: "IntPolyh_Intersection.hxx".}
proc constructIntPolyh_Intersection*(theS1: handle[Adaptor3d_HSurface];
                                    theUPars1: TColStd_Array1OfReal;
                                    theVPars1: TColStd_Array1OfReal;
                                    theS2: handle[Adaptor3d_HSurface];
                                    theUPars2: TColStd_Array1OfReal;
                                    theVPars2: TColStd_Array1OfReal): IntPolyh_Intersection {.
    constructor, importcpp: "IntPolyh_Intersection(@)",
    header: "IntPolyh_Intersection.hxx".}
proc IsDone*(this: IntPolyh_Intersection): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "IntPolyh_Intersection.hxx".}
proc NbSectionLines*(this: IntPolyh_Intersection): Standard_Integer {.noSideEffect,
    importcpp: "NbSectionLines", header: "IntPolyh_Intersection.hxx".}
proc NbPointsInLine*(this: IntPolyh_Intersection; IndexLine: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbPointsInLine", header: "IntPolyh_Intersection.hxx".}
proc NbTangentZones*(this: IntPolyh_Intersection): Standard_Integer {.noSideEffect,
    importcpp: "NbTangentZones", header: "IntPolyh_Intersection.hxx".}
proc NbPointsInTangentZone*(this: IntPolyh_Intersection; a2: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbPointsInTangentZone",
    header: "IntPolyh_Intersection.hxx".}
proc GetLinePoint*(this: IntPolyh_Intersection; IndexLine: Standard_Integer;
                  IndexPoint: Standard_Integer; x: var Standard_Real;
                  y: var Standard_Real; z: var Standard_Real; u1: var Standard_Real;
                  v1: var Standard_Real; u2: var Standard_Real; v2: var Standard_Real;
                  incidence: var Standard_Real) {.noSideEffect,
    importcpp: "GetLinePoint", header: "IntPolyh_Intersection.hxx".}
proc GetTangentZonePoint*(this: IntPolyh_Intersection; IndexLine: Standard_Integer;
                         IndexPoint: Standard_Integer; x: var Standard_Real;
                         y: var Standard_Real; z: var Standard_Real;
                         u1: var Standard_Real; v1: var Standard_Real;
                         u2: var Standard_Real; v2: var Standard_Real) {.noSideEffect,
    importcpp: "GetTangentZonePoint", header: "IntPolyh_Intersection.hxx".}