##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of math_IntegerVector"
discard "forward decl of math_Vector"
discard "forward decl of math_Matrix"
var mathStatusUserAborted* {.importcpp: "math_Status_UserAborted",
                           header: "math_Recipes.hxx".}: int

var mathStatusOK* {.importcpp: "math_Status_OK", header: "math_Recipes.hxx".}: int

var mathStatusSingularMatrix* {.importcpp: "math_Status_SingularMatrix",
                              header: "math_Recipes.hxx".}: int

var mathStatusArgumentError* {.importcpp: "math_Status_ArgumentError",
                             header: "math_Recipes.hxx".}: int

var mathStatusNoConvergence* {.importcpp: "math_Status_NoConvergence",
                             header: "math_Recipes.hxx".}: int

proc lU_Decompose*(a: var MathMatrix; indx: var MathIntegerVector; d: var float;
                  tiny: float = 1.0e-20;
                  theProgress: MessageProgressRange = messageProgressRange()): int {.
    importcpp: "LU_Decompose(@)", header: "math_Recipes.hxx".}
##  Given a matrix a(1..n, 1..n), this routine computes its LU decomposition,
##  The matrix a is replaced by this LU decomposition and the vector indx(1..n)
##  is an output which records the row permutation effected by the partial
##  pivoting; d is output as +1 or -1 depending on wether the number of row
##  interchanges was even or odd.

proc lU_Decompose*(a: var MathMatrix; indx: var MathIntegerVector; d: var float;
                  vv: var MathVector; tiny: float = 1.0e-30;
                  theProgress: MessageProgressRange = messageProgressRange()): int {.
    importcpp: "LU_Decompose(@)", header: "math_Recipes.hxx".}
##  Idem to the previous LU_Decompose function. But the input Vector vv(1..n) is
##  used internally as a scratch area.

proc lU_Solve*(a: MathMatrix; indx: MathIntegerVector; b: var MathVector) {.
    importcpp: "LU_Solve(@)", header: "math_Recipes.hxx".}
##  Solves a * x = b for a vector x, where x is specified by a(1..n, 1..n),
##  indx(1..n) as returned by LU_Decompose. n is the dimension of the
##  square matrix A. b(1..n) is the input right-hand side and will be
##  replaced by the solution vector.Neither a and indx are destroyed, so
##  the routine may be called sequentially with different b's.

proc lU_Invert*(a: var MathMatrix): int {.importcpp: "LU_Invert(@)",
                                     header: "math_Recipes.hxx".}
##  Given a matrix a(1..n, 1..n) this routine computes its inverse. The matrix
##  a is replaced by its inverse.

proc sVD_Decompose*(a: var MathMatrix; w: var MathVector; v: var MathMatrix): int {.
    importcpp: "SVD_Decompose(@)", header: "math_Recipes.hxx".}
##  Given a matrix a(1..m, 1..n), this routine computes its singular value
##  decomposition, a = u * w * transposed(v). The matrix u replaces a on
##  output. The diagonal matrix of singular values w is output as a vector
##  w(1..n). The matrix v is output as v(1..n, 1..n). m must be greater or
##  equal to n; if it is smaller, then a should be filled up to square with
##  zero rows.

proc sVD_Decompose*(a: var MathMatrix; w: var MathVector; v: var MathMatrix;
                   rv1: var MathVector): int {.importcpp: "SVD_Decompose(@)",
    header: "math_Recipes.hxx".}
##  Idem to the previous LU_Decompose function. But the input Vector vv(1..m)
##  (the number of rows a(1..m, 1..n)) is used internally as a scratch area.

proc sVD_Solve*(u: MathMatrix; w: MathVector; v: MathMatrix; b: MathVector;
               x: var MathVector) {.importcpp: "SVD_Solve(@)",
                                 header: "math_Recipes.hxx".}
##  Solves a * x = b for a vector x, where x is specified by u(1..m, 1..n),
##  w(1..n), v(1..n, 1..n) as returned by SVD_Decompose. m and n are the
##  dimensions of A, and will be equal for square matrices. b(1..m) is the
##  input right-hand side. x(1..n) is the output solution vector.
##  No input quantities are destroyed, so the routine may be called
##  sequentially with different b's.

proc dACTCL_Decompose*(a: var MathVector; indx: MathIntegerVector;
                      minPivot: float = 1.e-20): int {.
    importcpp: "DACTCL_Decompose(@)", header: "math_Recipes.hxx".}
##  Given a SYMMETRIC matrix a, this routine computes its
##  LU decomposition.
##  a is given through a vector of its non zero components of the upper
##  triangular matrix.
##  indx is the indice vector of the diagonal elements of a.
##  a is replaced by its LU decomposition.
##  The range of the matrix is n = indx.Length(),
##  and a.Length() = indx(n).

proc dACTCL_Solve*(a: MathVector; b: var MathVector; indx: MathIntegerVector;
                  minPivot: float = 1.e-20): int {.importcpp: "DACTCL_Solve(@)",
    header: "math_Recipes.hxx".}
##  Solves a * x = b for a vector x and a matrix a coming from DACTCL_Decompose.
##  indx is the same vector as in DACTCL_Decompose.
##  the vector b is replaced by the vector solution x.

proc jacobi*(a: var MathMatrix; d: var MathVector; v: var MathMatrix; nrot: var int): int {.
    importcpp: "Jacobi(@)", header: "math_Recipes.hxx".}
##  Computes all eigenvalues and eigenvectors of a real symmetric matrix
##  a(1..n, 1..n). On output, elements of a above the diagonal are destroyed.
##  d(1..n) returns the eigenvalues of a. v(1..n, 1..n) is a matrix whose
##  columns contain, on output, the normalized eigenvectors of a. nrot returns
##  the number of Jacobi rotations that were required.
##  Eigenvalues are sorted into descending order, and eigenvectors are
##  arranges correspondingly.

