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
  ../Standard/Standard_Handle, ../Bnd/Bnd_Box, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, IntPolyh_ArrayOfPoints, IntPolyh_ArrayOfEdges,
  IntPolyh_ArrayOfTriangles, IntPolyh_ListOfCouples, ../Standard/Standard_Boolean,
  ../TColStd/TColStd_Array1OfReal, IntPolyh_ArrayOfPointNormal,
  IntPolyh_ArrayOfSectionLines, IntPolyh_ArrayOfTangentZones

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Bnd_Box"
discard "forward decl of IntPolyh_Point"
discard "forward decl of IntPolyh_StartPoint"
discard "forward decl of IntPolyh_Triangle"
discard "forward decl of IntPolyh_SectionLine"
type
  IntPolyh_MaillageAffinage* {.importcpp: "IntPolyh_MaillageAffinage",
                              header: "IntPolyh_MaillageAffinage.hxx", bycopy.} = object
    ##  For the arrays of Points, Edges and Triangles we need instant access to the items.
    ##  Moreover, we might add new items during refinement process in case the deflection
    ##  is too big, thus the vectors should be used.
    ##  The intersecting triangles are just filled and then
    ##  sequentially analyzed, thus we might use the list.


proc constructIntPolyh_MaillageAffinage*(S1: handle[Adaptor3d_HSurface];
                                        NbSU1: Standard_Integer;
                                        NbSV1: Standard_Integer;
                                        S2: handle[Adaptor3d_HSurface];
                                        NbSU2: Standard_Integer;
                                        NbSV2: Standard_Integer;
                                        PRINT: Standard_Integer): IntPolyh_MaillageAffinage {.
    constructor, importcpp: "IntPolyh_MaillageAffinage(@)",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc constructIntPolyh_MaillageAffinage*(S1: handle[Adaptor3d_HSurface];
                                        S2: handle[Adaptor3d_HSurface];
                                        PRINT: Standard_Integer): IntPolyh_MaillageAffinage {.
    constructor, importcpp: "IntPolyh_MaillageAffinage(@)",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc MakeSampling*(this: var IntPolyh_MaillageAffinage; SurfID: Standard_Integer;
                  theUPars: var TColStd_Array1OfReal;
                  theVPars: var TColStd_Array1OfReal) {.importcpp: "MakeSampling",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc FillArrayOfPnt*(this: var IntPolyh_MaillageAffinage; SurfID: Standard_Integer) {.
    importcpp: "FillArrayOfPnt", header: "IntPolyh_MaillageAffinage.hxx".}
proc FillArrayOfPnt*(this: var IntPolyh_MaillageAffinage; SurfID: Standard_Integer;
                    isShiftFwd: Standard_Boolean) {.importcpp: "FillArrayOfPnt",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc FillArrayOfPnt*(this: var IntPolyh_MaillageAffinage; SurfID: Standard_Integer;
                    Upars: TColStd_Array1OfReal; Vpars: TColStd_Array1OfReal;
                    theDeflTol: ptr Standard_Real = nil) {.
    importcpp: "FillArrayOfPnt", header: "IntPolyh_MaillageAffinage.hxx".}
proc FillArrayOfPnt*(this: var IntPolyh_MaillageAffinage; SurfID: Standard_Integer;
                    isShiftFwd: Standard_Boolean; Upars: TColStd_Array1OfReal;
                    Vpars: TColStd_Array1OfReal;
                    theDeflTol: ptr Standard_Real = nil) {.
    importcpp: "FillArrayOfPnt", header: "IntPolyh_MaillageAffinage.hxx".}
proc FillArrayOfPnt*(this: var IntPolyh_MaillageAffinage; SurfID: Standard_Integer;
                    isShiftFwd: Standard_Boolean;
                    thePoints: IntPolyh_ArrayOfPointNormal;
                    theUPars: TColStd_Array1OfReal;
                    theVPars: TColStd_Array1OfReal; theDeflTol: Standard_Real) {.
    importcpp: "FillArrayOfPnt", header: "IntPolyh_MaillageAffinage.hxx".}
proc CommonBox*(this: var IntPolyh_MaillageAffinage) {.importcpp: "CommonBox",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc CommonBox*(this: var IntPolyh_MaillageAffinage; B1: Bnd_Box; B2: Bnd_Box;
               xMin: var Standard_Real; yMin: var Standard_Real;
               zMin: var Standard_Real; xMax: var Standard_Real;
               yMax: var Standard_Real; zMax: var Standard_Real) {.
    importcpp: "CommonBox", header: "IntPolyh_MaillageAffinage.hxx".}
proc FillArrayOfEdges*(this: var IntPolyh_MaillageAffinage; SurfID: Standard_Integer) {.
    importcpp: "FillArrayOfEdges", header: "IntPolyh_MaillageAffinage.hxx".}
proc FillArrayOfTriangles*(this: var IntPolyh_MaillageAffinage;
                          SurfID: Standard_Integer) {.
    importcpp: "FillArrayOfTriangles", header: "IntPolyh_MaillageAffinage.hxx".}
proc CommonPartRefinement*(this: var IntPolyh_MaillageAffinage) {.
    importcpp: "CommonPartRefinement", header: "IntPolyh_MaillageAffinage.hxx".}
proc LocalSurfaceRefinement*(this: var IntPolyh_MaillageAffinage;
                            SurfId: Standard_Integer) {.
    importcpp: "LocalSurfaceRefinement", header: "IntPolyh_MaillageAffinage.hxx".}
proc ComputeDeflections*(this: var IntPolyh_MaillageAffinage;
                        SurfID: Standard_Integer) {.
    importcpp: "ComputeDeflections", header: "IntPolyh_MaillageAffinage.hxx".}
proc TrianglesDeflectionsRefinementBSB*(this: var IntPolyh_MaillageAffinage) {.
    importcpp: "TrianglesDeflectionsRefinementBSB",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc TriContact*(this: IntPolyh_MaillageAffinage; P1: IntPolyh_Point;
                P2: IntPolyh_Point; P3: IntPolyh_Point; Q1: IntPolyh_Point;
                Q2: IntPolyh_Point; Q3: IntPolyh_Point; Angle: var Standard_Real): Standard_Integer {.
    noSideEffect, importcpp: "TriContact", header: "IntPolyh_MaillageAffinage.hxx".}
proc TriangleEdgeContact*(this: IntPolyh_MaillageAffinage;
                         TriSurfID: Standard_Integer;
                         EdgeIndice: Standard_Integer; Tri1: IntPolyh_Triangle;
                         Tri2: IntPolyh_Triangle; P1: IntPolyh_Point;
                         P2: IntPolyh_Point; P3: IntPolyh_Point; C1: IntPolyh_Point;
                         C2: IntPolyh_Point; C3: IntPolyh_Point;
                         Pe1: IntPolyh_Point; Pe2: IntPolyh_Point;
                         E: IntPolyh_Point; N: IntPolyh_Point;
                         SP1: var IntPolyh_StartPoint; SP2: var IntPolyh_StartPoint): Standard_Integer {.
    noSideEffect, importcpp: "TriangleEdgeContact",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc StartingPointsResearch*(this: IntPolyh_MaillageAffinage; T1: Standard_Integer;
                            T2: Standard_Integer; SP1: var IntPolyh_StartPoint;
                            SP2: var IntPolyh_StartPoint): Standard_Integer {.
    noSideEffect, importcpp: "StartingPointsResearch",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc NextStartingPointsResearch*(this: IntPolyh_MaillageAffinage;
                                T1: Standard_Integer; T2: Standard_Integer;
                                SPInit: IntPolyh_StartPoint;
                                SPNext: var IntPolyh_StartPoint): Standard_Integer {.
    noSideEffect, importcpp: "NextStartingPointsResearch",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc TriangleCompare*(this: var IntPolyh_MaillageAffinage): Standard_Integer {.
    importcpp: "TriangleCompare", header: "IntPolyh_MaillageAffinage.hxx".}
proc StartPointsChain*(this: var IntPolyh_MaillageAffinage;
                      TSectionLines: var IntPolyh_ArrayOfSectionLines;
                      TTangentZones: var IntPolyh_ArrayOfTangentZones): Standard_Integer {.
    importcpp: "StartPointsChain", header: "IntPolyh_MaillageAffinage.hxx".}
proc GetNextChainStartPoint*(this: var IntPolyh_MaillageAffinage;
                            SPInit: IntPolyh_StartPoint;
                            SPNext: var IntPolyh_StartPoint;
                            MySectionLine: var IntPolyh_SectionLine;
                            TTangentZones: var IntPolyh_ArrayOfTangentZones;
                            Prepend: Standard_Boolean = Standard_False): Standard_Integer {.
    importcpp: "GetNextChainStartPoint", header: "IntPolyh_MaillageAffinage.hxx".}
proc GetArrayOfPoints*(this: IntPolyh_MaillageAffinage; SurfID: Standard_Integer): IntPolyh_ArrayOfPoints {.
    noSideEffect, importcpp: "GetArrayOfPoints",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc GetArrayOfEdges*(this: IntPolyh_MaillageAffinage; SurfID: Standard_Integer): IntPolyh_ArrayOfEdges {.
    noSideEffect, importcpp: "GetArrayOfEdges",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc GetArrayOfTriangles*(this: IntPolyh_MaillageAffinage; SurfID: Standard_Integer): IntPolyh_ArrayOfTriangles {.
    noSideEffect, importcpp: "GetArrayOfTriangles",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc GetFinTE*(this: IntPolyh_MaillageAffinage; SurfID: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "GetFinTE", header: "IntPolyh_MaillageAffinage.hxx".}
proc GetFinTT*(this: IntPolyh_MaillageAffinage; SurfID: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "GetFinTT", header: "IntPolyh_MaillageAffinage.hxx".}
proc GetBox*(this: IntPolyh_MaillageAffinage; SurfID: Standard_Integer): Bnd_Box {.
    noSideEffect, importcpp: "GetBox", header: "IntPolyh_MaillageAffinage.hxx".}
proc GetCouples*(this: var IntPolyh_MaillageAffinage): var IntPolyh_ListOfCouples {.
    importcpp: "GetCouples", header: "IntPolyh_MaillageAffinage.hxx".}
proc SetEnlargeZone*(this: var IntPolyh_MaillageAffinage;
                    EnlargeZone: Standard_Boolean) {.importcpp: "SetEnlargeZone",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc GetEnlargeZone*(this: IntPolyh_MaillageAffinage): Standard_Boolean {.
    noSideEffect, importcpp: "GetEnlargeZone",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc GetMinDeflection*(this: IntPolyh_MaillageAffinage; SurfID: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "GetMinDeflection",
    header: "IntPolyh_MaillageAffinage.hxx".}
proc GetMaxDeflection*(this: IntPolyh_MaillageAffinage; SurfID: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "GetMaxDeflection",
    header: "IntPolyh_MaillageAffinage.hxx".}