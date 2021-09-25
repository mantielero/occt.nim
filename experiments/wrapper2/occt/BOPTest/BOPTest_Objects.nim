##  Created by: Peter KURNEV
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


discard "forward decl of BOPAlgo_PaveFiller"
discard "forward decl of BOPAlgo_Builder"
discard "forward decl of BOPAlgo_BOP"
discard "forward decl of BOPAlgo_Section"
discard "forward decl of BOPAlgo_Splitter"
type
  BOPTestObjects* {.importcpp: "BOPTest_Objects", header: "BOPTest_Objects.hxx",
                   bycopy.} = object


proc paveFiller*(): var BOPAlgoPaveFiller {.importcpp: "BOPTest_Objects::PaveFiller(@)",
                                        header: "BOPTest_Objects.hxx".}
proc init*() {.importcpp: "BOPTest_Objects::Init(@)", header: "BOPTest_Objects.hxx".}
proc clear*() {.importcpp: "BOPTest_Objects::Clear(@)",
              header: "BOPTest_Objects.hxx".}
proc pds*(): Bopds_Pds {.importcpp: "BOPTest_Objects::PDS(@)",
                      header: "BOPTest_Objects.hxx".}
proc builder*(): var BOPAlgoBuilder {.importcpp: "BOPTest_Objects::Builder(@)",
                                  header: "BOPTest_Objects.hxx".}
proc bop*(): var BOPAlgoBOP {.importcpp: "BOPTest_Objects::BOP(@)",
                          header: "BOPTest_Objects.hxx".}
proc section*(): var BOPAlgoSection {.importcpp: "BOPTest_Objects::Section(@)",
                                  header: "BOPTest_Objects.hxx".}
proc cellsBuilder*(): var BOPAlgoCellsBuilder {.
    importcpp: "BOPTest_Objects::CellsBuilder(@)", header: "BOPTest_Objects.hxx".}
proc splitter*(): var BOPAlgoSplitter {.importcpp: "BOPTest_Objects::Splitter(@)",
                                    header: "BOPTest_Objects.hxx".}
proc shapes*(): var TopToolsListOfShape {.importcpp: "BOPTest_Objects::Shapes(@)",
                                      header: "BOPTest_Objects.hxx".}
proc tools*(): var TopToolsListOfShape {.importcpp: "BOPTest_Objects::Tools(@)",
                                     header: "BOPTest_Objects.hxx".}
proc setBuilder*(theBuilder: BOPAlgoPBuilder) {.
    importcpp: "BOPTest_Objects::SetBuilder(@)", header: "BOPTest_Objects.hxx".}
proc setBuilderDefault*() {.importcpp: "BOPTest_Objects::SetBuilderDefault(@)",
                          header: "BOPTest_Objects.hxx".}
proc setDefaultOptions*() {.importcpp: "BOPTest_Objects::SetDefaultOptions(@)",
                          header: "BOPTest_Objects.hxx".}
proc setRunParallel*(theFlag: bool) {.importcpp: "BOPTest_Objects::SetRunParallel(@)",
                                   header: "BOPTest_Objects.hxx".}
proc runParallel*(): bool {.importcpp: "BOPTest_Objects::RunParallel(@)",
                         header: "BOPTest_Objects.hxx".}
proc setFuzzyValue*(theValue: float) {.importcpp: "BOPTest_Objects::SetFuzzyValue(@)",
                                    header: "BOPTest_Objects.hxx".}
proc fuzzyValue*(): float {.importcpp: "BOPTest_Objects::FuzzyValue(@)",
                         header: "BOPTest_Objects.hxx".}
proc setNonDestructive*(theFlag: bool) {.importcpp: "BOPTest_Objects::SetNonDestructive(@)",
                                      header: "BOPTest_Objects.hxx".}
proc nonDestructive*(): bool {.importcpp: "BOPTest_Objects::NonDestructive(@)",
                            header: "BOPTest_Objects.hxx".}
proc setGlue*(aGlue: BOPAlgoGlueEnum) {.importcpp: "BOPTest_Objects::SetGlue(@)",
                                     header: "BOPTest_Objects.hxx".}
proc glue*(): BOPAlgoGlueEnum {.importcpp: "BOPTest_Objects::Glue(@)",
                             header: "BOPTest_Objects.hxx".}
proc setDrawWarnShapes*(bDraw: bool) {.importcpp: "BOPTest_Objects::SetDrawWarnShapes(@)",
                                    header: "BOPTest_Objects.hxx".}
proc drawWarnShapes*(): bool {.importcpp: "BOPTest_Objects::DrawWarnShapes(@)",
                            header: "BOPTest_Objects.hxx".}
proc setCheckInverted*(bCheck: bool) {.importcpp: "BOPTest_Objects::SetCheckInverted(@)",
                                    header: "BOPTest_Objects.hxx".}
proc checkInverted*(): bool {.importcpp: "BOPTest_Objects::CheckInverted(@)",
                           header: "BOPTest_Objects.hxx".}
proc setUseOBB*(bUseOBB: bool) {.importcpp: "BOPTest_Objects::SetUseOBB(@)",
                              header: "BOPTest_Objects.hxx".}
proc useOBB*(): bool {.importcpp: "BOPTest_Objects::UseOBB(@)",
                    header: "BOPTest_Objects.hxx".}
proc setUnifyEdges*(bUE: bool) {.importcpp: "BOPTest_Objects::SetUnifyEdges(@)",
                              header: "BOPTest_Objects.hxx".}
proc unifyEdges*(): bool {.importcpp: "BOPTest_Objects::UnifyEdges(@)",
                        header: "BOPTest_Objects.hxx".}
proc setUnifyFaces*(bUF: bool) {.importcpp: "BOPTest_Objects::SetUnifyFaces(@)",
                              header: "BOPTest_Objects.hxx".}
proc unifyFaces*(): bool {.importcpp: "BOPTest_Objects::UnifyFaces(@)",
                        header: "BOPTest_Objects.hxx".}
proc setAngular*(bAngTol: float) {.importcpp: "BOPTest_Objects::SetAngular(@)",
                                header: "BOPTest_Objects.hxx".}
proc angular*(): float {.importcpp: "BOPTest_Objects::Angular(@)",
                      header: "BOPTest_Objects.hxx".}
