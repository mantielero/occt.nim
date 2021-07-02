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

discard "forward decl of Poly_Triangulation"
type
  PolyConnect* {.importcpp: "Poly_Connect", header: "Poly_Connect.hxx", bycopy.} = object ##
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


proc constructPolyConnect*(): PolyConnect {.constructor,
    importcpp: "Poly_Connect(@)", header: "Poly_Connect.hxx".}
proc constructPolyConnect*(theTriangulation: Handle[PolyTriangulation]): PolyConnect {.
    constructor, importcpp: "Poly_Connect(@)", header: "Poly_Connect.hxx".}
proc load*(this: var PolyConnect; theTriangulation: Handle[PolyTriangulation]) {.
    importcpp: "Load", header: "Poly_Connect.hxx".}
proc triangulation*(this: PolyConnect): Handle[PolyTriangulation] {.noSideEffect,
    importcpp: "Triangulation", header: "Poly_Connect.hxx".}
proc triangle*(this: PolyConnect; n: StandardInteger): StandardInteger {.noSideEffect,
    importcpp: "Triangle", header: "Poly_Connect.hxx".}
proc triangles*(this: PolyConnect; t: StandardInteger; t1: var StandardInteger;
               t2: var StandardInteger; t3: var StandardInteger) {.noSideEffect,
    importcpp: "Triangles", header: "Poly_Connect.hxx".}
proc nodes*(this: PolyConnect; t: StandardInteger; n1: var StandardInteger;
           n2: var StandardInteger; n3: var StandardInteger) {.noSideEffect,
    importcpp: "Nodes", header: "Poly_Connect.hxx".}
proc initialize*(this: var PolyConnect; n: StandardInteger) {.importcpp: "Initialize",
    header: "Poly_Connect.hxx".}
proc more*(this: PolyConnect): StandardBoolean {.noSideEffect, importcpp: "More",
    header: "Poly_Connect.hxx".}
proc next*(this: var PolyConnect) {.importcpp: "Next", header: "Poly_Connect.hxx".}
proc value*(this: PolyConnect): StandardInteger {.noSideEffect, importcpp: "Value",
    header: "Poly_Connect.hxx".}

