# PROVIDES: QuantityAcceleration QuantityAcousticIntensity QuantityActivity QuantityAdmittance QuantityAmountOfSubstance QuantityAngularVelocity QuantityArea QuantityCapacitance QuantityCoefficient QuantityCoefficientOfExpansion QuantityConcentration QuantityConductivity QuantityConstant QuantityConsumption QuantityContent QuantityDensity QuantityDoseEquivalent QuantityElectricCapacitance QuantityElectricCharge QuantityElectricCurrent QuantityElectricFieldStrength QuantityElectricPotential QuantityEnergy QuantityEnthalpy QuantityEntropy QuantityFactor QuantityForce QuantityFrequency QuantityIlluminance QuantityImpedance QuantityIndex QuantityInductance QuantityKinematicViscosity QuantityKineticMoment QuantityLength QuantityLuminance QuantityLuminousEfficacity QuantityLuminousExposition QuantityLuminousFlux QuantityLuminousIntensity QuantityMagneticFieldStrength QuantityMagneticFlux QuantityMagneticFluxDensity QuantityMass QuantityMassFlow QuantityMolarConcentration QuantityMolarity QuantityMolarMass QuantityMolarVolume QuantityMomentOfAForce QuantityMomentOfInertia QuantityMomentum QuantityNameOfColor QuantityNormality QuantityParameter quantityPhysicalquantity QuantityPlaneAngle QuantityPower QuantityPressure QuantityQuotient QuantityRate QuantityRatio QuantityReluctance QuantityResistance QuantityResistivity QuantityScalaire QuantitySolidAngle QuantitySoundIntensity QuantitySpecificHeatCapacity QuantitySpeed QuantitySurfaceTension QuantityTemperature QuantityThermalConductivity QuantityTorque QuantityVelocity QuantityViscosity QuantityVolume QuantityVolumeFlow QuantityWeight QuantityWork
# DEPENDS:  NCollectionArray1[QuantityColor]  NCollectionArray2[QuantityColor]  enum ## ! Normalized linear RGB (red, green, blue) values within range [0..1] for each component

import ../ncollection/ncollection_types

type
  QuantityAcceleration* = cfloat

  QuantityAcousticIntensity* = cfloat

  QuantityActivity* = cfloat

  QuantityAdmittance* = cfloat

  QuantityAmountOfSubstance* = cfloat

  QuantityAngularVelocity* = cfloat

  QuantityArea* = cfloat

  QuantityCapacitance* = cfloat

  QuantityCoefficient* = cfloat

  QuantityCoefficientOfExpansion* = cfloat

  QuantityConcentration* = cfloat

  QuantityConductivity* = cfloat

  QuantityConstant* = cfloat

  QuantityConsumption* = cfloat

  QuantityContent* = cfloat

  QuantityDensity* = cfloat

  QuantityDoseEquivalent* = cfloat

  QuantityElectricCapacitance* = cfloat

  QuantityElectricCharge* = cfloat

  QuantityElectricCurrent* = cfloat

  QuantityElectricFieldStrength* = cfloat

  QuantityElectricPotential* = cfloat

  QuantityEnergy* = cfloat

  QuantityEnthalpy* = cfloat

  QuantityEntropy* = cfloat

  QuantityFactor* = cfloat

  QuantityForce* = cfloat

  QuantityFrequency* = cfloat

  QuantityIlluminance* = cfloat

  QuantityImpedance* = cfloat

  QuantityIndex* = cfloat

  QuantityInductance* = cfloat

  QuantityKinematicViscosity* = cfloat

  QuantityKineticMoment* = cfloat

  QuantityLength* = cfloat

  QuantityLuminance* = cfloat

  QuantityLuminousEfficacity* = cfloat

  QuantityLuminousExposition* = cfloat

  QuantityLuminousFlux* = cfloat

  QuantityLuminousIntensity* = cfloat

  QuantityMagneticFieldStrength* = cfloat

  QuantityMagneticFlux* = cfloat

  QuantityMagneticFluxDensity* = cfloat

  QuantityMass* = cfloat

  QuantityMassFlow* = cfloat

  QuantityMolarConcentration* = cfloat

  QuantityMolarity* = cfloat

  QuantityMolarMass* = cfloat

  QuantityMolarVolume* = cfloat

  QuantityMomentOfAForce* = cfloat

  QuantityMomentOfInertia* = cfloat

  QuantityMomentum* = cfloat

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

  QuantityNormality* = cfloat

  QuantityParameter* = cfloat

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

  QuantityPlaneAngle* = cfloat

  QuantityPower* = cfloat

  QuantityPressure* = cfloat

  QuantityQuotient* = cfloat

  QuantityRate* = cfloat

  QuantityRatio* = cfloat

  QuantityReluctance* = cfloat

  QuantityResistance* = cfloat

  QuantityResistivity* = cfloat

  QuantityScalaire* = cfloat

  QuantitySolidAngle* = cfloat

  QuantitySoundIntensity* = cfloat

  QuantitySpecificHeatCapacity* = cfloat

  QuantitySpeed* = cfloat

  QuantitySurfaceTension* = cfloat

  QuantityTemperature* = cfloat

  QuantityThermalConductivity* = cfloat

  QuantityTorque* = cfloat

  QuantityVelocity* = cfloat

  QuantityViscosity* = cfloat

  QuantityVolume* = cfloat

  QuantityVolumeFlow* = cfloat

  QuantityWeight* = cfloat

  QuantityWork* = cfloat

