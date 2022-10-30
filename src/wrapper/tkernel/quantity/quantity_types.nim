type
  QuantityAcceleration* = cfloat
type
  QuantityAcousticIntensity* = cfloat
type
  QuantityActivity* = cfloat
type
  QuantityAdmittance* = cfloat
type
  QuantityAmountOfSubstance* = cfloat
type
  QuantityAngularVelocity* = cfloat
type
  QuantityArea* = cfloat
type
  QuantityArray1OfColor* = NCollectionArray1[QuantityColor]
type
  QuantityArray2OfColor* = NCollectionArray2[QuantityColor]
type
  QuantityCapacitance* = cfloat
type
  QuantityCoefficient* = cfloat
type
  QuantityCoefficientOfExpansion* = cfloat
type
  QuantityConcentration* = cfloat
type
  QuantityConductivity* = cfloat
type
  QuantityConstant* = cfloat
type
  QuantityConsumption* = cfloat
type
  QuantityContent* = cfloat
type
  QuantityDensity* = cfloat
type
  QuantityDoseEquivalent* = cfloat
type
  QuantityElectricCapacitance* = cfloat
type
  QuantityElectricCharge* = cfloat
type
  QuantityElectricCurrent* = cfloat
type
  QuantityElectricFieldStrength* = cfloat
type
  QuantityElectricPotential* = cfloat
type
  QuantityEnergy* = cfloat
type
  QuantityEnthalpy* = cfloat
type
  QuantityEntropy* = cfloat
type
  QuantityFactor* = cfloat
type
  QuantityForce* = cfloat
type
  QuantityFrequency* = cfloat
type
  QuantityIlluminance* = cfloat
type
  QuantityImpedance* = cfloat
type
  QuantityIndex* = cfloat
type
  QuantityInductance* = cfloat
type
  QuantityKinematicViscosity* = cfloat
type
  QuantityKineticMoment* = cfloat
type
  QuantityLength* = cfloat
type
  QuantityLuminance* = cfloat
type
  QuantityLuminousEfficacity* = cfloat
type
  QuantityLuminousExposition* = cfloat
type
  QuantityLuminousFlux* = cfloat
type
  QuantityLuminousIntensity* = cfloat
type
  QuantityMagneticFieldStrength* = cfloat
type
  QuantityMagneticFlux* = cfloat
type
  QuantityMagneticFluxDensity* = cfloat
type
  QuantityMass* = cfloat
type
  QuantityMassFlow* = cfloat
type
  QuantityMolarConcentration* = cfloat
type
  QuantityMolarity* = cfloat
type
  QuantityMolarMass* = cfloat
type
  QuantityMolarVolume* = cfloat
type
  QuantityMomentOfAForce* = cfloat
type
  QuantityMomentOfInertia* = cfloat
type
  QuantityMomentum* = cfloat
