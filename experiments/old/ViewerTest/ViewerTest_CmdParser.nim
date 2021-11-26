##  Created on: 2015-03-15
##  Created by: Danila ULYANOV
##  Copyright (c) 2014 OPEN CASCADE SAS
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

discard "forward decl of Quantity_Color"
discard "forward decl of Quantity_ColorRGBA"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
type
  ViewerTestCommandOptionKey* = SizeT

## ! A set of keys for command-line options

type
  ViewerTestCommandOptionKeySet* = set[ViewerTestCommandOptionKey]

## ! Command parser.

type
  ViewerTestCmdParser* {.importcpp: "ViewerTest_CmdParser",
                        header: "ViewerTest_CmdParser.hxx", bycopy.} = object ## ! The key of the unnamed command option
                                                                         ## ! A list of aliases to a command option name
    ## ! Container which stores option objects.
    ## ! Map from all possible option names to option access keys (that are indices in myOptionStorage)
    ## ! Map from keys of used options to their indices in the option arguments storage
    ## ! Container which stores the arguments of all used options
    ## ! Gets an access key of the option
    ## ! @param theOptionName the name of the option which key is to be found
    ## ! @param theOptionKey an access key of the option with the given name
    ## ! @return true if the given option was found, or false otherwise


proc constructViewerTestCmdParser*(theDescription: string = string()): ViewerTestCmdParser {.
    constructor, importcpp: "ViewerTest_CmdParser(@)",
    header: "ViewerTest_CmdParser.hxx".}
proc setDescription*(this: var ViewerTestCmdParser; theDescription: string) {.
    importcpp: "SetDescription", header: "ViewerTest_CmdParser.hxx".}
proc addOption*(this: var ViewerTestCmdParser; theOptionNames: string;
               theOptionDescription: string = string()): ViewerTestCommandOptionKey {.
    importcpp: "AddOption", header: "ViewerTest_CmdParser.hxx".}
proc printHelp*(this: ViewerTestCmdParser) {.noSideEffect, importcpp: "PrintHelp",
    header: "ViewerTest_CmdParser.hxx".}
proc parse*(this: var ViewerTestCmdParser; theArgsNb: cint; theArgVec: cstringArray) {.
    importcpp: "Parse", header: "ViewerTest_CmdParser.hxx".}
proc getOptionNameByKey*(this: ViewerTestCmdParser;
                        theOptionKey: ViewerTestCommandOptionKey): string {.
    noSideEffect, importcpp: "GetOptionNameByKey",
    header: "ViewerTest_CmdParser.hxx".}
proc getUsedOptions*(this: ViewerTestCmdParser): ViewerTestCommandOptionKeySet {.
    noSideEffect, importcpp: "GetUsedOptions", header: "ViewerTest_CmdParser.hxx".}
proc hasNoOption*(this: ViewerTestCmdParser): bool {.noSideEffect,
    importcpp: "HasNoOption", header: "ViewerTest_CmdParser.hxx".}
proc hasUnnamedOption*(this: ViewerTestCmdParser): bool {.noSideEffect,
    importcpp: "HasUnnamedOption", header: "ViewerTest_CmdParser.hxx".}
proc hasOnlyUnnamedOption*(this: ViewerTestCmdParser): bool {.noSideEffect,
    importcpp: "HasOnlyUnnamedOption", header: "ViewerTest_CmdParser.hxx".}
proc hasOption*(this: ViewerTestCmdParser; theOptionName: string;
               theMandatoryArgsNb: SizeT = 0; isFatal: bool = false): bool {.
    noSideEffect, importcpp: "HasOption", header: "ViewerTest_CmdParser.hxx".}
proc hasOption*(this: ViewerTestCmdParser;
               theOptionKey: ViewerTestCommandOptionKey;
               theMandatoryArgsNb: SizeT = 0; isFatal: bool = false): bool {.
    noSideEffect, importcpp: "HasOption", header: "ViewerTest_CmdParser.hxx".}
