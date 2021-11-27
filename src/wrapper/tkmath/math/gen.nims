#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let packageName = "math"
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
               commentFuncBody:seq[tuple[a,b:int]] = @[]) =
    var (dir, name, ext) = splitFile(infile)
    if dir == "":
      dir = lib
    if ext == "":
      ext = ".hxx"
    cpFile(dir & name & ext, name & ".hxx")
    
    var rem:seq[tuple[a,b:int]] = remove
    var comm:seq[tuple[a,b:int]] = comment    
    var semiColon = addSemiColon
    if commentFuncBody.len > 0:
      for item in commentFuncBody:
        comm &= item
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
    if comm.len > 0:
      var txt = readFile(name & ".hxx") 
      var lines = txt.splitLines()
      for rng in comm:
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

# ls /usr/include/opencascade/math*.hxx | cut -c 26-

genFiles("math_Array1OfValueAndWeight")
genFiles("math_BFGS")
genFiles("math_BissecNewton")
genFiles("math_BracketedRoot")
genFiles("math_BracketMinimum")
genFiles("math_BrentMinimum")
genFiles("math_BullardGenerator")
genFiles("math_ComputeGaussPointsAndWeights")
genFiles("math_ComputeKronrodPointsAndWeights")
genFiles("math_Crout")
genFiles("math_DirectPolynomialRoots")
genFiles("math_DoubleTab")
genFiles("math_EigenValuesSearcher")
genFiles("math_FRPR")
genFiles("math_FunctionAllRoots")
genFiles("math_Function")
pp("math_function.nim",
  replaceAll = @[("= object", "= object of RootObj")]
  )
genFiles("math_FunctionRoot")
genFiles("math_FunctionRoots")
genFiles("math_FunctionSample")
genFiles("math_FunctionSet")
pp("math_functionset.nim",
  replaceAll = @[("= object", "= object of RootObj")]
  )
genFiles("math_FunctionSetRoot")
genFiles("math_FunctionSetWithDerivatives")
genFiles("math_FunctionWithDerivative")
genFiles("math_Gauss")
pp("math_gauss.nim",
  replaceAll = @[("messageProgressRange()", "newMessageProgressRange()")]
)
genFiles("math_GaussLeastSquare")
genFiles("math_GaussMultipleIntegration")
genFiles("math_GaussSetIntegration")
genFiles("math_GaussSingleIntegration")
genFiles("math_GlobOptMin")
genFiles("math_Householder")
genFiles("math")
genFiles("math_IntegerVector",
  commentFuncBody = @[(147,149) , (254, 257)]
)
genFiles("math_Jacobi")
genFiles("math_KronrodSingleIntegration")
genFiles("math_Matrix")
genFiles("math_MultipleVarFunction")
pp("math_multiplevarfunction.nim",
  replaceAll = @[("= object", "= object of RootObj")]
  )
genFiles("math_MultipleVarFunctionWithGradient")
genFiles("math_MultipleVarFunctionWithHessian")
genFiles("math_NewtonFunctionRoot")
genFiles("math_NewtonFunctionSetRoot")
genFiles("math_NewtonMinimum")
genFiles("math_NotSquare")
genFiles("math_Powell")
genFiles("math_PSO")
genFiles("math_PSOParticlesPool")
genFiles("math_Recipes")
pp("math_recipes.nim",
  replaceAll = @[("messageProgressRange()", "newMessageProgressRange()"), ("1.e-20", "1.0e-20"),
    ("""var mathStatusUserAborted* {.importcpp: "math_Status_UserAborted", dynlib: tkmath.}: cint

var mathStatusOK* {.importcpp: "math_Status_OK", dynlib: tkmath.}: cint

var mathStatusSingularMatrix* {.importcpp: "math_Status_SingularMatrix",
                              dynlib: tkmath.}: cint

var mathStatusArgumentError* {.importcpp: "math_Status_ArgumentError",
                             dynlib: tkmath.}: cint

var mathStatusNoConvergence* {.importcpp: "math_Status_NoConvergence",
                             dynlib: tkmath.}: cint""",
    """const
  mathStatusUserAborted*    = -1
  mathStatusOK*             = 0
  mathStatusSingularMatrix* = 1
  mathStatusArgumentError*  = 2
  mathStatusNoConvergence*  = 3  

"""
                             )

  ]
)
genFiles("math_SingularMatrix")
genFiles("math_Status")
genFiles("math_SVD")
genFiles("math_TrigonometricEquationFunction")
genFiles("math_TrigonometricFunctionRoots")
genFiles("math_Uzawa")
genFiles("math_ValueAndWeight")
genFiles("math_Vector",
  commentFuncBody = @[(171,173),(327,330)]
)





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