##  Created on: 2014-08-13
##  Created by: Oleg AGASHIN
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
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
  ../IMeshData/IMeshData_Types, ../IMeshData/IMeshData_Edge,
  ../IMeshData/IMeshData_Face, ../TopoDS/TopoDS, ../Standard/Standard,
  ../Standard/Standard_DefineAlloc, ../Extrema/Extrema_LocateExtPC,
  ../TColStd/TColStd_HArray1OfReal, ../BRepAdaptor/BRepAdaptor_Curve,
  ../Adaptor3d/Adaptor3d_CurveOnSurface, ../TColStd/TColStd_HArray1OfReal,
  ../Geom2dAdaptor/Geom2dAdaptor_HCurve, ../GeomAdaptor/GeomAdaptor_HSurface

discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
type
  BRepMesh_EdgeParameterProvider*[ParametersCollection] {.
      importcpp: "BRepMesh_EdgeParameterProvider<\'0>",
      header: "BRepMesh_EdgeParameterProvider.hxx", bycopy.} = object of Standard_Transient ##
                                                                                     ## !
                                                                                     ## Constructor.
                                                                                     ## Initializes
                                                                                     ## empty
                                                                                     ## provider.


proc constructBRepMesh_EdgeParameterProvider*[ParametersCollection](): BRepMesh_EdgeParameterProvider[
    ParametersCollection] {.constructor, importcpp: "BRepMesh_EdgeParameterProvider<\'*0>(@)",
                           header: "BRepMesh_EdgeParameterProvider.hxx".}
proc constructBRepMesh_EdgeParameterProvider*[ParametersCollection](
    theEdge: IEdgeHandle; theOrientation: TopAbs_Orientation; theFace: IFaceHandle;
    theParameters: ParametersCollection): BRepMesh_EdgeParameterProvider[
    ParametersCollection] {.constructor, importcpp: "BRepMesh_EdgeParameterProvider<\'*0>(@)",
                           header: "BRepMesh_EdgeParameterProvider.hxx".}
proc Init*[ParametersCollection](this: var BRepMesh_EdgeParameterProvider[
    ParametersCollection]; theEdge: IEdgeHandle;
                                theOrientation: TopAbs_Orientation;
                                theFace: IFaceHandle;
                                theParameters: ParametersCollection) {.
    importcpp: "Init", header: "BRepMesh_EdgeParameterProvider.hxx".}
proc Parameter*[ParametersCollection](this: BRepMesh_EdgeParameterProvider[
    ParametersCollection]; theIndex: Standard_Integer; thePoint3d: gp_Pnt): Standard_Real {.
    noSideEffect, importcpp: "Parameter",
    header: "BRepMesh_EdgeParameterProvider.hxx".}
proc GetPCurve*[ParametersCollection](this: BRepMesh_EdgeParameterProvider[
    ParametersCollection]): handle[Adaptor2d_HCurve2d] {.noSideEffect,
    importcpp: "GetPCurve", header: "BRepMesh_EdgeParameterProvider.hxx".}