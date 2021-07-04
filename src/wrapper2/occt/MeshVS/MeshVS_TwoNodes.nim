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

when not defined(_Standard_HeaderFile):
  import
    ../Standard/Standard

when not defined(_Standard_Macro_HeaderFile):
  import
    ../Standard/Standard_Macro

## ! Structure containing two IDs (of nodes) for using as a key in a map
## ! (as representation of a mesh link)
## !

type
  MeshVS_TwoNodes* {.importcpp: "MeshVS_TwoNodes", header: "MeshVS_TwoNodes.hxx",
                    bycopy.} = object
    First* {.importc: "First".}: Standard_Integer
    Second* {.importc: "Second".}: Standard_Integer


proc constructMeshVS_TwoNodes*(aFirst: Standard_Integer = 0;
                              aSecond: Standard_Integer = 0): MeshVS_TwoNodes {.
    constructor, importcpp: "MeshVS_TwoNodes(@)", header: "MeshVS_TwoNodes.hxx".}
## ! Computes a hash code for two nodes, in the range [1, theUpperBound]
## ! @param theTwoNodes the object of structure containing two IDs which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc HashCode*(theTwoNodes: MeshVS_TwoNodes; theUpperBound: Standard_Integer): Standard_Integer =
  discard

## ================================================================
##  Function : operator ==
##  Purpose  :
## ================================================================

proc `==`*(obj1: MeshVS_TwoNodes; obj2: MeshVS_TwoNodes): Standard_Boolean {.
    importcpp: "(# == #)", header: "MeshVS_TwoNodes.hxx".}