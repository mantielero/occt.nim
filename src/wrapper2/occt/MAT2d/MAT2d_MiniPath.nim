##  Created on: 1993-10-07
##  Created by: Yves FRICAUD
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, MAT2d_DataMapOfIntegerSequenceOfConnexion,
  MAT2d_DataMapOfIntegerConnexion, MAT2d_SequenceOfConnexion,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  MAT2d_SequenceOfSequenceOfGeometry, ../Standard/Standard_Boolean

discard "forward decl of MAT2d_Connexion"
type
  MAT2d_MiniPath* {.importcpp: "MAT2d_MiniPath", header: "MAT2d_MiniPath.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Add
                                                                                         ## a
                                                                                         ## connexion
                                                                                         ## to
                                                                                         ## the
                                                                                         ## path.


proc constructMAT2d_MiniPath*(): MAT2d_MiniPath {.constructor,
    importcpp: "MAT2d_MiniPath(@)", header: "MAT2d_MiniPath.hxx".}
proc Perform*(this: var MAT2d_MiniPath; Figure: MAT2d_SequenceOfSequenceOfGeometry;
             IndStart: Standard_Integer; Sense: Standard_Boolean) {.
    importcpp: "Perform", header: "MAT2d_MiniPath.hxx".}
proc RunOnConnexions*(this: var MAT2d_MiniPath) {.importcpp: "RunOnConnexions",
    header: "MAT2d_MiniPath.hxx".}
proc Path*(this: MAT2d_MiniPath): MAT2d_SequenceOfConnexion {.noSideEffect,
    importcpp: "Path", header: "MAT2d_MiniPath.hxx".}
proc IsConnexionsFrom*(this: MAT2d_MiniPath; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsConnexionsFrom", header: "MAT2d_MiniPath.hxx".}
proc ConnexionsFrom*(this: var MAT2d_MiniPath; Index: Standard_Integer): var MAT2d_SequenceOfConnexion {.
    importcpp: "ConnexionsFrom", header: "MAT2d_MiniPath.hxx".}
proc IsRoot*(this: MAT2d_MiniPath; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsRoot", header: "MAT2d_MiniPath.hxx".}
proc Father*(this: var MAT2d_MiniPath; Index: Standard_Integer): handle[
    MAT2d_Connexion] {.importcpp: "Father", header: "MAT2d_MiniPath.hxx".}