type
  QuantityNameOfColor* {.size: sizeof(cint), importcpp: "Quantity_NameOfColor",
                        header: "Quantity_NameOfColor.hxx".} = enum
    quantityNOC_BLACK, quantityNOC_MATRABLUE, quantityNOC_MATRAGRAY,
    quantityNOC_ALICEBLUE, quantityNOC_ANTIQUEWHITE, quantityNOC_ANTIQUEWHITE1,
    quantityNOC_ANTIQUEWHITE2, quantityNOC_ANTIQUEWHITE3,
    quantityNOC_ANTIQUEWHITE4, quantityNOC_AQUAMARINE1, quantityNOC_AQUAMARINE2,
    quantityNOC_AQUAMARINE4, quantityNOC_AZURE, quantityNOC_AZURE2,
    quantityNOC_AZURE3, quantityNOC_AZURE4, quantityNOC_BEIGE, quantityNOC_BISQUE,
    quantityNOC_BISQUE2, quantityNOC_BISQUE3, quantityNOC_BISQUE4,
    quantityNOC_BLANCHEDALMOND, quantityNOC_BLUE,
    quantityNOC_BLUE2, quantityNOC_BLUE3,
    quantityNOC_BLUE4, quantityNOC_BLUEVIOLET, quantityNOC_BROWN,
    quantityNOC_BROWN1, quantityNOC_BROWN2, quantityNOC_BROWN3, quantityNOC_BROWN4,
    quantityNOC_BURLYWOOD, quantityNOC_BURLYWOOD1, quantityNOC_BURLYWOOD2,
    quantityNOC_BURLYWOOD3, quantityNOC_BURLYWOOD4, quantityNOC_CADETBLUE,
    quantityNOC_CADETBLUE1, quantityNOC_CADETBLUE2, quantityNOC_CADETBLUE3,
    quantityNOC_CADETBLUE4, quantityNOC_CHARTREUSE,
    quantityNOC_CHARTREUSE2,
    quantityNOC_CHARTREUSE3, quantityNOC_CHARTREUSE4, quantityNOC_CHOCOLATE,
    quantityNOC_CHOCOLATE1, quantityNOC_CHOCOLATE2, quantityNOC_CHOCOLATE3,
    quantityNOC_CHOCOLATE4, quantityNOC_CORAL, quantityNOC_CORAL1,
    quantityNOC_CORAL2, quantityNOC_CORAL3, quantityNOC_CORAL4,
    quantityNOC_CORNFLOWERBLUE, quantityNOC_CORNSILK1, quantityNOC_CORNSILK2,
    quantityNOC_CORNSILK3, quantityNOC_CORNSILK4, quantityNOC_CYAN,
    quantityNOC_CYAN2, quantityNOC_CYAN3,
    quantityNOC_CYAN4, quantityNOC_DARKGOLDENROD, quantityNOC_DARKGOLDENROD1,
    quantityNOC_DARKGOLDENROD2, quantityNOC_DARKGOLDENROD3,
    quantityNOC_DARKGOLDENROD4, quantityNOC_DARKGREEN, quantityNOC_DARKKHAKI,
    quantityNOC_DARKOLIVEGREEN, quantityNOC_DARKOLIVEGREEN1,
    quantityNOC_DARKOLIVEGREEN2, quantityNOC_DARKOLIVEGREEN3,
    quantityNOC_DARKOLIVEGREEN4, quantityNOC_DARKORANGE, quantityNOC_DARKORANGE1,
    quantityNOC_DARKORANGE2, quantityNOC_DARKORANGE3, quantityNOC_DARKORANGE4,
    quantityNOC_DARKORCHID, quantityNOC_DARKORCHID1, quantityNOC_DARKORCHID2,
    quantityNOC_DARKORCHID3, quantityNOC_DARKORCHID4, quantityNOC_DARKSALMON,
    quantityNOC_DARKSEAGREEN, quantityNOC_DARKSEAGREEN1,
    quantityNOC_DARKSEAGREEN2, quantityNOC_DARKSEAGREEN3,
    quantityNOC_DARKSEAGREEN4, quantityNOC_DARKSLATEBLUE,
    quantityNOC_DARKSLATEGRAY1, quantityNOC_DARKSLATEGRAY2,
    quantityNOC_DARKSLATEGRAY3, quantityNOC_DARKSLATEGRAY4,
    quantityNOC_DARKSLATEGRAY, quantityNOC_DARKTURQUOISE, quantityNOC_DARKVIOLET,
    quantityNOC_DEEPPINK, quantityNOC_DEEPPINK2, quantityNOC_DEEPPINK3,
    quantityNOC_DEEPPINK4, quantityNOC_DEEPSKYBLUE1, quantityNOC_DEEPSKYBLUE2,
    quantityNOC_DEEPSKYBLUE3, quantityNOC_DEEPSKYBLUE4, quantityNOC_DODGERBLUE1,
    quantityNOC_DODGERBLUE2, quantityNOC_DODGERBLUE3, quantityNOC_DODGERBLUE4,
    quantityNOC_FIREBRICK, quantityNOC_FIREBRICK1, quantityNOC_FIREBRICK2,
    quantityNOC_FIREBRICK3, quantityNOC_FIREBRICK4, quantityNOC_FLORALWHITE,
    quantityNOC_FORESTGREEN, quantityNOC_GAINSBORO, quantityNOC_GHOSTWHITE,
    quantityNOC_GOLD, quantityNOC_GOLD2,
    quantityNOC_GOLD3, quantityNOC_GOLD4, quantityNOC_GOLDENROD,
    quantityNOC_GOLDENROD1, quantityNOC_GOLDENROD2, quantityNOC_GOLDENROD3,
    quantityNOC_GOLDENROD4, quantityNOC_GRAY, quantityNOC_GRAY0, quantityNOC_GRAY1,
    quantityNOC_GRAY2, quantityNOC_GRAY3, quantityNOC_GRAY4, quantityNOC_GRAY5,
    quantityNOC_GRAY6, quantityNOC_GRAY7, quantityNOC_GRAY8, quantityNOC_GRAY9,
    quantityNOC_GRAY10, quantityNOC_GRAY11, quantityNOC_GRAY12, quantityNOC_GRAY13,
    quantityNOC_GRAY14, quantityNOC_GRAY15, quantityNOC_GRAY16, quantityNOC_GRAY17,
    quantityNOC_GRAY18, quantityNOC_GRAY19, quantityNOC_GRAY20, quantityNOC_GRAY21,
    quantityNOC_GRAY22, quantityNOC_GRAY23, quantityNOC_GRAY24, quantityNOC_GRAY25,
    quantityNOC_GRAY26, quantityNOC_GRAY27, quantityNOC_GRAY28, quantityNOC_GRAY29,
    quantityNOC_GRAY30, quantityNOC_GRAY31, quantityNOC_GRAY32, quantityNOC_GRAY33,
    quantityNOC_GRAY34, quantityNOC_GRAY35, quantityNOC_GRAY36, quantityNOC_GRAY37,
    quantityNOC_GRAY38, quantityNOC_GRAY39, quantityNOC_GRAY40, quantityNOC_GRAY41,
    quantityNOC_GRAY42, quantityNOC_GRAY43, quantityNOC_GRAY44, quantityNOC_GRAY45,
    quantityNOC_GRAY46, quantityNOC_GRAY47, quantityNOC_GRAY48, quantityNOC_GRAY49,
    quantityNOC_GRAY50, quantityNOC_GRAY51, quantityNOC_GRAY52, quantityNOC_GRAY53,
    quantityNOC_GRAY54, quantityNOC_GRAY55, quantityNOC_GRAY56, quantityNOC_GRAY57,
    quantityNOC_GRAY58, quantityNOC_GRAY59, quantityNOC_GRAY60, quantityNOC_GRAY61,
    quantityNOC_GRAY62, quantityNOC_GRAY63, quantityNOC_GRAY64, quantityNOC_GRAY65,
    quantityNOC_GRAY66, quantityNOC_GRAY67, quantityNOC_GRAY68, quantityNOC_GRAY69,
    quantityNOC_GRAY70, quantityNOC_GRAY71, quantityNOC_GRAY72, quantityNOC_GRAY73,
    quantityNOC_GRAY74, quantityNOC_GRAY75, quantityNOC_GRAY76, quantityNOC_GRAY77,
    quantityNOC_GRAY78, quantityNOC_GRAY79, quantityNOC_GRAY80, quantityNOC_GRAY81,
    quantityNOC_GRAY82, quantityNOC_GRAY83, quantityNOC_GRAY85, quantityNOC_GRAY86,
    quantityNOC_GRAY87, quantityNOC_GRAY88, quantityNOC_GRAY89, quantityNOC_GRAY90,
    quantityNOC_GRAY91, quantityNOC_GRAY92, quantityNOC_GRAY93, quantityNOC_GRAY94,
    quantityNOC_GRAY95, quantityNOC_GRAY97, quantityNOC_GRAY98, quantityNOC_GRAY99,
    quantityNOC_GREEN, quantityNOC_GREEN2,
    quantityNOC_GREEN3, quantityNOC_GREEN4, quantityNOC_GREENYELLOW,
    quantityNOC_HONEYDEW, quantityNOC_HONEYDEW2, quantityNOC_HONEYDEW3,
    quantityNOC_HONEYDEW4, quantityNOC_HOTPINK, quantityNOC_HOTPINK1,
    quantityNOC_HOTPINK2, quantityNOC_HOTPINK3, quantityNOC_HOTPINK4,
    quantityNOC_INDIANRED, quantityNOC_INDIANRED1, quantityNOC_INDIANRED2,
    quantityNOC_INDIANRED3, quantityNOC_INDIANRED4, quantityNOC_IVORY,
    quantityNOC_IVORY2, quantityNOC_IVORY3, quantityNOC_IVORY4, quantityNOC_KHAKI,
    quantityNOC_KHAKI1, quantityNOC_KHAKI2, quantityNOC_KHAKI3, quantityNOC_KHAKI4,
    quantityNOC_LAVENDER, quantityNOC_LAVENDERBLUSH1, quantityNOC_LAVENDERBLUSH2,
    quantityNOC_LAVENDERBLUSH3, quantityNOC_LAVENDERBLUSH4, quantityNOC_LAWNGREEN,
    quantityNOC_LEMONCHIFFON1, quantityNOC_LEMONCHIFFON2,
    quantityNOC_LEMONCHIFFON3, quantityNOC_LEMONCHIFFON4, quantityNOC_LIGHTBLUE,
    quantityNOC_LIGHTBLUE1, quantityNOC_LIGHTBLUE2, quantityNOC_LIGHTBLUE3,
    quantityNOC_LIGHTBLUE4, quantityNOC_LIGHTCORAL, quantityNOC_LIGHTCYAN,
    quantityNOC_LIGHTCYAN2,
    quantityNOC_LIGHTCYAN3, quantityNOC_LIGHTCYAN4, quantityNOC_LIGHTGOLDENROD,
    quantityNOC_LIGHTGOLDENROD1, quantityNOC_LIGHTGOLDENROD2,
    quantityNOC_LIGHTGOLDENROD3, quantityNOC_LIGHTGOLDENROD4,
    quantityNOC_LIGHTGOLDENRODYELLOW, quantityNOC_LIGHTGRAY,
    quantityNOC_LIGHTPINK, quantityNOC_LIGHTPINK1, quantityNOC_LIGHTPINK2,
    quantityNOC_LIGHTPINK3, quantityNOC_LIGHTPINK4, quantityNOC_LIGHTSALMON1,
    quantityNOC_LIGHTSALMON2, quantityNOC_LIGHTSALMON3, quantityNOC_LIGHTSALMON4,
    quantityNOC_LIGHTSEAGREEN, quantityNOC_LIGHTSKYBLUE,
    quantityNOC_LIGHTSKYBLUE1, quantityNOC_LIGHTSKYBLUE2,
    quantityNOC_LIGHTSKYBLUE3, quantityNOC_LIGHTSKYBLUE4,
    quantityNOC_LIGHTSLATEBLUE, quantityNOC_LIGHTSLATEGRAY,
    quantityNOC_LIGHTSTEELBLUE, quantityNOC_LIGHTSTEELBLUE1,
    quantityNOC_LIGHTSTEELBLUE2, quantityNOC_LIGHTSTEELBLUE3,
    quantityNOC_LIGHTSTEELBLUE4, quantityNOC_LIGHTYELLOW,
    quantityNOC_LIGHTYELLOW2, quantityNOC_LIGHTYELLOW3, quantityNOC_LIGHTYELLOW4,
    quantityNOC_LIMEGREEN, quantityNOC_LINEN, quantityNOC_MAGENTA,
    quantityNOC_MAGENTA2,
    quantityNOC_MAGENTA3, quantityNOC_MAGENTA4, quantityNOC_MAROON,
    quantityNOC_MAROON1, quantityNOC_MAROON2, quantityNOC_MAROON3,
    quantityNOC_MAROON4, quantityNOC_MEDIUMAQUAMARINE, quantityNOC_MEDIUMORCHID,
    quantityNOC_MEDIUMORCHID1, quantityNOC_MEDIUMORCHID2,
    quantityNOC_MEDIUMORCHID3, quantityNOC_MEDIUMORCHID4,
    quantityNOC_MEDIUMPURPLE, quantityNOC_MEDIUMPURPLE1,
    quantityNOC_MEDIUMPURPLE2, quantityNOC_MEDIUMPURPLE3,
    quantityNOC_MEDIUMPURPLE4, quantityNOC_MEDIUMSEAGREEN,
    quantityNOC_MEDIUMSLATEBLUE, quantityNOC_MEDIUMSPRINGGREEN,
    quantityNOC_MEDIUMTURQUOISE, quantityNOC_MEDIUMVIOLETRED,
    quantityNOC_MIDNIGHTBLUE, quantityNOC_MINTCREAM, quantityNOC_MISTYROSE,
    quantityNOC_MISTYROSE2, quantityNOC_MISTYROSE3, quantityNOC_MISTYROSE4,
    quantityNOC_MOCCASIN, quantityNOC_NAVAJOWHITE1, quantityNOC_NAVAJOWHITE2,
    quantityNOC_NAVAJOWHITE3, quantityNOC_NAVAJOWHITE4, quantityNOC_NAVYBLUE,
    quantityNOC_OLDLACE, quantityNOC_OLIVEDRAB, quantityNOC_OLIVEDRAB1,
    quantityNOC_OLIVEDRAB2, quantityNOC_OLIVEDRAB3, quantityNOC_OLIVEDRAB4,
    quantityNOC_ORANGE, 
    quantityNOC_ORANGE2, quantityNOC_ORANGE3, quantityNOC_ORANGE4,
    quantityNOC_ORANGERED, 
    quantityNOC_ORANGERED2, quantityNOC_ORANGERED3, quantityNOC_ORANGERED4,
    quantityNOC_ORCHID, quantityNOC_ORCHID1, quantityNOC_ORCHID2,
    quantityNOC_ORCHID3, quantityNOC_ORCHID4, quantityNOC_PALEGOLDENROD,
    quantityNOC_PALEGREEN, quantityNOC_PALEGREEN1, quantityNOC_PALEGREEN2,
    quantityNOC_PALEGREEN3, quantityNOC_PALEGREEN4, quantityNOC_PALETURQUOISE,
    quantityNOC_PALETURQUOISE1, quantityNOC_PALETURQUOISE2,
    quantityNOC_PALETURQUOISE3, quantityNOC_PALETURQUOISE4,
    quantityNOC_PALEVIOLETRED, quantityNOC_PALEVIOLETRED1,
    quantityNOC_PALEVIOLETRED2, quantityNOC_PALEVIOLETRED3,
    quantityNOC_PALEVIOLETRED4, quantityNOC_PAPAYAWHIP, quantityNOC_PEACHPUFF,
    quantityNOC_PEACHPUFF2, quantityNOC_PEACHPUFF3, quantityNOC_PEACHPUFF4,
    quantityNOC_PERU, quantityNOC_PINK, quantityNOC_PINK1, quantityNOC_PINK2,
    quantityNOC_PINK3, quantityNOC_PINK4, quantityNOC_PLUM, quantityNOC_PLUM1,
    quantityNOC_PLUM2, quantityNOC_PLUM3, quantityNOC_PLUM4,
    quantityNOC_POWDERBLUE, quantityNOC_PURPLE, quantityNOC_PURPLE1,
    quantityNOC_PURPLE2, quantityNOC_PURPLE3, quantityNOC_PURPLE4, quantityNOC_RED,
    quantityNOC_RED2, quantityNOC_RED3,
    quantityNOC_RED4, quantityNOC_ROSYBROWN, quantityNOC_ROSYBROWN1,
    quantityNOC_ROSYBROWN2, quantityNOC_ROSYBROWN3, quantityNOC_ROSYBROWN4,
    quantityNOC_ROYALBLUE, quantityNOC_ROYALBLUE1, quantityNOC_ROYALBLUE2,
    quantityNOC_ROYALBLUE3, quantityNOC_ROYALBLUE4, quantityNOC_SADDLEBROWN,
    quantityNOC_SALMON, quantityNOC_SALMON1, quantityNOC_SALMON2,
    quantityNOC_SALMON3, quantityNOC_SALMON4, quantityNOC_SANDYBROWN,
    quantityNOC_SEAGREEN, quantityNOC_SEAGREEN1, quantityNOC_SEAGREEN2,
    quantityNOC_SEAGREEN3, quantityNOC_SEAGREEN4, quantityNOC_SEASHELL,
    quantityNOC_SEASHELL2, quantityNOC_SEASHELL3, quantityNOC_SEASHELL4,
    quantityNOC_BEET, quantityNOC_TEAL, quantityNOC_SIENNA, quantityNOC_SIENNA1,
    quantityNOC_SIENNA2, quantityNOC_SIENNA3, quantityNOC_SIENNA4,
    quantityNOC_SKYBLUE, quantityNOC_SKYBLUE1, quantityNOC_SKYBLUE2,
    quantityNOC_SKYBLUE3, quantityNOC_SKYBLUE4, quantityNOC_SLATEBLUE,
    quantityNOC_SLATEBLUE1, quantityNOC_SLATEBLUE2, quantityNOC_SLATEBLUE3,
    quantityNOC_SLATEBLUE4, quantityNOC_SLATEGRAY1, quantityNOC_SLATEGRAY2,
    quantityNOC_SLATEGRAY3, quantityNOC_SLATEGRAY4, quantityNOC_SLATEGRAY,
    quantityNOC_SNOW, quantityNOC_SNOW2, quantityNOC_SNOW3, quantityNOC_SNOW4,
    quantityNOC_SPRINGGREEN, quantityNOC_SPRINGGREEN2, quantityNOC_SPRINGGREEN3,
    quantityNOC_SPRINGGREEN4, quantityNOC_STEELBLUE, quantityNOC_STEELBLUE1,
    quantityNOC_STEELBLUE2, quantityNOC_STEELBLUE3, quantityNOC_STEELBLUE4,
    quantityNOC_TAN, quantityNOC_TAN1, quantityNOC_TAN2, quantityNOC_TAN3,
    quantityNOC_TAN4, quantityNOC_THISTLE, quantityNOC_THISTLE1,
    quantityNOC_THISTLE2, quantityNOC_THISTLE3, quantityNOC_THISTLE4,
    quantityNOC_TOMATO, 
    quantityNOC_TOMATO2, quantityNOC_TOMATO3, quantityNOC_TOMATO4,
    quantityNOC_TURQUOISE, quantityNOC_TURQUOISE1, quantityNOC_TURQUOISE2,
    quantityNOC_TURQUOISE3, quantityNOC_TURQUOISE4, quantityNOC_VIOLET,
    quantityNOC_VIOLETRED, quantityNOC_VIOLETRED1, quantityNOC_VIOLETRED2,
    quantityNOC_VIOLETRED3, quantityNOC_VIOLETRED4, quantityNOC_WHEAT,
    quantityNOC_WHEAT1, quantityNOC_WHEAT2, quantityNOC_WHEAT3, quantityNOC_WHEAT4,
    quantityNOC_WHITESMOKE, quantityNOC_YELLOW,
    quantityNOC_YELLOW2,
    quantityNOC_YELLOW3, quantityNOC_YELLOW4, quantityNOC_YELLOWGREEN,
    quantityNOC_WHITE
