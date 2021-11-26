##  Created on: 1994-02-08
##  Created by: Gilles DEBARBOUILLE
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

## ! Definition of names of known colors.
## ! The names come (mostly) from the X11 specification.

type
  QuantityNameOfColor* {.size: sizeof(cint), importcpp: "Quantity_NameOfColor",
                        header: "Quantity_NameOfColor.hxx".} = enum
    QuantityNOC_BLACK, QuantityNOC_MATRABLUE, QuantityNOC_MATRAGRAY,
    QuantityNOC_ALICEBLUE, QuantityNOC_ANTIQUEWHITE, QuantityNOC_ANTIQUEWHITE1,
    QuantityNOC_ANTIQUEWHITE2, QuantityNOC_ANTIQUEWHITE3,
    QuantityNOC_ANTIQUEWHITE4, QuantityNOC_AQUAMARINE1, QuantityNOC_AQUAMARINE2,
    QuantityNOC_AQUAMARINE4, QuantityNOC_AZURE, QuantityNOC_AZURE2,
    QuantityNOC_AZURE3, QuantityNOC_AZURE4, QuantityNOC_BEIGE, QuantityNOC_BISQUE,
    QuantityNOC_BISQUE2, QuantityNOC_BISQUE3, QuantityNOC_BISQUE4,
    QuantityNOC_BLANCHEDALMOND, QuantityNOC_BLUE,
    QuantityNOC_BLUE1 = quantityNOC_BLUE, QuantityNOC_BLUE2, QuantityNOC_BLUE3,
    QuantityNOC_BLUE4, QuantityNOC_BLUEVIOLET, QuantityNOC_BROWN,
    QuantityNOC_BROWN1, QuantityNOC_BROWN2, QuantityNOC_BROWN3, QuantityNOC_BROWN4,
    QuantityNOC_BURLYWOOD, QuantityNOC_BURLYWOOD1, QuantityNOC_BURLYWOOD2,
    QuantityNOC_BURLYWOOD3, QuantityNOC_BURLYWOOD4, QuantityNOC_CADETBLUE,
    QuantityNOC_CADETBLUE1, QuantityNOC_CADETBLUE2, QuantityNOC_CADETBLUE3,
    QuantityNOC_CADETBLUE4, QuantityNOC_CHARTREUSE,
    QuantityNOC_CHARTREUSE1 = quantityNOC_CHARTREUSE, QuantityNOC_CHARTREUSE2,
    QuantityNOC_CHARTREUSE3, QuantityNOC_CHARTREUSE4, QuantityNOC_CHOCOLATE,
    QuantityNOC_CHOCOLATE1, QuantityNOC_CHOCOLATE2, QuantityNOC_CHOCOLATE3,
    QuantityNOC_CHOCOLATE4, QuantityNOC_CORAL, QuantityNOC_CORAL1,
    QuantityNOC_CORAL2, QuantityNOC_CORAL3, QuantityNOC_CORAL4,
    QuantityNOC_CORNFLOWERBLUE, QuantityNOC_CORNSILK1, QuantityNOC_CORNSILK2,
    QuantityNOC_CORNSILK3, QuantityNOC_CORNSILK4, QuantityNOC_CYAN,
    QuantityNOC_CYAN1 = quantityNOC_CYAN, QuantityNOC_CYAN2, QuantityNOC_CYAN3,
    QuantityNOC_CYAN4, QuantityNOC_DARKGOLDENROD, QuantityNOC_DARKGOLDENROD1,
    QuantityNOC_DARKGOLDENROD2, QuantityNOC_DARKGOLDENROD3,
    QuantityNOC_DARKGOLDENROD4, QuantityNOC_DARKGREEN, QuantityNOC_DARKKHAKI,
    QuantityNOC_DARKOLIVEGREEN, QuantityNOC_DARKOLIVEGREEN1,
    QuantityNOC_DARKOLIVEGREEN2, QuantityNOC_DARKOLIVEGREEN3,
    QuantityNOC_DARKOLIVEGREEN4, QuantityNOC_DARKORANGE, QuantityNOC_DARKORANGE1,
    QuantityNOC_DARKORANGE2, QuantityNOC_DARKORANGE3, QuantityNOC_DARKORANGE4,
    QuantityNOC_DARKORCHID, QuantityNOC_DARKORCHID1, QuantityNOC_DARKORCHID2,
    QuantityNOC_DARKORCHID3, QuantityNOC_DARKORCHID4, QuantityNOC_DARKSALMON,
    QuantityNOC_DARKSEAGREEN, QuantityNOC_DARKSEAGREEN1,
    QuantityNOC_DARKSEAGREEN2, QuantityNOC_DARKSEAGREEN3,
    QuantityNOC_DARKSEAGREEN4, QuantityNOC_DARKSLATEBLUE,
    QuantityNOC_DARKSLATEGRAY1, QuantityNOC_DARKSLATEGRAY2,
    QuantityNOC_DARKSLATEGRAY3, QuantityNOC_DARKSLATEGRAY4,
    QuantityNOC_DARKSLATEGRAY, QuantityNOC_DARKTURQUOISE, QuantityNOC_DARKVIOLET,
    QuantityNOC_DEEPPINK, QuantityNOC_DEEPPINK2, QuantityNOC_DEEPPINK3,
    QuantityNOC_DEEPPINK4, QuantityNOC_DEEPSKYBLUE1, QuantityNOC_DEEPSKYBLUE2,
    QuantityNOC_DEEPSKYBLUE3, QuantityNOC_DEEPSKYBLUE4, QuantityNOC_DODGERBLUE1,
    QuantityNOC_DODGERBLUE2, QuantityNOC_DODGERBLUE3, QuantityNOC_DODGERBLUE4,
    QuantityNOC_FIREBRICK, QuantityNOC_FIREBRICK1, QuantityNOC_FIREBRICK2,
    QuantityNOC_FIREBRICK3, QuantityNOC_FIREBRICK4, QuantityNOC_FLORALWHITE,
    QuantityNOC_FORESTGREEN, QuantityNOC_GAINSBORO, QuantityNOC_GHOSTWHITE,
    QuantityNOC_GOLD, QuantityNOC_GOLD1 = quantityNOC_GOLD, QuantityNOC_GOLD2,
    QuantityNOC_GOLD3, QuantityNOC_GOLD4, QuantityNOC_GOLDENROD,
    QuantityNOC_GOLDENROD1, QuantityNOC_GOLDENROD2, QuantityNOC_GOLDENROD3,
    QuantityNOC_GOLDENROD4, QuantityNOC_GRAY, QuantityNOC_GRAY0, QuantityNOC_GRAY1,
    QuantityNOC_GRAY2, QuantityNOC_GRAY3, QuantityNOC_GRAY4, QuantityNOC_GRAY5,
    QuantityNOC_GRAY6, QuantityNOC_GRAY7, QuantityNOC_GRAY8, QuantityNOC_GRAY9,
    QuantityNOC_GRAY10, QuantityNOC_GRAY11, QuantityNOC_GRAY12, QuantityNOC_GRAY13,
    QuantityNOC_GRAY14, QuantityNOC_GRAY15, QuantityNOC_GRAY16, QuantityNOC_GRAY17,
    QuantityNOC_GRAY18, QuantityNOC_GRAY19, QuantityNOC_GRAY20, QuantityNOC_GRAY21,
    QuantityNOC_GRAY22, QuantityNOC_GRAY23, QuantityNOC_GRAY24, QuantityNOC_GRAY25,
    QuantityNOC_GRAY26, QuantityNOC_GRAY27, QuantityNOC_GRAY28, QuantityNOC_GRAY29,
    QuantityNOC_GRAY30, QuantityNOC_GRAY31, QuantityNOC_GRAY32, QuantityNOC_GRAY33,
    QuantityNOC_GRAY34, QuantityNOC_GRAY35, QuantityNOC_GRAY36, QuantityNOC_GRAY37,
    QuantityNOC_GRAY38, QuantityNOC_GRAY39, QuantityNOC_GRAY40, QuantityNOC_GRAY41,
    QuantityNOC_GRAY42, QuantityNOC_GRAY43, QuantityNOC_GRAY44, QuantityNOC_GRAY45,
    QuantityNOC_GRAY46, QuantityNOC_GRAY47, QuantityNOC_GRAY48, QuantityNOC_GRAY49,
    QuantityNOC_GRAY50, QuantityNOC_GRAY51, QuantityNOC_GRAY52, QuantityNOC_GRAY53,
    QuantityNOC_GRAY54, QuantityNOC_GRAY55, QuantityNOC_GRAY56, QuantityNOC_GRAY57,
    QuantityNOC_GRAY58, QuantityNOC_GRAY59, QuantityNOC_GRAY60, QuantityNOC_GRAY61,
    QuantityNOC_GRAY62, QuantityNOC_GRAY63, QuantityNOC_GRAY64, QuantityNOC_GRAY65,
    QuantityNOC_GRAY66, QuantityNOC_GRAY67, QuantityNOC_GRAY68, QuantityNOC_GRAY69,
    QuantityNOC_GRAY70, QuantityNOC_GRAY71, QuantityNOC_GRAY72, QuantityNOC_GRAY73,
    QuantityNOC_GRAY74, QuantityNOC_GRAY75, QuantityNOC_GRAY76, QuantityNOC_GRAY77,
    QuantityNOC_GRAY78, QuantityNOC_GRAY79, QuantityNOC_GRAY80, QuantityNOC_GRAY81,
    QuantityNOC_GRAY82, QuantityNOC_GRAY83, QuantityNOC_GRAY85, QuantityNOC_GRAY86,
    QuantityNOC_GRAY87, QuantityNOC_GRAY88, QuantityNOC_GRAY89, QuantityNOC_GRAY90,
    QuantityNOC_GRAY91, QuantityNOC_GRAY92, QuantityNOC_GRAY93, QuantityNOC_GRAY94,
    QuantityNOC_GRAY95, QuantityNOC_GRAY97, QuantityNOC_GRAY98, QuantityNOC_GRAY99,
    QuantityNOC_GREEN, QuantityNOC_GREEN1 = quantityNOC_GREEN, QuantityNOC_GREEN2,
    QuantityNOC_GREEN3, QuantityNOC_GREEN4, QuantityNOC_GREENYELLOW,
    QuantityNOC_HONEYDEW, QuantityNOC_HONEYDEW2, QuantityNOC_HONEYDEW3,
    QuantityNOC_HONEYDEW4, QuantityNOC_HOTPINK, QuantityNOC_HOTPINK1,
    QuantityNOC_HOTPINK2, QuantityNOC_HOTPINK3, QuantityNOC_HOTPINK4,
    QuantityNOC_INDIANRED, QuantityNOC_INDIANRED1, QuantityNOC_INDIANRED2,
    QuantityNOC_INDIANRED3, QuantityNOC_INDIANRED4, QuantityNOC_IVORY,
    QuantityNOC_IVORY2, QuantityNOC_IVORY3, QuantityNOC_IVORY4, QuantityNOC_KHAKI,
    QuantityNOC_KHAKI1, QuantityNOC_KHAKI2, QuantityNOC_KHAKI3, QuantityNOC_KHAKI4,
    QuantityNOC_LAVENDER, QuantityNOC_LAVENDERBLUSH1, QuantityNOC_LAVENDERBLUSH2,
    QuantityNOC_LAVENDERBLUSH3, QuantityNOC_LAVENDERBLUSH4, QuantityNOC_LAWNGREEN,
    QuantityNOC_LEMONCHIFFON1, QuantityNOC_LEMONCHIFFON2,
    QuantityNOC_LEMONCHIFFON3, QuantityNOC_LEMONCHIFFON4, QuantityNOC_LIGHTBLUE,
    QuantityNOC_LIGHTBLUE1, QuantityNOC_LIGHTBLUE2, QuantityNOC_LIGHTBLUE3,
    QuantityNOC_LIGHTBLUE4, QuantityNOC_LIGHTCORAL, QuantityNOC_LIGHTCYAN,
    QuantityNOC_LIGHTCYAN1 = quantityNOC_LIGHTCYAN, QuantityNOC_LIGHTCYAN2,
    QuantityNOC_LIGHTCYAN3, QuantityNOC_LIGHTCYAN4, QuantityNOC_LIGHTGOLDENROD,
    QuantityNOC_LIGHTGOLDENROD1, QuantityNOC_LIGHTGOLDENROD2,
    QuantityNOC_LIGHTGOLDENROD3, QuantityNOC_LIGHTGOLDENROD4,
    QuantityNOC_LIGHTGOLDENRODYELLOW, QuantityNOC_LIGHTGRAY,
    QuantityNOC_LIGHTPINK, QuantityNOC_LIGHTPINK1, QuantityNOC_LIGHTPINK2,
    QuantityNOC_LIGHTPINK3, QuantityNOC_LIGHTPINK4, QuantityNOC_LIGHTSALMON1,
    QuantityNOC_LIGHTSALMON2, QuantityNOC_LIGHTSALMON3, QuantityNOC_LIGHTSALMON4,
    QuantityNOC_LIGHTSEAGREEN, QuantityNOC_LIGHTSKYBLUE,
    QuantityNOC_LIGHTSKYBLUE1, QuantityNOC_LIGHTSKYBLUE2,
    QuantityNOC_LIGHTSKYBLUE3, QuantityNOC_LIGHTSKYBLUE4,
    QuantityNOC_LIGHTSLATEBLUE, QuantityNOC_LIGHTSLATEGRAY,
    QuantityNOC_LIGHTSTEELBLUE, QuantityNOC_LIGHTSTEELBLUE1,
    QuantityNOC_LIGHTSTEELBLUE2, QuantityNOC_LIGHTSTEELBLUE3,
    QuantityNOC_LIGHTSTEELBLUE4, QuantityNOC_LIGHTYELLOW,
    QuantityNOC_LIGHTYELLOW2, QuantityNOC_LIGHTYELLOW3, QuantityNOC_LIGHTYELLOW4,
    QuantityNOC_LIMEGREEN, QuantityNOC_LINEN, QuantityNOC_MAGENTA,
    QuantityNOC_MAGENTA1 = quantityNOC_MAGENTA, QuantityNOC_MAGENTA2,
    QuantityNOC_MAGENTA3, QuantityNOC_MAGENTA4, QuantityNOC_MAROON,
    QuantityNOC_MAROON1, QuantityNOC_MAROON2, QuantityNOC_MAROON3,
    QuantityNOC_MAROON4, QuantityNOC_MEDIUMAQUAMARINE, QuantityNOC_MEDIUMORCHID,
    QuantityNOC_MEDIUMORCHID1, QuantityNOC_MEDIUMORCHID2,
    QuantityNOC_MEDIUMORCHID3, QuantityNOC_MEDIUMORCHID4,
    QuantityNOC_MEDIUMPURPLE, QuantityNOC_MEDIUMPURPLE1,
    QuantityNOC_MEDIUMPURPLE2, QuantityNOC_MEDIUMPURPLE3,
    QuantityNOC_MEDIUMPURPLE4, QuantityNOC_MEDIUMSEAGREEN,
    QuantityNOC_MEDIUMSLATEBLUE, QuantityNOC_MEDIUMSPRINGGREEN,
    QuantityNOC_MEDIUMTURQUOISE, QuantityNOC_MEDIUMVIOLETRED,
    QuantityNOC_MIDNIGHTBLUE, QuantityNOC_MINTCREAM, QuantityNOC_MISTYROSE,
    QuantityNOC_MISTYROSE2, QuantityNOC_MISTYROSE3, QuantityNOC_MISTYROSE4,
    QuantityNOC_MOCCASIN, QuantityNOC_NAVAJOWHITE1, QuantityNOC_NAVAJOWHITE2,
    QuantityNOC_NAVAJOWHITE3, QuantityNOC_NAVAJOWHITE4, QuantityNOC_NAVYBLUE,
    QuantityNOC_OLDLACE, QuantityNOC_OLIVEDRAB, QuantityNOC_OLIVEDRAB1,
    QuantityNOC_OLIVEDRAB2, QuantityNOC_OLIVEDRAB3, QuantityNOC_OLIVEDRAB4,
    QuantityNOC_ORANGE, QuantityNOC_ORANGE1 = quantityNOC_ORANGE,
    QuantityNOC_ORANGE2, QuantityNOC_ORANGE3, QuantityNOC_ORANGE4,
    QuantityNOC_ORANGERED, QuantityNOC_ORANGERED1 = quantityNOC_ORANGERED,
    QuantityNOC_ORANGERED2, QuantityNOC_ORANGERED3, QuantityNOC_ORANGERED4,
    QuantityNOC_ORCHID, QuantityNOC_ORCHID1, QuantityNOC_ORCHID2,
    QuantityNOC_ORCHID3, QuantityNOC_ORCHID4, QuantityNOC_PALEGOLDENROD,
    QuantityNOC_PALEGREEN, QuantityNOC_PALEGREEN1, QuantityNOC_PALEGREEN2,
    QuantityNOC_PALEGREEN3, QuantityNOC_PALEGREEN4, QuantityNOC_PALETURQUOISE,
    QuantityNOC_PALETURQUOISE1, QuantityNOC_PALETURQUOISE2,
    QuantityNOC_PALETURQUOISE3, QuantityNOC_PALETURQUOISE4,
    QuantityNOC_PALEVIOLETRED, QuantityNOC_PALEVIOLETRED1,
    QuantityNOC_PALEVIOLETRED2, QuantityNOC_PALEVIOLETRED3,
    QuantityNOC_PALEVIOLETRED4, QuantityNOC_PAPAYAWHIP, QuantityNOC_PEACHPUFF,
    QuantityNOC_PEACHPUFF2, QuantityNOC_PEACHPUFF3, QuantityNOC_PEACHPUFF4,
    QuantityNOC_PERU, QuantityNOC_PINK, QuantityNOC_PINK1, QuantityNOC_PINK2,
    QuantityNOC_PINK3, QuantityNOC_PINK4, QuantityNOC_PLUM, QuantityNOC_PLUM1,
    QuantityNOC_PLUM2, QuantityNOC_PLUM3, QuantityNOC_PLUM4,
    QuantityNOC_POWDERBLUE, QuantityNOC_PURPLE, QuantityNOC_PURPLE1,
    QuantityNOC_PURPLE2, QuantityNOC_PURPLE3, QuantityNOC_PURPLE4, QuantityNOC_RED,
    QuantityNOC_RED1 = quantityNOC_RED, QuantityNOC_RED2, QuantityNOC_RED3,
    QuantityNOC_RED4, QuantityNOC_ROSYBROWN, QuantityNOC_ROSYBROWN1,
    QuantityNOC_ROSYBROWN2, QuantityNOC_ROSYBROWN3, QuantityNOC_ROSYBROWN4,
    QuantityNOC_ROYALBLUE, QuantityNOC_ROYALBLUE1, QuantityNOC_ROYALBLUE2,
    QuantityNOC_ROYALBLUE3, QuantityNOC_ROYALBLUE4, QuantityNOC_SADDLEBROWN,
    QuantityNOC_SALMON, QuantityNOC_SALMON1, QuantityNOC_SALMON2,
    QuantityNOC_SALMON3, QuantityNOC_SALMON4, QuantityNOC_SANDYBROWN,
    QuantityNOC_SEAGREEN, QuantityNOC_SEAGREEN1, QuantityNOC_SEAGREEN2,
    QuantityNOC_SEAGREEN3, QuantityNOC_SEAGREEN4, QuantityNOC_SEASHELL,
    QuantityNOC_SEASHELL2, QuantityNOC_SEASHELL3, QuantityNOC_SEASHELL4,
    QuantityNOC_BEET, QuantityNOC_TEAL, QuantityNOC_SIENNA, QuantityNOC_SIENNA1,
    QuantityNOC_SIENNA2, QuantityNOC_SIENNA3, QuantityNOC_SIENNA4,
    QuantityNOC_SKYBLUE, QuantityNOC_SKYBLUE1, QuantityNOC_SKYBLUE2,
    QuantityNOC_SKYBLUE3, QuantityNOC_SKYBLUE4, QuantityNOC_SLATEBLUE,
    QuantityNOC_SLATEBLUE1, QuantityNOC_SLATEBLUE2, QuantityNOC_SLATEBLUE3,
    QuantityNOC_SLATEBLUE4, QuantityNOC_SLATEGRAY1, QuantityNOC_SLATEGRAY2,
    QuantityNOC_SLATEGRAY3, QuantityNOC_SLATEGRAY4, QuantityNOC_SLATEGRAY,
    QuantityNOC_SNOW, QuantityNOC_SNOW2, QuantityNOC_SNOW3, QuantityNOC_SNOW4,
    QuantityNOC_SPRINGGREEN, QuantityNOC_SPRINGGREEN2, QuantityNOC_SPRINGGREEN3,
    QuantityNOC_SPRINGGREEN4, QuantityNOC_STEELBLUE, QuantityNOC_STEELBLUE1,
    QuantityNOC_STEELBLUE2, QuantityNOC_STEELBLUE3, QuantityNOC_STEELBLUE4,
    QuantityNOC_TAN, QuantityNOC_TAN1, QuantityNOC_TAN2, QuantityNOC_TAN3,
    QuantityNOC_TAN4, QuantityNOC_THISTLE, QuantityNOC_THISTLE1,
    QuantityNOC_THISTLE2, QuantityNOC_THISTLE3, QuantityNOC_THISTLE4,
    QuantityNOC_TOMATO, QuantityNOC_TOMATO1 = quantityNOC_TOMATO,
    QuantityNOC_TOMATO2, QuantityNOC_TOMATO3, QuantityNOC_TOMATO4,
    QuantityNOC_TURQUOISE, QuantityNOC_TURQUOISE1, QuantityNOC_TURQUOISE2,
    QuantityNOC_TURQUOISE3, QuantityNOC_TURQUOISE4, QuantityNOC_VIOLET,
    QuantityNOC_VIOLETRED, QuantityNOC_VIOLETRED1, QuantityNOC_VIOLETRED2,
    QuantityNOC_VIOLETRED3, QuantityNOC_VIOLETRED4, QuantityNOC_WHEAT,
    QuantityNOC_WHEAT1, QuantityNOC_WHEAT2, QuantityNOC_WHEAT3, QuantityNOC_WHEAT4,
    QuantityNOC_WHITESMOKE, QuantityNOC_YELLOW,
    QuantityNOC_YELLOW1 = quantityNOC_YELLOW, QuantityNOC_YELLOW2,
    QuantityNOC_YELLOW3, QuantityNOC_YELLOW4, QuantityNOC_YELLOWGREEN,
    QuantityNOC_WHITE



























