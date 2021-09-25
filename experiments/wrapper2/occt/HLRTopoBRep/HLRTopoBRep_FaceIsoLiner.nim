##  Created on: 1995-01-06
##  Created by: Christophe MARION
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of TopoDS_Face"
discard "forward decl of HLRTopoBRep_Data"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom2d_Line"
type
  HLRTopoBRepFaceIsoLiner* {.importcpp: "HLRTopoBRep_FaceIsoLiner",
                            header: "HLRTopoBRep_FaceIsoLiner.hxx", bycopy.} = object


proc perform*(fi: int; f: TopoDS_Face; ds: var HLRTopoBRepData; nbIsos: int) {.
    importcpp: "HLRTopoBRep_FaceIsoLiner::Perform(@)",
    header: "HLRTopoBRep_FaceIsoLiner.hxx".}
proc makeVertex*(e: TopoDS_Edge; p: Pnt; par: float; tol: float; ds: var HLRTopoBRepData): TopoDS_Vertex {.
    importcpp: "HLRTopoBRep_FaceIsoLiner::MakeVertex(@)",
    header: "HLRTopoBRep_FaceIsoLiner.hxx".}
proc makeIsoLine*(f: TopoDS_Face; iso: Handle[Geom2dLine]; v1: var TopoDS_Vertex;
                 v2: var TopoDS_Vertex; u1: float; u2: float; tol: float;
                 ds: var HLRTopoBRepData) {.
    importcpp: "HLRTopoBRep_FaceIsoLiner::MakeIsoLine(@)",
    header: "HLRTopoBRep_FaceIsoLiner.hxx".}
