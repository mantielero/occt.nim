##  Created on: 2000-06-16
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

discard "forward decl of Graphic3d_ArrayOfPrimitives"
discard "forward decl of Graphic3d_ArrayOfPrimitives"
type
  HandleC1C1* = Handle[Graphic3dArrayOfPrimitives]

## ! This class furnish services to defined and fill an array of primitives
## ! which can be passed directly to graphics rendering API.
## !
## ! The basic interface consists of the following parts:
## ! 1) Specifying primitive type.
## !    WARNING! Particular primitive types might be unsupported by specific hardware/graphics API (like quads and polygons).
## !             It is always preferred using one of basic types having maximum compatibility:
## !             Point, Triangle (or Triangle strip), Segment aka Lines (or Polyline aka Line Strip).
## !    Primitive strip types can be used to reduce memory usage as alternative to Indexed arrays.
## ! 2) Vertex array.
## !    - Specifying the (maximum) number of vertexes within array.
## !    - Specifying the vertex attributes, complementary to mandatory vertex Position (normal, color, UV texture coordinates).
## !    - Defining vertex values by using various versions of AddVertex() or SetVertex*() methods.
## ! 3) Index array (optional).
## !    - Specifying the (maximum) number of indexes (edges).
## !    - Defining index values by using AddEdge() method; the index value should be within number of defined Vertexes.
## !
## !    Indexed array allows sharing vertex data across Primitives and thus reducing memory usage,
## !    since index size is much smaller then size of vertex with all its attributes.
## !    It is a preferred way for defining primitive array and main alternative to Primitive Strips for optimal memory usage,
## !    although it is also possible (but unusual) defining Indexed Primitive Strip.
## !    Note that it is NOT possible sharing Vertex Attributes partially (e.g. share Position, but have different Normals);
## !    in such cases Vertex should be entirely duplicated with all Attributes.
## ! 4) Bounds array (optional).
## !    - Specifying the (maximum) number of bounds.
## !    - Defining bounds using AddBound() methods.
## !
## !    Bounds allow splitting Primitive Array into sub-groups.
## !    This is useful only in two cases - for specifying per-group color and for restarting Primitive Strips.
## !    WARNING! Bounds within Primitive Array break rendering batches into parts (additional for loops),
## !             affecting rendering performance negatively (increasing CPU load).

