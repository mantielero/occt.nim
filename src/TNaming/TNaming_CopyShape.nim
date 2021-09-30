##  Created on: 2000-02-14
##  Created by: Denis PASCAL
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TNaming_TranslateTool"
discard "forward decl of TopLoc_Location"
type
  TNamingCopyShape* {.importcpp: "TNaming_CopyShape",
                     header: "TNaming_CopyShape.hxx", bycopy.} = object ## ! Makes  copy  a  set  of  shape(s),  using the  aMap


proc copyTool*(aShape: TopoDS_Shape;
              aMap: var TColStdIndexedDataMapOfTransientTransient;
              aResult: var TopoDS_Shape) {.importcpp: "TNaming_CopyShape::CopyTool(@)",
                                        header: "TNaming_CopyShape.hxx".}
proc translate*(aShape: TopoDS_Shape;
               aMap: var TColStdIndexedDataMapOfTransientTransient;
               aResult: var TopoDS_Shape; trTool: Handle[TNamingTranslateTool]) {.
    importcpp: "TNaming_CopyShape::Translate(@)", header: "TNaming_CopyShape.hxx".}
proc translate*(L: TopLocLocation;
               aMap: var TColStdIndexedDataMapOfTransientTransient): TopLocLocation {.
    importcpp: "TNaming_CopyShape::Translate(@)", header: "TNaming_CopyShape.hxx".}

























