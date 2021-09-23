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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColStd/TColStd_Array1OfInteger,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Poly_Triangulation"
type
  Poly_Connect* {.importcpp: "Poly_Connect", header: "Poly_Connect.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Constructs
                                                                                   ## an
                                                                                   ## uninitialized
                                                                                   ## algorithm.
                                                                                   ##
                                                                                   ## !
                                                                                   ## Initializes
                                                                                   ## an
                                                                                   ## iterator
                                                                                   ## to
                                                                                   ## search
                                                                                   ## for
                                                                                   ## all
                                                                                   ## the
                                                                                   ## triangles
                                                                                   ##
                                                                                   ## !
                                                                                   ## containing
                                                                                   ## the
                                                                                   ## node
                                                                                   ## referenced
                                                                                   ## at
                                                                                   ## index
                                                                                   ## N
                                                                                   ## in
                                                                                   ## the
                                                                                   ## nodes
                                                                                   ##
                                                                                   ## !
                                                                                   ## table,
                                                                                   ## for
                                                                                   ## the
                                                                                   ## triangulation
                                                                                   ## analyzed
                                                                                   ## by
                                                                                   ## this
                                                                                   ## tool.
                                                                                   ##
                                                                                   ## !
                                                                                   ## The
                                                                                   ## iterator
                                                                                   ## is
                                                                                   ## managed
                                                                                   ## by
                                                                                   ## the
                                                                                   ## following
                                                                                   ## functions:
                                                                                   ##
                                                                                   ## !
                                                                                   ## -
                                                                                   ## More,
                                                                                   ## which
                                                                                   ## checks
                                                                                   ## if
                                                                                   ## there
                                                                                   ## are
                                                                                   ## still
                                                                                   ## elements
                                                                                   ## in
                                                                                   ## the
                                                                                   ## iterator
                                                                                   ##
                                                                                   ## !
                                                                                   ## -
                                                                                   ## Next,
                                                                                   ## which
                                                                                   ## positions
                                                                                   ## the
                                                                                   ## iterator
                                                                                   ## on
                                                                                   ## the
                                                                                   ## next
                                                                                   ## element
                                                                                   ##
                                                                                   ## !
                                                                                   ## -
                                                                                   ## Value,
                                                                                   ## which
                                                                                   ## returns
                                                                                   ## the
                                                                                   ## current
                                                                                   ## element.
                                                                                   ##
                                                                                   ## !
                                                                                   ## The
                                                                                   ## use
                                                                                   ## of
                                                                                   ## such
                                                                                   ## an
                                                                                   ## iterator
                                                                                   ## provides
                                                                                   ## direct
                                                                                   ## access
                                                                                   ## to
                                                                                   ## the
                                                                                   ##
                                                                                   ## !
                                                                                   ## triangles
                                                                                   ## around
                                                                                   ## a
                                                                                   ## particular
                                                                                   ## node,
                                                                                   ## i.e.
                                                                                   ## it
                                                                                   ## avoids
                                                                                   ## iterating
                                                                                   ## on
                                                                                   ##
                                                                                   ## !
                                                                                   ## all
                                                                                   ## the
                                                                                   ## component
                                                                                   ## triangles
                                                                                   ## of
                                                                                   ## a
                                                                                   ## triangulation.
                                                                                   ##
                                                                                   ## !
                                                                                   ## Example
                                                                                   ##
                                                                                   ## !
                                                                                   ## Poly_Connect
                                                                                   ## C(Tr);
                                                                                   ##
                                                                                   ## !
                                                                                   ## for
                                                                                   ##
                                                                                   ## !
                                                                                   ## (C.Initialize(n1);C.More();C.Next())
                                                                                   ##
                                                                                   ## !
                                                                                   ## {
                                                                                   ##
                                                                                   ## !
                                                                                   ## t
                                                                                   ## =
                                                                                   ## C.Value();
                                                                                   ##
                                                                                   ## !
                                                                                   ## }


proc constructPoly_Connect*(): Poly_Connect {.constructor,
    importcpp: "Poly_Connect(@)", header: "Poly_Connect.hxx".}
proc constructPoly_Connect*(theTriangulation: handle[Poly_Triangulation]): Poly_Connect {.
    constructor, importcpp: "Poly_Connect(@)", header: "Poly_Connect.hxx".}
proc Load*(this: var Poly_Connect; theTriangulation: handle[Poly_Triangulation]) {.
    importcpp: "Load", header: "Poly_Connect.hxx".}
proc Triangulation*(this: Poly_Connect): handle[Poly_Triangulation] {.noSideEffect,
    importcpp: "Triangulation", header: "Poly_Connect.hxx".}
proc Triangle*(this: Poly_Connect; N: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Triangle", header: "Poly_Connect.hxx".}
proc Triangles*(this: Poly_Connect; T: Standard_Integer; t1: var Standard_Integer;
               t2: var Standard_Integer; t3: var Standard_Integer) {.noSideEffect,
    importcpp: "Triangles", header: "Poly_Connect.hxx".}
proc Nodes*(this: Poly_Connect; T: Standard_Integer; n1: var Standard_Integer;
           n2: var Standard_Integer; n3: var Standard_Integer) {.noSideEffect,
    importcpp: "Nodes", header: "Poly_Connect.hxx".}
proc Initialize*(this: var Poly_Connect; N: Standard_Integer) {.
    importcpp: "Initialize", header: "Poly_Connect.hxx".}
proc More*(this: Poly_Connect): Standard_Boolean {.noSideEffect, importcpp: "More",
    header: "Poly_Connect.hxx".}
proc Next*(this: var Poly_Connect) {.importcpp: "Next", header: "Poly_Connect.hxx".}
proc Value*(this: Poly_Connect): Standard_Integer {.noSideEffect, importcpp: "Value",
    header: "Poly_Connect.hxx".}