type
  QuantityNormality* = cfloat
type
  QuantityParameter* = cfloat
type
  quantityPhysicalquantity* {.size: sizeof(cint),
                             importcpp: "Quantity_Physicalquantity",
                             header: "Quantity_Physicalquantity.hxx".} = enum
    quantityMASS, quantityPLANEANGLE, quantitySOLIDANGLE, quantityLENGTH,
    quantityAREA, quantityVOLUME, quantitySPEED, quantityVELOCITY,
    quantityACCELERATION, quantityANGULARVELOCITY, quantityFREQUENCY,
    quantityTEMPERATURE, quantityAMOUNTOFSUBSTANCE, quantityDENSITY,
    quantityMASSFLOW, quantityVOLUMEFLOW, quantityCONSUMPTION, quantityMOMENTUM,
    quantityKINETICMOMENT, quantityMOMENTOFINERTIA, quantityFORCE,
    quantityMOMENTOFAFORCE, quantityTORQUE, quantityWEIGHT, quantityPRESSURE,
    quantityVISCOSITY, quantityKINEMATICVISCOSITY, quantityENERGY, quantityWORK,
    quantityPOWER, quantitySURFACETENSION, quantityCOEFFICIENTOFEXPANSION,
    quantityTHERMALCONDUCTIVITY, quantitySPECIFICHEATCAPACITY, quantityENTROPY,
    quantityENTHALPY, quantityLUMINOUSINTENSITY, quantityLUMINOUSFLUX,
    quantityLUMINANCE, quantityILLUMINANCE, quantityLUMINOUSEXPOSITION,
    quantityLUMINOUSEFFICACITY, quantityELECTRICCHARGE, quantityELECTRICCURRENT,
    quantityELECTRICFIELDSTRENGTH, quantityELECTRICPOTENTIAL,
    quantityELECTRICCAPACITANCE, quantityMAGNETICFLUX,
    quantityMAGNETICFLUXDENSITY, quantityMAGNETICFIELDSTRENGTH,
    quantityRELUCTANCE, quantityRESISTANCE, quantityINDUCTANCE,
    quantityCAPACITANCE, quantityIMPEDANCE, quantityADMITTANCE,
    quantityRESISTIVITY, quantityCONDUCTIVITY, quantityMOLARMASS,
    quantityMOLARVOLUME, quantityCONCENTRATION, quantityMOLARCONCENTRATION,
    quantityMOLARITY, quantitySOUNDINTENSITY, quantityACOUSTICINTENSITY,
    quantityACTIVITY, quantityABSORBEDDOSE, quantityDOSEEQUIVALENT
