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
  ../Standard/Standard_Type

type
  MeshVS_NodePair* = pair[Standard_Integer, Standard_Integer]

## ! Provides symmetric hash methods pair of integers.

type
  MeshVS_SymmetricPairHasher* {.importcpp: "MeshVS_SymmetricPairHasher",
                               header: "MeshVS_SymmetricPairHasher.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Computes
                                                                                      ## a
                                                                                      ## hash
                                                                                      ## code
                                                                                      ## for
                                                                                      ## the
                                                                                      ## node
                                                                                      ## pair,
                                                                                      ## in
                                                                                      ## the
                                                                                      ## range
                                                                                      ## [1,
                                                                                      ## theUpperBound]
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## theNodePair
                                                                                      ## the
                                                                                      ## node
                                                                                      ## pair
                                                                                      ## which
                                                                                      ## hash
                                                                                      ## code
                                                                                      ## is
                                                                                      ## to
                                                                                      ## be
                                                                                      ## computed
                                                                                      ##
                                                                                      ## !
                                                                                      ## @param
                                                                                      ## theUpperBound
                                                                                      ## the
                                                                                      ## upper
                                                                                      ## bound
                                                                                      ## of
                                                                                      ## the
                                                                                      ## range
                                                                                      ## a
                                                                                      ## computing
                                                                                      ## hash
                                                                                      ## code
                                                                                      ## must
                                                                                      ## be
                                                                                      ## within
                                                                                      ##
                                                                                      ## !
                                                                                      ## @return
                                                                                      ## a
                                                                                      ## computed
                                                                                      ## hash
                                                                                      ## code,
                                                                                      ## in
                                                                                      ## the
                                                                                      ## range
                                                                                      ## [1,
                                                                                      ## theUpperBound]


proc HashCode*(theNodePair: MeshVS_NodePair; theUpperBound: Standard_Integer): Standard_Integer {.
    importcpp: "MeshVS_SymmetricPairHasher::HashCode(@)",
    header: "MeshVS_SymmetricPairHasher.hxx".}
proc IsEqual*(thePair1: MeshVS_NodePair; thePair2: MeshVS_NodePair): Standard_Boolean {.
    importcpp: "MeshVS_SymmetricPairHasher::IsEqual(@)",
    header: "MeshVS_SymmetricPairHasher.hxx".}