proc getNumberOfOptionArguments*(this: ViewerTestCmdParser; theOptionName: string): cint {.
    noSideEffect, importcpp: "GetNumberOfOptionArguments",
    header: "ViewerTest_CmdParser.hxx".}
proc getNumberOfOptionArguments*(this: ViewerTestCmdParser;
                                theOptionKey: ViewerTestCommandOptionKey): cint {.
    noSideEffect, importcpp: "GetNumberOfOptionArguments",
    header: "ViewerTest_CmdParser.hxx".}
proc arg*(this: ViewerTestCmdParser; theOptionName: string; theArgumentIndex: cint;
         theOptionArgument: var string): bool {.noSideEffect, importcpp: "Arg",
    header: "ViewerTest_CmdParser.hxx".}
proc arg*(this: ViewerTestCmdParser; theOptionKey: ViewerTestCommandOptionKey;
         theArgumentIndex: cint; theOptionArgument: var string): bool {.noSideEffect,
    importcpp: "Arg", header: "ViewerTest_CmdParser.hxx".}
proc arg*(this: ViewerTestCmdParser; theOptionName: string; theArgumentIndex: cint): string {.
    noSideEffect, importcpp: "Arg", header: "ViewerTest_CmdParser.hxx".}
proc arg*(this: ViewerTestCmdParser; theOptionKey: ViewerTestCommandOptionKey;
         theArgumentIndex: cint): string {.noSideEffect, importcpp: "Arg",
                                        header: "ViewerTest_CmdParser.hxx".}
proc argVec3f*(this: ViewerTestCmdParser; theOptionName: string;
              theArgumentIndex: cint = 0): Graphic3dVec3 {.noSideEffect,
    importcpp: "ArgVec3f", header: "ViewerTest_CmdParser.hxx".}
proc argVec3d*(this: ViewerTestCmdParser; theOptionName: string;
              theArgumentIndex: cint = 0): Graphic3dVec3d {.noSideEffect,
    importcpp: "ArgVec3d", header: "ViewerTest_CmdParser.hxx".}
proc argVec*(this: ViewerTestCmdParser; theOptionName: string;
            theArgumentIndex: cint = 0): Vec {.noSideEffect, importcpp: "ArgVec",
    header: "ViewerTest_CmdParser.hxx".}
proc argPnt*(this: ViewerTestCmdParser; theOptionName: string;
            theArgumentIndex: cint = 0): Pnt {.noSideEffect, importcpp: "ArgPnt",
    header: "ViewerTest_CmdParser.hxx".}
proc argDouble*(this: ViewerTestCmdParser; theOptionName: string;
               theArgumentIndex: cint = 0): cfloat {.noSideEffect,
    importcpp: "ArgDouble", header: "ViewerTest_CmdParser.hxx".}
proc argFloat*(this: ViewerTestCmdParser; theOptionName: string;
              theArgumentIndex: cint = 0): StandardShortReal {.noSideEffect,
    importcpp: "ArgFloat", header: "ViewerTest_CmdParser.hxx".}
proc argInt*(this: ViewerTestCmdParser; theOptionName: string;
            theArgumentIndex: cint = 0): cint {.noSideEffect, importcpp: "ArgInt",
    header: "ViewerTest_CmdParser.hxx".}
proc argBool*(this: ViewerTestCmdParser; theOptionName: string;
             theArgumentIndex: cint = 0): bool {.noSideEffect, importcpp: "ArgBool",
    header: "ViewerTest_CmdParser.hxx".}
proc argColor*[TheColor](this: ViewerTestCmdParser; theOptionName: string;
                        theArgumentIndex: var cint; theColor: var TheColor): bool {.
    noSideEffect, importcpp: "ArgColor", header: "ViewerTest_CmdParser.hxx".}
proc argColor*[TheColor](this: ViewerTestCmdParser;
                        theOptionKey: ViewerTestCommandOptionKey;
                        theArgumentIndex: var cint; theColor: var TheColor): bool {.
    noSideEffect, importcpp: "ArgColor", header: "ViewerTest_CmdParser.hxx".}

























