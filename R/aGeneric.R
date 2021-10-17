#' Genéricos
#'
#' Los genéricos proveen el nombre del método, pero no la definición.
#'
#' Usar un genérico para verbos comunes como 'Escribir', 'Borrar', 'Extraer', 'Guardar'. La acción es la misma sobre cualquier objeto, pero los detalles de implementación se definen en \code{setMethod}.
#'
#' En este ejemplo, la función convierte números reales y enteros a texto. Observar que el argumento \code{signature} solo acepta ese tipo de objetos; de lo contrario, da error.
#'
#' @return Un objeto de tipo definido en \code{valueClass}. En este caso, devuelve un texto.
#'
#' @export
setGeneric(
  "ConvertirEnTexto",
  valueClass = "character",
  def = function(text) {
    # lo que venga en 'standardGeneric' se reemplaza por el método apropiado. Pero, la comprobación que viene después siempre se ejecutará.
    value <- standardGeneric("ConvertirEnTexto")
    print("Verificando que texto no esté vacío.")
    if (nchar(text) == 0)
      stop("No se acepta texto vacío.")
    value
  }
)
