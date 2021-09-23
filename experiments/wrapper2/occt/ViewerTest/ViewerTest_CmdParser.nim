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

import
  ../Graphic3d/Graphic3d_Vec3

discard "forward decl of Quantity_Color"
discard "forward decl of Quantity_ColorRGBA"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
type
  ViewerTest_CommandOptionKey* = size_t

## ! A set of keys for command-line options

type
  ViewerTest_CommandOptionKeySet* = set[ViewerTest_CommandOptionKey]

## ! Command parser.

type
  ViewerTest_CmdParser* {.importcpp: "ViewerTest_CmdParser",
                         header: "ViewerTest_CmdParser.hxx", bycopy.} = object ## ! The key of the
                                                                          ## unnamed
                                                                          ## command option
                                                                          ## ! A list of
                                                                          ## aliases to a
                                                                          ## command option name
    ## ! Container which stores option objects.
    ## ! Map from all possible option names to option access keys (that are indices in myOptionStorage)
    ## ! Map from keys of used options to their indices in the option arguments storage
    ## ! Container which stores the arguments of all used options
    ## ! Gets an access key of the option
    ## ! @param theOptionName the name of the option which key is to be found
    ## ! @param theOptionKey an access key of the option with the given name
    ## ! @return true if the given option was found, or false otherwise


proc constructViewerTest_CmdParser*(theDescription: string = string()): ViewerTest_CmdParser {.
    constructor, importcpp: "ViewerTest_CmdParser(@)",
    header: "ViewerTest_CmdParser.hxx".}
proc SetDescription*(this: var ViewerTest_CmdParser; theDescription: string) {.
    importcpp: "SetDescription", header: "ViewerTest_CmdParser.hxx".}
proc AddOption*(this: var ViewerTest_CmdParser; theOptionNames: string;
               theOptionDescription: string = string()): ViewerTest_CommandOptionKey {.
    importcpp: "AddOption", header: "ViewerTest_CmdParser.hxx".}
proc PrintHelp*(this: ViewerTest_CmdParser) {.noSideEffect, importcpp: "PrintHelp",
    header: "ViewerTest_CmdParser.hxx".}
proc Parse*(this: var ViewerTest_CmdParser; theArgsNb: Standard_Integer;
           theArgVec: cstringArray) {.importcpp: "Parse",
                                    header: "ViewerTest_CmdParser.hxx".}
proc GetOptionNameByKey*(this: ViewerTest_CmdParser;
                        theOptionKey: ViewerTest_CommandOptionKey): string {.
    noSideEffect, importcpp: "GetOptionNameByKey",
    header: "ViewerTest_CmdParser.hxx".}
proc GetUsedOptions*(this: ViewerTest_CmdParser): ViewerTest_CommandOptionKeySet {.
    noSideEffect, importcpp: "GetUsedOptions", header: "ViewerTest_CmdParser.hxx".}
proc HasNoOption*(this: ViewerTest_CmdParser): bool {.noSideEffect,
    importcpp: "HasNoOption", header: "ViewerTest_CmdParser.hxx".}
proc HasUnnamedOption*(this: ViewerTest_CmdParser): bool {.noSideEffect,
    importcpp: "HasUnnamedOption", header: "ViewerTest_CmdParser.hxx".}
proc HasOnlyUnnamedOption*(this: ViewerTest_CmdParser): bool {.noSideEffect,
    importcpp: "HasOnlyUnnamedOption", header: "ViewerTest_CmdParser.hxx".}
proc HasOption*(this: ViewerTest_CmdParser; theOptionName: string;
               theMandatoryArgsNb: size_t = 0; isFatal: bool = Standard_False): bool {.
    noSideEffect, importcpp: "HasOption", header: "ViewerTest_CmdParser.hxx".}
proc HasOption*(this: ViewerTest_CmdParser;
               theOptionKey: ViewerTest_CommandOptionKey;
               theMandatoryArgsNb: size_t = 0; isFatal: bool = Standard_False): bool {.
    noSideEffect, importcpp: "HasOption", header: "ViewerTest_CmdParser.hxx".}
proc GetNumberOfOptionArguments*(this: ViewerTest_CmdParser; theOptionName: string): Standard_Integer {.
    noSideEffect, importcpp: "GetNumberOfOptionArguments",
    header: "ViewerTest_CmdParser.hxx".}
proc GetNumberOfOptionArguments*(this: ViewerTest_CmdParser;
                                theOptionKey: ViewerTest_CommandOptionKey): Standard_Integer {.
    noSideEffect, importcpp: "GetNumberOfOptionArguments",
    header: "ViewerTest_CmdParser.hxx".}
proc Arg*(this: ViewerTest_CmdParser; theOptionName: string;
         theArgumentIndex: Standard_Integer; theOptionArgument: var string): bool {.
    noSideEffect, importcpp: "Arg", header: "ViewerTest_CmdParser.hxx".}
proc Arg*(this: ViewerTest_CmdParser; theOptionKey: ViewerTest_CommandOptionKey;
         theArgumentIndex: Standard_Integer; theOptionArgument: var string): bool {.
    noSideEffect, importcpp: "Arg", header: "ViewerTest_CmdParser.hxx".}
proc Arg*(this: ViewerTest_CmdParser; theOptionName: string;
         theArgumentIndex: Standard_Integer): string {.noSideEffect,
    importcpp: "Arg", header: "ViewerTest_CmdParser.hxx".}
proc Arg*(this: ViewerTest_CmdParser; theOptionKey: ViewerTest_CommandOptionKey;
         theArgumentIndex: Standard_Integer): string {.noSideEffect,
    importcpp: "Arg", header: "ViewerTest_CmdParser.hxx".}
proc ArgVec3f*(this: ViewerTest_CmdParser; theOptionName: string;
              theArgumentIndex: Standard_Integer = 0): Graphic3d_Vec3 {.noSideEffect,
    importcpp: "ArgVec3f", header: "ViewerTest_CmdParser.hxx".}
proc ArgVec3d*(this: ViewerTest_CmdParser; theOptionName: string;
              theArgumentIndex: Standard_Integer = 0): Graphic3d_Vec3d {.
    noSideEffect, importcpp: "ArgVec3d", header: "ViewerTest_CmdParser.hxx".}
proc ArgVec*(this: ViewerTest_CmdParser; theOptionName: string;
            theArgumentIndex: Standard_Integer = 0): gp_Vec {.noSideEffect,
    importcpp: "ArgVec", header: "ViewerTest_CmdParser.hxx".}
proc ArgPnt*(this: ViewerTest_CmdParser; theOptionName: string;
            theArgumentIndex: Standard_Integer = 0): gp_Pnt {.noSideEffect,
    importcpp: "ArgPnt", header: "ViewerTest_CmdParser.hxx".}
proc ArgDouble*(this: ViewerTest_CmdParser; theOptionName: string;
               theArgumentIndex: Standard_Integer = 0): Standard_Real {.noSideEffect,
    importcpp: "ArgDouble", header: "ViewerTest_CmdParser.hxx".}
proc ArgFloat*(this: ViewerTest_CmdParser; theOptionName: string;
              theArgumentIndex: Standard_Integer = 0): Standard_ShortReal {.
    noSideEffect, importcpp: "ArgFloat", header: "ViewerTest_CmdParser.hxx".}
proc ArgInt*(this: ViewerTest_CmdParser; theOptionName: string;
            theArgumentIndex: Standard_Integer = 0): Standard_Integer {.noSideEffect,
    importcpp: "ArgInt", header: "ViewerTest_CmdParser.hxx".}
proc ArgBool*(this: ViewerTest_CmdParser; theOptionName: string;
             theArgumentIndex: Standard_Integer = 0): bool {.noSideEffect,
    importcpp: "ArgBool", header: "ViewerTest_CmdParser.hxx".}
proc ArgColor*[TheColor](this: ViewerTest_CmdParser; theOptionName: string;
                        theArgumentIndex: var Standard_Integer;
                        theColor: var TheColor): bool {.noSideEffect,
    importcpp: "ArgColor", header: "ViewerTest_CmdParser.hxx".}
proc ArgColor*[TheColor](this: ViewerTest_CmdParser;
                        theOptionKey: ViewerTest_CommandOptionKey;
                        theArgumentIndex: var Standard_Integer;
                        theColor: var TheColor): bool {.noSideEffect,
    importcpp: "ArgColor", header: "ViewerTest_CmdParser.hxx".}