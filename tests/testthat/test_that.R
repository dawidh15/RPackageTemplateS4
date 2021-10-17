#' @import testthat
NULL
# test clases ---------------------------------------------------

# test gumQuantity class

test_that("S4 Method ConvertirEnTexto",{
  entero <- 1L
  testthat::expect_true(class(ConvertirEnTexto(entero)) == "character")

  numero <- 3.0
  testthat::expect_true(class(ConvertirEnTexto(numero)) == "character")
}
)


test_that("S4 Persona",{
  unaPersona <- new(Class = "Persona", nombre = "David", edad = 36L)

  unaPersona <- Cumplir(unaPersona, 40L)
  testthat::expect_true(unaPersona@edad == 40L)
}
)
