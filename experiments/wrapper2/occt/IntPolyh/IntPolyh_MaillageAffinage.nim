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
discard "forward decl of Bnd_Box"
discard "forward decl of IntPolyh_Point"
discard "forward decl of IntPolyh_StartPoint"
discard "forward decl of IntPolyh_Triangle"
discard "forward decl of IntPolyh_SectionLine"
type
  IntPolyhMaillageAffinage* {.importcpp: "IntPolyh_MaillageAffinage",
                             header: "IntPolyh_MaillageAffinage.hxx", bycopy.} = object
    ##  For the arrays of Points, Edges and Triangles we need instant access to the items.
    ##  Moreover, we might add new items during refinement process in case the deflection
    ##  is too big, thus the vectors should be used.
    ##  The intersecting triangles are just filled and then
    ##  sequentially analyzed, thus we might use the list.


proc constructIntPolyhMaillageAffinage*(s1: Handle[Adaptor3dHSurface]; nbSU1: int;
                                       nbSV1: int; s2: Handle[Adaptor3dHSurface];
                                       nbSU2: int; nbSV2: int; print: int): IntPolyhMaillageAffinage {.
    constructor, importcpp: "IntPolyh_MaillageAffinage(@)",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc constructIntPolyhMaillageAffinage*(s1: Handle[Adaptor3dHSurface];
                                       s2: Handle[Adaptor3dHSurface]; print: int): IntPolyhMaillageAffinage {.
    constructor, importcpp: "IntPolyh_MaillageAffinage(@)",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc makeSampling*(this: var IntPolyhMaillageAffinage; surfID: int;
                  theUPars: var TColStdArray1OfReal;
                  theVPars: var TColStdArray1OfReal) {.importcpp: "MakeSampling",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc fillArrayOfPnt*(this: var IntPolyhMaillageAffinage; surfID: int) {.
    importcpp: "FillArrayOfPnt", header: "IntPolyh_MaillageAffinage.hxx".}
proc fillArrayOfPnt*(this: var IntPolyhMaillageAffinage; surfID: int; isShiftFwd: bool) {.
    importcpp: "FillArrayOfPnt", header: "IntPolyh_MaillageAffinage.hxx".}
proc fillArrayOfPnt*(this: var IntPolyhMaillageAffinage; surfID: int;
                    upars: TColStdArray1OfReal; vpars: TColStdArray1OfReal;
                    theDeflTol: ptr float = nil) {.importcpp: "FillArrayOfPnt",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc fillArrayOfPnt*(this: var IntPolyhMaillageAffinage; surfID: int;
                    isShiftFwd: bool; upars: TColStdArray1OfReal;
                    vpars: TColStdArray1OfReal; theDeflTol: ptr float = nil) {.
    importcpp: "FillArrayOfPnt", header: "IntPolyh_MaillageAffinage.hxx".}
proc fillArrayOfPnt*(this: var IntPolyhMaillageAffinage; surfID: int;
                    isShiftFwd: bool; thePoints: IntPolyhArrayOfPointNormal;
                    theUPars: TColStdArray1OfReal; theVPars: TColStdArray1OfReal;
                    theDeflTol: float) {.importcpp: "FillArrayOfPnt",
                                       header: "IntPolyh_MaillageAffinage.hxx".}
proc commonBox*(this: var IntPolyhMaillageAffinage) {.importcpp: "CommonBox",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc commonBox*(this: var IntPolyhMaillageAffinage; b1: BndBox; b2: BndBox;
               xMin: var float; yMin: var float; zMin: var float; xMax: var float;
               yMax: var float; zMax: var float) {.importcpp: "CommonBox",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc fillArrayOfEdges*(this: var IntPolyhMaillageAffinage; surfID: int) {.
    importcpp: "FillArrayOfEdges", header: "IntPolyh_MaillageAffinage.hxx".}
proc fillArrayOfTriangles*(this: var IntPolyhMaillageAffinage; surfID: int) {.
    importcpp: "FillArrayOfTriangles", header: "IntPolyh_MaillageAffinage.hxx".}
proc commonPartRefinement*(this: var IntPolyhMaillageAffinage) {.
    importcpp: "CommonPartRefinement", header: "IntPolyh_MaillageAffinage.hxx".}
proc localSurfaceRefinement*(this: var IntPolyhMaillageAffinage; surfId: int) {.
    importcpp: "LocalSurfaceRefinement", header: "IntPolyh_MaillageAffinage.hxx".}
proc computeDeflections*(this: var IntPolyhMaillageAffinage; surfID: int) {.
    importcpp: "ComputeDeflections", header: "IntPolyh_MaillageAffinage.hxx".}
proc trianglesDeflectionsRefinementBSB*(this: var IntPolyhMaillageAffinage) {.
    importcpp: "TrianglesDeflectionsRefinementBSB",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc triContact*(this: IntPolyhMaillageAffinage; p1: IntPolyhPoint;
                p2: IntPolyhPoint; p3: IntPolyhPoint; q1: IntPolyhPoint;
                q2: IntPolyhPoint; q3: IntPolyhPoint; angle: var float): int {.
    noSideEffect, importcpp: "TriContact", header: "IntPolyh_MaillageAffinage.hxx".}
proc triangleEdgeContact*(this: IntPolyhMaillageAffinage; triSurfID: int;
                         edgeIndice: int; tri1: IntPolyhTriangle;
                         tri2: IntPolyhTriangle; p1: IntPolyhPoint;
                         p2: IntPolyhPoint; p3: IntPolyhPoint; c1: IntPolyhPoint;
                         c2: IntPolyhPoint; c3: IntPolyhPoint; pe1: IntPolyhPoint;
                         pe2: IntPolyhPoint; e: IntPolyhPoint; n: IntPolyhPoint;
                         sp1: var IntPolyhStartPoint; sp2: var IntPolyhStartPoint): int {.
    noSideEffect, importcpp: "TriangleEdgeContact",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc startingPointsResearch*(this: IntPolyhMaillageAffinage; t1: int; t2: int;
                            sp1: var IntPolyhStartPoint;
                            sp2: var IntPolyhStartPoint): int {.noSideEffect,
    importcpp: "StartingPointsResearch", header: "IntPolyh_MaillageAffinage.hxx".}
proc nextStartingPointsResearch*(this: IntPolyhMaillageAffinage; t1: int; t2: int;
                                sPInit: IntPolyhStartPoint;
                                sPNext: var IntPolyhStartPoint): int {.noSideEffect,
    importcpp: "NextStartingPointsResearch",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc triangleCompare*(this: var IntPolyhMaillageAffinage): int {.
    importcpp: "TriangleCompare", header: "IntPolyh_MaillageAffinage.hxx".}
proc startPointsChain*(this: var IntPolyhMaillageAffinage;
                      tSectionLines: var IntPolyhArrayOfSectionLines;
                      tTangentZones: var IntPolyhArrayOfTangentZones): int {.
    importcpp: "StartPointsChain", header: "IntPolyh_MaillageAffinage.hxx".}
proc getNextChainStartPoint*(this: var IntPolyhMaillageAffinage;
                            sPInit: IntPolyhStartPoint;
                            sPNext: var IntPolyhStartPoint;
                            mySectionLine: var IntPolyhSectionLine;
                            tTangentZones: var IntPolyhArrayOfTangentZones;
                            prepend: bool = false): int {.
    importcpp: "GetNextChainStartPoint", header: "IntPolyh_MaillageAffinage.hxx".}
proc getArrayOfPoints*(this: IntPolyhMaillageAffinage; surfID: int): IntPolyhArrayOfPoints {.
    noSideEffect, importcpp: "GetArrayOfPoints",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc getArrayOfEdges*(this: IntPolyhMaillageAffinage; surfID: int): IntPolyhArrayOfEdges {.
    noSideEffect, importcpp: "GetArrayOfEdges",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc getArrayOfTriangles*(this: IntPolyhMaillageAffinage; surfID: int): IntPolyhArrayOfTriangles {.
    noSideEffect, importcpp: "GetArrayOfTriangles",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc getFinTE*(this: IntPolyhMaillageAffinage; surfID: int): int {.noSideEffect,
    importcpp: "GetFinTE", header: "IntPolyh_MaillageAffinage.hxx".}
proc getFinTT*(this: IntPolyhMaillageAffinage; surfID: int): int {.noSideEffect,
    importcpp: "GetFinTT", header: "IntPolyh_MaillageAffinage.hxx".}
proc getBox*(this: IntPolyhMaillageAffinage; surfID: int): BndBox {.noSideEffect,
    importcpp: "GetBox", header: "IntPolyh_MaillageAffinage.hxx".}
proc getCouples*(this: var IntPolyhMaillageAffinage): var IntPolyhListOfCouples {.
    importcpp: "GetCouples", header: "IntPolyh_MaillageAffinage.hxx".}
proc setEnlargeZone*(this: var IntPolyhMaillageAffinage; enlargeZone: bool) {.
    importcpp: "SetEnlargeZone", header: "IntPolyh_MaillageAffinage.hxx".}
proc getEnlargeZone*(this: IntPolyhMaillageAffinage): bool {.noSideEffect,
    importcpp: "GetEnlargeZone", header: "IntPolyh_MaillageAffinage.hxx".}
proc getMinDeflection*(this: IntPolyhMaillageAffinage; surfID: int): float {.
    noSideEffect, importcpp: "GetMinDeflection",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc getMaxDeflection*(this: IntPolyhMaillageAffinage; surfID: int): float {.
    noSideEffect, importcpp: "GetMaxDeflection",
    header: "IntPolyh_MaillageAffinage.hxx".}
