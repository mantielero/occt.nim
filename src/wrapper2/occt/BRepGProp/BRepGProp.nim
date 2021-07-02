##  Created on: 1992-12-04
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of GProp_GProps"
discard "forward decl of gp_Pln"
discard "forward decl of BRepGProp_EdgeTool"
discard "forward decl of BRepGProp_Face"
discard "forward decl of BRepGProp_Domain"
discard "forward decl of BRepGProp_Cinert"
discard "forward decl of BRepGProp_Sinert"
discard "forward decl of BRepGProp_Vinert"
discard "forward decl of BRepGProp_VinertGK"
discard "forward decl of BRepGProp_UFunction"
discard "forward decl of BRepGProp_TFunction"
discard "forward decl of gp_XYZ"
type
  BRepGProp* {.importcpp: "BRepGProp", header: "BRepGProp.hxx", bycopy.} = object ## !
                                                                          ## Computes the linear global
                                                                          ## properties of the shape S,
                                                                          ## ! i.e. the global
                                                                          ## properties
                                                                          ## induced by each edge of the
                                                                          ## ! shape S, and brings them
                                                                          ## together with the global
                                                                          ## !
                                                                          ## properties still
                                                                          ## retained by the
                                                                          ## framework
                                                                          ## LProps. If
                                                                          ## ! the
                                                                          ## current system of LProps was empty, its global
                                                                          ## !
                                                                          ## properties become equal to the linear global
                                                                          ## !
                                                                          ## properties of S.
                                                                          ## ! For this
                                                                          ## computation no linear
                                                                          ## density is
                                                                          ## attached to
                                                                          ## ! the edges. So, for
                                                                          ## example, the added mass
                                                                          ## !
                                                                          ## corresponds to the sum of the
                                                                          ## lengths of the edges of
                                                                          ## ! S. The
                                                                          ## density of the
                                                                          ## composed
                                                                          ## systems, i.e. that of
                                                                          ## ! each
                                                                          ## component of the
                                                                          ## current system of
                                                                          ## LProps, and
                                                                          ## ! that of S which is
                                                                          ## considered to be equal to 1, must be
                                                                          ## coherent.
                                                                          ## ! Note that this
                                                                          ## coherence cannot be
                                                                          ## checked. You are
                                                                          ## !
                                                                          ## advised to use a
                                                                          ## separate
                                                                          ## framework for each
                                                                          ## !
                                                                          ## density, and then to bring these
                                                                          ## frameworks
                                                                          ## together
                                                                          ## ! into a global one.
                                                                          ## ! The point
                                                                          ## relative to which the
                                                                          ## inertia of the system is
                                                                          ## !
                                                                          ## computed is the
                                                                          ## reference point of the
                                                                          ## framework
                                                                          ## LProps.
                                                                          ## ! Note: if your
                                                                          ## programming
                                                                          ## ensures that the
                                                                          ## framework
                                                                          ## ! LProps
                                                                          ## retains only linear global
                                                                          ## properties
                                                                          ## (brought
                                                                          ## !
                                                                          ## together for
                                                                          ## example, by the
                                                                          ## function
                                                                          ## !
                                                                          ## LinearProperties) for
                                                                          ## objects the
                                                                          ## density of which is
                                                                          ## ! equal to 1 (or is not
                                                                          ## defined), the
                                                                          ## function Mass will
                                                                          ## ! return the total length of edges of the system
                                                                          ## analysed by
                                                                          ## LProps.
                                                                          ## !
                                                                          ## Warning
                                                                          ## ! No check is
                                                                          ## performed to verify that the shape S
                                                                          ## !
                                                                          ## retains truly linear
                                                                          ## properties. If S is simply a
                                                                          ## vertex, it
                                                                          ## ! is not
                                                                          ## considered to
                                                                          ## present any
                                                                          ## additional global
                                                                          ## properties.
                                                                          ## !
                                                                          ## SkipShared is a
                                                                          ## special flag, which allows taking in
                                                                          ## calculation
                                                                          ## ! shared
                                                                          ## topological
                                                                          ## entities or not.
                                                                          ## ! For ex., if
                                                                          ## SkipShared = True, edges, shared by two or more faces,
                                                                          ## ! are taken into
                                                                          ## calculation only once.
                                                                          ## ! If we have cube with sizes 1, 1, 1, its linear
                                                                          ## properties = 12
                                                                          ## ! for
                                                                          ## SkipEdges = true and 24 for
                                                                          ## SkipEdges = false.
                                                                          ## !
                                                                          ## UseTriangulation is a
                                                                          ## special flag, which
                                                                          ## defines
                                                                          ## preferable
                                                                          ## ! source of
                                                                          ## geometry data. If
                                                                          ## UseTriangulation =
                                                                          ## Standard_False,
                                                                          ## ! exact
                                                                          ## geometry
                                                                          ## objects
                                                                          ## (curves) are used,
                                                                          ## otherwise
                                                                          ## polygons of
                                                                          ## !
                                                                          ## triangulation are used first.


