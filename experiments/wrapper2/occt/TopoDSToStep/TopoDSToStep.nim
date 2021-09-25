##  Created on: 1994-11-25
##  Created by: Frederic MAUPAS
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Transfer_FinderProcess"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Standard_Transient"
discard "forward decl of TopoDSToStep_Tool"
discard "forward decl of TopoDSToStep_Root"
discard "forward decl of TopoDSToStep_MakeManifoldSolidBrep"
discard "forward decl of TopoDSToStep_MakeBrepWithVoids"
discard "forward decl of TopoDSToStep_MakeFacetedBrep"
discard "forward decl of TopoDSToStep_MakeFacetedBrepAndBrepWithVoids"
discard "forward decl of TopoDSToStep_MakeShellBasedSurfaceModel"
discard "forward decl of TopoDSToStep_MakeGeometricCurveSet"
discard "forward decl of TopoDSToStep_Builder"
discard "forward decl of TopoDSToStep_WireframeBuilder"
discard "forward decl of TopoDSToStep_Tool"
discard "forward decl of TopoDSToStep_FacetedTool"
discard "forward decl of TopoDSToStep_MakeStepFace"
discard "forward decl of TopoDSToStep_MakeStepWire"
discard "forward decl of TopoDSToStep_MakeStepEdge"
discard "forward decl of TopoDSToStep_MakeStepVertex"
type
  TopoDSToStep* {.importcpp: "TopoDSToStep", header: "TopoDSToStep.hxx", bycopy.} = object


proc decodeBuilderError*(e: TopoDSToStepBuilderError): Handle[
    TCollectionHAsciiString] {.importcpp: "TopoDSToStep::DecodeBuilderError(@)",
                              header: "TopoDSToStep.hxx".}
proc decodeFaceError*(e: TopoDSToStepMakeFaceError): Handle[TCollectionHAsciiString] {.
    importcpp: "TopoDSToStep::DecodeFaceError(@)", header: "TopoDSToStep.hxx".}
proc decodeWireError*(e: TopoDSToStepMakeWireError): Handle[TCollectionHAsciiString] {.
    importcpp: "TopoDSToStep::DecodeWireError(@)", header: "TopoDSToStep.hxx".}
proc decodeEdgeError*(e: TopoDSToStepMakeEdgeError): Handle[TCollectionHAsciiString] {.
    importcpp: "TopoDSToStep::DecodeEdgeError(@)", header: "TopoDSToStep.hxx".}
proc decodeVertexError*(e: TopoDSToStepMakeVertexError): Handle[
    TCollectionHAsciiString] {.importcpp: "TopoDSToStep::DecodeVertexError(@)",
                              header: "TopoDSToStep.hxx".}
proc addResult*(fp: Handle[TransferFinderProcess]; shape: TopoDS_Shape;
               entity: Handle[StandardTransient]) {.
    importcpp: "TopoDSToStep::AddResult(@)", header: "TopoDSToStep.hxx".}
proc addResult*(fp: Handle[TransferFinderProcess]; tool: TopoDSToStepTool) {.
    importcpp: "TopoDSToStep::AddResult(@)", header: "TopoDSToStep.hxx".}
