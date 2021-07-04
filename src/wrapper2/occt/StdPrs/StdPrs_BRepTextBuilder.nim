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

import
  ../Font/Font_BRepFont, ../Font/Font_TextFormatter, ../gp/gp_Ax3

## ! Represents class for applying text formatting.

type
  StdPrs_BRepTextBuilder* {.importcpp: "StdPrs_BRepTextBuilder",
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
                                                                              ## position
                                                                              ## and
                                                                              ## orientation on
                                                                              ## the
                                                                              ## baseline
                                                                              ## !
                                                                              ## @return
                                                                              ## result
                                                                              ## shape
                                                                              ## with
                                                                              ## pen
                                                                              ## transformation
                                                                              ## applied as
                                                                              ## shape
                                                                              ## location


proc Perform*(this: var StdPrs_BRepTextBuilder; theFont: var StdPrs_BRepFont;
             theFormatter: handle[Font_TextFormatter];
             thePenLoc: gp_Ax3 = gp_Ax3()): TopoDS_Shape {.importcpp: "Perform",
    header: "StdPrs_BRepTextBuilder.hxx".}
proc Perform*(this: var StdPrs_BRepTextBuilder; theFont: var StdPrs_BRepFont;
             theString: NCollection_String; thePenLoc: gp_Ax3 = gp_Ax3();
             theHAlign: Graphic3d_HorizontalTextAlignment = Graphic3d_HTA_LEFT;
             theVAlign: Graphic3d_VerticalTextAlignment = Graphic3d_VTA_BOTTOM): TopoDS_Shape {.
    importcpp: "Perform", header: "StdPrs_BRepTextBuilder.hxx".}