proc linearProperties*(s: TopoDS_Shape; lProps: var GPropGProps;
                      skipShared: StandardBoolean = standardFalse;
                      useTriangulation: StandardBoolean = standardFalse) {.
    importcpp: "BRepGProp::LinearProperties(@)", header: "BRepGProp.hxx".}
proc surfaceProperties*(s: TopoDS_Shape; sProps: var GPropGProps;
                       skipShared: StandardBoolean = standardFalse;
                       useTriangulation: StandardBoolean = standardFalse) {.
    importcpp: "BRepGProp::SurfaceProperties(@)", header: "BRepGProp.hxx".}
proc surfaceProperties*(s: TopoDS_Shape; sProps: var GPropGProps; eps: StandardReal;
                       skipShared: StandardBoolean = standardFalse): StandardReal {.
    importcpp: "BRepGProp::SurfaceProperties(@)", header: "BRepGProp.hxx".}
proc volumeProperties*(s: TopoDS_Shape; vProps: var GPropGProps;
                      onlyClosed: StandardBoolean = standardFalse;
                      skipShared: StandardBoolean = standardFalse;
                      useTriangulation: StandardBoolean = standardFalse) {.
    importcpp: "BRepGProp::VolumeProperties(@)", header: "BRepGProp.hxx".}
proc volumeProperties*(s: TopoDS_Shape; vProps: var GPropGProps; eps: StandardReal;
                      onlyClosed: StandardBoolean = standardFalse;
                      skipShared: StandardBoolean = standardFalse): StandardReal {.
    importcpp: "BRepGProp::VolumeProperties(@)", header: "BRepGProp.hxx".}
proc volumePropertiesGK*(s: TopoDS_Shape; vProps: var GPropGProps;
                        eps: StandardReal = 0.001;
                        onlyClosed: StandardBoolean = standardFalse;
                        isUseSpan: StandardBoolean = standardFalse;
                        cGFlag: StandardBoolean = standardFalse;
                        iFlag: StandardBoolean = standardFalse;
                        skipShared: StandardBoolean = standardFalse): StandardReal {.
    importcpp: "BRepGProp::VolumePropertiesGK(@)", header: "BRepGProp.hxx".}
proc volumePropertiesGK*(s: TopoDS_Shape; vProps: var GPropGProps; thePln: GpPln;
                        eps: StandardReal = 0.001;
                        onlyClosed: StandardBoolean = standardFalse;
                        isUseSpan: StandardBoolean = standardFalse;
                        cGFlag: StandardBoolean = standardFalse;
                        iFlag: StandardBoolean = standardFalse;
                        skipShared: StandardBoolean = standardFalse): StandardReal {.
    importcpp: "BRepGProp::VolumePropertiesGK(@)", header: "BRepGProp.hxx".}

