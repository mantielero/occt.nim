##  Created on: 1993-10-29
##  Created by: Christophe MARION
##  Copyright (c) 1993-1999 Matra Datavision
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

## ! Data structure of a triangle.

type
  HLRAlgoTriangleData* {.importcpp: "HLRAlgo_TriangleData",
                        header: "HLRAlgo_TriangleData.hxx", bycopy.} = object
    node1* {.importc: "Node1".}: StandardInteger
    node2* {.importc: "Node2".}: StandardInteger
    node3* {.importc: "Node3".}: StandardInteger
    flags* {.importc: "Flags".}: StandardInteger



