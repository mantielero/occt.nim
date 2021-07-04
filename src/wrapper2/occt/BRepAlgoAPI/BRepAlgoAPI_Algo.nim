##  Created by: Peter KURNEV
##  Copyright (c) 2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../NCollection/NCollection_BaseAllocator,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../BRepBuilderAPI/BRepBuilderAPI_MakeShape, ../BOPAlgo/BOPAlgo_Options

discard "forward decl of TopoDS_Shape"
type
  BRepAlgoAPI_Algo* {.importcpp: "BRepAlgoAPI_Algo",
                     header: "BRepAlgoAPI_Algo.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                            ## !
                                                                                            ## Empty
                                                                                            ## constructor


proc Shape*(this: var BRepAlgoAPI_Algo): TopoDS_Shape {.importcpp: "Shape",
    header: "BRepAlgoAPI_Algo.hxx".}
## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement