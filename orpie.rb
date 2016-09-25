class Orpie < Formula
  desc "RPN calculator for the terminal"
  homepage "https://github.com/pelzlpj/orpie"
  url "https://github.com/pelzlpj/orpie/releases/download/release-1.5.2/orpie-1.5.2.tar.gz"
  sha256 "de557fc7f608c6cb1f44a965d3ae07fc6baf2b02a0d7994b89d6a0e0d87d3d6d"

  depends_on "homebrew/versions/gsl1"
  depends_on "ocaml"
  depends_on "camlp4" => :build

  patch :DATA

  def install
    ENV.deparallelize
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end
end

__END__
diff --git a/Makefile.in b/Makefile.in
index a11eadc..361584c 100644
--- a/Makefile.in
+++ b/Makefile.in
@@ -81,7 +81,7 @@ CURSES_OOBJS = $(CURSES_CMX) $(CURSES_COBJS)
 GSL_CMO = gsl/gsl_error.cmo gsl/gsl_blas.cmo gsl/gsl_complex.cmo gsl/gsl_matrix.cmo gsl/gsl_matrix_complex.cmo \
 		gsl/gsl_vector.cmo gsl/gsl_vector_complex.cmo gsl/gsl_vector_flat.cmo gsl/gsl_matrix_flat.cmo \
 		gsl/gsl_vector_complex_flat.cmo gsl/gsl_matrix_complex_flat.cmo gsl/gsl_vectmat.cmo \
-		gsl/gsl_permut.cmo gsl/gsl_linalg.cmo gsl/gsl_fun.cmo
+		gsl/gsl_permut.cmo gsl/gsl_linalg.cmo gsl/gsl_fun.cmo gsl/gsl_math.cmo gsl/gsl_sf.cmo
 GSL_CMX = $(GSL_CMO:.cmo=.cmx)
 GSL_COBJS = gsl/mlgsl_error.o gsl/mlgsl_blas.o gsl/mlgsl_blas_complex.o gsl/mlgsl_complex.o gsl/mlgsl_blas_float.o \
 		 gsl/mlgsl_blas_complex_float.o gsl/mlgsl_matrix_complex.o gsl/mlgsl_matrix_double.o gsl/mlgsl_matrix_float.o \
