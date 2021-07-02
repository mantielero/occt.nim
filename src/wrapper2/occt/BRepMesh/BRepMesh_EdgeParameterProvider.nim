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

discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
type
  BRepMeshEdgeParameterProvider*[ParametersCollection] {.
      importcpp: "BRepMesh_EdgeParameterProvider<\'0>",
      header: "BRepMesh_EdgeParameterProvider.hxx", bycopy.} = object of StandardTransient ##
                                                                                    ## !
                                                                                    ## Constructor.
                                                                                    ## Initializes
                                                                                    ## empty
                                                                                    ## provider.


proc constructBRepMeshEdgeParameterProvider*[ParametersCollection](): BRepMeshEdgeParameterProvider[
    ParametersCollection] {.constructor, importcpp: "BRepMesh_EdgeParameterProvider<\'*0>(@)",
                           header: "BRepMesh_EdgeParameterProvider.hxx".}
proc constructBRepMeshEdgeParameterProvider*[ParametersCollection](
    theEdge: IEdgeHandle; theOrientation: TopAbsOrientation; theFace: IFaceHandle;
    theParameters: ParametersCollection): BRepMeshEdgeParameterProvider[
    ParametersCollection] {.constructor, importcpp: "BRepMesh_EdgeParameterProvider<\'*0>(@)",
                           header: "BRepMesh_EdgeParameterProvider.hxx".}
proc init*[ParametersCollection](this: var BRepMeshEdgeParameterProvider[
    ParametersCollection]; theEdge: IEdgeHandle; theOrientation: TopAbsOrientation;
                                theFace: IFaceHandle;
                                theParameters: ParametersCollection) {.
    importcpp: "Init", header: "BRepMesh_EdgeParameterProvider.hxx".}
proc parameter*[ParametersCollection](this: BRepMeshEdgeParameterProvider[
    ParametersCollection]; theIndex: StandardInteger; thePoint3d: GpPnt): StandardReal {.
    noSideEffect, importcpp: "Parameter",
    header: "BRepMesh_EdgeParameterProvider.hxx".}
proc getPCurve*[ParametersCollection](this: BRepMeshEdgeParameterProvider[
    ParametersCollection]): Handle[Adaptor2dHCurve2d] {.noSideEffect,
    importcpp: "GetPCurve", header: "BRepMesh_EdgeParameterProvider.hxx".}

