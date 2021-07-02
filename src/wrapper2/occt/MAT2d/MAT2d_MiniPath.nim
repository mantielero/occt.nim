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

discard "forward decl of MAT2d_Connexion"
type
  MAT2dMiniPath* {.importcpp: "MAT2d_MiniPath", header: "MAT2d_MiniPath.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Add
                                                                                        ## a
                                                                                        ## connexion
                                                                                        ## to
                                                                                        ## the
                                                                                        ## path.


proc constructMAT2dMiniPath*(): MAT2dMiniPath {.constructor,
    importcpp: "MAT2d_MiniPath(@)", header: "MAT2d_MiniPath.hxx".}
proc perform*(this: var MAT2dMiniPath; figure: MAT2dSequenceOfSequenceOfGeometry;
             indStart: StandardInteger; sense: StandardBoolean) {.
    importcpp: "Perform", header: "MAT2d_MiniPath.hxx".}
proc runOnConnexions*(this: var MAT2dMiniPath) {.importcpp: "RunOnConnexions",
    header: "MAT2d_MiniPath.hxx".}
proc path*(this: MAT2dMiniPath): MAT2dSequenceOfConnexion {.noSideEffect,
    importcpp: "Path", header: "MAT2d_MiniPath.hxx".}
proc isConnexionsFrom*(this: MAT2dMiniPath; index: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsConnexionsFrom", header: "MAT2d_MiniPath.hxx".}
proc connexionsFrom*(this: var MAT2dMiniPath; index: StandardInteger): var MAT2dSequenceOfConnexion {.
    importcpp: "ConnexionsFrom", header: "MAT2d_MiniPath.hxx".}
proc isRoot*(this: MAT2dMiniPath; index: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsRoot", header: "MAT2d_MiniPath.hxx".}
proc father*(this: var MAT2dMiniPath; index: StandardInteger): Handle[MAT2dConnexion] {.
    importcpp: "Father", header: "MAT2d_MiniPath.hxx".}

