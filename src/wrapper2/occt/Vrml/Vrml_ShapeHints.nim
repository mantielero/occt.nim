##  Created on: 1997-02-11
##  Created by: Alexander BRIVIN and Dmitry TARASOV
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard_Handle, Vrml_VertexOrdering, Vrml_ShapeType, Vrml_FaceType,
  ../Standard/Standard_Real, ../Standard/Standard_OStream

## ! defines a ShapeHints node of VRML specifying properties of geometry and its appearance.
## ! The ShapeHints node indicates that IndexedFaceSets are solid, contain ordered vertices, or
## ! contain convex faces.
## ! These hints allow VRML implementations to optimize certain rendering features.
## ! Optimizations that may be performed include enabling back-face culling and disabling
## ! two-sided lighting. For example, if an object is solid and has ordered vertices, an
## ! implementation may turn on backface culling and turn off two-sided lighting. To ensure
## ! that an IndexedFaceSet can be viewed from either direction, set shapeType to be
## ! UNKNOWN_SHAPE_TYPE.
## ! If you know that your shapes are closed and will alwsys be viewed from the outside, set
## ! vertexOrdering to be either CLOCKWISE or COUNTERCLOCKWISE (depending on
## ! how you built your object), and set shapeType to be SOLID. Placing this near the top of
## ! your VRML file will allow the scene to be rendered much faster.
## ! The ShapeHints node also affects how default normals are generated. When an
## ! IndexedFaceSet has to generate default normals, it uses the creaseAngle field to determine
## ! which edges should be smoothly shaded and which ones should have a sharp crease. The
## ! crease angle is the angle between surface normals on adjacent polygons. For example, a
## ! crease angle of .5 radians (the default value) means that an edge between two adjacent
## ! polygonal faces will be smooth shaded if the normals to the two faces form an angle that is
## ! less than .5 radians (about 30 degrees). Otherwise, it will be faceted.

type
  Vrml_ShapeHints* {.importcpp: "Vrml_ShapeHints", header: "Vrml_ShapeHints.hxx",
                    bycopy.} = object


proc constructVrml_ShapeHints*(aVertexOrdering: Vrml_VertexOrdering = Vrml_UNKNOWN_ORDERING;
    aShapeType: Vrml_ShapeType = Vrml_UNKNOWN_SHAPE_TYPE;
                              aFaceType: Vrml_FaceType = Vrml_CONVEX;
                              aAngle: Standard_Real = 0.5): Vrml_ShapeHints {.
    constructor, importcpp: "Vrml_ShapeHints(@)", header: "Vrml_ShapeHints.hxx".}
proc SetVertexOrdering*(this: var Vrml_ShapeHints;
                       aVertexOrdering: Vrml_VertexOrdering) {.
    importcpp: "SetVertexOrdering", header: "Vrml_ShapeHints.hxx".}
proc VertexOrdering*(this: Vrml_ShapeHints): Vrml_VertexOrdering {.noSideEffect,
    importcpp: "VertexOrdering", header: "Vrml_ShapeHints.hxx".}
proc SetShapeType*(this: var Vrml_ShapeHints; aShapeType: Vrml_ShapeType) {.
    importcpp: "SetShapeType", header: "Vrml_ShapeHints.hxx".}
proc ShapeType*(this: Vrml_ShapeHints): Vrml_ShapeType {.noSideEffect,
    importcpp: "ShapeType", header: "Vrml_ShapeHints.hxx".}
proc SetFaceType*(this: var Vrml_ShapeHints; aFaceType: Vrml_FaceType) {.
    importcpp: "SetFaceType", header: "Vrml_ShapeHints.hxx".}
proc FaceType*(this: Vrml_ShapeHints): Vrml_FaceType {.noSideEffect,
    importcpp: "FaceType", header: "Vrml_ShapeHints.hxx".}
proc SetAngle*(this: var Vrml_ShapeHints; aAngle: Standard_Real) {.
    importcpp: "SetAngle", header: "Vrml_ShapeHints.hxx".}
proc Angle*(this: Vrml_ShapeHints): Standard_Real {.noSideEffect, importcpp: "Angle",
    header: "Vrml_ShapeHints.hxx".}
proc Print*(this: Vrml_ShapeHints; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_ShapeHints.hxx".}