##  Created on: 1998-06-03
##  Created by: data exchange team
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../ShapeExtend/ShapeExtend_BasicMsgRegistrator,
  ../Message/Message_ProgressRange

discard "forward decl of TopoDS_Shape"
discard "forward decl of ShapeExtend_BasicMsgRegistrator"
discard "forward decl of ShapeBuild_ReShape"
discard "forward decl of ShapeFix_Root"
discard "forward decl of ShapeFix_EdgeProjAux"
discard "forward decl of ShapeFix_Edge"
discard "forward decl of ShapeFix_Wire"
discard "forward decl of ShapeFix_Face"
discard "forward decl of ShapeFix_FixSmallFace"
discard "forward decl of ShapeFix_FixSmallSolid"
discard "forward decl of ShapeFix_WireVertex"
discard "forward decl of ShapeFix_Wireframe"
discard "forward decl of ShapeFix_FreeBounds"
discard "forward decl of ShapeFix_FaceConnect"
discard "forward decl of ShapeFix_Shell"
discard "forward decl of ShapeFix_Solid"
discard "forward decl of ShapeFix_ShapeTolerance"
discard "forward decl of ShapeFix_Shape"
discard "forward decl of ShapeFix_EdgeConnect"
discard "forward decl of ShapeFix_ComposeShell"
discard "forward decl of ShapeFix_SplitCommonVertex"
discard "forward decl of ShapeFix_WireSegment"
discard "forward decl of ShapeFix_IntersectionTool"
discard "forward decl of ShapeFix_SplitTool"
type
  ShapeFix* {.importcpp: "ShapeFix", header: "ShapeFix.hxx", bycopy.} = object ## ! Runs
                                                                       ## SameParameter from BRepLib with these
                                                                       ## adaptations :
                                                                       ## ! <enforce> forces
                                                                       ## computations, else they are made only on
                                                                       ## ! Edges with flag
                                                                       ## SameParameter false
                                                                       ## ! <preci>, if not precised, is taken for each EDge as its own
                                                                       ## ! Tolerance
                                                                       ## ! Returns True when done, False if an exception has been raised
                                                                       ## ! In case of exception anyway, as many edges as possible have
                                                                       ## ! been
                                                                       ## processed. The passed progress indicator allows user
                                                                       ## ! to consult the current progress stage and abort algorithm
                                                                       ## ! if needed.


proc SameParameter*(shape: TopoDS_Shape; enforce: Standard_Boolean;
                   preci: Standard_Real = 0.0; theProgress: Message_ProgressRange = Message_ProgressRange();
                   theMsgReg: handle[ShapeExtend_BasicMsgRegistrator] = 0): Standard_Boolean {.
    importcpp: "ShapeFix::SameParameter(@)", header: "ShapeFix.hxx".}
proc EncodeRegularity*(shape: TopoDS_Shape; tolang: Standard_Real = 1.0e-10) {.
    importcpp: "ShapeFix::EncodeRegularity(@)", header: "ShapeFix.hxx".}
proc RemoveSmallEdges*(shape: var TopoDS_Shape; Tolerance: Standard_Real;
                      context: var handle[ShapeBuild_ReShape]): TopoDS_Shape {.
    importcpp: "ShapeFix::RemoveSmallEdges(@)", header: "ShapeFix.hxx".}
proc FixVertexPosition*(theshape: var TopoDS_Shape; theTolerance: Standard_Real;
                       thecontext: handle[ShapeBuild_ReShape]): Standard_Boolean {.
    importcpp: "ShapeFix::FixVertexPosition(@)", header: "ShapeFix.hxx".}
proc LeastEdgeSize*(theshape: var TopoDS_Shape): Standard_Real {.
    importcpp: "ShapeFix::LeastEdgeSize(@)", header: "ShapeFix.hxx".}