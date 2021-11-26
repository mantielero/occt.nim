##  Created on: 1995-03-06
##  Created by: Laurent PAINNOT
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_NullObject"
discard "forward decl of Poly_Triangulation"
type
  HandlePolyTriangulation* = Handle[PolyTriangulation]

## ! Provides a triangulation for a surface, a set of surfaces, or
## ! more generally a shape.
## ! A triangulation consists of an approximate representation
## ! of the actual shape, using a collection of points and
## ! triangles. The points are located on the surface. The
## ! edges of the triangles connect adjacent points with a
## ! straight line that approximates the true curve on the surface.
## ! A triangulation comprises:
## ! -   A table of 3D nodes (3D points on the surface).
## ! -   A table of triangles. Each triangle (Poly_Triangle
## ! object) comprises a triplet of indices in the table of 3D
## ! nodes specific to the triangulation.
## ! -   A table of 2D nodes (2D points), parallel to the table of
## ! 3D nodes. This table is optional. If it exists, the
## ! coordinates of a 2D point are the (u, v) parameters
## ! of the corresponding 3D point on the surface
## ! approximated by the triangulation.
## ! -   A deflection (optional), which maximizes the distance
## ! from a point on the surface to the corresponding point
## ! on its approximate triangulation.
## ! In many cases, algorithms do not need to work with the
## ! exact representation of a surface. A triangular
## ! representation induces simpler and more robust adjusting,
## ! faster performances, and the results are as good.
## ! This is a Transient class.

