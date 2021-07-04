##  Created on: 1994-03-25
##  Created by: Jean Marc LACHAUME
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../TColStd/TColStd_Array1OfReal, ../TColStd/TColStd_Array1OfInteger,
  ../Standard/Standard_Integer, ../Geom2dHatch/Geom2dHatch_Hatcher,
  ../NCollection/NCollection_IndexedDataMap

discard "forward decl of TopoDS_Face"
discard "forward decl of DBRep_Face"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopTools_OrientedShapeMapHasher"
type
  DBRep_IsoBuilder* {.importcpp: "DBRep_IsoBuilder",
                     header: "DBRep_IsoBuilder.hxx", bycopy.} = object of Geom2dHatch_Hatcher ##
                                                                                       ## !
                                                                                       ## Creates
                                                                                       ## the
                                                                                       ## builder.


proc constructDBRep_IsoBuilder*(TopologicalFace: TopoDS_Face;
                               Infinite: Standard_Real; NbIsos: Standard_Integer): DBRep_IsoBuilder {.
    constructor, importcpp: "DBRep_IsoBuilder(@)", header: "DBRep_IsoBuilder.hxx".}
proc NbDomains*(this: DBRep_IsoBuilder): Standard_Integer {.noSideEffect,
    importcpp: "NbDomains", header: "DBRep_IsoBuilder.hxx".}
proc LoadIsos*(this: DBRep_IsoBuilder; Face: handle[DBRep_Face]) {.noSideEffect,
    importcpp: "LoadIsos", header: "DBRep_IsoBuilder.hxx".}