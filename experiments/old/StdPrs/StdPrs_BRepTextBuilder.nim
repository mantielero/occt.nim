##  Created on: 2015-08-10
##  Created by: Ilya SEVRIKOV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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

## ! Represents class for applying text formatting.

type
  StdPrsBRepTextBuilder* {.importcpp: "StdPrs_BRepTextBuilder",
                          header: "StdPrs_BRepTextBuilder.hxx", bycopy.} = object ## !
                                                                             ## Render
                                                                             ## text as
                                                                             ## BRep
                                                                             ## shape.
                                                                             ## !
                                                                             ## @param
                                                                             ## theFormatter
                                                                             ## formatter
                                                                             ## which
                                                                             ## defines
                                                                             ## aligned
                                                                             ## text
                                                                             ## !
                                                                             ## @param
                                                                             ## thePenLoc
                                                                             ## start
                                                                             ## position and
                                                                             ## orientation on the
                                                                             ## baseline
                                                                             ## !
                                                                             ## @return
                                                                             ## result
                                                                             ## shape
                                                                             ## with pen
                                                                             ## transformation
                                                                             ## applied as
                                                                             ## shape
                                                                             ## location


proc perform*(this: var StdPrsBRepTextBuilder; theFont: var StdPrsBRepFont;
             theFormatter: Handle[FontTextFormatter]; thePenLoc: Ax3 = ax3()): TopoDS_Shape {.
    importcpp: "Perform", header: "StdPrs_BRepTextBuilder.hxx".}
proc perform*(this: var StdPrsBRepTextBuilder; theFont: var StdPrsBRepFont;
             theString: NCollectionString; thePenLoc: Ax3 = ax3();
             theHAlign: Graphic3dHorizontalTextAlignment = graphic3dHTA_LEFT;
             theVAlign: Graphic3dVerticalTextAlignment = graphic3dVTA_BOTTOM): TopoDS_Shape {.
    importcpp: "Perform", header: "StdPrs_BRepTextBuilder.hxx".}

























