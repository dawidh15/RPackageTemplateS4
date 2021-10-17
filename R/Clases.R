#' Una persona
#'
#' @slot nombre El nombre de la persona
#' @slot edad La edad de la persona
#' @export
setClass("Persona",
         representation = list(nombre = "character", edad = "integer"))

setGeneric("Cumplir", function(persona,cuantos)standardGeneric("Cumplir"))

#' Métodos para persona
#'
#' @docType methods
#' @name Persona-Method
NULL #para no aplicar sobre un método específico

#' Título: Cumplir Años.
#'
#' Descripción: Incrementa la edad de la persona.
#'
#' @param cuantos La edad deseada para la persona.
#'
#' @return Una persona
#'
#' @describeIn Persona-Method
#'
#' @export
setMethod("Cumplir", signature = c(persona = "Persona", cuantos = "integer"), function(persona,cuantos)
{

  persona@edad <- persona@edad + (cuantos - persona@edad)

  return(persona)
})


