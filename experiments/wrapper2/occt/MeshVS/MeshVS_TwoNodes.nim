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

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # when not defined(_Standard_HeaderFile):
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #   discard
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # when not defined(_Standard_Macro_HeaderFile):
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #   discard
## ! Structure containing two IDs (of nodes) for using as a key in a map
## ! (as representation of a mesh link)
## !

type
  MeshVS_TwoNodes* {.importcpp: "MeshVS_TwoNodes", header: "MeshVS_TwoNodes.hxx",
                    bycopy.} = object
    first* {.importc: "First".}: cint
    second* {.importc: "Second".}: cint


proc constructMeshVS_TwoNodes*(aFirst: cint = 0; aSecond: cint = 0): MeshVS_TwoNodes {.
    constructor, importcpp: "MeshVS_TwoNodes(@)", header: "MeshVS_TwoNodes.hxx".}
## ! Computes a hash code for two nodes, in the range [1, theUpperBound]
## ! @param theTwoNodes the object of structure containing two IDs which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc hashCode*(theTwoNodes: MeshVS_TwoNodes; theUpperBound: cint): cint =
  discard

## ================================================================
##  Function : operator ==
##  Purpose  :
## ================================================================

proc `==`*(obj1: MeshVS_TwoNodes; obj2: MeshVS_TwoNodes): bool {.
    importcpp: "(# == #)", header: "MeshVS_TwoNodes.hxx".}


























