type
  QuantityPlaneAngle* = cfloat
type
  QuantityPower* = cfloat
type
  QuantityPressure* = cfloat
type
  QuantityQuotient* = cfloat
type
  QuantityRate* = cfloat
type
  QuantityRatio* = cfloat
type
  QuantityReluctance* = cfloat
type
  QuantityResistance* = cfloat
type
  QuantityResistivity* = cfloat
type
  QuantityScalaire* = cfloat
type
  QuantitySolidAngle* = cfloat
type
  QuantitySoundIntensity* = cfloat
type
  QuantitySpecificHeatCapacity* = cfloat
type
  QuantitySpeed* = cfloat
type
  QuantitySurfaceTension* = cfloat
type
  QuantityTemperature* = cfloat
type
  QuantityThermalConductivity* = cfloat
type
  QuantityTorque* = cfloat
type
  QuantityTypeOfColor* {.size: sizeof(cint), importcpp: "Quantity_TypeOfColor",
                        header: "Quantity_TypeOfColor.hxx".} = enum ## ! Normalized linear RGB (red, green, blue) values within range [0..1] for each component
    QuantityTOC_RGB,          ## ! Normalized non-linear gamma-shifted RGB (red, green, blue) values within range [0..1] for each component
    QuantityTOC_sRGB, ## ! Hue + light + saturation components, where:
                     ## ! - First component is the Hue (H) angle in degrees within range [0.0; 360.0], 0.0 being Red;
                     ## !   value -1.0 is a special value reserved for grayscale color (S should be 0.0).
                     ## ! - Second component is the Lightness (L) within range [0.0; 1.0]
                     ## ! - Third component is the Saturation (S) within range [0.0; 1.0]
    QuantityTOC_HLS, ## ! CIE L*a*b* color space, constructed to be perceptually uniform for human eye.
                    ## ! The values are assumed to be with respect to D65 2&deg; white point.
                    ## !
                    ## ! The color is defined by:
                    ## ! - L: lightness in range [0, 100] (from black to white)
                    ## ! - a: green-to-red axis, approximately in range [-90, 100]
                    ## ! - b: blue-to-yellow axis, approximately in range [-110, 95]
                    ## !
                    ## ! Note that not all combinations of L, a, and b values represent visible
                    ## ! colors, and RGB cube takes only part of visible color space.
                    ## !
                    ## ! When Lab color is converted to RGB, a and b components may be reduced
                    ## ! (with the same proportion) to fit the result into the RGB range.
    QuantityTOC_CIELab, ## ! CIE L*c*h* color space, same as L*a*b* in cylindrical coordinates:
                       ## ! - L: lightness in range [0, 100] (from black to white)
                       ## ! - c: chroma, approximately in range [0, 135], 0 corresponds to greyscale
                       ## ! - h: hue angle, in range [0., 360.]
                       ## !
                       ## ! The hue values of standard colors are approximately:
                       ## ! - red at 40,
                       ## ! - yellow at 103,
                       ## ! - green at 136,
                       ## ! - cyan at 196,
                       ## ! - blue at 306,
                       ## ! - magenta at 328.
                       ## !
                       ## ! When Lch color is converted to RGB, chroma component may be reduced
                       ## ! to fit the color into the RGB range.
    QuantityTOC_CIELch
type
  QuantityVelocity* = cfloat
type
  QuantityViscosity* = cfloat
type
  QuantityVolume* = cfloat
type
  QuantityVolumeFlow* = cfloat
type
  QuantityWeight* = cfloat
type
  QuantityWork* = cfloat
