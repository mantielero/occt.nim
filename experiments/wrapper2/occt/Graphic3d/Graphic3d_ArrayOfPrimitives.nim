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

import
  Graphic3d_BoundBuffer, Graphic3d_ArrayFlags, Graphic3d_Buffer,
  Graphic3d_IndexBuffer, Graphic3d_TypeOfPrimitiveArray, ../gp/gp_Dir,
  ../gp/gp_Pnt, ../Standard/Standard_OutOfRange,
  ../Standard/Standard_TypeMismatch, ../Quantity/Quantity_Color

discard "forward decl of Graphic3d_ArrayOfPrimitives"
discard "forward decl of Graphic3d_ArrayOfPrimitives"
type
  Handle_Graphic3d_ArrayOfPrimitives* = handle[Graphic3d_ArrayOfPrimitives]

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
  Graphic3d_ArrayOfPrimitives* {.importcpp: "Graphic3d_ArrayOfPrimitives",
                                header: "Graphic3d_ArrayOfPrimitives.hxx", bycopy.} = object of Standard_Transient ##
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

  Graphic3d_ArrayOfPrimitivesbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_ArrayOfPrimitives::get_type_name(@)",
                              header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_ArrayOfPrimitives::get_type_descriptor(@)",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc DynamicType*(this: Graphic3d_ArrayOfPrimitives): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc CreateArray*(theType: Graphic3d_TypeOfPrimitiveArray;
                 theMaxVertexs: Standard_Integer; theMaxEdges: Standard_Integer;
                 theArrayFlags: Graphic3d_ArrayFlags): handle[
    Graphic3d_ArrayOfPrimitives] {.importcpp: "Graphic3d_ArrayOfPrimitives::CreateArray(@)",
                                  header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc CreateArray*(theType: Graphic3d_TypeOfPrimitiveArray;
                 theMaxVertexs: Standard_Integer; theMaxBounds: Standard_Integer;
                 theMaxEdges: Standard_Integer;
                 theArrayFlags: Graphic3d_ArrayFlags): handle[
    Graphic3d_ArrayOfPrimitives] {.importcpp: "Graphic3d_ArrayOfPrimitives::CreateArray(@)",
                                  header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc destroyGraphic3d_ArrayOfPrimitives*(this: var Graphic3d_ArrayOfPrimitives) {.
    importcpp: "#.~Graphic3d_ArrayOfPrimitives()",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc Attributes*(this: Graphic3d_ArrayOfPrimitives): handle[Graphic3d_Buffer] {.
    noSideEffect, importcpp: "Attributes",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc Type*(this: Graphic3d_ArrayOfPrimitives): Graphic3d_TypeOfPrimitiveArray {.
    noSideEffect, importcpp: "Type", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc StringType*(this: Graphic3d_ArrayOfPrimitives): Standard_CString {.
    noSideEffect, importcpp: "StringType",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc HasVertexNormals*(this: Graphic3d_ArrayOfPrimitives): Standard_Boolean {.
    noSideEffect, importcpp: "HasVertexNormals",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc HasVertexColors*(this: Graphic3d_ArrayOfPrimitives): Standard_Boolean {.
    noSideEffect, importcpp: "HasVertexColors",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc HasVertexTexels*(this: Graphic3d_ArrayOfPrimitives): Standard_Boolean {.
    noSideEffect, importcpp: "HasVertexTexels",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc VertexNumber*(this: Graphic3d_ArrayOfPrimitives): Standard_Integer {.
    noSideEffect, importcpp: "VertexNumber",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc VertexNumberAllocated*(this: Graphic3d_ArrayOfPrimitives): Standard_Integer {.
    noSideEffect, importcpp: "VertexNumberAllocated",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc ItemNumber*(this: Graphic3d_ArrayOfPrimitives): Standard_Integer {.
    noSideEffect, importcpp: "ItemNumber",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc IsValid*(this: var Graphic3d_ArrayOfPrimitives): Standard_Boolean {.
    importcpp: "IsValid", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddVertex*(this: var Graphic3d_ArrayOfPrimitives; theVertex: gp_Pnt): Standard_Integer {.
    importcpp: "AddVertex", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddVertex*(this: var Graphic3d_ArrayOfPrimitives; theVertex: Graphic3d_Vec3): Standard_Integer {.
    importcpp: "AddVertex", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddVertex*(this: var Graphic3d_ArrayOfPrimitives; theX: Standard_Real;
               theY: Standard_Real; theZ: Standard_Real): Standard_Integer {.
    importcpp: "AddVertex", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddVertex*(this: var Graphic3d_ArrayOfPrimitives; theX: Standard_ShortReal;
               theY: Standard_ShortReal; theZ: Standard_ShortReal): Standard_Integer {.
    importcpp: "AddVertex", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddVertex*(this: var Graphic3d_ArrayOfPrimitives; theVertex: gp_Pnt;
               theColor: Quantity_Color): Standard_Integer {.
    importcpp: "AddVertex", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddVertex*(this: var Graphic3d_ArrayOfPrimitives; theVertex: gp_Pnt;
               theColor32: Standard_Integer): Standard_Integer {.
    importcpp: "AddVertex", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddVertex*(this: var Graphic3d_ArrayOfPrimitives; theVertex: gp_Pnt;
               theColor: Graphic3d_Vec4ub): Standard_Integer {.
    importcpp: "AddVertex", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddVertex*(this: var Graphic3d_ArrayOfPrimitives; theVertex: gp_Pnt;
               theNormal: gp_Dir): Standard_Integer {.importcpp: "AddVertex",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddVertex*(this: var Graphic3d_ArrayOfPrimitives; theX: Standard_Real;
               theY: Standard_Real; theZ: Standard_Real; theNX: Standard_Real;
               theNY: Standard_Real; theNZ: Standard_Real): Standard_Integer {.
    importcpp: "AddVertex", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddVertex*(this: var Graphic3d_ArrayOfPrimitives; theX: Standard_ShortReal;
               theY: Standard_ShortReal; theZ: Standard_ShortReal;
               theNX: Standard_ShortReal; theNY: Standard_ShortReal;
               theNZ: Standard_ShortReal): Standard_Integer {.
    importcpp: "AddVertex", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddVertex*(this: var Graphic3d_ArrayOfPrimitives; theVertex: gp_Pnt;
               theNormal: gp_Dir; theColor: Quantity_Color): Standard_Integer {.
    importcpp: "AddVertex", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddVertex*(this: var Graphic3d_ArrayOfPrimitives; theVertex: gp_Pnt;
               theNormal: gp_Dir; theColor32: Standard_Integer): Standard_Integer {.
    importcpp: "AddVertex", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddVertex*(this: var Graphic3d_ArrayOfPrimitives; theVertex: gp_Pnt;
               theTexel: gp_Pnt2d): Standard_Integer {.importcpp: "AddVertex",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddVertex*(this: var Graphic3d_ArrayOfPrimitives; theX: Standard_Real;
               theY: Standard_Real; theZ: Standard_Real; theTX: Standard_Real;
               theTY: Standard_Real): Standard_Integer {.importcpp: "AddVertex",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddVertex*(this: var Graphic3d_ArrayOfPrimitives; theX: Standard_ShortReal;
               theY: Standard_ShortReal; theZ: Standard_ShortReal;
               theTX: Standard_ShortReal; theTY: Standard_ShortReal): Standard_Integer {.
    importcpp: "AddVertex", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddVertex*(this: var Graphic3d_ArrayOfPrimitives; theVertex: gp_Pnt;
               theNormal: gp_Dir; theTexel: gp_Pnt2d): Standard_Integer {.
    importcpp: "AddVertex", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddVertex*(this: var Graphic3d_ArrayOfPrimitives; theX: Standard_Real;
               theY: Standard_Real; theZ: Standard_Real; theNX: Standard_Real;
               theNY: Standard_Real; theNZ: Standard_Real; theTX: Standard_Real;
               theTY: Standard_Real): Standard_Integer {.importcpp: "AddVertex",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddVertex*(this: var Graphic3d_ArrayOfPrimitives; theX: Standard_ShortReal;
               theY: Standard_ShortReal; theZ: Standard_ShortReal;
               theNX: Standard_ShortReal; theNY: Standard_ShortReal;
               theNZ: Standard_ShortReal; theTX: Standard_ShortReal;
               theTY: Standard_ShortReal): Standard_Integer {.
    importcpp: "AddVertex", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc SetVertice*(this: var Graphic3d_ArrayOfPrimitives; theIndex: Standard_Integer;
                theVertex: gp_Pnt) {.importcpp: "SetVertice",
                                   header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc SetVertice*(this: var Graphic3d_ArrayOfPrimitives; theIndex: Standard_Integer;
                theX: Standard_ShortReal; theY: Standard_ShortReal;
                theZ: Standard_ShortReal) {.importcpp: "SetVertice",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc SetVertexColor*(this: var Graphic3d_ArrayOfPrimitives;
                    theIndex: Standard_Integer; theColor: Quantity_Color) {.
    importcpp: "SetVertexColor", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc SetVertexColor*(this: var Graphic3d_ArrayOfPrimitives;
                    theIndex: Standard_Integer; theR: Standard_Real;
                    theG: Standard_Real; theB: Standard_Real) {.
    importcpp: "SetVertexColor", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc SetVertexColor*(this: var Graphic3d_ArrayOfPrimitives;
                    theIndex: Standard_Integer; theColor: Graphic3d_Vec4ub) {.
    importcpp: "SetVertexColor", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc SetVertexColor*(this: var Graphic3d_ArrayOfPrimitives;
                    theIndex: Standard_Integer; theColor32: Standard_Integer) {.
    importcpp: "SetVertexColor", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc SetVertexNormal*(this: var Graphic3d_ArrayOfPrimitives;
                     theIndex: Standard_Integer; theNormal: gp_Dir) {.
    importcpp: "SetVertexNormal", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc SetVertexNormal*(this: var Graphic3d_ArrayOfPrimitives;
                     theIndex: Standard_Integer; theNX: Standard_Real;
                     theNY: Standard_Real; theNZ: Standard_Real) {.
    importcpp: "SetVertexNormal", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc SetVertexTexel*(this: var Graphic3d_ArrayOfPrimitives;
                    theIndex: Standard_Integer; theTexel: gp_Pnt2d) {.
    importcpp: "SetVertexTexel", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc SetVertexTexel*(this: var Graphic3d_ArrayOfPrimitives;
                    theIndex: Standard_Integer; theTX: Standard_Real;
                    theTY: Standard_Real) {.importcpp: "SetVertexTexel",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc Vertice*(this: Graphic3d_ArrayOfPrimitives; theRank: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "Vertice", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc Vertice*(this: Graphic3d_ArrayOfPrimitives; theRank: Standard_Integer;
             theX: var Standard_Real; theY: var Standard_Real; theZ: var Standard_Real) {.
    noSideEffect, importcpp: "Vertice", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc VertexColor*(this: Graphic3d_ArrayOfPrimitives; theRank: Standard_Integer): Quantity_Color {.
    noSideEffect, importcpp: "VertexColor",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc VertexColor*(this: Graphic3d_ArrayOfPrimitives; theIndex: Standard_Integer;
                 theColor: var Graphic3d_Vec4ub) {.noSideEffect,
    importcpp: "VertexColor", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc VertexColor*(this: Graphic3d_ArrayOfPrimitives; theRank: Standard_Integer;
                 theR: var Standard_Real; theG: var Standard_Real;
                 theB: var Standard_Real) {.noSideEffect, importcpp: "VertexColor",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc VertexColor*(this: Graphic3d_ArrayOfPrimitives; theRank: Standard_Integer;
                 theColor: var Standard_Integer) {.noSideEffect,
    importcpp: "VertexColor", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc VertexNormal*(this: Graphic3d_ArrayOfPrimitives; theRank: Standard_Integer): gp_Dir {.
    noSideEffect, importcpp: "VertexNormal",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc VertexNormal*(this: Graphic3d_ArrayOfPrimitives; theRank: Standard_Integer;
                  theNX: var Standard_Real; theNY: var Standard_Real;
                  theNZ: var Standard_Real) {.noSideEffect,
    importcpp: "VertexNormal", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc VertexTexel*(this: Graphic3d_ArrayOfPrimitives; theRank: Standard_Integer): gp_Pnt2d {.
    noSideEffect, importcpp: "VertexTexel",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc VertexTexel*(this: Graphic3d_ArrayOfPrimitives; theRank: Standard_Integer;
                 theTX: var Standard_Real; theTY: var Standard_Real) {.noSideEffect,
    importcpp: "VertexTexel", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc Indices*(this: Graphic3d_ArrayOfPrimitives): handle[Graphic3d_IndexBuffer] {.
    noSideEffect, importcpp: "Indices", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc EdgeNumber*(this: Graphic3d_ArrayOfPrimitives): Standard_Integer {.
    noSideEffect, importcpp: "EdgeNumber",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc EdgeNumberAllocated*(this: Graphic3d_ArrayOfPrimitives): Standard_Integer {.
    noSideEffect, importcpp: "EdgeNumberAllocated",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc Edge*(this: Graphic3d_ArrayOfPrimitives; theRank: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Edge", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddEdge*(this: var Graphic3d_ArrayOfPrimitives;
             theVertexIndex: Standard_Integer): Standard_Integer {.
    importcpp: "AddEdge", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddEdges*(this: var Graphic3d_ArrayOfPrimitives;
              theVertexIndex1: Standard_Integer; theVertexIndex2: Standard_Integer): Standard_Integer {.
    importcpp: "AddEdges", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddSegmentEdges*(this: var Graphic3d_ArrayOfPrimitives;
                     theVertexIndex1: Standard_Integer;
                     theVertexIndex2: Standard_Integer): Standard_Integer {.
    importcpp: "AddSegmentEdges", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddEdges*(this: var Graphic3d_ArrayOfPrimitives;
              theVertexIndex1: Standard_Integer;
              theVertexIndex2: Standard_Integer; theVertexIndex3: Standard_Integer): Standard_Integer {.
    importcpp: "AddEdges", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddTriangleEdges*(this: var Graphic3d_ArrayOfPrimitives;
                      theVertexIndex1: Standard_Integer;
                      theVertexIndex2: Standard_Integer;
                      theVertexIndex3: Standard_Integer): Standard_Integer {.
    importcpp: "AddTriangleEdges", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddTriangleEdges*(this: var Graphic3d_ArrayOfPrimitives;
                      theIndexes: Graphic3d_Vec3i): Standard_Integer {.
    importcpp: "AddTriangleEdges", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddTriangleEdges*(this: var Graphic3d_ArrayOfPrimitives;
                      theIndexes: Graphic3d_Vec4i): Standard_Integer {.
    importcpp: "AddTriangleEdges", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddEdges*(this: var Graphic3d_ArrayOfPrimitives;
              theVertexIndex1: Standard_Integer;
              theVertexIndex2: Standard_Integer;
              theVertexIndex3: Standard_Integer; theVertexIndex4: Standard_Integer): Standard_Integer {.
    importcpp: "AddEdges", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddQuadEdges*(this: var Graphic3d_ArrayOfPrimitives;
                  theVertexIndex1: Standard_Integer;
                  theVertexIndex2: Standard_Integer;
                  theVertexIndex3: Standard_Integer;
                  theVertexIndex4: Standard_Integer): Standard_Integer {.
    importcpp: "AddQuadEdges", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddQuadTriangleEdges*(this: var Graphic3d_ArrayOfPrimitives;
                          theVertexIndex1: Standard_Integer;
                          theVertexIndex2: Standard_Integer;
                          theVertexIndex3: Standard_Integer;
                          theVertexIndex4: Standard_Integer): Standard_Integer {.
    importcpp: "AddQuadTriangleEdges", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddQuadTriangleEdges*(this: var Graphic3d_ArrayOfPrimitives;
                          theIndexes: Graphic3d_Vec4i): Standard_Integer {.
    importcpp: "AddQuadTriangleEdges", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddTriangleStripEdges*(this: var Graphic3d_ArrayOfPrimitives;
                           theVertexLower: Standard_Integer;
                           theVertexUpper: Standard_Integer) {.
    importcpp: "AddTriangleStripEdges", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddTriangleFanEdges*(this: var Graphic3d_ArrayOfPrimitives;
                         theVertexLower: Standard_Integer;
                         theVertexUpper: Standard_Integer;
                         theToClose: Standard_Boolean) {.
    importcpp: "AddTriangleFanEdges", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddPolylineEdges*(this: var Graphic3d_ArrayOfPrimitives;
                      theVertexLower: Standard_Integer;
                      theVertexUpper: Standard_Integer;
                      theToClose: Standard_Boolean) {.
    importcpp: "AddPolylineEdges", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc Bounds*(this: Graphic3d_ArrayOfPrimitives): handle[Graphic3d_BoundBuffer] {.
    noSideEffect, importcpp: "Bounds", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc HasBoundColors*(this: Graphic3d_ArrayOfPrimitives): Standard_Boolean {.
    noSideEffect, importcpp: "HasBoundColors",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc BoundNumber*(this: Graphic3d_ArrayOfPrimitives): Standard_Integer {.
    noSideEffect, importcpp: "BoundNumber",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc BoundNumberAllocated*(this: Graphic3d_ArrayOfPrimitives): Standard_Integer {.
    noSideEffect, importcpp: "BoundNumberAllocated",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc Bound*(this: Graphic3d_ArrayOfPrimitives; theRank: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Bound", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc BoundColor*(this: Graphic3d_ArrayOfPrimitives; theRank: Standard_Integer): Quantity_Color {.
    noSideEffect, importcpp: "BoundColor",
    header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc BoundColor*(this: Graphic3d_ArrayOfPrimitives; theRank: Standard_Integer;
                theR: var Standard_Real; theG: var Standard_Real;
                theB: var Standard_Real) {.noSideEffect, importcpp: "BoundColor", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddBound*(this: var Graphic3d_ArrayOfPrimitives;
              theEdgeNumber: Standard_Integer): Standard_Integer {.
    importcpp: "AddBound", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddBound*(this: var Graphic3d_ArrayOfPrimitives;
              theEdgeNumber: Standard_Integer; theBColor: Quantity_Color): Standard_Integer {.
    importcpp: "AddBound", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc AddBound*(this: var Graphic3d_ArrayOfPrimitives;
              theEdgeNumber: Standard_Integer; theR: Standard_Real;
              theG: Standard_Real; theB: Standard_Real): Standard_Integer {.
    importcpp: "AddBound", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc SetBoundColor*(this: var Graphic3d_ArrayOfPrimitives;
                   theIndex: Standard_Integer; theColor: Quantity_Color) {.
    importcpp: "SetBoundColor", header: "Graphic3d_ArrayOfPrimitives.hxx".}
proc SetBoundColor*(this: var Graphic3d_ArrayOfPrimitives;
                   theIndex: Standard_Integer; theR: Standard_Real;
                   theG: Standard_Real; theB: Standard_Real) {.
    importcpp: "SetBoundColor", header: "Graphic3d_ArrayOfPrimitives.hxx".}