type
  Graphic3dArrayOfPrimitives* {.importcpp: "Graphic3d_ArrayOfPrimitives",
                               header: "Graphic3d_ArrayOfPrimitives.hxx", bycopy.} = object of StandardTransient ##
                                                                                                          ## !
                                                                                                          ## Create
                                                                                                          ## an
                                                                                                          ## array
                                                                                                          ## of
                                                                                                          ## specified
                                                                                                          ## type.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Destructor.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @name
                                                                                                          ## optional
                                                                                                          ## array
                                                                                                          ## of
                                                                                                          ## Indices/Edges
                                                                                                          ## for
                                                                                                          ## using
                                                                                                          ## shared
                                                                                                          ## Vertex
                                                                                                          ## data
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## optional
                                                                                                          ## index
                                                                                                          ## buffer.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @name
                                                                                                          ## optional
                                                                                                          ## array
                                                                                                          ## of
                                                                                                          ## Bounds/Subgroups
                                                                                                          ## within
                                                                                                          ## primitive
                                                                                                          ## array
                                                                                                          ## (e.g.
                                                                                                          ## restarting
                                                                                                          ## primitives
                                                                                                          ## /
                                                                                                          ## assigning
                                                                                                          ## colors)
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## optional
                                                                                                          ## bounds
                                                                                                          ## buffer.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @name
                                                                                                          ## protected
                                                                                                          ## constructors
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Main
                                                                                                          ## constructor.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theType
                                                                                                          ## type
                                                                                                          ## of
                                                                                                          ## primitive
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theMaxVertexs
                                                                                                          ## length
                                                                                                          ## of
                                                                                                          ## vertex
                                                                                                          ## attributes
                                                                                                          ## buffer
                                                                                                          ## to
                                                                                                          ## be
                                                                                                          ## allocated
                                                                                                          ## (maximum
                                                                                                          ## number
                                                                                                          ## of
                                                                                                          ## vertexes,
                                                                                                          ## @sa
                                                                                                          ## ::AddVertex())
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theMaxBounds
                                                                                                          ## length
                                                                                                          ## of
                                                                                                          ## bounds
                                                                                                          ## buffer
                                                                                                          ## to
                                                                                                          ## be
                                                                                                          ## allocated
                                                                                                          ## (maximum
                                                                                                          ## number
                                                                                                          ## of
                                                                                                          ## bounds,
                                                                                                          ## @sa
                                                                                                          ## ::AddBound())
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theMaxEdges
                                                                                                          ## length
                                                                                                          ## of
                                                                                                          ## edges
                                                                                                          ## (index)
                                                                                                          ## buffer
                                                                                                          ## to
                                                                                                          ## be
                                                                                                          ## allocated
                                                                                                          ## (maximum
                                                                                                          ## number
                                                                                                          ## of
                                                                                                          ## indexes
                                                                                                          ## @sa
                                                                                                          ## ::AddEdge())
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theArrayFlags
                                                                                                          ## array
                                                                                                          ## flags
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @name
                                                                                                          ## private
                                                                                                          ## fields

  Graphic3dArrayOfPrimitivesbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Graphic3d_ArrayOfPrimitives::get_type_name(@)",
                            header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_ArrayOfPrimitives::get_type_descriptor(@)",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc dynamicType*(this: Graphic3dArrayOfPrimitives): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc createArray*(theType: Graphic3dTypeOfPrimitiveArray; theMaxVertexs: cint;
                 theMaxEdges: cint; theArrayFlags: Graphic3dArrayFlags): Handle[
    Graphic3dArrayOfPrimitives] {.importcpp: "Graphic3d_ArrayOfPrimitives::CreateArray(@)",
                                 header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc createArray*(theType: Graphic3dTypeOfPrimitiveArray; theMaxVertexs: cint;
                 theMaxBounds: cint; theMaxEdges: cint;
                 theArrayFlags: Graphic3dArrayFlags): Handle[
    Graphic3dArrayOfPrimitives] {.importcpp: "Graphic3d_ArrayOfPrimitives::CreateArray(@)",
                                 header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc destroyGraphic3dArrayOfPrimitives*(this: var Graphic3dArrayOfPrimitives) {.
    importcpp: "#.~Graphic3d_ArrayOfPrimitives()",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc attributes*(this: Graphic3dArrayOfPrimitives): Handle[Graphic3dBuffer] {.
    noSideEffect, importcpp: "Attributes",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc `type`*(this: Graphic3dArrayOfPrimitives): Graphic3dTypeOfPrimitiveArray {.
    noSideEffect, importcpp: "Type", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc stringType*(this: Graphic3dArrayOfPrimitives): StandardCString {.noSideEffect,
    importcpp: "StringType", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc hasVertexNormals*(this: Graphic3dArrayOfPrimitives): bool {.noSideEffect,
    importcpp: "HasVertexNormals", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc hasVertexColors*(this: Graphic3dArrayOfPrimitives): bool {.noSideEffect,
    importcpp: "HasVertexColors", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc hasVertexTexels*(this: Graphic3dArrayOfPrimitives): bool {.noSideEffect,
    importcpp: "HasVertexTexels", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc vertexNumber*(this: Graphic3dArrayOfPrimitives): cint {.noSideEffect,
    importcpp: "VertexNumber", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc vertexNumberAllocated*(this: Graphic3dArrayOfPrimitives): cint {.noSideEffect,
    importcpp: "VertexNumberAllocated", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc itemNumber*(this: Graphic3dArrayOfPrimitives): cint {.noSideEffect,
    importcpp: "ItemNumber", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc isValid*(this: var Graphic3dArrayOfPrimitives): bool {.importcpp: "IsValid",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addVertex*(this: var Graphic3dArrayOfPrimitives; theVertex: Pnt): cint {.
    importcpp: "AddVertex", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addVertex*(this: var Graphic3dArrayOfPrimitives; theVertex: Graphic3dVec3): cint {.
    importcpp: "AddVertex", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addVertex*(this: var Graphic3dArrayOfPrimitives; theX: cfloat; theY: cfloat;
               theZ: cfloat): cint {.importcpp: "AddVertex",
                                  header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addVertex*(this: var Graphic3dArrayOfPrimitives; theX: StandardShortReal;
               theY: StandardShortReal; theZ: StandardShortReal): cint {.
    importcpp: "AddVertex", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addVertex*(this: var Graphic3dArrayOfPrimitives; theVertex: Pnt;
               theColor: QuantityColor): cint {.importcpp: "AddVertex",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addVertex*(this: var Graphic3dArrayOfPrimitives; theVertex: Pnt; theColor32: cint): cint {.
    importcpp: "AddVertex", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addVertex*(this: var Graphic3dArrayOfPrimitives; theVertex: Pnt;
               theColor: Graphic3dVec4ub): cint {.importcpp: "AddVertex",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addVertex*(this: var Graphic3dArrayOfPrimitives; theVertex: Pnt; theNormal: Dir): cint {.
    importcpp: "AddVertex", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addVertex*(this: var Graphic3dArrayOfPrimitives; theX: cfloat; theY: cfloat;
               theZ: cfloat; theNX: cfloat; theNY: cfloat; theNZ: cfloat): cint {.
    importcpp: "AddVertex", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addVertex*(this: var Graphic3dArrayOfPrimitives; theX: StandardShortReal;
               theY: StandardShortReal; theZ: StandardShortReal;
               theNX: StandardShortReal; theNY: StandardShortReal;
               theNZ: StandardShortReal): cint {.importcpp: "AddVertex",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addVertex*(this: var Graphic3dArrayOfPrimitives; theVertex: Pnt; theNormal: Dir;
               theColor: QuantityColor): cint {.importcpp: "AddVertex",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addVertex*(this: var Graphic3dArrayOfPrimitives; theVertex: Pnt; theNormal: Dir;
               theColor32: cint): cint {.importcpp: "AddVertex",
                                      header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addVertex*(this: var Graphic3dArrayOfPrimitives; theVertex: Pnt; theTexel: Pnt2d): cint {.
    importcpp: "AddVertex", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addVertex*(this: var Graphic3dArrayOfPrimitives; theX: cfloat; theY: cfloat;
               theZ: cfloat; theTX: cfloat; theTY: cfloat): cint {.
    importcpp: "AddVertex", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addVertex*(this: var Graphic3dArrayOfPrimitives; theX: StandardShortReal;
               theY: StandardShortReal; theZ: StandardShortReal;
               theTX: StandardShortReal; theTY: StandardShortReal): cint {.
    importcpp: "AddVertex", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addVertex*(this: var Graphic3dArrayOfPrimitives; theVertex: Pnt; theNormal: Dir;
               theTexel: Pnt2d): cint {.importcpp: "AddVertex",
                                     header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addVertex*(this: var Graphic3dArrayOfPrimitives; theX: cfloat; theY: cfloat;
               theZ: cfloat; theNX: cfloat; theNY: cfloat; theNZ: cfloat; theTX: cfloat;
               theTY: cfloat): cint {.importcpp: "AddVertex",
                                   header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addVertex*(this: var Graphic3dArrayOfPrimitives; theX: StandardShortReal;
               theY: StandardShortReal; theZ: StandardShortReal;
               theNX: StandardShortReal; theNY: StandardShortReal;
               theNZ: StandardShortReal; theTX: StandardShortReal;
               theTY: StandardShortReal): cint {.importcpp: "AddVertex",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc setVertice*(this: var Graphic3dArrayOfPrimitives; theIndex: cint; theVertex: Pnt) {.
    importcpp: "SetVertice", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc setVertice*(this: var Graphic3dArrayOfPrimitives; theIndex: cint;
                theX: StandardShortReal; theY: StandardShortReal;
                theZ: StandardShortReal) {.importcpp: "SetVertice",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc setVertexColor*(this: var Graphic3dArrayOfPrimitives; theIndex: cint;
                    theColor: QuantityColor) {.importcpp: "SetVertexColor",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc setVertexColor*(this: var Graphic3dArrayOfPrimitives; theIndex: cint;
                    theR: cfloat; theG: cfloat; theB: cfloat) {.
    importcpp: "SetVertexColor", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc setVertexColor*(this: var Graphic3dArrayOfPrimitives; theIndex: cint;
                    theColor: Graphic3dVec4ub) {.importcpp: "SetVertexColor",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc setVertexColor*(this: var Graphic3dArrayOfPrimitives; theIndex: cint;
                    theColor32: cint) {.importcpp: "SetVertexColor",
                                      header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc setVertexNormal*(this: var Graphic3dArrayOfPrimitives; theIndex: cint;
                     theNormal: Dir) {.importcpp: "SetVertexNormal",
                                     header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc setVertexNormal*(this: var Graphic3dArrayOfPrimitives; theIndex: cint;
                     theNX: cfloat; theNY: cfloat; theNZ: cfloat) {.
    importcpp: "SetVertexNormal", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc setVertexTexel*(this: var Graphic3dArrayOfPrimitives; theIndex: cint;
                    theTexel: Pnt2d) {.importcpp: "SetVertexTexel",
                                     header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc setVertexTexel*(this: var Graphic3dArrayOfPrimitives; theIndex: cint;
                    theTX: cfloat; theTY: cfloat) {.importcpp: "SetVertexTexel",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc vertice*(this: Graphic3dArrayOfPrimitives; theRank: cint): Pnt {.noSideEffect,
    importcpp: "Vertice", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc vertice*(this: Graphic3dArrayOfPrimitives; theRank: cint; theX: var cfloat;
             theY: var cfloat; theZ: var cfloat) {.noSideEffect, importcpp: "Vertice",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc vertexColor*(this: Graphic3dArrayOfPrimitives; theRank: cint): QuantityColor {.
    noSideEffect, importcpp: "VertexColor",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc vertexColor*(this: Graphic3dArrayOfPrimitives; theIndex: cint;
                 theColor: var Graphic3dVec4ub) {.noSideEffect,
    importcpp: "VertexColor", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc vertexColor*(this: Graphic3dArrayOfPrimitives; theRank: cint; theR: var cfloat;
                 theG: var cfloat; theB: var cfloat) {.noSideEffect,
    importcpp: "VertexColor", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc vertexColor*(this: Graphic3dArrayOfPrimitives; theRank: cint; theColor: var cint) {.
    noSideEffect, importcpp: "VertexColor",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc vertexNormal*(this: Graphic3dArrayOfPrimitives; theRank: cint): Dir {.
    noSideEffect, importcpp: "VertexNormal",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc vertexNormal*(this: Graphic3dArrayOfPrimitives; theRank: cint;
                  theNX: var cfloat; theNY: var cfloat; theNZ: var cfloat) {.
    noSideEffect, importcpp: "VertexNormal",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc vertexTexel*(this: Graphic3dArrayOfPrimitives; theRank: cint): Pnt2d {.
    noSideEffect, importcpp: "VertexTexel",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc vertexTexel*(this: Graphic3dArrayOfPrimitives; theRank: cint; theTX: var cfloat;
                 theTY: var cfloat) {.noSideEffect, importcpp: "VertexTexel",
                                   header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc indices*(this: Graphic3dArrayOfPrimitives): Handle[Graphic3dIndexBuffer] {.
    noSideEffect, importcpp: "Indices", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc edgeNumber*(this: Graphic3dArrayOfPrimitives): cint {.noSideEffect,
    importcpp: "EdgeNumber", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc edgeNumberAllocated*(this: Graphic3dArrayOfPrimitives): cint {.noSideEffect,
    importcpp: "EdgeNumberAllocated", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc edge*(this: Graphic3dArrayOfPrimitives; theRank: cint): cint {.noSideEffect,
    importcpp: "Edge", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addEdge*(this: var Graphic3dArrayOfPrimitives; theVertexIndex: cint): cint {.
    importcpp: "AddEdge", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addEdges*(this: var Graphic3dArrayOfPrimitives; theVertexIndex1: cint;
              theVertexIndex2: cint): cint {.importcpp: "AddEdges",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addSegmentEdges*(this: var Graphic3dArrayOfPrimitives; theVertexIndex1: cint;
                     theVertexIndex2: cint): cint {.importcpp: "AddSegmentEdges",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addEdges*(this: var Graphic3dArrayOfPrimitives; theVertexIndex1: cint;
              theVertexIndex2: cint; theVertexIndex3: cint): cint {.
    importcpp: "AddEdges", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addTriangleEdges*(this: var Graphic3dArrayOfPrimitives; theVertexIndex1: cint;
                      theVertexIndex2: cint; theVertexIndex3: cint): cint {.
    importcpp: "AddTriangleEdges", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addTriangleEdges*(this: var Graphic3dArrayOfPrimitives;
                      theIndexes: Graphic3dVec3i): cint {.
    importcpp: "AddTriangleEdges", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addTriangleEdges*(this: var Graphic3dArrayOfPrimitives;
                      theIndexes: Graphic3dVec4i): cint {.
    importcpp: "AddTriangleEdges", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addEdges*(this: var Graphic3dArrayOfPrimitives; theVertexIndex1: cint;
              theVertexIndex2: cint; theVertexIndex3: cint; theVertexIndex4: cint): cint {.
    importcpp: "AddEdges", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addQuadEdges*(this: var Graphic3dArrayOfPrimitives; theVertexIndex1: cint;
                  theVertexIndex2: cint; theVertexIndex3: cint;
                  theVertexIndex4: cint): cint {.importcpp: "AddQuadEdges",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addQuadTriangleEdges*(this: var Graphic3dArrayOfPrimitives;
                          theVertexIndex1: cint; theVertexIndex2: cint;
                          theVertexIndex3: cint; theVertexIndex4: cint): cint {.
    importcpp: "AddQuadTriangleEdges", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addQuadTriangleEdges*(this: var Graphic3dArrayOfPrimitives;
                          theIndexes: Graphic3dVec4i): cint {.
    importcpp: "AddQuadTriangleEdges", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addTriangleStripEdges*(this: var Graphic3dArrayOfPrimitives;
                           theVertexLower: cint; theVertexUpper: cint) {.
    importcpp: "AddTriangleStripEdges", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addTriangleFanEdges*(this: var Graphic3dArrayOfPrimitives;
                         theVertexLower: cint; theVertexUpper: cint;
                         theToClose: bool) {.importcpp: "AddTriangleFanEdges",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addPolylineEdges*(this: var Graphic3dArrayOfPrimitives; theVertexLower: cint;
                      theVertexUpper: cint; theToClose: bool) {.
    importcpp: "AddPolylineEdges", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc bounds*(this: Graphic3dArrayOfPrimitives): Handle[Graphic3dBoundBuffer] {.
    noSideEffect, importcpp: "Bounds", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc hasBoundColors*(this: Graphic3dArrayOfPrimitives): bool {.noSideEffect,
    importcpp: "HasBoundColors", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc boundNumber*(this: Graphic3dArrayOfPrimitives): cint {.noSideEffect,
    importcpp: "BoundNumber", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc boundNumberAllocated*(this: Graphic3dArrayOfPrimitives): cint {.noSideEffect,
    importcpp: "BoundNumberAllocated", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc bound*(this: Graphic3dArrayOfPrimitives; theRank: cint): cint {.noSideEffect,
    importcpp: "Bound", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc boundColor*(this: Graphic3dArrayOfPrimitives; theRank: cint): QuantityColor {.
    noSideEffect, importcpp: "BoundColor",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc boundColor*(this: Graphic3dArrayOfPrimitives; theRank: cint; theR: var cfloat;
                theG: var cfloat; theB: var cfloat) {.noSideEffect,
    importcpp: "BoundColor", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addBound*(this: var Graphic3dArrayOfPrimitives; theEdgeNumber: cint): cint {.
    importcpp: "AddBound", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addBound*(this: var Graphic3dArrayOfPrimitives; theEdgeNumber: cint;
              theBColor: QuantityColor): cint {.importcpp: "AddBound",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc addBound*(this: var Graphic3dArrayOfPrimitives; theEdgeNumber: cint;
              theR: cfloat; theG: cfloat; theB: cfloat): cint {.importcpp: "AddBound",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc setBoundColor*(this: var Graphic3dArrayOfPrimitives; theIndex: cint;
                   theColor: QuantityColor) {.importcpp: "SetBoundColor",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc setBoundColor*(this: var Graphic3dArrayOfPrimitives; theIndex: cint;
                   theR: cfloat; theG: cfloat; theB: cfloat) {.
    importcpp: "SetBoundColor", header: "Graphic3d_ArrayOfPrimitives.hxx".}

























