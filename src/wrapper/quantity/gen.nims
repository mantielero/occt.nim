#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let packageName = "quantity"
let c2nimFile = packageName & ".c2nim"
#[ let beg = """
when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

""" ]#
proc genFiles*( infile:string;
               remove:seq[tuple[a,b:int]] = @[]; 
               comment:seq[tuple[a,b:int]] = @[]; 
               addSemiColon:seq[int] = @[];
               replaceAll:seq[tuple[sub,by:string]] = @[];
               removeFuncBody:seq[tuple[a,b:int]] = @[]) =
    var (dir, name, ext) = splitFile(infile)
    if dir == "":
      dir = lib
    if ext == "":
      ext = ".hxx"
    cpFile(dir & name & ext, name & ".hxx")
    var rem:seq[tuple[a,b:int]] = remove
    var semiColon = addSemiColon
    if removeFuncBody.len > 0:
      for item in removeFuncBody:
        rem &= item
        semiColon &= item.a - 1
    #echo semiColon
    # Replace text strings
    if replaceAll.len > 0:    
      for item in replaceAll:
        var txt = readFile(name & ".hxx")        
        txt = txt.replace(item.sub, item.by)
        writeFile(name & ".hxx", txt)


    # Colons to add at the end of line
    if semiColon.len > 0:
        for line in semiColon:
            var edit = "'" & $line & " s/$/;/i'"
            edit = "sed -e " & edit & " -i " & name & ".hxx"
            exec edit

    # Lines to remove from the header
    if rem.len > 0:
        var edit = ""
        var n = 0
        for item in rem:
            edit &= $item.a & "," & $item.b & "d"
            n += 1
            if n != rem.len:
                edit &= ";"
        exec "sed -e '" & edit & "' -i " & name & ".hxx"

    # Comment lines
    if comment.len > 0:
      var txt = readFile(name & ".hxx") 
      var lines = txt.splitLines()
      for rng in comment:
        for i in (rng.a - 1) .. (rng.b - 1):
          lines[i] = "// " & lines[i]
      writeFile(name & ".hxx", lines.join("\n"))
        
    # Search and comment


    exec "c2nim --cpp --header --strict --nep1 --out:" & name.toLower & ".nim " & c2nimFile & " " & name & ".hxx"
    let txt = readFile(name.toLower & ".nim")
    writeFile(name.toLower & ".nim", txt ) #beg & txt)
    rmFile(name & ".hxx")
    echo name


proc pp*(file:string,
        insert:seq[tuple[line:int;value:string]] = @[],
        replaceAll:seq[tuple[sub,by:string]] = @[];        
        comment:seq[int] = @[];
        commentRange:seq[tuple[a,b:int]] = @[] ) =
  # Reemplazar
  if replaceAll.len > 0:    
    for item in replaceAll:
      var txt = readFile(file)        
      txt = txt.replace(item.sub, item.by)
      writeFile(file, txt)

  var lines = file.readFile.splitLines

  # Comment lines
  for i in 0..<lines.len:
    if i+1 in comment:
      lines[i] = "#" & lines[i]


  for item in commentRange:
      for i in item.a .. item.b:
        lines[i-1] = "#" & lines[i-1]

  # Insert lines
  var n = 0
  for item in insert:
    var tmp1 = lines[0 .. item.line - 2 + n] 
    var tmp2 = lines[item.line - 1 + n .. lines.len-1]
    lines = tmp1 & item.value & tmp2
    n += 1
  writeFile( file, lines.join("\n"))
  
  

#=====================================================

# ls /usr/include/opencascade/Quantity*.hxx | cut -c 26-
genFiles("Quantity_AbsorbedDose")
genFiles("Quantity_Acceleration")
genFiles("Quantity_AcousticIntensity")
genFiles("Quantity_Activity")
genFiles("Quantity_Admittance")
genFiles("Quantity_AmountOfSubstance")
genFiles("Quantity_AngularVelocity")
genFiles("Quantity_Area")
genFiles("Quantity_Array1OfColor")
genFiles("Quantity_Array2OfColor")
genFiles("Quantity_Capacitance")
genFiles("Quantity_Coefficient")
genFiles("Quantity_CoefficientOfExpansion")
genFiles("Quantity_ColorHasher")
genFiles("Quantity_Color")
pp("quantity_color.nim",
  commentRange = @[(231,232), (235,236)]
)
genFiles("Quantity_ColorRGBAHasher",
  comment = @[(31,36)]
)
genFiles("Quantity_ColorRGBA")
genFiles("Quantity_Concentration")
genFiles("Quantity_Conductivity")
genFiles("Quantity_Constant")
genFiles("Quantity_Consumption")
genFiles("Quantity_Content")
genFiles("Quantity_DateDefinitionError")
pp("quantity_datedefinitionerror.nim",
  commentRange = @[(17,28)]
)
genFiles("Quantity_Date")
genFiles("Quantity_Density")
genFiles("Quantity_DoseEquivalent")
genFiles("Quantity_ElectricCapacitance")
genFiles("Quantity_ElectricCharge")
genFiles("Quantity_ElectricCurrent")
genFiles("Quantity_ElectricFieldStrength")
genFiles("Quantity_ElectricPotential")
genFiles("Quantity_Energy")
genFiles("Quantity_Enthalpy")
genFiles("Quantity_Entropy")
genFiles("Quantity_Factor")
genFiles("Quantity_Force")
genFiles("Quantity_Frequency")
genFiles("Quantity_HArray1OfColor")
genFiles("Quantity_Illuminance")
genFiles("Quantity_Impedance")
genFiles("Quantity_Index")
genFiles("Quantity_Inductance")
genFiles("Quantity_KinematicViscosity")
genFiles("Quantity_KineticMoment")
genFiles("Quantity_Length")
genFiles("Quantity_Luminance")
genFiles("Quantity_LuminousEfficacity")
genFiles("Quantity_LuminousExposition")
genFiles("Quantity_LuminousFlux")
genFiles("Quantity_LuminousIntensity")
genFiles("Quantity_MagneticFieldStrength")
genFiles("Quantity_MagneticFluxDensity")
genFiles("Quantity_MagneticFlux")
genFiles("Quantity_MassFlow")
genFiles("Quantity_Mass")
genFiles("Quantity_MolarConcentration")
genFiles("Quantity_Molarity")
genFiles("Quantity_MolarMass")
genFiles("Quantity_MolarVolume")
genFiles("Quantity_MomentOfAForce")
genFiles("Quantity_MomentOfInertia")
genFiles("Quantity_Momentum")
genFiles("Quantity_NameOfColor")
pp("quantity_nameofcolor.nim",
  replaceAll = @[("QuantityNOC", "quantityNOC"),
    ("quantityNOC_BLUE1 = quantityNOC_BLUE, ", ""),
    ("quantityNOC_CYAN1 = quantityNOC_CYAN, ", ""),
    ("quantityNOC_GREEN1 = quantityNOC_GREEN, ", ""),
    ("quantityNOC_LIGHTCYAN1 = quantityNOC_LIGHTCYAN, ", ""),
    ("quantityNOC_MAGENTA1 = quantityNOC_MAGENTA, ", ""),
    ("quantityNOC_ORANGE1 = quantityNOC_ORANGE,", ""),
    ("quantityNOC_ORANGERED1 = quantityNOC_ORANGERED,", ""),
    ("quantityNOC_RED1 = quantityNOC_RED, ", ""),
    ("quantityNOC_TOMATO1 = quantityNOC_TOMATO,", ""),
    ("quantityNOC_YELLOW1 = quantityNOC_YELLOW, ", ""),
    ("quantityNOC_GOLD1 = quantityNOC_GOLD, ", ""),
    ("quantityNOC_CHARTREUSE1 = quantityNOC_CHARTREUSE, ", "")
  ]
)
genFiles("Quantity_Normality")
genFiles("Quantity_Parameter")
genFiles("Quantity_PeriodDefinitionError")
pp("quantity_perioddefinitionerror.nim",
  commentRange = @[(17,28)]
)
genFiles("Quantity_Period")
genFiles("Quantity_PhysicalQuantity")
pp("quantity_physicalquantity.nim",
  replaceAll = @[("Quantity", "quantity"),
    ("quantityPhysicalQuantity*", "QuantityPhysicalQuantity*"),
    ("quantity_", "Quantity_")
  ]
)
genFiles("Quantity_PlaneAngle")
genFiles("Quantity_Power")
genFiles("Quantity_Pressure")
genFiles("Quantity_Quotient")
genFiles("Quantity_Rate")
genFiles("Quantity_Ratio")
genFiles("Quantity_Reluctance")
genFiles("Quantity_Resistance")
genFiles("Quantity_Resistivity")
genFiles("Quantity_Scalaire")
genFiles("Quantity_SolidAngle")
genFiles("Quantity_SoundIntensity")
genFiles("Quantity_SpecificHeatCapacity")
genFiles("Quantity_Speed")
genFiles("Quantity_SurfaceTension")
genFiles("Quantity_Temperature")
genFiles("Quantity_ThermalConductivity")
genFiles("Quantity_Torque")
genFiles("Quantity_TypeOfColor")
genFiles("Quantity_Velocity")
genFiles("Quantity_Viscosity")
genFiles("Quantity_VolumeFlow")
genFiles("Quantity_Volume")
genFiles("Quantity_Weight")
genFiles("Quantity_Work")



# Create the import/export file (to be modified manually)
var txt = ""
var files = listFiles("./")
files.sort()
for path in files:
  var (dir, name, ext) = splitFile(path)


  if ext == ".nim" and name != "gen" and name != packageName & "_includes":
    txt &= "include " & name & "\n"
    #exp &= name & ", "
  #txt &= exp


var beggining = "{.passL:\"-lTKMath\".}\n"
beggining &= "{.passC:\"-I" & lib & "\" .}\n"
beggining &= "{.experimental: \"codeReordering\".}\n\n"
#[ beggining &= """
when defined(windows):
  const tkmath* = "TKMath.dll"
elif defined(macosx):
  const tkmath* = "libTKMath.dylib"
else:
  const tkmath* = "libTKMath.so" 


""" ]#

writeFile(packageName & "_includes.nim", beggining & txt )#& exp)
pp(packageName & "_includes.nim")