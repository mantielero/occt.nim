#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let c2nimFile = "geom.c2nim"
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


# ls /usr/include/opencascade/GC_*.hxx | cut -c 26-

genFiles("Geom_Axis1Placement")
genFiles("Geom_Axis2Placement")
genFiles("Geom_AxisPlacement")
genFiles("Geom_BezierCurve")
pp("geom_beziercurve.nim",
  replaceAll = @[("""proc maxDegree*()""", """proc maxDegreeBezierCurve*()""")]
)
genFiles("Geom_BezierSurface")
pp("geom_beziersurface.nim",
  replaceAll = @[("""proc maxDegree*()""", """proc maxDegreeBezierSurface*()""")]
)
genFiles("Geom_BoundedCurve")
genFiles("Geom_BoundedSurface")
genFiles("Geom_BSplineCurve")
pp("geom_bsplinecurve.nim",
  replaceAll = @[("""cfloat = pConfusion()""", """cfloat = 1.0e-7"""),
                 ("""proc maxDegree*()""", """proc maxDegreeBSplineCurve*()""")]
)

genFiles("Geom_BSplineSurface")
pp("geom_bsplinesurface.nim",
  replaceAll = @[("""cfloat = pConfusion()""", """cfloat = 1.0e-7"""),
                 ("""proc maxDegree*()""", """proc maxDegreeBSplineSurface*()""")]
)

genFiles("Geom_CartesianPoint")
genFiles("Geom_Circle")
genFiles("Geom_ConicalSurface")
genFiles("Geom_Conic")
genFiles("Geom_Curve")
genFiles("Geom_CylindricalSurface")
genFiles("Geom_Direction")
genFiles("Geom_ElementarySurface")
genFiles("Geom_Ellipse")
genFiles("Geom_Geometry")
genFiles("Geom_HSequenceOfBSplineSurface")
genFiles("Geom_Hyperbola")
genFiles("Geom_Line")
genFiles("Geom_OffsetCurve")
genFiles("Geom_OffsetSurface")
genFiles("Geom_OsculatingSurface")
genFiles("Geom_Parabola")
genFiles("Geom_Plane")
genFiles("Geom_Point")
genFiles("Geom_RectangularTrimmedSurface")
genFiles("Geom_SequenceOfBSplineSurface")
genFiles("Geom_SphericalSurface")
genFiles("Geom_Surface")
genFiles("Geom_SurfaceOfLinearExtrusion")
genFiles("Geom_SurfaceOfRevolution")
genFiles("Geom_SweptSurface")
genFiles("Geom_ToroidalSurface")
genFiles("Geom_Transformation")
genFiles("Geom_TrimmedCurve")
genFiles("Geom_UndefinedDerivative")
genFiles("Geom_UndefinedValue")
genFiles("Geom_Vector")
genFiles("Geom_VectorWithMagnitude")







#[ pp("gp.nim",
  replaceAll = @[("dx*", "dxAsDir*"),("dy*", "dyAsDir*"),("dz*", "dzAsDir*")
  ]
) ]#



# Create the import/export file (to be modified manually)
var txt = ""
var files = listFiles("./")
files.sort()
for path in files:
  var (dir, name, ext) = splitFile(path)


  if ext == ".nim" and name != "gen" and name != "geom_includes":
    txt &= "include " & name & "\n"
    #exp &= name & ", "
  #txt &= exp


var beggining = "{.passL:\"-lTKMath\".}\n"
beggining &= "{.passC:\"-I" & lib & "\" .}\n"
beggining &= "{.experimental: \"codeReordering\".}\n\n"

writeFile("geom_includes.nim", beggining & txt )#& exp)
#pp("gc_includes.nim")