type
  Quantity_Color* {.importcpp: "Quantity_Color", 
                    header: "Quantity_Color.hxx", bycopy.} = object ##
    ## !
    ## Creates
    ## Quantity_NOC_YELLOW
    ## color
    ## (for
    ## historical
    ## reasons).
    ##
    ## !
    ## Returns
    ## the
    ## color
    ## from
    ## Quantity_NameOfColor
    ## enumeration
    ## nearest
    ## to
    ## specified
    ## RGB
    ## values.
    ##
    ## !@name
    ## Routines
    ## converting
    ## colors
    ## between
    ## different
    ## encodings
    ## and
    ## color
    ## spaces
    ##
    ## !
    ## Parses
    ## the
    ## string
    ## as
    ## a
    ## hex
    ## color
    ## (like
    ## "#FF0"
    ## for
    ## short
    ## sRGB
    ## color,
    ## or
    ## "#FFFF00"
    ## for
    ## sRGB
    ## color)
    ##
    ## !
    ## @param
    ## theHexColorString
    ## the
    ## string
    ## to
    ## be
    ## parsed
    ##
    ## !
    ## @param
    ## theColor
    ## a
    ## color
    ## that
    ## is
    ## a
    ## result
    ## of
    ## parsing
    ##
    ## !
    ## @return
    ## true
    ## if
    ## parsing
    ## was
    ## successful,
    ## or
    ## false
    ## otherwise
    ##
    ## !
    ## Returns
    ## the
    ## value
    ## used
    ## to
    ## compare
    ## two
    ## colors
    ## for
    ## equality;
    ## 0.0001
    ## by
    ## default.
    ##
    ## !
    ## Returns
    ## the
    ## values
    ## of
    ## a
    ## predefined
    ## color
    ## according
    ## to
    ## the
    ## mode.

  QuantityColorRGBA* = object # FIXME
  QuantityDate* = object # FIXME
  QuantityPeriod* = object # FIXME
  QuantityHArray1OfColor* = object # FIXME

  QuantityArray1OfColor* = NCollectionArray1[QuantityColor]

  QuantityArray2OfColor* = NCollectionArray2[QuantityColor]

  QuantityTypeOfColor* {.size: sizeof(cint), importcpp: "Quantity_TypeOfColor",
                        header: "Quantity_TypeOfColor.hxx".} = enum 
    QuantityTOC_RGB,          
    QuantityTOC_sRGB, 
                     
                     
                     
                     
    QuantityTOC_HLS, 
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
    QuantityTOC_CIELab, 
                       
                       
                       
                       
                       
                       
                       
                       
                       
                       
                       
                       
                       
                       
    QuantityTOC_CIELch

