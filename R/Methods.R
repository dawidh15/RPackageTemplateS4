#' @include aGeneric.R
NULL

#' Convertir a texto
#'
#' @param text el valor a convertir en texto
#'
#' @docType methods
#' @name ConvertirEnTexto-Method
NULL #para no aplicar sobre un método específico

#' Título: Convertir entero a texto.
#'
#' Descripción: Esta función convierte un entero a un objeto de texto.
#'
#' Más detalles aquí.
#'
#' y aquí...
#'
#' @section Una sección personalizada:
#'
#' Detalles de la sección personalizada.
#'
#' @param text El valor que será convertido en texto
#'
#' @describeIn ConvertirEnTexto-Method
#'
#' @export
#'
#' @examples
#' ConvertirEnTexto(3) ## returns "3"
#'
#' ## don't run this in calls to 'example(add_numbers)'
#' \dontrun{
#'    ConvertirEnTexto(3) ## returns "3"
#' }
#'
#' ## don't test this during 'R CMD check'
#' \donttest{
#'    ConvertirEnTexto(3) ## returns "3"
#' }
setMethod("ConvertirEnTexto", signature = c(text = "integer"), function(text)
  {
  print("Convirtiendo entero en texto")
  valor <- as.character(text)
})




#' Título: Convertir número a texto.
#'
#' Descripción: Esta función convierte un número a un objeto de texto.
#'
#' @param text El valor que será convertido en texto
#'
#' @describeIn ConvertirEnTexto-Method
#'
#' @export
#'
#' @examples
#' ConvertirEnTexto(3.0) ## returns "3"
#'
#' ## don't run this in calls to 'example(add_numbers)'
#' \dontrun{
#'    ConvertirEnTexto(3.0) ## returns "3"
#' }
#'
#' ## don't test this during 'R CMD check'
#' \donttest{
#'    ConvertirEnTexto(3.0) ## returns "3"
#' }
setMethod("ConvertirEnTexto", signature = c(text = "numeric"), function(text)
{
  print("Convirtiendo entero en texto")
  valor <- as.character(text)
})