type
  PolyTriangulation* {.importcpp: "Poly_Triangulation",
                      header: "Poly_Triangulation.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Constructs
                                                                                        ## a
                                                                                        ## triangulation
                                                                                        ## from
                                                                                        ## a
                                                                                        ## set
                                                                                        ## of
                                                                                        ## triangles.
                                                                                        ## The
                                                                                        ##
                                                                                        ## !
                                                                                        ## triangulation
                                                                                        ## is
                                                                                        ## initialized
                                                                                        ## without
                                                                                        ## a
                                                                                        ## triangle
                                                                                        ## or
                                                                                        ## a
                                                                                        ## node,
                                                                                        ## but
                                                                                        ## capable
                                                                                        ## of
                                                                                        ##
                                                                                        ## !
                                                                                        ## containing
                                                                                        ## nbNodes
                                                                                        ## nodes,
                                                                                        ## and
                                                                                        ## nbTriangles
                                                                                        ##
                                                                                        ## !
                                                                                        ## triangles.
                                                                                        ## Here
                                                                                        ## the
                                                                                        ## UVNodes
                                                                                        ## flag
                                                                                        ## indicates
                                                                                        ## whether
                                                                                        ##
                                                                                        ## !
                                                                                        ## 2D
                                                                                        ## nodes
                                                                                        ## will
                                                                                        ## be
                                                                                        ## associated
                                                                                        ## with
                                                                                        ## 3D
                                                                                        ## ones,
                                                                                        ## (i.e.
                                                                                        ## to
                                                                                        ##
                                                                                        ## !
                                                                                        ## enable
                                                                                        ## a
                                                                                        ## 2D
                                                                                        ## representation).


proc newPolyTriangulation*(nbNodes: cint; nbTriangles: cint; uVNodes: bool): PolyTriangulation {.
    cdecl, constructor, importcpp: "Poly_Triangulation(@)", dynlib: tkmath.}
proc newPolyTriangulation*(nodes: TColgpArray1OfPnt;
                          triangles: PolyArray1OfTriangle): PolyTriangulation {.
    cdecl, constructor, importcpp: "Poly_Triangulation(@)", dynlib: tkmath.}
proc newPolyTriangulation*(nodes: TColgpArray1OfPnt; uVNodes: TColgpArray1OfPnt2d;
                          triangles: PolyArray1OfTriangle): PolyTriangulation {.
    cdecl, constructor, importcpp: "Poly_Triangulation(@)", dynlib: tkmath.}
proc copy*(this: PolyTriangulation): Handle[PolyTriangulation] {.noSideEffect, cdecl,
    importcpp: "Copy", dynlib: tkmath.}
proc newPolyTriangulation*(theTriangulation: Handle[PolyTriangulation]): PolyTriangulation {.
    cdecl, constructor, importcpp: "Poly_Triangulation(@)", dynlib: tkmath.}
proc deflection*(this: PolyTriangulation): cfloat {.noSideEffect, cdecl,
    importcpp: "Deflection", dynlib: tkmath.}
proc deflection*(this: var PolyTriangulation; theDeflection: cfloat) {.cdecl,
    importcpp: "Deflection", dynlib: tkmath.}
proc removeUVNodes*(this: var PolyTriangulation) {.cdecl, importcpp: "RemoveUVNodes",
    dynlib: tkmath.}
proc nbNodes*(this: PolyTriangulation): cint {.noSideEffect, cdecl,
    importcpp: "NbNodes", dynlib: tkmath.}
proc nbTriangles*(this: PolyTriangulation): cint {.noSideEffect, cdecl,
    importcpp: "NbTriangles", dynlib: tkmath.}
proc hasUVNodes*(this: PolyTriangulation): bool {.noSideEffect, cdecl,
    importcpp: "HasUVNodes", dynlib: tkmath.}
proc nodes*(this: PolyTriangulation): TColgpArray1OfPnt {.noSideEffect, cdecl,
    importcpp: "Nodes", dynlib: tkmath.}
proc changeNodes*(this: var PolyTriangulation): var TColgpArray1OfPnt {.cdecl,
    importcpp: "ChangeNodes", dynlib: tkmath.}
proc node*(this: PolyTriangulation; theIndex: cint): Pnt {.noSideEffect, cdecl,
    importcpp: "Node", dynlib: tkmath.}
proc changeNode*(this: var PolyTriangulation; theIndex: cint): var Pnt {.cdecl,
    importcpp: "ChangeNode", dynlib: tkmath.}
proc uVNodes*(this: PolyTriangulation): TColgpArray1OfPnt2d {.noSideEffect, cdecl,
    importcpp: "UVNodes", dynlib: tkmath.}
proc changeUVNodes*(this: var PolyTriangulation): var TColgpArray1OfPnt2d {.cdecl,
    importcpp: "ChangeUVNodes", dynlib: tkmath.}
proc uVNode*(this: PolyTriangulation; theIndex: cint): Pnt2d {.noSideEffect, cdecl,
    importcpp: "UVNode", dynlib: tkmath.}
proc changeUVNode*(this: var PolyTriangulation; theIndex: cint): var Pnt2d {.cdecl,
    importcpp: "ChangeUVNode", dynlib: tkmath.}
proc triangles*(this: PolyTriangulation): PolyArray1OfTriangle {.noSideEffect, cdecl,
    importcpp: "Triangles", dynlib: tkmath.}
proc changeTriangles*(this: var PolyTriangulation): var PolyArray1OfTriangle {.cdecl,
    importcpp: "ChangeTriangles", dynlib: tkmath.}
proc triangle*(this: PolyTriangulation; theIndex: cint): PolyTriangle {.noSideEffect,
    cdecl, importcpp: "Triangle", dynlib: tkmath.}
proc changeTriangle*(this: var PolyTriangulation; theIndex: cint): var PolyTriangle {.
    cdecl, importcpp: "ChangeTriangle", dynlib: tkmath.}
proc setNormals*(this: var PolyTriangulation;
                theNormals: Handle[TShortHArray1OfShortReal]) {.cdecl,
    importcpp: "SetNormals", dynlib: tkmath.}
proc normals*(this: PolyTriangulation): TShortArray1OfShortReal {.noSideEffect,
    cdecl, importcpp: "Normals", dynlib: tkmath.}
proc changeNormals*(this: var PolyTriangulation): var TShortArray1OfShortReal {.cdecl,
    importcpp: "ChangeNormals", dynlib: tkmath.}
proc hasNormals*(this: PolyTriangulation): bool {.noSideEffect, cdecl,
    importcpp: "HasNormals", dynlib: tkmath.}
proc normal*(this: PolyTriangulation; theIndex: cint): Dir {.noSideEffect, cdecl,
    importcpp: "Normal", dynlib: tkmath.}
proc setNormal*(this: var PolyTriangulation; theIndex: cint; theNormal: Dir) {.cdecl,
    importcpp: "SetNormal", dynlib: tkmath.}
proc dumpJson*(this: PolyTriangulation; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkmath.}